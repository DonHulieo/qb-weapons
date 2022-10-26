-- Variables
local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local CurrentWeaponData, CanShoot, MultiplierAmount = {}, true, 0

-- Handlers

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.TriggerCallback("weapons:server:GetConfig", function(RepairPoints)
        for k, data in pairs(RepairPoints) do
            Config.RepairPoints[k].IsRepairing = data.IsRepairing
            Config.RepairPoints[k].RepairingData = data.RepairingData
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    for k in pairs(Config.RepairPoints) do
        Config.RepairPoints[k].IsRepairing = false
        Config.RepairPoints[k].RepairingData = {}
    end
end)

-- Events

RegisterNetEvent("weapons:client:SyncRepairShops", function(NewData, key)
    Config.RepairPoints[key].IsRepairing = NewData.IsRepairing
    Config.RepairPoints[key].RepairingData = NewData.RepairingData
end)

RegisterNetEvent("addAttachment", function(component)
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)
    local WeaponData = QBCore.Shared.Weapons[weapon]
    GiveWeaponComponentToPed(ped, GetHashKey(WeaponData.name), GetHashKey(component))
end)

RegisterNetEvent('weapons:client:EquipTint', function(tint)
    local player = PlayerPedId()
    local weapon = GetSelectedPedWeapon(player)
    SetPedWeaponTintIndex(player, weapon, tint)
end)

RegisterNetEvent('weapons:client:SetCurrentWeapon', function(data, bool)
    if data ~= false then
        CurrentWeaponData = data
    else
        CurrentWeaponData = {}
    end
    CanShoot = bool
end)

RegisterNetEvent('weapons:client:SetWeaponQuality', function(amount)
    if CurrentWeaponData and next(CurrentWeaponData) then
        TriggerServerEvent("weapons:server:SetWeaponQuality", CurrentWeaponData, amount)
    end
end)

RegisterNetEvent('weapons:client:AddAmmo', function(type, amount, itemData)
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)
    if CurrentWeaponData then
        if QBCore.Shared.Weapons[weapon]["name"] ~= "weapon_unarmed" and QBCore.Shared.Weapons[weapon]["ammotype"] == type:upper() then
            local total = GetAmmoInPedWeapon(ped, weapon)
            local _, maxAmmo = GetMaxAmmo(ped, weapon)
            if total < maxAmmo then
                QBCore.Functions.Progressbar("taking_bullets", Lang:t('info.loading_bullets'), Config.ReloadTime, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function() -- Done
                    if QBCore.Shared.Weapons[weapon] then
                        AddAmmoToPed(ped,weapon,amount)
                        MakePedReload(ped)
                        TriggerServerEvent("weapons:server:UpdateWeaponAmmo", CurrentWeaponData, total + amount)
                        TriggerServerEvent('weapons:server:removeWeaponAmmoItem', itemData)
                        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemData.name], "remove")
                        TriggerEvent('QBCore:Notify', Lang:t('success.reloaded'), "success")
                    end
                end, function()
                    QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
                end)
            else
                QBCore.Functions.Notify(Lang:t('error.max_ammo'), "error")
            end
        else
            QBCore.Functions.Notify(Lang:t('error.no_weapon'), "error")
        end
    else
        QBCore.Functions.Notify(Lang:t('error.no_weapon'), "error")
    end
end)

RegisterNetEvent("weapons:client:EquipAttachment", function(ItemData, attachment)
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)
    local WeaponData = QBCore.Shared.Weapons[weapon]
    if weapon ~= `WEAPON_UNARMED` then
        WeaponData.name = WeaponData.name:upper()
        if WeaponAttachments[WeaponData.name] then
            if WeaponAttachments[WeaponData.name][attachment]['item'] == ItemData.name then
                TriggerServerEvent("weapons:server:EquipAttachment", ItemData, CurrentWeaponData, WeaponAttachments[WeaponData.name][attachment])
            else
                QBCore.Functions.Notify(Lang:t('error.no_support_attachment'), "error")
            end
        end
    else
        QBCore.Functions.Notify(Lang:t('error.no_weapon_in_hand'), "error")
    end
end)

-- Threads

CreateThread(function()
    SetWeaponsNoAutoswap(true)
end)

