-----------------------------------------
-- ID: 4589
-- Item: Bowl of Wild Stew
-- Food Effect: 240Min, All Races
-----------------------------------------
-- Strength 4
-- Agility 1
-- Vitality 2
-- Intelligence -2
-- Attack % 25
-- Attack Cap 50
-- Ranged ATT % 25
-- Ranged ATT Cap 50
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
	if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
	result = 246;
	end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
target:addStatusEffect(EFFECT_FOOD,0,0,14400,4589);
end;

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
target:addMod(MOD_STR, 900);
target:addMod(MOD_INT, 900);
target:addMod(MOD_FOOD_ATTP, 150);
target:addMod(MOD_FOOD_ATT_CAP, 300);
target:addPetMod(MOD_FOOD_ACCP, 500);
target:addPetMod(MOD_FOOD_ATTP, 100);
target:addPetMod(MOD_FOOD_ATT_CAP, 10000)
target:addPetMod(MOD_HP, 1000);
target:addPetMod(MOD_FOOD_RATTP, 500);
target:addPetMod(MOD_FOOD_MATT, 500);


end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
target:delMod(MOD_STR, 25);
target:delMod(MOD_INT, 25);
target:delMod(MOD_FOOD_ATTP, 150);
target:delMod(MOD_FOOD_ATT_CAP, 300);
target:delPetMod(MOD_FOOD_ACCP, 500);
target:delPetMod(MOD_FOOD_ATTP, 100);
target:delPetMod()
target:delPetMod(MOD_HP, 1000);
target:delPetMod(MOD_FOOD_RATTP, 500);


end;