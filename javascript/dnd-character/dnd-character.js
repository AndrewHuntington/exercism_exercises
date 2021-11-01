const STAT_MIN_VALUE = 3;
const STAT_MAX_VALUE = 18;
const BASE_HP = 10;

export const abilityModifier = (number) => {
  if (number < STAT_MIN_VALUE || number > STAT_MAX_VALUE) {
    throw new Error(
      `Ability scores ${
        number < STAT_MIN_VALUE
          ? `must be at least ${STAT_MIN_VALUE}`
          : `can be at most ${STAT_MAX_VALUE}`
      }`
    );
  }
  return Math.floor((number - 10) / 2);
};

export class Character {
  static rollAbility() {
    let roll1d6 = () => Math.floor(Math.random() * 6 + 1);
    const rolls = [roll1d6(), roll1d6(), roll1d6(), roll1d6()].sort(
      (a, b) => a - b
    );
    return rolls.slice(1).reduce((p, c) => p + c);
  }

  // instance variables
  strength = Character.rollAbility();
  dexterity = Character.rollAbility();
  constitution = Character.rollAbility();
  intelligence = Character.rollAbility();
  wisdom = Character.rollAbility();
  charisma = Character.rollAbility();

  get strength() {
    return strength;
  }

  get dexterity() {
    return dexterity;
  }

  get constitution() {
    return constitution;
  }

  get intelligence() {
    return intelligence;
  }

  get wisdom() {
    return wisdom;
  }

  get charisma() {
    return charisma;
  }

  get hitpoints() {
    return BASE_HP + abilityModifier(this.constitution);
  }
}
