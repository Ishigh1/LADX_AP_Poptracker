-- from https://stackoverflow.com/questions/9168058/how-to-dump-a-table-to-console
-- dumps a table in a readable string
function dump_table(o, depth)
    if depth == nil then
        depth = 0
    end
    if type(o) == 'table' then
        local tabs = ('\t'):rep(depth)
        local tabs2 = ('\t'):rep(depth + 1)
        local s = '{\n'
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. tabs2 .. '[' .. k .. '] = ' .. dump_table(v, depth + 1) .. ',\n'
        end
        return s .. tabs .. '}'
    else
        return tostring(o)
    end
end

function A(result)
    if result then
        return AccessibilityLevel.Normal
    else
        return AccessibilityLevel.None
    end
end

function has(item, amount, amountInLogic)
    local count = Tracker:ProviderCountForCode(item)
    if amountInLogic then
        if count >= amountInLogic then
            return AccessibilityLevel.Normal
        elseif count >= amount then
            return AccessibilityLevel.SequenceBreak
        else
            return AccessibilityLevel.None
        end
    end
    if not amount then
        return count > 0
    else
        amount = tonumber(amount)
        return count >= amount
    end
end

local access_stack = {}
function can_access(region_name, key_used)
    if type(region_name) == "function" then
        if access_stack[region_name] then
            return AccessibilityLevel.None
        else
            access_stack[region_name] = true
            local result = region_name(key_used or 0)
            access_stack[region_name] = nil
            return result
        end
    else
        if region_name:sub(1, 1) ~= "@" then
            region_name = "@" .. region_name
        end
        if access_stack[region_name] then
            return AccessibilityLevel.None
        end
        access_stack[region_name] = true
        local region = Tracker:FindObjectForCode(region_name)
        if region == nil then
            print(region_name .. " not found!")
            return AccessibilityLevel.None
        end
        local level = region.AccessibilityLevel
        access_stack[region_name] = nil
        if log then
            print(region_name .. " has accessibility " .. level)
        end
        return level
    end
end

function difficulty(target)
    if has("difficulty_hell") then
        return AccessibilityLevel.Normal
    elseif target == "hell" then
        return AccessibilityLevel.SequenceBreak
    elseif has("difficulty_glitched") then
        return AccessibilityLevel.Normal
    elseif target == "glitched" then
        return AccessibilityLevel.SequenceBreak
    elseif has("difficulty_hard") then
        return AccessibilityLevel.Normal
    else
        return AccessibilityLevel.SequenceBreak
    end
end

function andA(...)
    local args = { ... }
    local min = AccessibilityLevel.Normal
    for i, v in ipairs(args) do
        if type(v) == "boolean" then
            v = A(v)
        end
        if v < min then
            if v == AccessibilityLevel.None then
                return AccessibilityLevel.None
            else
                min = v
            end
        end
    end
    return min
end

function orA(...)
    local args = { ... }
    local max = AccessibilityLevel.None
    for i, v in ipairs(args) do
        if type(v) == "boolean" then
            v = A(v)
        end
        if v > max then
            if v == AccessibilityLevel.Normal then
                return AccessibilityLevel.Normal
            else
                max = v
            end
        end
    end
    return max
end
