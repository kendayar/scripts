function cast(Caster, Target, MinDmg, MaxDmg, MinHeal, MaxHeal, StrDebuff, StrBuff)
  ProcDamage(Caster, Target, "Reaper Strike", 7, MinDmg, MaxDmg, 0, "You hit %t with Reaper Strike")
  SpellHeal(Caster, "Heal", MinHeal, MaxHeal)
  AddSpellBonus(Target, 2, StrDebuff)
  AddSpellBonus(Caster, 2, StrBuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveSpellBonus(Caster)
end