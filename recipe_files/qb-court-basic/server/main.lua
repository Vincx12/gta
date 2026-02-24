local QBCore = exports['qb-core']:GetCoreObject()
local courtOpen = false

local function hasJob(src, job)
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return false end
  return Player.PlayerData.job and Player.PlayerData.job.name == job
end

local function inCourtArea(src)
  local ped = GetPlayerPed(src)
  if not ped then return false end
  local coords = GetEntityCoords(ped)
  return #(coords - Config.Courtroom) < Config.Radius
end

QBCore.Commands.Add('courtopen', 'Open court session (judge only, in courtroom)', {}, false, function(source)
  if not hasJob(source, Config.JudgeJob) then return end
  if not inCourtArea(source) then
    TriggerClientEvent('qb-court-basic:client:notice', source, 'You must be in the courtroom area.')
    return
  end
  courtOpen = true
  TriggerClientEvent('qb-court-basic:client:notice', -1, 'Court is now IN SESSION. Please take your seats.')
end, 'user')

QBCore.Commands.Add('courtclose', 'Close court session (judge only)', {}, false, function(source)
  if not hasJob(source, Config.JudgeJob) then return end
  courtOpen = false
  TriggerClientEvent('qb-court-basic:client:notice', -1, 'Court session is ADJOURNED.')
end, 'user')

QBCore.Commands.Add('objection', 'Objection (lawyer only, court must be open)', {}, false, function(source)
  if not courtOpen then return end
  if not hasJob(source, Config.LawyerJob) then return end
  if not inCourtArea(source) then return end
  local name = GetPlayerName(source)
  TriggerClientEvent('qb-court-basic:client:notice', -1, name .. ': OBJECTION!')
end, 'user')

QBCore.Commands.Add('verdict', 'Verdict announcement (judge only): /verdict <text>', {{name='text', help='Verdict text'}}, true, function(source, args)
  if not courtOpen then return end
  if not hasJob(source, Config.JudgeJob) then return end
  if not inCourtArea(source) then return end
  local msg = table.concat(args, ' ')
  TriggerClientEvent('qb-court-basic:client:notice', -1, 'VERDICT: ' .. msg)
end, 'user')
