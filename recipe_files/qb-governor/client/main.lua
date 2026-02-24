-- Just receives notifications from server (optional)
RegisterNetEvent('qb-governor:client:announce', function(msg)
  TriggerEvent('chat:addMessage', { args = { '^6[Governor]', msg } })
end)
