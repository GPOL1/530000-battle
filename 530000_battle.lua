RegisterTableGoal(GOAL_SwordOfMesmer530000_Battle, "SwordOfMesmer530000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SwordOfMesmer530000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:SetNumber(1, 0)
    ai:SetTimer(1, 0)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 30)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 150)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5045)
    ai:DeleteObserve(0)
    local distance = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local hpRate = ai:GetHpRate(TARGET_SELF)
    if ai:HasSpecialEffectId(TARGET_SELF, 20012001) == true then
        if distance >= 20 then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 20
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 1
            probabilities[11] = 0
            probabilities[20] = 0
            probabilities[21] = 20
            probabilities[22] = 0
            probabilities[23] = 0
            probabilities[25] = 0
            probabilities[26] = 10
            probabilities[30] = 20
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 20
            probabilities[34] = 0
            probabilities[35] = 0
        elseif distance >= 11 then
            probabilities[1] = 5
            probabilities[2] = 5
            probabilities[3] = 5
            probabilities[4] = 0
            probabilities[5] = 20
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 10
            probabilities[20] = 1
            probabilities[21] = 10
            probabilities[22] = 10
            probabilities[23] = 10
            probabilities[25] = 5
            probabilities[26] = 15
            probabilities[30] = 0
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 5
            probabilities[34] = 0
            probabilities[35] = 0
        elseif distance >= 5.4 then
            probabilities[1] = 5
            probabilities[2] = 5
            probabilities[3] = 5
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 1
            probabilities[11] = 10
            probabilities[20] = 5
            probabilities[21] = 20
            probabilities[22] = 20
            probabilities[23] = 5
            probabilities[25] = 0
            probabilities[26] = 10
            probabilities[30] = 0
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 20
            probabilities[34] = 0
            probabilities[35] = 0
        elseif distance >= 2.6 then
            probabilities[1] = 20
            probabilities[2] = 20
            probabilities[3] = 20
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 10
            probabilities[7] = 20
            probabilities[8] = 20
            probabilities[9] = 0
            probabilities[10] = 1
            probabilities[11] = 10
            probabilities[20] = 5
            probabilities[21] = 10
            probabilities[22] = 8
            probabilities[23] = 0
            probabilities[26] = 3
            probabilities[30] = 0
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 0
            probabilities[34] = 0
            probabilities[35] = 0
        else
            probabilities[1] = 30
            probabilities[2] = 10
            probabilities[3] = 20
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 40
            probabilities[8] = 40
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 1
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[22] = 0
            probabilities[23] = 0
            probabilities[26] = 0
            probabilities[30] = 0
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 0
            probabilities[34] = 10
            probabilities[35] = 0
        end
    elseif distance >= 20 then
        probabilities[1] = 5
        probabilities[2] = 5
        probabilities[3] = 5
        probabilities[4] = 5
        probabilities[5] = 10
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 1
        probabilities[11] = 0
        probabilities[20] = 0
        probabilities[21] = 20
        probabilities[22] = 5
        probabilities[23] = 5
        probabilities[25] = 0
        probabilities[26] = 0
        probabilities[30] = 30
        probabilities[31] = 0
        probabilities[32] = 0
        probabilities[33] = 0
        probabilities[34] = 0
        probabilities[35] = 0
    elseif distance >= 11 then
        probabilities[1] = 10
        probabilities[2] = 10
        probabilities[3] = 10
        probabilities[4] = 0
        probabilities[5] = 15
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[11] = 0
        probabilities[20] = 1
        probabilities[21] = 20
        probabilities[22] = 20
        probabilities[23] = 10
        probabilities[25] = 5
        probabilities[26] = 0
        probabilities[30] = 10
        probabilities[31] = 0
        probabilities[32] = 20
        probabilities[33] = 0
        probabilities[34] = 0
        probabilities[35] = 0
    elseif distance >= 5.4 then
        probabilities[1] = 5
        probabilities[2] = 5
        probabilities[3] = 5
        probabilities[4] = 0
        probabilities[5] = 5
        probabilities[6] = 0
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[9] = 20
        probabilities[10] = 1
        probabilities[11] = 0
        probabilities[20] = 5
        probabilities[21] = 15
        probabilities[22] = 15
        probabilities[23] = 5
        probabilities[25] = 0
        probabilities[26] = 0
        probabilities[30] = 0
        probabilities[31] = 0
        probabilities[32] = 40
        probabilities[33] = 20
        probabilities[34] = 0
        probabilities[35] = 0
    elseif distance >= 2.6 then
        probabilities[1] = 20
        probabilities[2] = 15
        probabilities[3] = 15
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 25
        probabilities[8] = 25
        probabilities[9] = 10
        probabilities[10] = 1
        probabilities[11] = 0
        probabilities[20] = 5
        probabilities[21] = 10
        probabilities[22] = 8
        probabilities[23] = 0
        probabilities[26] = 0
        probabilities[30] = 0
        probabilities[31] = 0
        probabilities[32] = 0
        probabilities[33] = 0
        probabilities[34] = 0
        probabilities[35] = 0
    else
        probabilities[1] = 30
        probabilities[2] = 0
        probabilities[3] = 20
        probabilities[4] = 5
        probabilities[5] = 0
        probabilities[6] = 0
        probabilities[7] = 30
        probabilities[8] = 30
        probabilities[9] = 0
        probabilities[10] = 1
        probabilities[11] = 0
        probabilities[20] = 0
        probabilities[21] = 0
        probabilities[22] = 0
        probabilities[23] = 0
        probabilities[26] = 0
        probabilities[30] = 0
        probabilities[31] = 0
        probabilities[32] = 0
        probabilities[33] = 0
        probabilities[34] = 10
        probabilities[35] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012244) == true then
        probabilities[5] = probabilities[5] * 1.5
        probabilities[9] = probabilities[9] * 1.5
        probabilities[26] = probabilities[26] * 2
        probabilities[33] = probabilities[33] * 2.4
        probabilities[23] = probabilities[23] / 2
        probabilities[25] = probabilities[25] / 2
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012245) == true then
        probabilities[7] = probabilities[7] / 10
        probabilities[8] = probabilities[8] / 10
        probabilities[32] = 0
        probabilities[33] = probabilities[33] * 1.4
        probabilities[34] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012246) == true then
        probabilities[33] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012080) == true then
        probabilities[20] = probabilities[20]
    elseif hpRate < 0.72 then
        probabilities[20] = probabilities[20] * 1000
    else
        probabilities[20] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012001) == false and hpRate < 0.55 then
        probabilities[26] = 999999999
    else
        probabilities[26] = 0
    end
    if hpRate < 0.55 then
        probabilities[10] = 300
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012081) == false and ai:HasSpecialEffectId(TARGET_SELF, 20012001) == true then
        probabilities[11] = probabilities[11] * 1000
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012082) == true then
        probabilities[26] = probabilities[26]
    elseif hpRate < 0.24 then
        probabilities[26] = probabilities[26] * 1000
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012270) == true then
        probabilities[26] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012200) == true then
        probabilities[1] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012206) == true then
        probabilities[2] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012209) == true then
        probabilities[3] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012213) == true then
        probabilities[4] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012219) == true then
        probabilities[7] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012242) == true then
        probabilities[7] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012220) == true then
        probabilities[8] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012242) == true then
        probabilities[8] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012221) == true then
        probabilities[9] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012225) == true then
        probabilities[11] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012230) == true then
        probabilities[20] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012231) == true then
        probabilities[21] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012232) == true then
        probabilities[22] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012233) == true then
        probabilities[23] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 20012236) == true then
        probabilities[26] = 0
    end
    probabilities[10] = SetCoolTime(ai, goal, 3024, 30, probabilities[10], 0)
    probabilities[20] = SetCoolTime(ai, goal, 3030, 60, probabilities[20], 0)
    probabilities[26] = SetCoolTime(ai, goal, 3036, 72, probabilities[26], 0)
    acts[1] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act11)
    acts[20] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act23)
    acts[25] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act26)
    acts[30] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act35)
    acts[40] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act43)
    acts[44] = REGIST_FUNC(ai, goal, SwordOfMesmer530000_Act44)
    local actAfter = REGIST_FUNC(ai, goal, SwordOfMesmer530000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter)
    
