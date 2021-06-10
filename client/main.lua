local holdingUp = false
local store = ""
local blipRobbery = nil
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

function drawTxt(x,y, width, height, scale, text, r,g,b,a, outline)
	SetTextFont(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropshadow(0, 0, 0, 0,255)
	SetTextDropShadow()
	if outline then SetTextOutline() end

	BeginTextCommandDisplayText('STRING')
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandDisplayText(x - width/2, y - height/2 + 0.005)
end

RegisterNetEvent('esx_customrob:currentlyRobbing')
AddEventHandler('esx_customrob:currentlyRobbing', function(currentStore)
	holdingUp, store = true, currentStore
end)

RegisterNetEvent('esx_customrob:killBlip')
AddEventHandler('esx_customrob:killBlip', function()
	RemoveBlip(blipRobbery)
end)

RegisterNetEvent('esx_customrob:setBlip')
AddEventHandler('esx_customrob:setBlip', function(position)
	blipRobbery = AddBlipForCoord(position.x, position.y, position.z)

	SetBlipSprite(blipRobbery, 161)
	SetBlipScale(blipRobbery, 2.0)
	SetBlipColour(blipRobbery, 3)

	PulseBlip(blipRobbery)
end)

RegisterNetEvent('esx_customrob:tooFar')
AddEventHandler('esx_customrob:tooFar', function()
	holdingUp, store = false, ''
	exports['mythic_notify']:DoCustomHudText('inform', _U('robbery_cancelled'))
end)

RegisterNetEvent('esx_customrob:robberyComplete')
AddEventHandler('esx_customrob:robberyComplete', function(award)
	holdingUp, store = false, ''
	exports['mythic_notify']:DoHudText('success', 'Robbery complete')
end)

Citizen.CreateThread(function()
	CreateObject(-1203351544, 598.28, -3139.25, 5.07, true, true, true)
end)
--end
RegisterNetEvent('esx_customrob:endTimer')
AddEventHandler('esx_customrob:endTimer', function()
	local tugped2 = GetHashKey('g_m_y_salvaboss_01')
	local gun = GetHashKey('WEAPON_COMBATPDW')
end)
	
	Citizen.CreateThread(function()
		AddRelationshipGroup('tug')

		RequestModel(-1872961334)
		tugped1 = CreatePed(30, -1872961334, 5038.04, -5784.53, 17.68, 88.00, true, false)
		--CreatePed(30, tugped1, 583.54, -3117.87, 19.00, 88.00, true, false)
		SetPedArmour(tugped1, 100)
		SetPedAsEnemy(tugped1, true)
		SetPedRelationshipGroupHash(tugped1, 'tug')
		GiveWeaponToPed(tugped1, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped1, GetPlayerPed(-1))
		SetPedAccuracy(tugped1, 100)
		SetPedDropsWeaponsWhenDead(tugped1, false)
		
		tugped2 = CreatePed(30, -1872961334, 5030.81, -5780.69, 16.35, 360.00, true, false)
		SetPedArmour(tugped2, 100)
		SetPedAsEnemy(tugped2, true)
		SetPedRelationshipGroupHash(tugped2, 'tug')
		GiveWeaponToPed(tugped2, GetHashKey('WEAPON_MINIGUN'), 250, false, true)
		TaskCombatPed(tugped2, GetPlayerPed(-1))
		SetPedAccuracy(tugped2, 100)
		SetPedDropsWeaponsWhenDead(tugped2, false)

		tugped3 = CreatePed(30, -1872961334, 5027.48, -5774.16, 17.68, 350.00, true, false)
		SetPedArmour(tugped3, 100)
		SetPedAsEnemy(tugped3, true)
		SetPedRelationshipGroupHash(tugped3, 'tug')
		GiveWeaponToPed(tugped3, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped3, GetPlayerPed(-1))
		SetPedAccuracy(tugped3, 100)
		SetPedDropsWeaponsWhenDead(tugped3, false)

		tugped4 = CreatePed(30, -1872961334, 5029.6, -5758.91, 16.11, 350.00, true, false)
		SetPedArmour(tugped4, 100)
		SetPedAsEnemy(tugped4, true)
		SetPedRelationshipGroupHash(tugped4, 'tug')
		GiveWeaponToPed(tugped4, GetHashKey('WEAPON_MINIGUN'), 250, false, true)
		TaskCombatPed(tugped4, GetPlayerPed(-1))
		SetPedAccuracy(tugped4, 100)
		SetPedDropsWeaponsWhenDead(tugped4, false)

		tugped5 = CreatePed(30, -1872961334, 5025.15, -5761.3, 15.75, 300.00, true, false)
		SetPedArmour(tugped5, 100)
		SetPedAsEnemy(tugped5, true)
		SetPedRelationshipGroupHash(tugped5, 'tug')
		GiveWeaponToPed(tugped5, GetHashKey('WEAPON_MINIGUN'), 250, false, true)
		TaskCombatPed(tugped5, GetPlayerPed(-1))
		SetPedAccuracy(tugped5, 100)
		SetPedDropsWeaponsWhenDead(tugped5, false)


		tugped6 = CreatePed(30, -1872961334, 5068.39, -5777.63, 16.32, 266.00, true, false)
		SetPedArmour(tugped6, 100)
		SetPedAsEnemy(tugped6, true)
		SetPedRelationshipGroupHash(tugped6, 'tug')
		GiveWeaponToPed(tugped6, GetHashKey('WEAPON_MINIGUN'), 250, false, true)
		TaskCombatPed(tugped6, GetPlayerPed(-1))
		SetPedAccuracy(tugped6, 100)
		SetPedDropsWeaponsWhenDead(tugped6, false)

		tugped7 = CreatePed(30, -1872961334, 5048.97, -5783.2, 15.73, 298.00, true, false)
		SetPedArmour(tugped7, 0)
		SetPedAsEnemy(tugped7, true)
		SetPedRelationshipGroupHash(tugped7, 'tug')
		GiveWeaponToPed(tugped7, GetHashKey('WEAPON_GRENADELAUNCHER_SMOKE'), 250, false, true)
		TaskCombatPed(tugped7, GetPlayerPed(-1))
		SetPedAccuracy(tugped7, 100)
		SetPedDropsWeaponsWhenDead(tugped7, false)

		tugped8 = CreatePed(30, -1872961334, 5042.17, -5786.9, 15.64, 266.00, true, false)
		SetPedArmour(tugped8, 100)
		SetPedAsEnemy(tugped8, true)
		SetPedRelationshipGroupHash(tugped8, 'tug')
		GiveWeaponToPed(tugped8, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped8, GetPlayerPed(-1))
		SetPedAccuracy(tugped8, 100)
		SetPedDropsWeaponsWhenDead(tugped8, false)

		tugped9 = CreatePed(30, -1872961334, 5041.02, -5793.8, 17.48, 269.00, true, false)
		SetPedArmour(tugped9, 100)
		SetPedAsEnemy(tugped9, true)
		SetPedRelationshipGroupHash(tugped9, 'tug')
		GiveWeaponToPed(tugped9, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped9, GetPlayerPed(-1))
		SetPedAccuracy(tugped9, 100)
		SetPedDropsWeaponsWhenDead(tugped9, false)

		tugped10 = CreatePed(30, -1872961334, 5025.46, -5800.93, 17.68, 319.00, true, false)
		SetPedArmour(tugped10, 100)
		SetPedAsEnemy(tugped10, true)
		SetPedRelationshipGroupHash(tugped10, 'tug')
		GiveWeaponToPed(tugped10, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped10, GetPlayerPed(-1))
		SetPedAccuracy(tugped10, 100)
		SetPedDropsWeaponsWhenDead(tugped10, false)


		tugped11 = CreatePed(30, -1872961334, 5023.34, -5801.85, 17.68, 359.00, true, false)
		SetPedArmour(tugped11, 100)
		SetPedAsEnemy(tugped11, true)
		SetPedRelationshipGroupHash(tugped11, 'tug')
		GiveWeaponToPed(tugped11, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped11, GetPlayerPed(-1))
		SetPedAccuracy(tugped11, 100)
		SetPedDropsWeaponsWhenDead(tugped11, false)

		tugped12 = CreatePed(30, -1872961334, 5021.62, -5799.04, 17.68, 359.00, true, false)
		SetPedArmour(tugped12, 100)
		SetPedAsEnemy(tugped12, true)
		SetPedRelationshipGroupHash(tugped12, 'tug')
		GiveWeaponToPed(tugped12, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped12, GetPlayerPed(-1))
		SetPedAccuracy(tugped12, 100)
		SetPedDropsWeaponsWhenDead(tugped12, false)

		tugped13 = CreatePed(30, -1872961334, 5023.54, -5797.6, 17.68, 45.75, 50.00, true, false)
		SetPedArmour(tugped13, 100)
		SetPedAsEnemy(tugped13, true)
		SetPedRelationshipGroupHash(tugped13, 'tug')
		GiveWeaponToPed(tugped13, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped13, GetPlayerPed(-1))
		SetPedAccuracy(tugped13, 100)
		SetPedDropsWeaponsWhenDead(tugped13, false)

		tugped14 = CreatePed(30, -1872961334, 5021.0, -5796.52, 17.68, 268.00, true, false)
		SetPedArmour(tugped14, 100)
		SetPedAsEnemy(tugped14, true)
		SetPedRelationshipGroupHash(tugped14, 'tug')
		GiveWeaponToPed(tugped14, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped14, GetPlayerPed(-1))
		SetPedAccuracy(tugped14, 100)
		SetPedDropsWeaponsWhenDead(tugped14, false)

		tugped15 = CreatePed(30, -1872961334, 5014.75, -5794.16, 17.68, 266.00, true, false)
		SetPedArmour(tugped15, 100)
		SetPedAsEnemy(tugped15, true)
		SetPedRelationshipGroupHash(tugped15, 'tug')
		GiveWeaponToPed(tugped15, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped15, GetPlayerPed(-1))
		SetPedAccuracy(tugped15, 100)
		SetPedDropsWeaponsWhenDead(tugped15, false)


		tugped16 = CreatePed(30, -1872961334, 5012.31, -5790.25, 17.68, 266.00, true, false)
		SetPedArmour(tugped16, 200)
		SetPedAsEnemy(tugped16, true)
		SetPedRelationshipGroupHash(tugped16, 'tug')
		GiveWeaponToPed(tugped16, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped16, GetPlayerPed(-1))
		SetPedAccuracy(tugped16, 100)
		SetPedDropsWeaponsWhenDead(tugped16, false)

		tugped17 = CreatePed(30, -1872961334, 5011.09, -5780.39, 17.68, 266.00, true, false)
		SetPedArmour(tugped17, 200)
		SetPedAsEnemy(tugped17, true)
		SetPedRelationshipGroupHash(tugped17, 'tug')
		GiveWeaponToPed(tugped17, GetHashKey('WEAPON_MINIGUN'), 250, false, true)
		TaskCombatPed(tugped17, GetPlayerPed(-1))
		SetPedAccuracy(tugped17, 100)
		SetPedDropsWeaponsWhenDead(tugped17, false)

		tugped18 = CreatePed(30, -1872961334, 4995.02, -5774.63, 16.28, 266.00, true, false)
		SetPedArmour(tugped18, 200)
		SetPedAsEnemy(tugped18, true)
		SetPedRelationshipGroupHash(tugped18, 'tug')
		GiveWeaponToPed(tugped18, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped18, GetPlayerPed(-1))
		SetPedAccuracy(tugped18, 100)
		SetPedDropsWeaponsWhenDead(tugped18, false)

		tugped19 = CreatePed(30, -1872961334, 4995.86, -5765.4, 16.3, 266.00, true, false)
		SetPedArmour(tugped19, 200)
		SetPedAsEnemy(tugped19, true)
		SetPedRelationshipGroupHash(tugped19, 'tug')
		GiveWeaponToPed(tugped19, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped19, GetPlayerPed(-1))
		SetPedAccuracy(tugped19, 100)
		SetPedDropsWeaponsWhenDead(tugped19, false)

		tugped20 = CreatePed(30, -1872961334, 4986.69, -5784.4, 17.08, 182.00, true, false)
		SetPedArmour(tugped20, 200)
		SetPedAsEnemy(tugped20, true)
		SetPedRelationshipGroupHash(tugped20, 'tug')
		GiveWeaponToPed(tugped20, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped20, GetPlayerPed(-1))
		SetPedAccuracy(tugped20, 100)
		SetPedDropsWeaponsWhenDead(tugped20, false)


		tugped21 = CreatePed(30, -1872961334, 4994.1, -5789.45, 17.49, 266.00, true, false)
		SetPedArmour(tugped21, 200)
		SetPedAsEnemy(tugped21, true)
		SetPedRelationshipGroupHash(tugped21, 'tug')
		GiveWeaponToPed(tugped21, GetHashKey('WEAPON_MINIGUN'), 250, false, true)
		SetPedAccuracy(tugped21, 100)
		SetPedDropsWeaponsWhenDead(tugped21, false)

		tugped22 = CreatePed(30, -1872961334, 4990.8, -5786.48, 20.88, 227.00, true, false)
		SetPedArmour(tugped22, 200)
		SetPedAsEnemy(tugped22, true)
		SetPedRelationshipGroupHash(tugped22, 'tug')
		GiveWeaponToPed(tugped22, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		SetPedAccuracy(tugped22, 100)
		SetPedDropsWeaponsWhenDead(tugped22, false)

		tugped23 = CreatePed(30, -1872961334, 4980.32, -5800.47, 20.88, 344.00, true, false)
		SetPedArmour(tugped23, 200)
		SetPedAsEnemy(tugped23, true)
		SetPedRelationshipGroupHash(tugped23, 'tug')
		GiveWeaponToPed(tugped23, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		SetPedAccuracy(tugped23, 100)
		SetPedDropsWeaponsWhenDead(tugped23, false)


		tugped24 = CreatePed(30, -1872961334, 4994.79, -5754.09, 19.9, 351.00, true, false)
		SetPedArmour(tugped24, 200)
		SetPedAsEnemy(tugped24, true)
		SetPedRelationshipGroupHash(tugped24, 'tug')
		GiveWeaponToPed(tugped24, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped24, GetPlayerPed(-1))
		SetPedAccuracy(tugped24, 100)
		SetPedDropsWeaponsWhenDead(tugped24, false)

		tugped25 = CreatePed(30, -1872961334, 4997.4, -5733.61, 19.88, 87.00, true, false)
		SetPedArmour(tugped25, 200)
		SetPedAsEnemy(tugped25, true)
		SetPedRelationshipGroupHash(tugped25, 'tug')
		GiveWeaponToPed(tugped25, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped25, GetPlayerPed(-1))
		SetPedAccuracy(tugped25, 80)
		SetPedDropsWeaponsWhenDead(tugped25, false)

		tugped26 = CreatePed(30, -1872961334, 4998.0, -5738.74, 19.88, 182.00, true, false)
		SetPedArmour(tugped26, 200)
		SetPedAsEnemy(tugped26, true)
		SetPedRelationshipGroupHash(tugped26, 'tug')
		GiveWeaponToPed(tugped26, GetHashKey('WEAPON_MINIGUN'), 250, false, true)
		TaskCombatPed(tugped26, GetPlayerPed(-1))
		SetPedAccuracy(tugped26, 80)
		SetPedDropsWeaponsWhenDead(tugped26, false)

		tugped27 = CreatePed(30, -1872961334, 5003.15, -5723.7, 19.5, 179.00, true, false)
		SetPedArmour(tugped27, 200)
		SetPedAsEnemy(tugped27, true)
		SetPedRelationshipGroupHash(tugped27, 'tug')
		GiveWeaponToPed(tugped27, GetHashKey('WEAPON_GRENADELAUNCHER_SMOKE'), 250, false, true)
		TaskCombatPed(tugped27, GetPlayerPed(-1))
		SetPedAccuracy(tugped27, 80)
		SetPedDropsWeaponsWhenDead(tugped27, false)

		tugped28 = CreatePed(30, -1285859404, 5005.03, -5729.92, 19.5, 6.00, true, false)
		SetPedArmour(tugped28, 200)
		SetPedAsEnemy(tugped28, true)
		SetPedRelationshipGroupHash(tugped28, 'tug')
		GiveWeaponToPed(tugped28, GetHashKey('WEAPON_GRENADELAUNCHER_SMOKE'), 250, false, true)
		TaskCombatPed(tugped28, GetPlayerPed(-1))
		SetPedAccuracy(tugped28, 80)
		SetPedDropsWeaponsWhenDead(tugped28, false)
		
		
		
	end)
--end
RegisterNetEvent('esx_customrob:startTimer')
AddEventHandler('esx_customrob:startTimer', function()
	local tugped2 = GetHashKey('g_m_y_salvaboss_01')
	local gun = GetHashKey('WEAPON_COMBATPDW')
	local timer = Stores[store].secondsRemaining

	Citizen.CreateThread(function()
		while timer > 0 and holdingUp do
			Citizen.Wait(1000)

			if timer > 0 then
				timer = timer - 1
			end
		end
	end)

	Citizen.CreateThread(function()
		AddRelationshipGroup('tug')

		RequestModel(-1872961334)
		tugped1 = CreatePed(30, -1872961334, 5038.04, -5784.53, 17.68, 88.00, true, false)
		--CreatePed(30, tugped1, 583.54, -3117.87, 19.00, 88.00, true, false)
		SetPedArmour(tugped1, 100)
		SetPedAsEnemy(tugped1, true)
		SetPedRelationshipGroupHash(tugped1, 'tug')
		GiveWeaponToPed(tugped1, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped1, GetPlayerPed(-1))
		SetPedAccuracy(tugped1, 100)
		SetPedDropsWeaponsWhenDead(tugped1, false)
		
		tugped2 = CreatePed(30, -1872961334, 5030.81, -5780.69, 16.35, 360.00, true, false)
		SetPedArmour(tugped2, 100)
		SetPedAsEnemy(tugped2, true)
		SetPedRelationshipGroupHash(tugped2, 'tug')
		GiveWeaponToPed(tugped2, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped2, GetPlayerPed(-1))
		SetPedAccuracy(tugped2, 100)
		SetPedDropsWeaponsWhenDead(tugped2, false)

		tugped3 = CreatePed(30, -1872961334, 5027.48, -5774.16, 17.68, 350.00, true, false)
		SetPedArmour(tugped3, 100)
		SetPedAsEnemy(tugped3, true)
		SetPedRelationshipGroupHash(tugped3, 'tug')
		GiveWeaponToPed(tugped3, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped3, GetPlayerPed(-1))
		SetPedAccuracy(tugped3, 100)
		SetPedDropsWeaponsWhenDead(tugped3, false)

		tugped4 = CreatePed(30, -1872961334, 5029.6, -5758.91, 16.11, 350.00, true, false)
		SetPedArmour(tugped4, 100)
		SetPedAsEnemy(tugped4, true)
		SetPedRelationshipGroupHash(tugped4, 'tug')
		GiveWeaponToPed(tugped4, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped4, GetPlayerPed(-1))
		SetPedAccuracy(tugped4, 100)
		SetPedDropsWeaponsWhenDead(tugped4, false)

		tugped5 = CreatePed(30, -1872961334, 5025.15, -5761.3, 15.75, 300.00, true, false)
		SetPedArmour(tugped5, 100)
		SetPedAsEnemy(tugped5, true)
		SetPedRelationshipGroupHash(tugped5, 'tug')
		GiveWeaponToPed(tugped5, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped5, GetPlayerPed(-1))
		SetPedAccuracy(tugped5, 100)
		SetPedDropsWeaponsWhenDead(tugped5, false)

		Citizen.Wait(100000)

		tugped6 = CreatePed(30, -1872961334, 5068.39, -5777.63, 16.32, 266.00, true, false)
		SetPedArmour(tugped6, 100)
		SetPedAsEnemy(tugped6, true)
		SetPedRelationshipGroupHash(tugped6, 'tug')
		GiveWeaponToPed(tugped6, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped6, GetPlayerPed(-1))
		SetPedAccuracy(tugped6, 100)
		SetPedDropsWeaponsWhenDead(tugped6, false)

		tugped7 = CreatePed(30, -1872961334, 5048.97, -5783.2, 15.73, 298.00, true, false)
		SetPedArmour(tugped7, 0)
		SetPedAsEnemy(tugped7, true)
		SetPedRelationshipGroupHash(tugped7, 'tug')
		GiveWeaponToPed(tugped7, GetHashKey('WEAPON_GRENADELAUNCHER_SMOKE'), 250, false, true)
		TaskCombatPed(tugped7, GetPlayerPed(-1))
		SetPedAccuracy(tugped7, 100)
		SetPedDropsWeaponsWhenDead(tugped7, false)

		tugped8 = CreatePed(30, -1872961334, 5042.17, -5786.9, 15.64, 266.00, true, false)
		SetPedArmour(tugped8, 100)
		SetPedAsEnemy(tugped8, true)
		SetPedRelationshipGroupHash(tugped8, 'tug')
		GiveWeaponToPed(tugped8, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped8, GetPlayerPed(-1))
		SetPedAccuracy(tugped8, 100)
		SetPedDropsWeaponsWhenDead(tugped8, false)

		tugped9 = CreatePed(30, -1872961334, 5041.02, -5793.8, 17.48, 269.00, true, false)
		SetPedArmour(tugped9, 100)
		SetPedAsEnemy(tugped9, true)
		SetPedRelationshipGroupHash(tugped9, 'tug')
		GiveWeaponToPed(tugped9, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped9, GetPlayerPed(-1))
		SetPedAccuracy(tugped9, 100)
		SetPedDropsWeaponsWhenDead(tugped9, false)

		tugped10 = CreatePed(30, -1872961334, 5025.46, -5800.93, 17.68, 319.00, true, false)
		SetPedArmour(tugped10, 100)
		SetPedAsEnemy(tugped10, true)
		SetPedRelationshipGroupHash(tugped10, 'tug')
		GiveWeaponToPed(tugped10, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped10, GetPlayerPed(-1))
		SetPedAccuracy(tugped10, 100)
		SetPedDropsWeaponsWhenDead(tugped10, false)

		Citizen.Wait(60000)

		tugped11 = CreatePed(30, -1872961334, 5023.34, -5801.85, 17.68, 359.00, true, false)
		SetPedArmour(tugped11, 100)
		SetPedAsEnemy(tugped11, true)
		SetPedRelationshipGroupHash(tugped11, 'tug')
		GiveWeaponToPed(tugped11, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped11, GetPlayerPed(-1))
		SetPedAccuracy(tugped11, 100)
		SetPedDropsWeaponsWhenDead(tugped11, false)

		tugped12 = CreatePed(30, -1872961334, 5021.62, -5799.04, 17.68, 359.00, true, false)
		SetPedArmour(tugped12, 100)
		SetPedAsEnemy(tugped12, true)
		SetPedRelationshipGroupHash(tugped12, 'tug')
		GiveWeaponToPed(tugped12, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped12, GetPlayerPed(-1))
		SetPedAccuracy(tugped12, 100)
		SetPedDropsWeaponsWhenDead(tugped12, false)

		tugped13 = CreatePed(30, -1872961334, 5023.54, -5797.6, 17.68, 45.75, 50.00, true, false)
		SetPedArmour(tugped13, 100)
		SetPedAsEnemy(tugped13, true)
		SetPedRelationshipGroupHash(tugped13, 'tug')
		GiveWeaponToPed(tugped13, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped13, GetPlayerPed(-1))
		SetPedAccuracy(tugped13, 100)
		SetPedDropsWeaponsWhenDead(tugped13, false)

		tugped14 = CreatePed(30, -1872961334, 5021.0, -5796.52, 17.68, 268.00, true, false)
		SetPedArmour(tugped14, 100)
		SetPedAsEnemy(tugped14, true)
		SetPedRelationshipGroupHash(tugped14, 'tug')
		GiveWeaponToPed(tugped14, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped14, GetPlayerPed(-1))
		SetPedAccuracy(tugped14, 100)
		SetPedDropsWeaponsWhenDead(tugped14, false)

		tugped15 = CreatePed(30, -1872961334, 5014.75, -5794.16, 17.68, 266.00, true, false)
		SetPedArmour(tugped15, 100)
		SetPedAsEnemy(tugped15, true)
		SetPedRelationshipGroupHash(tugped15, 'tug')
		GiveWeaponToPed(tugped15, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped15, GetPlayerPed(-1))
		SetPedAccuracy(tugped15, 100)
		SetPedDropsWeaponsWhenDead(tugped15, false)

		Citizen.Wait(60000)

		tugped16 = CreatePed(30, -1872961334, 5012.31, -5790.25, 17.68, 266.00, true, false)
		SetPedArmour(tugped16, 200)
		SetPedAsEnemy(tugped16, true)
		SetPedRelationshipGroupHash(tugped16, 'tug')
		GiveWeaponToPed(tugped16, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped16, GetPlayerPed(-1))
		SetPedAccuracy(tugped16, 100)
		SetPedDropsWeaponsWhenDead(tugped16, false)

		tugped17 = CreatePed(30, -1872961334, 5011.09, -5780.39, 17.68, 266.00, true, false)
		SetPedArmour(tugped17, 200)
		SetPedAsEnemy(tugped17, true)
		SetPedRelationshipGroupHash(tugped17, 'tug')
		GiveWeaponToPed(tugped17, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped17, GetPlayerPed(-1))
		SetPedAccuracy(tugped17, 100)
		SetPedDropsWeaponsWhenDead(tugped17, false)

		tugped18 = CreatePed(30, -1872961334, 4995.02, -5774.63, 16.28, 266.00, true, false)
		SetPedArmour(tugped18, 200)
		SetPedAsEnemy(tugped18, true)
		SetPedRelationshipGroupHash(tugped18, 'tug')
		GiveWeaponToPed(tugped18, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped18, GetPlayerPed(-1))
		SetPedAccuracy(tugped18, 100)
		SetPedDropsWeaponsWhenDead(tugped18, false)

		tugped19 = CreatePed(30, -1872961334, 4995.86, -5765.4, 16.3, 266.00, true, false)
		SetPedArmour(tugped19, 200)
		SetPedAsEnemy(tugped19, true)
		SetPedRelationshipGroupHash(tugped19, 'tug')
		GiveWeaponToPed(tugped19, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped19, GetPlayerPed(-1))
		SetPedAccuracy(tugped19, 100)
		SetPedDropsWeaponsWhenDead(tugped19, false)

		tugped20 = CreatePed(30, -1872961334, 4986.69, -5784.4, 17.08, 182.00, true, false)
		SetPedArmour(tugped20, 200)
		SetPedAsEnemy(tugped20, true)
		SetPedRelationshipGroupHash(tugped20, 'tug')
		GiveWeaponToPed(tugped20, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped20, GetPlayerPed(-1))
		SetPedAccuracy(tugped20, 100)
		SetPedDropsWeaponsWhenDead(tugped20, false)

		Citizen.Wait(50000)

		tugped21 = CreatePed(30, -1872961334, 4994.1, -5789.45, 17.49, 266.00, true, false)
		SetPedArmour(tugped21, 200)
		SetPedAsEnemy(tugped21, true)
		SetPedRelationshipGroupHash(tugped21, 'tug')
		GiveWeaponToPed(tugped21, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		SetPedAccuracy(tugped21, 100)
		SetPedDropsWeaponsWhenDead(tugped21, false)

		tugped22 = CreatePed(30, -1872961334, 4990.8, -5786.48, 20.88, 227.00, true, false)
		SetPedArmour(tugped22, 200)
		SetPedAsEnemy(tugped22, true)
		SetPedRelationshipGroupHash(tugped22, 'tug')
		GiveWeaponToPed(tugped22, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		SetPedAccuracy(tugped22, 100)
		SetPedDropsWeaponsWhenDead(tugped22, false)

		tugped23 = CreatePed(30, -1872961334, 4980.32, -5800.47, 20.88, 344.00, true, false)
		SetPedArmour(tugped23, 200)
		SetPedAsEnemy(tugped23, true)
		SetPedRelationshipGroupHash(tugped23, 'tug')
		GiveWeaponToPed(tugped23, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		SetPedAccuracy(tugped23, 100)
		SetPedDropsWeaponsWhenDead(tugped23, false)

		Citizen.Wait(60000)

		tugped24 = CreatePed(30, -1872961334, 4994.79, -5754.09, 19.9, 351.00, true, false)
		SetPedArmour(tugped24, 200)
		SetPedAsEnemy(tugped24, true)
		SetPedRelationshipGroupHash(tugped24, 'tug')
		GiveWeaponToPed(tugped24, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped24, GetPlayerPed(-1))
		SetPedAccuracy(tugped24, 100)
		SetPedDropsWeaponsWhenDead(tugped24, false)

		tugped25 = CreatePed(30, -1872961334, 4997.4, -5733.61, 19.88, 87.00, true, false)
		SetPedArmour(tugped25, 200)
		SetPedAsEnemy(tugped25, true)
		SetPedRelationshipGroupHash(tugped25, 'tug')
		GiveWeaponToPed(tugped25, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped25, GetPlayerPed(-1))
		SetPedAccuracy(tugped25, 80)
		SetPedDropsWeaponsWhenDead(tugped25, false)

		tugped26 = CreatePed(30, -1872961334, 4998.0, -5738.74, 19.88, 182.00, true, false)
		SetPedArmour(tugped26, 200)
		SetPedAsEnemy(tugped26, true)
		SetPedRelationshipGroupHash(tugped26, 'tug')
		GiveWeaponToPed(tugped26, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(tugped26, GetPlayerPed(-1))
		SetPedAccuracy(tugped26, 80)
		SetPedDropsWeaponsWhenDead(tugped26, false)

		tugped27 = CreatePed(30, -1872961334, 5003.15, -5723.7, 19.5, 179.00, true, false)
		SetPedArmour(tugped27, 200)
		SetPedAsEnemy(tugped27, true)
		SetPedRelationshipGroupHash(tugped27, 'tug')
		GiveWeaponToPed(tugped27, GetHashKey('WEAPON_GRENADELAUNCHER_SMOKE'), 250, false, true)
		TaskCombatPed(tugped27, GetPlayerPed(-1))
		SetPedAccuracy(tugped27, 80)
		SetPedDropsWeaponsWhenDead(tugped27, false)

		tugped28 = CreatePed(30, -1285859404, 5005.03, -5729.92, 19.5, 6.00, true, false)
		SetPedArmour(tugped28, 200)
		SetPedAsEnemy(tugped28, true)
		SetPedRelationshipGroupHash(tugped28, 'tug')
		GiveWeaponToPed(tugped28, GetHashKey('WEAPON_GRENADELAUNCHER_SMOKE'), 250, false, true)
		TaskCombatPed(tugped28, GetPlayerPed(-1))
		SetPedAccuracy(tugped28, 80)
		SetPedDropsWeaponsWhenDead(tugped28, false)
		
		
		
	end)

	Citizen.CreateThread(function()
		while holdingUp do
			Citizen.Wait(0)
			drawTxt(0.66, 1.44, 1.0, 1.0, 0.4, _U('robbery_timer', timer), 255, 255, 255, 255)
		end
	end)
end)

Citizen.CreateThread(function()
	for k,v in pairs(Stores) do
		local blip = AddBlipForCoord(v.position.x, v.position.y, v.position.z)
		SetBlipSprite(blip, 303)
		SetBlipScale(blip, 0.6)
		SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, 1)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString('tug Heist')
		EndTextCommandSetBlipName(blip)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local playerPos = GetEntityCoords(PlayerPedId(), true)

		for k,v in pairs(Stores) do
			local storePos = v.position
			local distance = Vdist(playerPos.x, playerPos.y, playerPos.z, storePos.x, storePos.y, storePos.z)

			if distance < Config.Marker.DrawDistance then
				if not holdingUp then
					DrawMarker(Config.Marker.Type, storePos.x, storePos.y, storePos.z - 1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.Marker.x, Config.Marker.y, Config.Marker.z, Config.Marker.r, Config.Marker.g, Config.Marker.b, Config.Marker.a, false, false, 2, false, false, false, false)

					if distance < 0.5 then
						ESX.ShowHelpNotification(_U('press_to_rob', v.nameOfStore))

						if IsControlJustReleased(0, 38) then
							TriggerServerEvent('esx_customrob:robberyStarted', k)
						end
					end
				end
			end
		end

		if holdingUp then
			local storePos = Stores[store].position
			if Vdist(playerPos.x, playerPos.y, playerPos.z, storePos.x, storePos.y, storePos.z) > Config.MaxDistance then
				TriggerServerEvent('esx_customrob:tooFar', store)
			end
		end
	end
end)
