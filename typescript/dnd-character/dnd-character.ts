export class DnDCharacter {
  private static readonly MIN_STAT_VALUE: number = 3;
  private static readonly MAX_STAT_VALUE: number = 18;
  private readonly BASE_HP: number = 10;

  public static generateAbilityScore(): number {
    const roll1d6 = (): number => Math.floor(Math.random() * 6 + 1);
    let statRolls: number[] = new Array(4).fill(0);
    return statRolls
      .map((e) => e + roll1d6())
      .slice(1)
      .reduce((p, v) => p + v);
  }

  public static getModifierFor(abilityValue: number): number {
    if (
      abilityValue < this.MIN_STAT_VALUE ||
      abilityValue > this.MAX_STAT_VALUE
    ) {
      throw new Error(
        `Please provide a value between ${this.MIN_STAT_VALUE} and ${this.MAX_STAT_VALUE}`
      );
    }
    return Math.floor((abilityValue - 10) / 2);
  }

  public strength: number = DnDCharacter.generateAbilityScore();
  public dexterity: number = DnDCharacter.generateAbilityScore();
  public constitution: number = DnDCharacter.generateAbilityScore();
  public intelligence: number = DnDCharacter.generateAbilityScore();
  public wisdom: number = DnDCharacter.generateAbilityScore();
  public charisma: number = DnDCharacter.generateAbilityScore();
  public hitpoints: number =
    this.BASE_HP + DnDCharacter.getModifierFor(this.constitution);
}
