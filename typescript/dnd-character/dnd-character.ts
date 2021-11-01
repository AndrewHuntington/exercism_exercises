export class DnDCharacter {
  private static readonly MIN_STAT_VALUE: number = 3;
  private static readonly MAX_STAT_VALUE: number = 18;
  private readonly BASE_HP: number = 10;

  public static generateAbilityScore(): number {
    const roll1d6 = (): number => Math.floor(Math.random() * 6 + 1);
    let statRolls: number[] = new Array(4).fill(0);
    return statRolls
      .map((e) => e + roll1d6())
      .sort((a: number, b: number) => a - b)
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

  public readonly strength: number = DnDCharacter.generateAbilityScore();
  public readonly dexterity: number = DnDCharacter.generateAbilityScore();
  public readonly constitution: number = DnDCharacter.generateAbilityScore();
  public readonly intelligence: number = DnDCharacter.generateAbilityScore();
  public readonly wisdom: number = DnDCharacter.generateAbilityScore();
  public readonly charisma: number = DnDCharacter.generateAbilityScore();
  public readonly hitpoints: number =
    this.BASE_HP + DnDCharacter.getModifierFor(this.constitution);
}
