require('SpawnScripts/Generic/Required_random_pattern_medium');
require('SpawnScripts/Generic/BrokentuskVoiceOvers');
local timerslow = math.random(7000, 12000)
local timerfast = math.random(6000, 8000)

function spawn(NPC)
  SetTimer(NPC)
  AddPathing(NPC)
end


function SetTimer(NPC, Spawn)
  local chance = math.random(1, 50)
	if chance <= 25 then
    local choice = math.random(1, 2)
  
    if choice == 1 then
      AddTimer(NPC, timerslow, "DoAnimation")
    elseif choice == 2 then
      AddTimer(NPC, timerslow, "DoMovement")
    end
  end
end

function DoAnimation(NPC, Spawn)
  PauseMovement(NPC)
  SpawnSet(NPC, "visual_state", 2809)
  SetTimer(NPC)
end

function DoMovement(NPC, Spawn)
  AddTimer(NPC, timerfast, "ResetVisualState")
  ResumeMovement(NPC)
  SetTimer(NPC)
end

function aggro(NPC, Spawn)
 generic_aggro(NPC, Spawn)
end

function healthchanged(NPC, Spawn)
  generic_healthchanged(NPC, Spawn)
end

function killed(NPC, Spawn)
  generic_killed(NPC, Spawn)
end

function death(NPC, Spawn)
  generic_death(NPC, Spawn)
end

function ResetVisualState(ThisSpawn, Spawn)
	SpawnSet(Spawn, "visual_state", 0)
end