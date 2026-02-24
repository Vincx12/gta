Config = {}

Config.GovernorJob = "governor"

-- Taxes (multipliers) used by other scripts (billing/shopping) only if you integrate them.
-- We store them as server convars so other resources can read them.
Config.DefaultTaxes = {
  sales = 0.08,     -- 8% sales tax
  fuel = 0.10,      -- 10% fuel tax
  service = 0.05,   -- 5% service tax (mechanic/ems/etc)
}
