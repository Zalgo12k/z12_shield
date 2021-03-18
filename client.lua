Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	PlayerData = ESX.GetPlayerData()
end)

local shield = false

RegisterNetEvent("shield:TogglePoliceShield")
AddEventHandler("shield:TogglePoliceShield", function()
  Citizen.CreateThread(function()
    if not shield then
      local ped = GetPlayerPed(-1)
      local propName = "prop_jpolice_shield"
      local coords = GetEntityCoords(ped)
      local prop = GetHashKey(propName)

      local dict = "weapons@first_person@aim_rng@generic@light_machine_gun@combat_mg@"
      local name = "wall_block_low"

      while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
        RequestAnimDict(dict)
      end

      RequestModel(prop)
      while not HasModelLoaded(prop) do
        Citizen.Wait(100)
      end

      local attachProps = CreateObject(prop, coords,  true,  false,  false)
      local netid = ObjToNet(attachProps)

      TaskPlayAnim(ped,dict,name,1.0,4.0,-1,49,0,0,0,0)
      AttachEntityToEntity(attachProps,ped,GetPedBoneIndex(ped, 57005),0.21,0.01,0.11,-72.0,85.0,80.0, false, false, false, true, 2, true)

      shield_net = netid
      shield = true
    else
      shield = false
      ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
      SetModelAsNoLongerNeeded(prop)
      SetEntityAsMissionEntity(attachProps, true, false)
      DetachEntity(NetToObj(shield_net), 1, 1)
      DeleteEntity(NetToObj(shield_net))
      shield_net = nil
    end
  end)
end)

RegisterNetEvent("shield:ToggleSheriffShield")
AddEventHandler("shield:ToggleSheriffShield", function()
  Citizen.CreateThread(function()
    if not shield then
      local ped = GetPlayerPed(-1)
      local propName = "prop_jsheriff_shield"
      local coords = GetEntityCoords(ped)
      local prop = GetHashKey(propName)

      local dict = "weapons@first_person@aim_rng@generic@light_machine_gun@combat_mg@"
      local name = "wall_block_low"

      while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
        RequestAnimDict(dict)
      end

      RequestModel(prop)
      while not HasModelLoaded(prop) do
        Citizen.Wait(100)
      end

      local attachProps = CreateObject(prop, coords,  true,  false,  false)
      local netid = ObjToNet(attachProps)

      TaskPlayAnim(ped,dict,name,1.0,4.0,-1,49,0,0,0,0)
      AttachEntityToEntity(attachProps,ped,GetPedBoneIndex(ped, 57005),0.21,0.01,0.11,-72.0,85.0,80.0, false, false, false, true, 2, true)

      shield_net = netid
      shield = true
    else
      shield = false
      ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
      SetModelAsNoLongerNeeded(prop)
      SetEntityAsMissionEntity(attachProps, true, false)
      DetachEntity(NetToObj(shield_net), 1, 1)
      DeleteEntity(NetToObj(shield_net))
      shield_net = nil
    end
  end)
end)

RegisterNetEvent("shield:ToggleSwatShield")
AddEventHandler("shield:ToggleSwatShield", function()
  Citizen.CreateThread(function()
    if not shield then
      local ped = GetPlayerPed(-1)
      local propName = "prop_jswat_shield"
      local coords = GetEntityCoords(ped)
      local prop = GetHashKey(propName)

      local dict = "weapons@first_person@aim_rng@generic@light_machine_gun@combat_mg@"
      local name = "wall_block_low"

      while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
        RequestAnimDict(dict)
      end

      RequestModel(prop)
      while not HasModelLoaded(prop) do
        Citizen.Wait(100)
      end

      local attachProps = CreateObject(prop, coords,  true,  false,  false)
      local netid = ObjToNet(attachProps)

      TaskPlayAnim(ped,dict,name,1.0,4.0,-1,49,0,0,0,0)
      AttachEntityToEntity(attachProps,ped,GetPedBoneIndex(ped, 57005),0.21,0.01,0.11,-72.0,85.0,80.0, false, false, false, true, 2, true)

      shield_net = netid
      shield = true
    else
      shield = false
      ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
      SetModelAsNoLongerNeeded(prop)
      SetEntityAsMissionEntity(attachProps, true, false)
      DetachEntity(NetToObj(shield_net), 1, 1)
      DeleteEntity(NetToObj(shield_net))
      shield_net = nil
    end
  end)
end)

