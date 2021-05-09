export class Matrix {
  constructor(matrixString) {
    this.matrixString = matrixString
      .split("\n")
      .map((a) => a.split(" ").map((a) => parseInt(a)));
  }

  get rows() {
    return this.matrixString;
  }

  get columns() {
    return this.transpose(this.matrixString);
  }

  transpose(matrix) {
    let transposedMatrix = [];

    for (let i = 0; i < matrix[0].length; i++) {
      transposedMatrix.push([]);

      for (let j = 0; j < matrix.length; j++) {
        transposedMatrix[i][j] = matrix[j][i];
      }
    }

    return transposedMatrix;
  }
}
