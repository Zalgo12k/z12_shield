TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- ESX.RegisterUsableItem('zirh', function(source, args, raw)
--     local src = source
--     TriggerClientEvent("shield:TogglePoliceShield", src)
-- end)

-- ESX.RegisterUsableItem('zirh2', function(source, args, raw)
--     local src = source
--     TriggerClientEvent("shield:ToggleFibShield", src)
-- end)

-- ESX.RegisterUsableItem('zirh3', function(source, args, raw)
--     local src = source
--     TriggerClientEvent("shield:ToggleSheriffShield", src)
-- end)

-- ESX.RegisterUsableItem('zirh4', function(source, args, raw)
--     local src = source
--     TriggerClientEvent("shield:ToggleSwatShield", src)
-- end)

-- ESX.RegisterUsableItem('zirh5', function(source, args, raw)
--     local src = source
--     TriggerClientEvent("shield:ToggleNooseShield", src)
-- end)

ESX.RegisterUsableItem('zirh6', function(source)
    TriggerClientEvent("z12:TogglePoliceShield", src)
end)