ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- skrzynka #1 < weapon_combatpistol

ESX.RegisterUsableItem('pistol_crate_combat', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('pistol_crate_combat', 1)

    TriggerClientEvent("esx:showNotification", source, "Unpacking weapons crate...")
    
    Wait(1000) 

    TriggerClientEvent("esx:showNotification", source, "Unpacked weapon crate successfully...")

    xPlayer.addWeapon('WEAPON_COMBATPISTOL', 250)

	TriggerClientEvent('esx_weaponscrate:GiveWeaponPistol', source)
end)