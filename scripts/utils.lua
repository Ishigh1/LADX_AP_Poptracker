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

function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    if not amount then
        return count > 0
    else
        amount = tonumber(amount)
        return count >= amount
    end
end

function can_access(region_name)
    local region = Tracker:FindObjectForCode(region_name)
    if region == nil then
        return AccessibilityLevel.None
    end
    return region.AccessibilityLevel
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

function or2(item1, item2)
    return has(item1) or has(item2)
end

function or3(item1, item2, item3)
    return has(item1) or has(item2) or has(item3)
end