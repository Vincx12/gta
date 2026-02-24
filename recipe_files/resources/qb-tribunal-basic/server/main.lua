local QBCore=exports['qb-core']:GetCoreObject()
local open=false
local function hasJob(src,job) local P=QBCore.Functions.GetPlayer(src) return P and P.PlayerData.job and P.PlayerData.job.name==job end
QBCore.Commands.Add('audienceopen','Ouvrir audience (juge)',{},false,function(src) if not hasJob(src,Config.JugeJob) then return end open=true TriggerClientEvent('qb-tribunal-basic:client:notice',-1,'Audience OUVERTE.') end,'user')
QBCore.Commands.Add('audienceclose','Fermer audience (juge)',{},false,function(src) if not hasJob(src,Config.JugeJob) then return end open=false TriggerClientEvent('qb-tribunal-basic:client:notice',-1,'Audience LEVÉE.') end,'user')
QBCore.Commands.Add('objection','Objection (avocat)',{},false,function(src) if not open then return end if not hasJob(src,Config.AvocatJob) then return end TriggerClientEvent('qb-tribunal-basic:client:notice',-1,GetPlayerName(src)..': OBJECTION !') end,'user')
QBCore.Commands.Add('jugement','Jugement (juge): /jugement <texte>',{{name='texte'}},true,function(src,args) if not open then return end if not hasJob(src,Config.JugeJob) then return end TriggerClientEvent('qb-tribunal-basic:client:notice',-1,'JUGEMENT: '..table.concat(args,' ')) end,'user')
