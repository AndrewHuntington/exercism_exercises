// Returns the RNA complement of a DNA strand.
export const toRna = (dna) => {
  return Array.from(dna).map(nucleotide => {
    switch (nucleotide) {
      case 'G':
        return 'C';
        break;
      case 'C':
        return 'G';
        break;
      case 'T':
        return 'A';
        break;
      case 'A':
        return 'U';
        break;
      default:
        return '';
    }
  }).join('');
};
