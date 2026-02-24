local QBCore=exports['qb-core']:GetCoreObject()
local function isPref(src) local P=QBCore.Functions.GetPlayer(src) return P and P.PlayerData.job and P.PlayerData.job.name==Config.Job end
QBCore.Commands.Add('prefannounce','Annonce Préfet',{{name='message'}},true,function(src,args) if not isPref(src) then return end local msg=table.concat(args,' ') if msg=='' then return end TriggerClientEvent('qb-prefet:client:announce',-1,msg) end,'user')
