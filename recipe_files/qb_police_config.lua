Config = Config or {}
Config.Locations = Config.Locations or {}
Config.Fines = Config.Fines or {
  ["Excès de vitesse"] = 250,
  ["Conduite dangereuse"] = 650,
  ["Feu rouge"] = 200,
  ["Pas de ceinture"] = 150,
}

Config.Locations["duty"] = Config.Locations["duty"] or { coords = vector3(441.2, -981.9, 30.7) }
Config.Locations["stash"] = Config.Locations["stash"] or { coords = vector3(448.4, -973.2, 30.7) }
Config.Locations["armory"] = Config.Locations["armory"] or { coords = vector3(482.6, -995.4, 30.7) }
Config.Locations["vehicle"] = Config.Locations["vehicle"] or { coords = vector3(454.6, -1017.4, 28.4), spawn = vector4(438.6, -1021.1, 28.7, 90.0) }
Config.Locations["helicopter"] = Config.Locations["helicopter"] or { coords = vector3(449.2, -981.2, 43.7), spawn = vector4(449.2, -981.2, 43.7, 0.0) }
