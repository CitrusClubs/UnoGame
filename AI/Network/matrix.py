
import random


class Matrix:
    def __init__(self, row, col) -> None:
        self.col = row
        self.row = col
        self.data = self.create_data()

    def create_data(self):
        data = []
        for i in range(self.col):
            arr = []
            for j in range(self.row):
                arr.append(0)
            data.append(arr)
        return data

    def add_scalar(self, num):
        for i in range(self.col):
            for j in range(self.row):
                self.data[i][j] *= num
    
    def randomize(self):
        a = 0
        for i in range(self.col):
            for j in range(self.row):
                self.data[i][j] = random.randint(0,3)
                a+=1
    



    def multiply(self, matrix):
        out = Matrix(matrix.row, self.col)
        try:
            if self.row == matrix.col:
                for i in range(self.col):
                    for j in range(matrix.col):
                        for k in range(self.row):
                            out.data[i][j] += self.data[k][j]*matrix.data[i][k]   
            else:
                print("The dimensions required for multiplication are not correct")
            return out

        except:
            print("This method requires a Matrix Object")
            return out



    def print(self):
        for arr in self.data:  # outer loop  
            for item in arr:  # inner loop  
                print(item, end = " ") # print the elements  
            print()  

a = Matrix(1,2)
b = Matrix(2,3)
a.randomize()
b.randomize()
c = a.multiply(b)
a.print()
print("~~~")
b.print()
print("~~~")
c.print()