end

function SwordOfMesmer530000_Act01(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProb = 100
    local guardProb = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 20012001) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProb = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProb, guardProb, walkLife, runLife)
    local life = 5
    local animationId = 3000
    local f3_local10 = 3001
    local f3_local11 = 3002
    local f3_local12 = 3003
    local f3_local13 = 3004
    local f3_local14 = 3005
    local target = TARGET_ENE_0
    local successDistance = 12
    local f3_local17 = 0
    local f3_local18 = 0
    local f3_local19 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act02(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local stopDist = 4.6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProb = 100
    local guardProb = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 20012001) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProb = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProb, guardProb, walkLife, runLife)
    local life = 5
    local animationId = 3006
    local target = TARGET_ENE_0
    local successDistance = 12
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012106)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act03(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local stopDist = 4
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProb = 100
    local guardProb = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 20012001) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProb = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProb, guardProb, walkLife, runLife)
    local life = 5
    local animationId = 3009
    local target = TARGET_ENE_0
    local successDistance = 24
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012109)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act04(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local stopDist = 5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProb = 100
    local guardProb = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 20012001) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProb = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProb, guardProb, walkLife, runLife)
    local life = 5
    local animationId = 3011
    local target = TARGET_ENE_0
    local successDistance = 12
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012111)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act05(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local stopDist = 12.4
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProb = 100
    local guardProb = 0
    local walkLife = 3
    local runLife = 3
    if ai:HasSpecialEffectId(TARGET_SELF, 20012001) == false then
        canRunDist = 30
        forceRunMinDist = 999
        runProb = 50
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProb, guardProb, walkLife, runLife)
    local life = 5
    local animationId = 3013
    local target = TARGET_ENE_0
    local successDistance = 12
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012113)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act06(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local f8_local1 = 1
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    local life = 5
    local animationId = 3014
    local target = TARGET_ENE_0
    local successDistance = 12
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act07(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local f9_local1 = 1
    local f9_local2 = 0
    local f9_local3 = 999
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 3
    local life = 5
    local animationId = 3019
    local target = TARGET_ENE_0
    local successDistance = 12
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012119)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act08(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local f10_local1 = 1
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 100
    local f10_local5 = 0
    local f10_local6 = 3
    local f10_local7 = 3
    local life = 5
    local animationId = 3020
    local target = TARGET_ENE_0
    local successDistance = 12
    local f10_local12 = 0
    local f10_local13 = 0
    local f10_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012120)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act09(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local f11_local1 = 1
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 100
    local f11_local5 = 0
    local f11_local6 = 3
    local f11_local7 = 3
    local life = 5
    local animationId = 3021
    local target = TARGET_ENE_0
    local successDistance = 12
    local f11_local12 = 0
    local f11_local13 = 0
    local f11_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012121)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act10(ai, goal, paramTbl)
    local life = 5
    local animationId = 3024
    local target = TARGET_ENE_0
    local successDistance = 12
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act11(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local f13_local1 = 10
    local f13_local2 = 0
    local f13_local3 = 999
    local f13_local4 = 50
    local f13_local5 = 0
    local f13_local6 = 3
    local f13_local7 = 3
    local life = 5
    local animationId = 3025
    local f13_local10 = 3026
    local f13_local11 = 3027
    local target = TARGET_ENE_0
    local successDistance = 24
    local f13_local14 = 0
    local f13_local15 = 0
    local f13_local16 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012125)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act20(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local f14_local1 = 18.5
    local f14_local2 = 0
    local f14_local3 = 999
    local f14_local4 = 100
    local f14_local5 = 0
    local f14_local6 = 3
    local f14_local7 = 3
    local life = 10
    local animationId = 3030
    local target = TARGET_ENE_0
    local successDistance = 18
    local f14_local12 = 0
    local f14_local13 = 0
    local f14_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012130)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act21(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local f15_local1 = 18.5
    local f15_local2 = 0
    local f15_local3 = 999
    local f15_local4 = 100
    local f15_local5 = 0
    local f15_local6 = 3
    local f15_local7 = 3
    local life = 8
    local animationId = 3031
    local target = TARGET_ENE_0
    local successDistance = 999
    local f15_local12 = 0
    local f15_local13 = 0
    local f15_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012131)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act22(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local f16_local1 = 18.5
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 3
    local f16_local7 = 3
    local life = 8
    local animationId = 3032
    local animationId2 = 3018
    local target = TARGET_ENE_0
    local successDistance = 999
    local upAngle = 0
    local downAngle = 0
    local f16_local15 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, life, animationId, target, successDistance, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId2, target, successDist, upAngle, downAngle, f16_local15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act23(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local f17_local1 = 18.5
    local f17_local2 = 0
    local f17_local3 = 999
    local f17_local4 = 100
    local f17_local5 = 0
    local f17_local6 = 3
    local f17_local7 = 3
    local life = 5
    local animationId = 3033
    local target = TARGET_ENE_0
    local successDistance = 18
    local f17_local12 = 0
    local f17_local13 = 0
    local f17_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012133)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act25(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local f18_local1 = 18.5
    local f18_local2 = 0
    local f18_local3 = 999
    local f18_local4 = 100
    local f18_local5 = 0
    local f18_local6 = 3
    local f18_local7 = 3
    local life = 5
    local animationId = 3035
    local target = TARGET_ENE_0
    local successDistance = 18
    local f18_local12 = 0
    local f18_local13 = 0
    local f18_local14 = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012135)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act26(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local f19_local1 = 18.5
    local f19_local2 = 0
    local f19_local3 = 999
    local f19_local4 = 100
    local f19_local5 = 0
    local f19_local6 = 3
    local f19_local7 = 3
    local life = 5
    local animationId = 3036
    local target = TARGET_ENE_0
    local successDistance = 18
    local f19_local12 = 0
    local f19_local13 = 0
    local f19_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, life, animationId, target, successDistance, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act30(ai, goal, paramTbl)
    local life = 3
    local moveTarget = TARGET_ENE_0
    local stopDistance = 3
    local turnTarget = TARGET_SELF
    local walk = false
    local distance = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, life, moveTarget, stopDistance, turnTarget, walk, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act31(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 3)
    local moveTarget = TARGET_ENE_0
    local stopDistance = 10
    local turnTarget = TARGET_ENE_0
    local walk = true
    local distance = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, random, moveTarget, stopDistance, turnTarget, walk, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act32(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(2.5, 4.5)
    local moveTarget = TARGET_ENE_0
    local random2 = ai:GetRandam_Int(0, 1)
    local random3 = ai:GetRandam_Int(60, 90)
    local f22_local4 = 3
    local f22_local5 = TARGET_SELF
    local isWalk = true
    local successOnEnd = true
    local distance = ai:GetDist(TARGET_ENE_0)
    if distance > 8.5 then
        ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 8)
    else
        ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 3)
    end
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, random, moveTarget, random2, random3, isWalk, successOnEnd, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act33(ai, goal, paramTbl)
    local life = 5
    local frontPriority = 1
    local backPriority = -1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local safetyDistance = 3
    local turnTime = 0
    local isAlwaysSuccess = true
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
    ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 30, 180, 3.8)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, life, frontPriority, backPriority, leftPriority, rightPriority, target, safetyDistance, turnTime, isAlwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act34(ai, goal, paramTbl)
    local life = 5
    local frontPriority = -1
    local backPriority = 1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local safetyDistance = 3
    local turnTime = 0
    local isAlwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, life, frontPriority, backPriority, leftPriority, rightPriority, target, safetyDistance, turnTime, isAlwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act35(ai, goal, paramTbl)
    local life = 5
    local frontPriority = -1
    local backPriority = -1
    local f25_local3 = 1
    local f25_local4 = 2
    local target = TARGET_ENE_0
    local safetyDistance = 3
    local turnTime = 0
    local isAlwaysSuccess = true
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012139)
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, life, frontPriority, backPriority, 1, -1, target, safetyDistance, turnTime, isAlwaysSuccess)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, life, frontPriority, backPriority, -1, 1, target, safetyDistance, turnTime, isAlwaysSuccess)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act40(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local stopDist = 4
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProb = 100
    local guardProb = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProb, guardProb, walkLife, runLife)
    local life = 5
    local animationId = 3000
    local animationId2 = 3001
    local animationId3 = 3002
    local animationId4 = 3003
    local animationId5 = 3004
    local animationId6 = 3005
    local target = TARGET_ENE_0
    local successDistance = 12
    local upAngle = 0
    local downAngle = 0
    local f26_local19 = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, life, animationId, target, successDistance, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId2, target, successDist, upAngle, downAngle, f26_local19)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId3, target, successDist, upAngle, downAngle, f26_local19)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId4, target, successDist, upAngle, downAngle, f26_local19)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId5, target, successDist, upAngle, downAngle, f26_local19)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId6, target, successDist, upAngle, downAngle, f26_local19)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act41(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProb = 100
    local guardProb = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProb, guardProb, walkLife, runLife)
    local life = 5
    local animationId = 3006
    local animationId2 = 3007
    local animationId3 = 3008
    local target = TARGET_ENE_0
    local successDistance = 12
    local upAngle = 0
    local downAngle = 0
    local f27_local16 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, life, animationId, target, successDistance, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId2, target, successDist, upAngle, downAngle, f27_local16)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId3, target, successDist, upAngle, downAngle, f27_local16)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act42(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local stopDist = 2.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProb = 100
    local guardProb = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProb, guardProb, walkLife, runLife)
    local life = 5
    local animationId = 3018
    local target = TARGET_ENE_0
    local successDistance = 12
    local upAngle = 0
    local downAngle = 0
    local f28_local14 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, life, animationId, target, successDistance, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animeID01, target, successDist, upAngle, downAngle, f28_local14)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act43(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local stopDist = 2.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProb = 100
    local guardProb = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProb, guardProb, walkLife, runLife)
    local life = 5
    local animationId = 3009
    local animationId2 = 3011
    local animationId3 = 3012
    local target = TARGET_ENE_0
    local successDistance = 12
    local upAngle = 0
    local downAngle = 0
    local f29_local16 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, life, animationId, target, successDistance, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId2, target, successDist, upAngle, downAngle, f29_local16)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId3, target, successDist, upAngle, downAngle, f29_local16)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act44(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local stopDist = 10
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProb = 100
    local guardProb = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProb, guardProb, walkLife, runLife)
    local life = 5
    local animationId = 3013
    local animationId2 = 3002
    local target = TARGET_ENE_0
    local successDistance = 12
    local upAngle = 0
    local downAngle = 0
    local f30_local15 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, life, animationId, target, successDistance, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId2, target, successDist, upAngle, downAngle, f30_local15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act45(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProb = 100
    local guardProb = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProb, guardProb, walkLife, runLife)
    local life = 5
    local animationId = 3000
    local animationId2 = 3001
    local animationId3 = 3002
    local animationId4 = 3027
    local animationId5 = 3006
    local target = TARGET_ENE_0
    local successDistance = 12
    local upAngle = 0
    local downAngle = 0
    local f31_local18 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, life, animationId, target, successDistance, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId2, target, successDist, upAngle, downAngle, f31_local18)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId3, target, successDist, upAngle, downAngle, f31_local18)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId4, target, successDist, upAngle, downAngle, f31_local18)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId5, target, successDist, upAngle, downAngle, f31_local18)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act46(ai, goal, paramTbl)
    local distance = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProb = 100
    local guardProb = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProb, guardProb, walkLife, runLife)
    local life = 5
    local animationId = 3000
    local animationId2 = 3027
    local f32_local11 = 3013
    local target = TARGET_ENE_0
    local successDistance = 12
    local upAngle = 0
    local downAngle = 0
    local f32_local16 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, life, animationId, target, successDistance, 0, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animationId2, target, successDist, upAngle, downAngle, f32_local16)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, life, animeID3, target, successDist, upAngle, downAngle, f32_local16)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_Act50(ai, goal, paramTbl)
    if ai:HasSpecialEffectId(TARGET_EVENT, 18035) then
        Approach_Act_Flex(ai, goal, 1, 0, 999, 100, 0, 3, 3)
    elseif ai:HasSpecialEffectId(TARGET_EVENT, 18030) then
        Approach_Act_Flex(ai, goal, 1, 0, 999, 0, 0, 3, 3)
    elseif ai:HasSpecialEffectId(TARGET_EVENT, 18032) then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 0, ai:GetRandam_Int(30, 60), isWalk, true, 0)
    elseif ai:HasSpecialEffectId(TARGET_EVENT, 18033) then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 1, ai:GetRandam_Int(30, 60), isWalk, true, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 60), isWalk, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SwordOfMesmer530000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_SwordOfMesmer530000_AfterAttackAct, 10)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end

