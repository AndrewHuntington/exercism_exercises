const colorArray = [
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white",
] as const;

export type Color = typeof colorArray[number];

export function decodedValue([c1, c2]: Color[]): number {
  return colorArray.indexOf(c1) * 10 + colorArray.indexOf(c2);
}
