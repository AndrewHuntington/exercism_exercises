// Calculates age in years for someone on a given planet when given an age in
// seconds. Cuts off at and rounds the 100th decimal place.
// FORMULA: NUMBER_OF_SECONDS / (EARTH_YEAR_IN_SECONDS * PLANET_OBRITAL_PERIOD)

export const age = (planet, seconds) => {
  const EARTH_YEAR_IN_SECONDS = 31557600;
  const ORBITAL_PERIODS = { 
    'mercury': 0.2408467,
    'venus'  : 0.61519726,
    'earth'  : 1,
    'mars'   : 1.8808158,
    'jupiter': 11.862615,
    'saturn' : 29.447498,
    'uranus' : 84.016846,
    'neptune': 164.79132
  };
  const TIME_CONVERSTION = EARTH_YEAR_IN_SECONDS * ORBITAL_PERIODS[planet];

  return Math.round(seconds / TIME_CONVERSTION * 100) / 100;
};
