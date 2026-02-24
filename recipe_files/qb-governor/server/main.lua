local QBCore = exports['qb-core']:GetCoreObject()

local function isGovernor(src)
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return false end
  return Player.PlayerData.job and Player.PlayerData.job.name == Config.GovernorJob
end

local function setTax(name, value)
  SetConvarReplicated('city_tax_'..name, tostring(value))
end

AddEventHandler('onResourceStart', function(res)
  if res ~= GetCurrentResourceName() then return end
  for k,v in pairs(Config.DefaultTaxes) do
    if GetConvar('city_tax_'..k, '') == '' then
      setTax(k, v)
    end
  end
end)

QBCore.Commands.Add('settax', 'Set a city tax multiplier (governor only)', {
  {name='tax', help='sales/fuel/service'},
  {name='value', help='Example: 0.08'},
}, true, function(source, args)
  if not isGovernor(source) then
    TriggerClientEvent('chat:addMessage', source, { args = {'^1Error', 'Governor only.'}})
    return
  end
  local tax = tostring(args[1] or '')
  local val = tonumber(args[2] or '')
  if not val then return end
  setTax(tax, val)
  TriggerClientEvent('chat:addMessage', source, { args = {'^2Tax', ('%s set to %.2f'):format(tax, val)}})
end, 'user')

QBCore.Commands.Add('govannounce', 'Governor announcement (governor only)', {
  {name='message', help='Message'},
}, true, function(source, args)
  if not isGovernor(source) then return end
  local msg = table.concat(args, ' ')
  if msg == '' then return end
  TriggerClientEvent('qb-governor:client:announce', -1, msg)
end, 'user')
