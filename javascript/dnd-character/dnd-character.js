export const abilityModifier = (number) => {
  if (number < 3 || number > 18) {
    throw new Error(
      `Ability scores ${
        number < 3 ? "must be at least 3" : "can be at most 18"
      }`
    );
  }
  return Math.floor((number - 10) / 2);
};

export class Character {
  static rollAbility() {
    let roll = () => Math.floor(Math.random() * 6 + 1);
    const rolls = [roll(), roll(), roll(), roll()].sort((a, b) => a - b);
    return rolls[1] + rolls[2] + rolls[3];
  }

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
    return 10 + abilityModifier(this.constitution);
  }
}
