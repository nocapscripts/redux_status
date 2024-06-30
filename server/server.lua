RegisterNetEvent("getBank")
RegisterNetEvent("getCash")
RegisterNetEvent("getCid")
RegisterNetEvent("getMeta")
RegisterNetEvent("getJob")

AddEventHandler("getBank", function()
    local src = source
	local user = exports["redux_base"]:getModule("Player"):GetUser(tonumber(src))

    if user then
        local bank = user:getBalance()
        TriggerClientEvent('sendBank', src, bank)
    else
        print('Failed to get user for id: ' .. tonumber(src))
    end
end)

-- Register 'getCash' event handler
AddEventHandler("getCash", function()
    local src = source
	local user = exports["redux_base"]:getModule("Player"):GetUser(tonumber(src))

    if user then
        local cash = user:getCash()
        TriggerClientEvent('sendCash', src, cash)
    else
        print('Failed to get user for id: ' .. tonumber(src))
    end
end)


AddEventHandler("getCid", function()
    local src = source
	local user = exports["redux_base"]:getModule("Player"):GetUser(tonumber(src))

    if user then
        local char = user:getVar("character")
        local cid = char.id
        TriggerClientEvent('sendCid', src, cid)
    else
        print('Failed to get user for id: ' .. tonumber(src))
    end
end)


AddEventHandler("getJob", function()
    local src = source
	local user = exports["redux_base"]:getModule("Player"):GetUser(tonumber(src))

    if user then
        local job = user:getVar("job")
        TriggerClientEvent('sendJob', src, job)
    else
        print('Failed to get user for id: ' .. tonumber(src))
    end
end)


AddEventHandler("getMeta", function()
    local src = source
	local user = exports["redux_base"]:getModule("Player"):GetUser(tonumber(src))

    if user then
        local char = user:getVar("character")
        local meta = char
        TriggerClientEvent('sendMeta', src, meta)
    else
        print('Failed to get user for id: ' .. tonumber(src))
    end
end)
