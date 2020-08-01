class Matrix:
    def __init__(self, matrix_string):
        self.matrix_list = matrix_string.split('\n')

    def row(self, index):
        row_values = self.matrix_list[index - 1].split(' ')
        for i in range(len(row_values)):
            row_values[i] = int(row_values[i])

        return row_values

    def column(self, index):
        column_values = []
        for i in range(len(self.matrix_list)):
            self.matrix_list[i] = self.matrix_list[i].split(' ')

        for element in self.matrix_list:
            column_values.append(int(element[index - 1]))

        return column_values