CreateThread(function()
    while true do
        Wait(100)
        
        local playerPed = PlayerPedId()
        local weaponsConfig = Config.WeaponsDamage[GetSelectedPedWeapon(playerPed)]
        
        if weaponsConfig then
            if weaponsConfig.disableCriticalHits then
                SetPedSuffersCriticalHits(playerPed, false)
            end
            N_0x4757f00bc6323cfe(weaponsConfig.model, weaponsConfig.modifier)
        else
            Wait(500)
        end
    end
end)

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        if IsPedArmed(ped, 7) == 1 and (IsControlJustReleased(0, 24) or IsDisabledControlJustReleased(0, 24)) then
            local weapon = GetSelectedPedWeapon(ped)
            local ammo = GetAmmoInPedWeapon(ped, weapon)
            TriggerServerEvent("weapons:server:UpdateWeaponAmmo", CurrentWeaponData, tonumber(ammo))
            if MultiplierAmount > 0 then
                TriggerServerEvent("weapons:server:UpdateWeaponQuality", CurrentWeaponData, MultiplierAmount)
                MultiplierAmount = 0
            end
        end
        Wait(0)
    end
end)

CreateThread(function()
    while true do
        if LocalPlayer.state.isLoggedIn then
            local ped = PlayerPedId()
            if CurrentWeaponData and next(CurrentWeaponData) then
                if IsPedShooting(ped) or IsControlJustPressed(0, 24) then
                    local weapon = GetSelectedPedWeapon(ped)
                    if CanShoot then
                        if weapon and weapon ~= 0 and QBCore.Shared.Weapons[weapon] then
                            QBCore.Functions.TriggerCallback('prison:server:checkThrowable', function(result)
                                if result or GetAmmoInPedWeapon(ped, weapon) <= 0 then return end
                                MultiplierAmount += 1
                            end, weapon)
                            Wait(200)
                        end
                    else
                        if weapon ~= `WEAPON_UNARMED` then
                            TriggerEvent('inventory:client:CheckWeapon', QBCore.Shared.Weapons[weapon]["name"])
                            QBCore.Functions.Notify(Lang:t('error.weapon_broken'), "error")
                            MultiplierAmount = 0
                        end
                    end
                end
            end
        end
        Wait(0)
    end
end)

CreateThread(function()
    for k, v in pairs (Config.RepairPoints) do
        local opt = {}
        if v.type == "public" then
            opt = {
                {
                    type = "client",
                    event = "weapon:startRepair",
                    label = 'Start Weapon Repair',
                    id = k,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing or Config.RepairPoints[k].RepairingData.Ready then
                            return false
                        else
                            return true
                        end
                    end,
                  },
                  {
                    type = "server",
                    event = "weapon:repairTime",
                    label = 'Check Repair Time',
                    id = k,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing then
                            return true
                        else
                            return false
                        end
                    end,
                  },
                  {
                    type = "client",
                    event = "weapon:completeRepair",
                    label = 'Collect Weapon',
                    id = k,
                    canInteract = function()
                        if Config.RepairPoints[k].RepairingData.Ready then
                            return true
                        else
                            return false
                        end
                    end,
                  }
            }
        elseif v.type == "private" then
            local temp = v.citizenids
            opt = {
                {
                    type = "client",
                    event = "weapon:startRepair",
                    label = 'Start Weapon Repair',
                    id = k,
                    citizenid = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing or Config.RepairPoints[k].RepairingData.Ready then
                            return false
                        else
                            return true
                        end
                    end,
                  },
                  {
                    type = "server",
                    event = "weapon:repairTime",
                    label = 'Check Repair Time',
                    id = k,
                    citizenid = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing then
                            return true
                        else
                            return false
                        end
                    end,
                  },
                  {
                    type = "client",
                    event = "weapon:completeRepair",
                    label = 'Collect Weapon',
                    id = k,
                    citizenid = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].RepairingData.Ready then
                            return true
                        else
                            return false
                        end
                    end,
                  }
            }
        elseif v.type == "job" then
            local temp = v.jobs
            opt = {
                {
                    type = "client",
                    event = "weapon:startRepair",
                    label = 'Start Weapon Repair',
                    id = k,
                    job = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing or Config.RepairPoints[k].RepairingData.Ready then
                            return false
                        else
                            return true
                        end
                    end,
                  },
                  {
                    type = "server",
                    event = "weapon:repairTime",
                    label = 'Check Repair Time',
                    id = k,
                    job = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing then
                            return true
                        else
                            return false
                        end
                    end,
                  },
                  {
                    type = "client",
                    event = "weapon:completeRepair",
                    label = 'Collect Weapon',
                    id = k,
                    job = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].RepairingData.Ready then
                            return true
                        else
                            return false
                        end
                    end,
                  }
            }
        elseif v.type == "gang" then
            local temp = v.gangs
            opt = {
                {
                    type = "client",
                    event = "weapon:startRepair",
                    label = 'Start Weapon Repair',
                    id = k,
                    gang = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing or Config.RepairPoints[k].RepairingData.Ready then
                            return false
                        else
                            return true
                        end
                    end,
                  },
                  {
                    type = "server",
                    event = "weapon:repairTime",
                    label = 'Check Repair Time',
                    id = k,
                    gang = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing then
                            return true
                        else
                            return false
                        end
                    end,
                  },
                  {
                    type = "client",
                    event = "weapon:completeRepair",
                    label = 'Collect Weapon',
                    id = k,
                    gang = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].RepairingData.Ready then
                            return true
                        else
                            return false
                        end
                    end,
                  }
            }
        end
        exports['qb-target']:AddBoxZone("weaponrepair"..k, vector3(v.coords.x, v.coords.y, v.coords.z), 1.25, 1.5, {
            name = "weaponrepair"..k,
            heading = v.coords.w,
            debugPoly = v.debug,
            minZ = v.coords.z-0.5,
            maxZ = v.coords.z+0.5,
          },{
            options = opt,
            distance = 2.5,
        })
    end
