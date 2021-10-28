export function isLeap(year: number): boolean {
  if (year % 400 === 0) return true;
  return year % 100 === 0 || year % 4 !== 0 ? false : true;
}
