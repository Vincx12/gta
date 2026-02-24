local beltOn=false
local cruiseOn=false
local cruiseSpeed=0.0
local function kmh(ms) return ms*3.6 end

RegisterCommand(Config.Seatbelt.toggleCommand, function()
  if not Config.Seatbelt.enabled then return end
  local ped=PlayerPedId()
  if not IsPedInAnyVehicle(ped,false) then return end
  beltOn=not beltOn
  TriggerEvent('chat:addMessage',{args={'^2Seatbelt', beltOn and 'ON' or 'OFF'}})
end,false)
RegisterKeyMapping(Config.Seatbelt.toggleCommand,'Seatbelt (Ultra Realism)','keyboard',Config.Seatbelt.keybind)

RegisterCommand(Config.Cruise.toggleCommand, function()
  if not Config.Cruise.enabled then return end
  local ped=PlayerPedId()
  if not IsPedInAnyVehicle(ped,false) then return end
  local veh=GetVehiclePedIsIn(ped,false)
  if GetPedInVehicleSeat(veh,-1)~=ped then return end
  cruiseOn=not cruiseOn
  if cruiseOn then
    cruiseSpeed=GetEntitySpeed(veh)
    TriggerEvent('chat:addMessage',{args={'^3Cruise',('ON (%.0f km/h)'):format(kmh(cruiseSpeed))}})
  else
    TriggerEvent('chat:addMessage',{args={'^3Cruise','OFF'}})
  end
end,false)

CreateThread(function()
  while true do
    SetParkedVehicleDensityMultiplierThisFrame(Config.Density.parked)
    SetVehicleDensityMultiplierThisFrame(Config.Density.vehicle)
    SetRandomVehicleDensityMultiplierThisFrame(Config.Density.multiplier)
    SetPedDensityMultiplierThisFrame(Config.Density.peds)
    SetScenarioPedDensityMultiplierThisFrame(Config.Density.scenarioPeds)

    if Config.Hud.disableCinematicCam then DisableControlAction(0,80,true) end
    if Config.DisableCrosshair then HideHudComponentThisFrame(14) end

    local ped=PlayerPedId()
    if IsPedInAnyVehicle(ped,false) then
      local veh=GetVehiclePedIsIn(ped,false)
      if GetPedInVehicleSeat(veh,-1)==ped then
        if cruiseOn then
          local maxSpeed=cruiseSpeed
          local cap=Config.Cruise.maxKmh/3.6
          if maxSpeed>cap then maxSpeed=cap end
          SetEntityMaxSpeed(veh,maxSpeed)
        else
          SetEntityMaxSpeed(veh,999.0)
        end
      end
    else
      beltOn=false
      cruiseOn=false
    end
    Wait(0)
  end
end)
