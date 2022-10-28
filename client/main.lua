ESX = nil
local objPropSpawnList = {}
local vaultType = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent(Config.EventRoute['getSharedObject'], function(obj)
            ESX = obj
        end)
        Citizen.Wait(0)
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        for k, v in pairs(objPropSpawnList) do
            log('delete object : ' .. tostring(v))
            if v ~= nil then
                ESX.Game.DeleteObject(v)
            end
        end
    end
end)

function OpenVaultInventoryMenu(data)
    if data.job == ESX.GetPlayerData().job.name or data.job == 'vault' then
        if checkItemUse(data.needItemLicense) then
            vaultType = data
            ESX.TriggerServerCallback("monster_vault:getVaultInventory", function(inventory)
                TriggerEvent(Config.EventRoute['openVaultInventory'], inventory)
            end, data, false)
        else
            Config.ClientOnNotify('คุณไม่มี กุญแจ ในการเปิดตู้เซฟ!')
        end
    else
        Config.ClientOnNotify('คุณไม่ได้รับอนุญาต เพราะไม่ใช่หน่วยงานที่กำหนด!!')
        Citizen.Wait(8000)
    end
end

function checkItemUse(itemList)
    local inventory = ESX.GetPlayerData().inventory
    for i = 1, #inventory do
        for k, v in pairs(itemList) do
            if v == inventory[i].name and inventory[i].count > 0 then
                return true
            end
        end
    end
    return false
end

Citizen.CreateThread(function()
    while ESX == nil or ESX.GetPlayerData().job == nil do
        Citizen.Wait(1000)
    end
    for k, v in pairs(Config.VaultInventory) do
        for i, j in pairs(v.Coords) do
            ESX.Game.SpawnLocalObject(v.Model, j, function(obj)
                objPropSpawnList = obj
                SetEntityHeading(obj, j.w)
                PlaceObjectOnGroundProperly(obj)
                FreezeEntityPosition(obj, true)
            end)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local coords = GetEntityCoords(PlayerPedId())
        for k, v in pairs(Config.VaultInventory) do
            for i, j in pairs(v.Coords) do
                local dist = GetDistanceBetweenCoords(coords, j, true)
                if dist < 2 then
                    Config.ClientOnShowHelpMenu(v)
                    if IsControlJustReleased(0, Keys['E']) then
                        OpenVaultInventoryMenu({ job = k, needItemLicense = v.NeedItemLicense })
                    else
                        break
                    end
                end
            end
        end
    end
end)

function CheckPlayerInArea()
    Citizen.CreateThread(function()
        local loopDelay = 1000
        while true do
            if activeArea ~= nil then
                loopDelay = 250
                local PlayerCoords = GetEntityCoords(PlayerPedId())
                local propCoords = activeArea.Coords

                if GetDistanceBetweenCoords(PlayerCoords, propCoords.x, propCoords.y, propCoords.z, true) > activeArea.AreaSize then
                    ESX.Game.DeleteObject(objPropSpawn)
                    activeArea = nil
                    isSpawnProp = false
                    objPropSpawn = nil
                else
                    if not isSpawnProp then
                        spawnObject(activeArea)
                    end
                end
            else
                loopDelay = 1000
                local PlayerCoords = GetEntityCoords(PlayerPedId())
                for k, v in pairs(Config.PropList) do
                    if GetDistanceBetweenCoords(PlayerCoords, v.Coords.x, v.Coords.y, v.Coords.z, true) < v.AreaSize then
                        activeArea = v
                    end
                end
            end
            Citizen.Wait(loopDelay)
        end
    end)
end

function getMonsterVaultLicense()
    return vaultType
end
