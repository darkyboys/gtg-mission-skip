local jm = Game.GetJournalManager()
local parent = jm:GetParentEntry(jm:GetParentEntry(jm:GetTrackedEntry()))
jm:ChangeEntryStateByHash(jm:GetEntryHash(parent), 3, 2)
