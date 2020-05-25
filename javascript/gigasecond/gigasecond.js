export const gigasecond = (date) => {
  const dateInSeconds = Number(date) + (Math.pow(10,12));

  return new Date(dateInSeconds);
};
