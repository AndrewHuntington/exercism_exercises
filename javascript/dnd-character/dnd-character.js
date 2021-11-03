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

const abilities = [
  "strength",
  "dexterity",
  "constitution",
  "intelligence",
  "wisdom",
  "charisma",
];

export class Character {
  static rollAbility() {
    let roll1d6 = () => Math.floor(Math.random() * 6 + 1);
    return [...Array(4)]
      .map(() => roll1d6())
      .sort()
      .slice(1)
      .reduce((p, v) => p + v);
  }

  constructor() {
    for (const ability of abilities) {
      this[ability] = Character.rollAbility();
    }
  }

  get hitpoints() {
    return BASE_HP + abilityModifier(this.constitution);
  }
}
