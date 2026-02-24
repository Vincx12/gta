Config = Config or {}
Config.Locations = Config.Locations or {}
Config.Hospitals = Config.Hospitals or {}

Config.BillCost = Config.BillCost or { revive = 1200, treatment = 350, hospital = 800 }

Config.Locations["duty"] = Config.Locations["duty"] or { coords = vector3(312.26, -592.81, 43.28) }
Config.Locations["stash"] = Config.Locations["stash"] or { coords = vector3(309.92, -602.94, 43.28) }
Config.Locations["armory"] = Config.Locations["armory"] or { coords = vector3(306.64, -601.58, 43.28) }
Config.Locations["vehicle"] = Config.Locations["vehicle"] or { coords = vector3(295.52, -600.17, 43.30), spawn = vector4(294.66, -610.43, 43.34, 70.0) }
Config.Locations["helicopter"] = Config.Locations["helicopter"] or { coords = vector3(351.61, -588.34, 74.16), spawn = vector4(351.61, -588.34, 74.16, 340.0) }

Config.Hospitals["pillbox"] = Config.Hospitals["pillbox"] or {
  label = "Hopital",
  coords = vector3(307.48, -595.34, 43.28),
  blip = { sprite = 61, colour = 2, scale = 0.8 },
}
