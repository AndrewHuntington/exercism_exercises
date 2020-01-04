const COLORS = [
                 "black",
                 "brown",
                 "red",
                 "orange",
                 "yellow",
                 "green",
                 "blue",
                 "violet",
                 "grey",
                 "white"
               ];

export const decodedValue = (colors) => {
  const colorIndexOne = COLORS.indexOf(colors[0]).toString()
  const colorIndexTwo = COLORS.indexOf(colors[1]).toString()
  return +(colorIndexOne + colorIndexTwo)
};
