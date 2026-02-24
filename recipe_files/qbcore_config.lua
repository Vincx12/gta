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
QBConfig.Player.Bloodtypes = { 'A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-', }

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
        firstname = 'Firstname',
        lastname = 'Lastname',
        birthdate = '00-00-0000',
        gender = 0,
        nationality = 'USA',
        phone = function() return QBCore.Functions.CreatePhoneNumber() end,
        account = function() return QBCore.Functions.CreateAccountNumber() end
    },
    job = {
        name = 'unemployed',
        label = 'Civilian',
        payment = 20,
        type = 'none',
        onduty = false,
        isboss = false,
        grade = { name = 'Freelancer', level = 0 }
    },
    gang = {
        name = 'none',
        label = 'No Gang Affiliation',
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
        licences = {
            driver = false,   -- must pass driving school / cityhall
            business = false,
            weapon = false
        }
    },
    position = QBConfig.DefaultSpawn,
    items = {},
}

QBConfig.Server = {}
QBConfig.Server.Whitelist = false
QBConfig.Server.PVP = true
QBConfig.Server.CheckDuplicateLicense = true
QBConfig.Server.Permissions = { 'god', 'admin', 'mod' }
