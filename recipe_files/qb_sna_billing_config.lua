Config = Config or {}

-- In Sna-aaa/qb-sna-billing, jobs allowed are typically configurable.
-- We'll keep it permissive: any job except unemployed can create bills.
Config.BlacklistedJobs = { "unemployed" }

-- Money accounts
Config.PayFrom = "bank"
Config.CompanyAccount = "bank" -- company/society account routing depends on qb-management integration

Config.PoliceJobs = { "police" } -- can view unpaid bills for RP
