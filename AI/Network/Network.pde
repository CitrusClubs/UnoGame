void setup(){
   Matrix m = new Matrix(2,3);
   Matrix n = new Matrix(1,2);
   m.randomize();
   n.randomize();
   Matrix c = m.multiply(n);
   output(c.data);
   
}

void output(int[][] arr){
  for (int row = 0; row < arr.length; row++)//Cycles through rows
  {
    for (int col = 0; col < arr[row].length; col++)//Cycles through columns
    {
      System.out.printf("%5d", arr[row][col]); //change the %5d to however much space you want
    }
    System.out.println(); //Makes a new row
  }
}
