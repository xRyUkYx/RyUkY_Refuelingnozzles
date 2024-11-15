ESX = nil

if Config.UseESX then
	ESX = exports['es_extended']:getSharedObject()

	RegisterServerEvent('fuel:pay')
	AddEventHandler('fuel:pay', function(price)
		local source = source
		local success = exports.ox_inventory:RemoveItem(source, 'money', price)
		if not success then
			TriggerClientEvent('fuel:refuelCanceled', source)
		end
	end)
end


RegisterServerEvent('fuel:buyJerryCan') 
AddEventHandler('fuel:buyJerryCan', function()
    local source = source
    local success = exports.ox_inventory:RemoveItem(source, 'money', Config.JerryCanCost)
    
    if success then
        exports.ox_inventory:AddItem(source, 'weapon_petrolcan', 1, {durability = 100})
        TriggerClientEvent('fuel:jerryCanPurchased', source)
    else
        TriggerClientEvent('fuel:purchaseFailed', source)
    end
end)
