QBConfig = {}
QBConfig.MaxPlayers = GetConvarInt('sv_maxclients', 64)
QBConfig.DefaultSpawn = vector4(-1035.71, -2731.87, 12.86, 0.0)

QBConfig.Money = {}
QBConfig.Money.MoneyTypes = { cash = 120, bank = 600, crypto = 0 }
QBConfig.Money.DontAllowMinus = { 'cash', 'crypto' }
QBConfig.Money.MinusLimit = -2000
QBConfig.Money.PayCheckTimeOut = 30
QBConfig.Money.PayCheckSociety = true

QBConfig.Player = {}
QBConfig.Player.HungerRate = 4.4
QBConfig.Player.ThirstRate = 4.1

QBConfig.Player.PlayerDefaults = {
    citizenid = function() return QBCore.Player.CreateCitizenId() end,
    cid = 1,
    money = function()
        local moneyDefaults = {}
        for moneytype, startamount in pairs(QBConfig.Money.MoneyTypes) do
            moneyDefaults[moneytype] = startamount
        end
        return moneyDefaults
    end,
    optin = true,
    charinfo = {
        firstname = 'Prenom',
        lastname = 'Nom',
        birthdate = '00-00-0000',
        gender = 0,
        nationality = 'FR',
        phone = function() return QBCore.Functions.CreatePhoneNumber() end,
        account = function() return QBCore.Functions.CreateAccountNumber() end
    },
    job = {
        name = 'unemployed',
        label = 'Citoyen',
        payment = 20,
        type = 'none',
        onduty = false,
        isboss = false,
        grade = { name = 'Interimaire', level = 0 }
    },
    gang = {
        name = 'none',
        label = 'Aucun gang',
        isboss = false,
        grade = { name = 'none', level = 0 }
    },
    metadata = {
        hunger = 100,
        thirst = 100,
        stress = 0,
        isdead = false,
        inlaststand = false,
        armor = 0,
        licences = { driver = false, business = false, weapon = false },
    },
    position = QBConfig.DefaultSpawn,
    items = {},
}

QBConfig.Server = {}
QBConfig.Server.Whitelist = false
QBConfig.Server.PVP = true
QBConfig.Server.CheckDuplicateLicense = true
QBConfig.Server.Permissions = { 'god', 'admin', 'mod' }
