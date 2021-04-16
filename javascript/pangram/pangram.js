export const isPangram = (phrase) => {
  phrase = phrase.toLowerCase();
  const letters = 'abcdefghijklmnopqrstuvwxyz'.split('');

  for (const letter of letters) {
    if(!phrase.includes(letter)) return false;
  }
  return true;
};