RegisterNetEvent("shield:ToggleFibShield")
AddEventHandler("shield:ToggleFibShield", function()
  Citizen.CreateThread(function()
    if not shield then
      local ped = GetPlayerPed(-1)
      local propName = "prop_jfib_shield"
      local coords = GetEntityCoords(ped)
      local prop = GetHashKey(propName)

      local dict = "weapons@first_person@aim_rng@generic@light_machine_gun@combat_mg@"
      local name = "wall_block_low"

      while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
        RequestAnimDict(dict)
      end

      RequestModel(prop)
      while not HasModelLoaded(prop) do
        Citizen.Wait(100)
      end

      local attachProps = CreateObject(prop, coords,  true,  false,  false)
      local netid = ObjToNet(attachProps)

      TaskPlayAnim(ped,dict,name,1.0,4.0,-1,49,0,0,0,0)
      AttachEntityToEntity(attachProps,ped,GetPedBoneIndex(ped, 57005),0.21,0.01,0.11,-72.0,85.0,80.0, false, false, false, true, 2, true)

      shield_net = netid
      shield = true
    else
      shield = false
      ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
      SetModelAsNoLongerNeeded(prop)
      SetEntityAsMissionEntity(attachProps, true, false)
      DetachEntity(NetToObj(shield_net), 1, 1)
      DeleteEntity(NetToObj(shield_net))
      shield_net = nil
    end
  end)
end)

RegisterNetEvent("shield:ToggleNooseShield")
AddEventHandler("shield:ToggleNooseShield", function()
  Citizen.CreateThread(function()
    if not shield then
      local ped = GetPlayerPed(-1)
      local propName = "prop_jnoose_shield"
      local coords = GetEntityCoords(ped)
      local prop = GetHashKey(propName)

      local dict = "weapons@first_person@aim_rng@generic@light_machine_gun@combat_mg@"
      local name = "wall_block_low"

      while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
        RequestAnimDict(dict)
      end

      RequestModel(prop)
      while not HasModelLoaded(prop) do
        Citizen.Wait(100)
      end

      local attachProps = CreateObject(prop, coords,  true,  false,  false)
      local netid = ObjToNet(attachProps)

      TaskPlayAnim(ped,dict,name,1.0,4.0,-1,49,0,0,0,0)
      AttachEntityToEntity(attachProps,ped,GetPedBoneIndex(ped, 57005),0.21,0.01,0.11,-72.0,85.0,80.0, false, false, false, true, 2, true)

      shield_net = netid
      shield = true
    else
      shield = false
      ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
      SetModelAsNoLongerNeeded(prop)
      SetEntityAsMissionEntity(attachProps, true, false)
      DetachEntity(NetToObj(shield_net), 1, 1)
      DeleteEntity(NetToObj(shield_net))
      shield_net = nil
    end
  end)
end)

RegisterCommand('neon', function()
  local veh = GetVehiclePedIsUsing(GetPlayerPed(PlayerId()), false)
  local ped = GetPlayerPed(PlayerId())
  
  local distanceToVeh = GetDistanceBetweenCoords(GetEntityCoords(ped), GetEntityCoords(veh, 1))
  local interactionDistance = 3.5
  local acikMi0 = IsVehicleNeonLightEnabled(veh, 0)
  local acikMi1 = IsVehicleNeonLightEnabled(veh, 1)
  local acikMi2 = IsVehicleNeonLightEnabled(veh, 2)
  local acikMi3 = IsVehicleNeonLightEnabled(veh, 3)
  
  if (GetPedInVehicleSeat(veh, -1) == GetPlayerPed(PlayerId())) then
      if distanceToVeh <= interactionDistance then
          if acikMi0 or acikMi1 or acikMi2 or acikMi3 then
              SetVehicleNeonLightEnabled(veh, 0, false)
              SetVehicleNeonLightEnabled(veh, 1, false)
              SetVehicleNeonLightEnabled(veh, 2, false)
              SetVehicleNeonLightEnabled(veh, 3, false)
          else 
              SetVehicleNeonLightEnabled(veh, 0, true)
              SetVehicleNeonLightEnabled(veh, 1, true)
              SetVehicleNeonLightEnabled(veh, 2, true)
              SetVehicleNeonLightEnabled(veh, 3, true)
          end
      else
          ESX.ShowNotification("Aracının yanında olmalısın!")
      end
  end    
end)




