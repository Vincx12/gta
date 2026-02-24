QBConfig = QBConfig or {}
QBConfig.MaxPlayers = GetConvarInt('sv_maxclients', 64)
QBConfig.DefaultSpawn = vector4(-1035.71, -2731.87, 12.86, 0.0)

QBConfig.Money = QBConfig.Money or {}
QBConfig.Money.MoneyTypes = { cash = 80, bank = 350, crypto = 0 } -- eco dure
QBConfig.Money.DontAllowMinus = { 'cash', 'crypto' }
QBConfig.Money.MinusLimit = -2000
QBConfig.Money.PayCheckTimeOut = 30
QBConfig.Money.PayCheckSociety = true

QBConfig.Player = QBConfig.Player or {}
QBConfig.Player.HungerRate = 4.4
QBConfig.Player.ThirstRate = 4.1

QBConfig.Server = QBConfig.Server or {}
QBConfig.Server.Whitelist = false
QBConfig.Server.PVP = true
QBConfig.Server.CheckDuplicateLicense = true
QBConfig.Server.Permissions = { 'god', 'admin', 'mod' }
