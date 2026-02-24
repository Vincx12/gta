local function dist(a, b)
  return #(a - b)
end

RegisterNetEvent('qb-court-basic:client:notice', function(msg)
  TriggerEvent('chat:addMessage', { args = { '^5[Court]', msg } })
end)

CreateThread(function()
  while true do
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    if dist(coords, Config.Courtroom) < Config.Radius then
      -- Light marker hint
      DrawMarker(1, Config.Courtroom.x, Config.Courtroom.y, Config.Courtroom.z-1.0, 0.0,0.0,0.0, 0.0,0.0,0.0, 1.5,1.5,1.0, 255,255,255, 60, false,false,2,nil,nil,false)
    end
    Wait(0)
  end
end)