Goal.Terminate = function (self, ai, goal)
    
end

Goal.Interrupt = function (self, ai, goal)
    local random = ai:GetRandam_Int(1, 100)
    local random2 = ai:GetRandam_Int(1, 100)
    local random3 = ai:GetRandam_Int(1, 100)
    local distance = ai:GetDist(TARGET_ENE_0)
    if ai:IsInterupt(INTERUPT_FindAttack) and ai:HasSpecialEffectId(TARGET_SELF, 5031) and ai:HasSpecialEffectId(TARGET_SELF, 20012001) == false and ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 90, 2.4) and random < 30 then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 4, 0, 180)
        return true
    end
    if ai:IsInterupt(INTERUPT_Shoot) and ai:HasSpecialEffectId(TARGET_SELF, 5025) and ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 30, 90, 99) then
        local distance2 = ai:GetDist(TARGET_ENE_0)
        local f37_local5 = 0
        local f37_local6 = 0
        local f37_local7 = 0
        local f37_local8 = 0
        local f37_local9 = 0
        local f37_local10 = 0
        local f37_local11 = 0
        local f37_local12 = 0
        local f37_local13 = 0
        local f37_local14 = 0
        local f37_local15 = 0
        local f37_local16 = 0
        local f37_local17 = 0
        local f37_local18 = 0
        if ai:HasSpecialEffectId(TARGET_SELF, 20012001) then
            if distance2 < 3.2 then
                f37_local11 = 15
                f37_local12 = 15
                f37_local18 = 70
            elseif distance2 < 5.4 then
                f37_local18 = 70
            elseif distance2 < 9.6 then
                f37_local5 = 12
                f37_local9 = 12
                f37_local10 = 12
                f37_local16 = 0
                f37_local18 = 24
            elseif distance2 < 35.2 then
                f37_local5 = 8
                f37_local9 = 24
                f37_local10 = 24
                f37_local13 = 6
                f37_local14 = 6
                f37_local15 = 2
                f37_local16 = 4
                f37_local17 = 10
                f37_local18 = 4
            else
                f37_local5 = 8
                f37_local9 = 24
                f37_local10 = 24
                f37_local17 = 10
                f37_local18 = 4
            end
        elseif distance2 < 3.2 then
            f37_local11 = 15
            f37_local12 = 15
            f37_local18 = 70
        elseif distance2 < 5.4 then
            f37_local18 = 70
        elseif distance2 < 9.6 then
            f37_local5 = 4
            f37_local6 = 18
            f37_local7 = 18
            f37_local16 = 4
            f37_local18 = 18
        elseif distance2 < 35.2 then
            f37_local5 = 4
            f37_local6 = 24
            f37_local7 = 24
            f37_local13 = 3
            f37_local14 = 3
            f37_local15 = 4
            f37_local16 = 8
            f37_local18 = 4
        else
            f37_local5 = 12
            f37_local6 = 24
            f37_local7 = 24
            f37_local18 = 4
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012247) then
            f37_local6 = f37_local6 / 10
            f37_local9 = f37_local9 / 10
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012248) then
            f37_local7 = f37_local7 / 10
            f37_local10 = f37_local10 / 10
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012231) == true then
            f37_local13 = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012232) == true then
            f37_local14 = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012233) == true then
            f37_local15 = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012235) == true then
            f37_local16 = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012082) == false or ai:HasSpecialEffectId(TARGET_SELF, 20012270) == true and ai:HasSpecialEffectId(TARGET_SELF, 20012236) == true then
            f37_local17 = 0
        end
        local max = f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18
        ai:SetStringIndexedNumber("Eva6000", f37_local5)
        ai:SetStringIndexedNumber("Eva6003", f37_local7)
        ai:SetStringIndexedNumber("Eva6002", f37_local6)
        ai:SetStringIndexedNumber("Eva2020", f37_local8)
        ai:SetStringIndexedNumber("Eva2022", f37_local9)
        ai:SetStringIndexedNumber("Eva2023", f37_local10)
        ai:SetStringIndexedNumber("Eva3019", f37_local11)
        ai:SetStringIndexedNumber("Eva3020", f37_local12)
        ai:SetStringIndexedNumber("Eva3031", f37_local13)
        ai:SetStringIndexedNumber("Eva3032", f37_local14)
        ai:SetStringIndexedNumber("Eva3033", f37_local15)
        ai:SetStringIndexedNumber("Eva3035", f37_local16)
        ai:SetStringIndexedNumber("Eva3036", f37_local17)
        ai:SetStringIndexedNumber("Eva0000", f37_local18)
        ai:SetStringIndexedNumber("sumEva", max)
        if max ~= 0 then
            local random4 = ai:GetRandam_Int(1, max)
            ai:SetStringIndexedNumber("fate", random4)
            if random4 <= f37_local5 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012145)
                ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                return true
            elseif random4 <= f37_local5 + f37_local6 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012139)
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012139)
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012139)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 20020, TARGET_ENE_0, 6, 0, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012139)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 20022, TARGET_ENE_0, 6, 0, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012139)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 20023, TARGET_ENE_0, 6, 0, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012119)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3019, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012120)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012131)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 8, 3031, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012132)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 8, 3032, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012133)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012135)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3035, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012136)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 6, 0, 180)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_OnCreateDamage) and ai:GetNumber(1) == 3 then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
        return true
    end
    if ai:IsInterupt(INTERUPT_UseItem) and ai:HasSpecialEffectId(TARGET_SELF, 5026) then
        local f37_local4 = 40
        if ai:HasSpecialEffectId(TARGET_SELF, 20012001) then
            f37_local4 = 80
        end
        if distance < 5.4 then
        elseif distance < 6.4 then
            if random < f37_local4 then
            end
        elseif distance < 12 then
            if random < f37_local4 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012135)
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3035, TARGET_ENE_0, 4, 0, 0, 90)
                return true
            end
        elseif distance < 20 and ai:HasSpecialEffectId(TARGET_SELF, 20012001) and ai:HasSpecialEffectId(TARGET_SELF, 18067) == false then
            goal:ClearSubGoal()
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012133)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3033, TARGET_ENE_0, 30, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsInsideObserve(0) then
        goal:ClearSubGoal()
        ai:Replaning()
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5045) then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local f37_local4 = 0
        local f37_local5 = 0
        local f37_local6 = 0
        local f37_local7 = 0
        local f37_local8 = 0
        local f37_local9 = 0
        local f37_local10 = 0
        local f37_local11 = 0
        local f37_local12 = 0
        local f37_local13 = 0
        local f37_local14 = 0
        local f37_local15 = 0
        local f37_local16 = 0
        local f37_local17 = 0
        local f37_local18 = 0
        local f37_local19 = 0
        local f37_local20 = 0
        local f37_local21 = 0
        local f37_local22 = 0
        local f37_local23 = 0
        local f37_local24 = 0
        local f37_local25 = 0
        local f37_local26 = 0
        local f37_local27 = 0
        local f37_local28 = 0
        local f37_local29 = 0
        local f37_local30 = 0
        local f37_local31 = 0
        local f37_local32 = 0
        local f37_local33 = 0
        local f37_local34 = 0
        local f37_local35 = 0
        local f37_local36 = 0
        local f37_local37 = 0
        local f37_local38 = 0
        local f37_local39 = 0
        local f37_local40 = 0
        local f37_local41 = 0
        local f37_local42 = 0
        local f37_local43 = 0
        local f37_local44 = 0
        local f37_local45 = 0
        local f37_local46 = 0
        if ai:HasSpecialEffectId(TARGET_SELF, 20012100) or ai:HasSpecialEffectId(TARGET_SELF, 20012120) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 2 then
                f37_local5 = 30
                f37_local19 = 20
            elseif distance2 < 5.4 then
                f37_local5 = 40
                f37_local19 = 10
            elseif distance2 < 9.8 then
                f37_local5 = 40
                f37_local38 = 10
            else
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012101) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 2 then
                f37_local6 = 20
                f37_local20 = 40
                f37_local38 = 0
            elseif distance2 < 5.4 then
                f37_local6 = 40
                f37_local20 = 10
                f37_local38 = 0
            elseif distance2 < 9.8 then
                f37_local6 = 0
                f37_local20 = 0
                f37_local38 = 0
            else
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012102) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 20012001) then
                if distance2 < 4.8 then
                    f37_local7 = 10
                    f37_local38 = 10
                elseif distance2 < 9.8 then
                    f37_local38 = 10
                else
                    f37_local38 = 10
                end
            else
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012103) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 3 then
                f37_local8 = 15
                f37_local21 = 45
            elseif distance2 < 5.2 then
                f37_local8 = 30
                f37_local21 = 10
            else
                f37_local38 = 10
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20012217) == true then
                f37_local21 = 0
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012104) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 2 then
                f37_local9 = 30
            elseif distance2 < 5.2 then
                f37_local9 = 30
            else
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012105) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 3.6 then
                f37_local38 = 10
            elseif distance2 < 5.2 then
                f37_local46 = 10
                f37_local38 = 90
            else
                f37_local46 = 30
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012106) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 2 then
                f37_local8 = 10
                f37_local11 = 20
                f37_local39 = 5
            elseif distance2 < 5.2 then
                f37_local8 = 20
                f37_local11 = 10
                f37_local39 = 20
            elseif distance2 < 9.6 then
                f37_local39 = 10
                f37_local38 = 10
            else
                f37_local38 = 10
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20012222) == true then
                f37_local39 = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20012001) == false then
                f37_local39 = 0
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012107) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 2 then
                f37_local12 = 10
            elseif distance2 < 5.2 then
                f37_local12 = 10
            else
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012109) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 2 then
                f37_local23 = 10
                f37_local43 = 10
                f37_local38 = 5
            elseif distance2 < 5.2 then
                f37_local23 = 10
                f37_local43 = 10
                f37_local38 = 10
            else
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012110) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 2 then
                f37_local38 = 10
            elseif distance2 < 5.2 then
                f37_local38 = 10
            elseif distance2 < 20 then
                f37_local38 = 10
            else
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012111) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 3.6 then
                f37_local38 = 10
                f37_local16 = 30
            elseif distance2 < 5.2 then
                f37_local38 = 20
                f37_local16 = 70
                f37_local46 = 10
            elseif distance2 < 20 then
                f37_local46 = 30
                f37_local38 = 10
            else
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012113) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 2 then
                f37_local6 = 10
            elseif distance2 < 5.2 then
                f37_local6 = 10
            else
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012115) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 2 then
                f37_local14 = 10
                f37_local15 = 20
            elseif distance2 < 5.2 then
                f37_local14 = 20
                f37_local15 = 10
            else
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012116) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 2 then
                f37_local8 = 10
                f37_local11 = 20
                f37_local19 = 10
                f37_local39 = 10
            elseif distance2 < 5.2 then
                f37_local8 = 20
                f37_local11 = 10
                f37_local19 = 10
                f37_local39 = 10
            elseif distance2 < 9.6 then
                f37_local39 = 10
                f37_local38 = 10
            else
                f37_local38 = 10
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20012222) == true then
                f37_local39 = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20012001) == false then
                f37_local39 = 0
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012117) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 20012001) == true then
                f37_local44 = 10
                f37_local45 = 20
                f37_local33 = 10
                f37_local34 = 0
                f37_local36 = 10
                f37_local38 = 5
            else
                f37_local44 = 0
                f37_local45 = 20
                f37_local33 = 10
                f37_local34 = 10
                f37_local36 = 0
                f37_local38 = 5
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20012230) == true then
                f37_local44 = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20012231) == true then
                f37_local45 = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20012232) == true then
                f37_local33 = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20012233) == true then
                f37_local34 = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20012236) == true then
                f37_local36 = 0
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012118) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 3 then
                f37_local5 = 30
                f37_local38 = 0
            elseif distance2 < 5.2 then
                f37_local5 = 20
                f37_local38 = 10
            else
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012119) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 3 then
                f37_local8 = 15
                f37_local21 = 45
                f37_local39 = 5
            elseif distance2 < 5.2 then
                f37_local8 = 30
                f37_local21 = 10
                f37_local39 = 20
            elseif distance2 < 9.6 then
                f37_local39 = 10
                f37_local38 = 10
            else
                f37_local38 = 10
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20012217) == true then
                f37_local21 = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20012222) == true then
                f37_local39 = 0
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 20012001) == false then
                f37_local39 = 0
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012125) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 6.4 then
                f37_local29 = 10
                f37_local30 = 30
                f37_local38 = 0
            elseif distance2 < 24 then
                f37_local29 = 50
                f37_local30 = 0
                f37_local38 = 0
            else
                f37_local29 = 10
                f37_local30 = 0
                f37_local38 = 0
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012131) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 7.8 then
                f37_local38 = 0
            elseif distance2 < 14.8 then
                f37_local22 = 10
                f37_local38 = 20
            else
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012132) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 7.8 then
                f37_local38 = 0
            elseif distance2 < 14.8 then
                f37_local22 = 20
                f37_local38 = 10
            else
                f37_local38 = 10
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012133) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            f37_local4 = 0
            f37_local5 = 0
            f37_local6 = 0
            f37_local7 = 0
            f37_local8 = 0
            f37_local9 = 0
            f37_local10 = 0
            f37_local11 = 0
            f37_local12 = 0
            f37_local13 = 0
            f37_local14 = 0
            f37_local15 = 0
            f37_local16 = 0
            f37_local17 = 0
            f37_local18 = 0
            f37_local19 = 0
            f37_local20 = 0
            f37_local21 = 0
            f37_local22 = 0
            f37_local27 = 0
            f37_local28 = 0
            f37_local29 = 0
            f37_local30 = 0
            f37_local44 = 0
            f37_local45 = 0
            f37_local33 = 0
            f37_local34 = 0
            f37_local36 = 0
            f37_local37 = 0
            f37_local38 = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012139) then
            local distance2 = ai:GetDist(TARGET_ENE_0)
            local random4 = ai:GetRandam_Int(1, 100)
            if distance2 < 2 then
                f37_local4 = 20
                f37_local13 = 20
                f37_local38 = 10
            elseif distance2 < 5.4 then
                f37_local4 = 10
                f37_local10 = 20
                f37_local13 = 10
                f37_local38 = 10
            elseif distance2 < 7.4 then
                f37_local4 = 0
                f37_local10 = 0
                f37_local13 = 0
                f37_local17 = 10
                f37_local25 = 5
                f37_local37 = 0
                f37_local38 = 15
            elseif distance2 < 12 then
                f37_local4 = 0
                f37_local10 = 0
                f37_local13 = 0
                f37_local17 = 20
                f37_local37 = 30
                f37_local38 = 8
                if ai:HasSpecialEffectId(TARGET_SELF, 20012001) then
                    f37_local25 = 10
                end
            elseif distance2 < 16.8 then
                f37_local4 = 0
                f37_local10 = 0
                f37_local13 = 0
                f37_local17 = 0
                f37_local34 = 6
                f37_local35 = 10
                f37_local37 = 30
                f37_local38 = 0
            else
                f37_local37 = 20
                f37_local38 = 0
            end
        end
        local max = f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 + f37_local29 + f37_local30 + f37_local41 + f37_local42 + f37_local44 + f37_local45 + f37_local33 + f37_local34 + f37_local46 + f37_local35 + f37_local36 + f37_local37 + f37_local38
        ai:SetStringIndexedNumber("sumAtk", max)
        if max ~= 0 then
            local random4 = ai:GetRandam_Int(1, max)
            ai:SetStringIndexedNumber("fate", random4)
            if random4 <= f37_local4 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012100)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3000, TARGET_ENE_0, 6, 0, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012101)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012102)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012103)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012104)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012105)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012106)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012107)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3007, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012108)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012109)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012110)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3010, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012111)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3011, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local16 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012112)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3012, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012113)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012114)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012115)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3015, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012116)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012117)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3017, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012118)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3018, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012119)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3019, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012120)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012121)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3021, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012122)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 7.4, 3022, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012123)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012124)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012125)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 + f37_local29 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012126)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 + f37_local29 + f37_local30 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012127)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3027, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 + f37_local29 + f37_local30 + f37_local41 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012128)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3028, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 + f37_local29 + f37_local30 + f37_local41 + f37_local42 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012129)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3029, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 + f37_local29 + f37_local30 + f37_local41 + f37_local42 + f37_local44 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012130)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 9, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 + f37_local29 + f37_local30 + f37_local41 + f37_local42 + f37_local44 + f37_local45 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012131)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 8, 3031, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 + f37_local29 + f37_local30 + f37_local41 + f37_local42 + f37_local44 + f37_local45 + f37_local33 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012132)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 8, 3032, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 + f37_local29 + f37_local30 + f37_local41 + f37_local42 + f37_local44 + f37_local45 + f37_local33 + f37_local34 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012133)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 + f37_local29 + f37_local30 + f37_local41 + f37_local42 + f37_local44 + f37_local45 + f37_local33 + f37_local34 + f37_local46 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012134)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3034, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 + f37_local29 + f37_local30 + f37_local41 + f37_local42 + f37_local44 + f37_local45 + f37_local33 + f37_local34 + f37_local46 + f37_local35 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012135)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3035, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 + f37_local29 + f37_local30 + f37_local41 + f37_local42 + f37_local44 + f37_local45 + f37_local33 + f37_local34 + f37_local46 + f37_local35 + f37_local36 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012136)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local4 + f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18 + f37_local19 + f37_local20 + f37_local21 + f37_local22 + f37_local23 + f37_local43 + f37_local25 + f37_local39 + f37_local40 + f37_local27 + f37_local28 + f37_local29 + f37_local30 + f37_local41 + f37_local42 + f37_local44 + f37_local45 + f37_local33 + f37_local34 + f37_local46 + f37_local35 + f37_local36 + f37_local37 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012145)
                ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_Damaged) and distance > 10 and ai:HasSpecialEffectId(TARGET_SELF, 5025) and ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 30, 90, 99) then
        local distance2 = ai:GetDist(TARGET_ENE_0)
        local f37_local5 = 0
        local f37_local6 = 0
        local f37_local7 = 0
        local f37_local8 = 0
        local f37_local9 = 0
        local f37_local10 = 0
        local f37_local11 = 0
        local f37_local12 = 0
        local f37_local13 = 0
        local f37_local14 = 0
        local f37_local15 = 0
        local f37_local16 = 0
        local f37_local17 = 0
        local f37_local18 = 0
        if ai:HasSpecialEffectId(TARGET_SELF, 20012001) then
            if distance2 < 3.2 then
                f37_local11 = 15
                f37_local12 = 15
                f37_local18 = 70
            elseif distance2 < 5.4 then
                f37_local18 = 70
            elseif distance2 < 9.6 then
                f37_local5 = 12
                f37_local9 = 12
                f37_local10 = 12
                f37_local16 = 0
                f37_local18 = 24
            elseif distance2 < 35.2 then
                f37_local5 = 8
                f37_local9 = 24
                f37_local10 = 24
                f37_local13 = 6
                f37_local14 = 6
                f37_local15 = 2
                f37_local16 = 4
                f37_local17 = 10
                f37_local18 = 4
            else
                f37_local5 = 8
                f37_local9 = 24
                f37_local10 = 24
                f37_local17 = 10
                f37_local18 = 4
            end
        elseif distance2 < 3.2 then
            f37_local11 = 15
            f37_local12 = 15
            f37_local18 = 70
        elseif distance2 < 5.4 then
            f37_local18 = 70
        elseif distance2 < 9.6 then
            f37_local5 = 4
            f37_local6 = 18
            f37_local7 = 18
            f37_local16 = 4
            f37_local18 = 18
        elseif distance2 < 35.2 then
            f37_local5 = 4
            f37_local6 = 24
            f37_local7 = 24
            f37_local13 = 3
            f37_local14 = 3
            f37_local15 = 4
            f37_local16 = 8
            f37_local18 = 4
        else
            f37_local5 = 12
            f37_local6 = 24
            f37_local7 = 24
            f37_local18 = 4
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012247) then
            f37_local6 = f37_local6 / 10
            f37_local9 = f37_local9 / 10
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012248) then
            f37_local7 = f37_local7 / 10
            f37_local10 = f37_local10 / 10
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012231) == true then
            f37_local13 = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012232) == true then
            f37_local14 = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012233) == true then
            f37_local15 = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012235) == true then
            f37_local16 = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 20012082) == false or ai:HasSpecialEffectId(TARGET_SELF, 20012270) == true and ai:HasSpecialEffectId(TARGET_SELF, 20012236) == true then
            f37_local17 = 0
        end
        local max = f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 + f37_local18
        ai:SetStringIndexedNumber("Eva6000", f37_local5)
        ai:SetStringIndexedNumber("Eva6003", f37_local7)
        ai:SetStringIndexedNumber("Eva6002", f37_local6)
        ai:SetStringIndexedNumber("Eva2020", f37_local8)
        ai:SetStringIndexedNumber("Eva2022", f37_local9)
        ai:SetStringIndexedNumber("Eva2023", f37_local10)
        ai:SetStringIndexedNumber("Eva3019", f37_local11)
        ai:SetStringIndexedNumber("Eva3020", f37_local12)
        ai:SetStringIndexedNumber("Eva3031", f37_local13)
        ai:SetStringIndexedNumber("Eva3032", f37_local14)
        ai:SetStringIndexedNumber("Eva3033", f37_local15)
        ai:SetStringIndexedNumber("Eva3035", f37_local16)
        ai:SetStringIndexedNumber("Eva3036", f37_local17)
        ai:SetStringIndexedNumber("Eva0000", f37_local18)
        ai:SetStringIndexedNumber("sumEva", max)
        if max ~= 0 then
            local random4 = ai:GetRandam_Int(1, max)
            ai:SetStringIndexedNumber("fate", random4)
            if random4 <= f37_local5 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012145)
                ai:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                return true
            elseif random4 <= f37_local5 + f37_local6 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012139)
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012139)
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012139)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 20020, TARGET_ENE_0, 6, 0, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012139)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 20022, TARGET_ENE_0, 6, 0, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012139)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 20023, TARGET_ENE_0, 6, 0, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012119)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3019, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012120)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012131)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 8, 3031, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012132)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 8, 3032, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012133)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012135)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3035, TARGET_ENE_0, 6, 0, 180)
                return true
            elseif random4 <= f37_local5 + f37_local6 + f37_local7 + f37_local8 + f37_local9 + f37_local10 + f37_local11 + f37_local12 + f37_local13 + f37_local14 + f37_local15 + f37_local16 + f37_local17 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 20012136)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 6, 0, 180)
                return true
            end
        end
    end
    
end

RegisterTableGoal(GOAL_SwordOfMesmer530000_AfterAttackAct, "SwordOfMesmer530000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SwordOfMesmer530000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
    local distance = ai:GetDist(TARGET_ENE_0)
    local f38_local1 = ai:GetToTargetAngle(TARGET_ENE_0)
    ai:SetStringIndexedNumber("DistMin_AAA", -999)
    ai:SetStringIndexedNumber("DistMax_AAA", 7)
    ai:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    ai:SetStringIndexedNumber("Angle_AAA", 180)
    ai:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    ai:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    ai:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    ai:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if distance >= 5 then
        ai:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif distance >= 2 then
        ai:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        ai:SetStringIndexedNumber("Odds_Back_AAA", 10)
        ai:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
    else
        ai:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        ai:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        ai:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        ai:SetStringIndexedNumber("Odds_Back_AAA", 10)
        ai:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        ai:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        ai:SetStringIndexedNumber("Odds_BsAndSide_AAA", 15)
    end
    goal:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
    
end