end)

RegisterNetEvent("weapon:startRepair", function(data)
    if CurrentWeaponData and next(CurrentWeaponData) then
        local WeaponData = QBCore.Shared.Weapons[GetHashKey(CurrentWeaponData.name)]
        local WeaponClass = (QBCore.Shared.SplitStr(WeaponData.ammotype, "_")[2]):lower()
        TriggerEvent('QBCore:Notify', Lang:t('info.repair_weapon_price', { value = Config.RepairPoints[data.id].repairCosts[WeaponClass].cost}), "primary", 1500)
        QBCore.Functions.TriggerCallback('weapons:server:RepairWeapon', function(HasMoney)
            if HasMoney then
                TriggerEvent('QBCore:Notify', Lang:t('info.weapon_repair_started'), "success", 1500)
                CurrentWeaponData = {}
            else
                TriggerEvent('QBCore:Notify', Lang:t('info.not_enough_cash'), "error", 1500)
            end
        end, data.id, CurrentWeaponData)
    else
        if Config.RepairPoints[data.id].RepairingData.CitizenId == nil then
            TriggerEvent('QBCore:Notify', Lang:t('error.no_weapon_in_hand'), "error", 1500)
        end
    end
end)

RegisterNetEvent("weapon:completeRepair", function(data)
    if CurrentWeaponData and next(CurrentWeaponData) then
        if Config.RepairPoints[data.id].RepairingData.CitizenId ~= PlayerData.citizenid then
            TriggerEvent('QBCore:Notify', Lang:t('info.repairshop_not_usable'), "error", 1500)
        else
            TriggerEvent('QBCore:Notify', Lang:t('info.take_weapon_back'), "success", 1500)
            TriggerServerEvent('weapons:server:TakeBackWeapon', data.id, data)
        end
    else
        if Config.RepairPoints[data.id].RepairingData.CitizenId == PlayerData.citizenid then
            TriggerEvent('QBCore:Notify', Lang:t('info.take_weapon_back'), "success", 1500)
            TriggerServerEvent('weapons:server:TakeBackWeapon', data.id, data)
        end
        if Config.RepairPoints[data.id].RepairingData.CitizenId == nil then
            TriggerEvent('QBCore:Notify', Lang:t('info.take_weapon_nil'), "success", 1500)
            TriggerServerEvent('weapons:server:TakeBackWeapon', data.id, data)
        end
    end
end)
