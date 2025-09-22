object JC_GetSecTarget(object oUser){

object oReturn = OBJECT_INVALID;

int i = 1;
int j = 0;
while( i > j ){
	object oNearest = GetNearestObject(OBJECT_TYPE_DOOR + OBJECT_TYPE_PLACEABLE, oUser, i);
	if( GetDistanceBetween(oUser, oNearest) > 5.0 ) {
		BarkString(oUser, 1516);
		j = i + 1;
		}
	else if( GetLockKeyRequired(oNearest) == TRUE ||
		GetLockUnlockDC(oNearest) > 50 ||
		(GetObjectType(oNearest) == OBJECT_TYPE_DOOR && !GetIsDoorActionPossible(oNearest, DOOR_ACTION_IGNORE)) ) {
		BarkString(oUser, 1370);
		j = i + 1;
		}
	else if( GetLocked(oNearest) == TRUE ) {
		oReturn = oNearest;
		j = i + 1;
		}
	i++;
	}	
return oReturn;

}


void JC_SecSpikeUnlock(object oUser, int nItemLevel, object oTarget) {

NoClicksFor(2.25);
PlayAnimation(ANIMATION_LOOPING_USE_COMPUTER, 1.0, 2.0);
DelayCommand(0.85, AssignCommand(oTarget, PlaySound("gui_lockpick")));

object oHostile = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, oUser, 1, CREATURE_TYPE_PERCEPTION, PERCEPTION_SEEN);
string sUser = GetName(oUser);
int nSkill = GetSkillRank(SKILL_SECURITY, oUser);
int nDC = GetLockUnlockDC(oTarget);
int nBonus = 5 * nItemLevel;
int nRoll;
// No distress, take 20
if( !GetIsObjectValid(oHostile) ||
	( GetIsObjectValid(oHostile) && GetDistanceBetween(oUser, oHostile) > 40.0 ) ) {
	nRoll = 20;
	}
// Enemies stressing you out, roll d20
else {
	nRoll = d20(1);
	}
int nScore = nSkill + nBonus;
string sResult;
// Skill check succeeds
if( nRoll + nScore >= nDC ) {
	sResult = GetStringByStrRef(1392);
	DelayCommand(2.0, SetLocked(oTarget, FALSE));
	if( GetObjectType(oTarget) == OBJECT_TYPE_DOOR ) DelayCommand(2.0, AssignCommand(oTarget, ActionOpenDoor(oTarget)));
	if( GetObjectType(oTarget) == OBJECT_TYPE_PLACEABLE ) DelayCommand(2.0, ActionDoCommand(DoPlaceableObjectAction(oTarget, PLACEABLE_ACTION_USE)));
	}
// Skill is too low
else if( 20 + nScore < nDC ) {
	sResult = GetStringByStrRef(1393);
	DelayCommand(2.0, BarkString(oUser, 1519));
	}
// Skill check failed
else {
	sResult = GetStringByStrRef(1393);
	DelayCommand(2.0, BarkString(oUser, 48261));
	}		
string sMessage = sUser + " " + sResult + " " + GetStringByStrRef(255) + ": " + IntToString(nRoll + nScore) + " (" +
				  GetStringByStrRef(42016) + " " + IntToString(nRoll) + " + " + GetStringByStrRef(255) + " " + IntToString(nScore) + ") " +	
				  GetStringByStrRef(1395) + " " + GetStringByStrRef(49135) + " " + IntToString(nDC);
DelayCommand(2.1, SendMessageToPC(oUser, sMessage));
// Take spike
object oItem = GetItemPossessedBy(oUser, "g_i_secspike0" + IntToString(nItemLevel));
int nStackSize = GetItemStackSize(oItem);
if( nStackSize > 1 ) {
	DelayCommand(2.25, SetItemStackSize(oItem, nStackSize - 1));
	}
else {
	DelayCommand(2.25, DestroyObject(oItem));
	}

}


void JC_UseSecSpike(object oUser, int nItemLevel) {

object oTarget = JC_GetSecTarget(oUser);

if( oTarget != OBJECT_INVALID ) {
	ClearAllActions();
	if( GetDistanceBetween(oUser, oTarget) > 0.05 ) {
		ActionMoveToObject(oTarget, TRUE, 0.05);
		}
		ActionDoCommand(SetFacingPoint(GetPosition(oTarget)));
		ActionDoCommand(JC_SecSpikeUnlock(OBJECT_SELF, nItemLevel, oTarget));
	}

}