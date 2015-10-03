-----------------------------------
-- Area: Garlaige Citadel (200)
-- NPC:  Serket
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

    killer:addTitle(Hahava_Condemner);

    
end;