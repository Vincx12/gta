Config = Config or {}
Config.Commission = 0.10
Config.FinanceCommission = 0.05
Config.PaymentWarning = 10
Config.PaymentInterval = 30
Config.MinimumDown = 15
Config.MaximumPayments = 36

Config.ClassMultiplier = Config.ClassMultiplier or {
  ["compacts"] = 1.0,
  ["sedans"] = 1.0,
  ["suvs"] = 1.1,
  ["coupes"] = 1.1,
  ["muscle"] = 1.15,
  ["sports"] = 1.35,
  ["super"] = 1.8,
  ["motorcycles"] = 0.9,
}

Config.Locations = Config.Locations or { ["shop"] = { coords = vector3(-56.9, -1096.9, 26.4) } }
