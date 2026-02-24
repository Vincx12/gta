local QBCore=exports['qb-core']:GetCoreObject()
local function isPref(src) local P=QBCore.Functions.GetPlayer(src) return P and P.PlayerData.job and P.PlayerData.job.name==Config.PrefetJob end
local function setTax(k,v) SetConvarReplicated('fr_tax_'..k,tostring(v)) end
AddEventHandler('onResourceStart',function(res) if res~=GetCurrentResourceName() then return end for k,v in pairs(Config.DefaultTaxes) do if GetConvar('fr_tax_'..k,'')=='' then setTax(k,v) end end end)
QBCore.Commands.Add('settaxfr','Set taxe (prefet)',{{name='taxe'},{name='valeur'}},true,function(src,args) if not isPref(src) then return end local t=args[1] local val=tonumber(args[2] or '') if not val then return end setTax(t,val) TriggerClientEvent('chat:addMessage',src,{args={'^2Taxe',t..'='..val}}) end,'user')
QBCore.Commands.Add('prefannounce','Annonce prefet',{{name='message'}},true,function(src,args) if not isPref(src) then return end local msg=table.concat(args,' ') if msg=='' then return end TriggerClientEvent('qb-prefet:client:announce',-1,msg) end,'user')
