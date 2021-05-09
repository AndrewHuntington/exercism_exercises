export const isPangram = (phrase) => {
  phrase = phrase.toLowerCase();
  const letters = 'abcdefghijklmnopqrstuvwxyz'.split('');

  return letters.every(letter => phrase.includes(letter));

  // for (const letter of letters) {
  //   if(!phrase.includes(letter)) return false;
  // }
  // return true;
};
