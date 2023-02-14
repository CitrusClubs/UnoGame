class Matrix{
   
  //Instance variables
  int row;
  int col;
  int[][] data;
  
  //Constructor
  public Matrix(int r, int c){
    this.row = r;
    this.col = c;
    this.data = new int[r][c];
  }
  
  /* Methods */
// Scale factor (Multiply each element of the data matrix by a scalar)
  void scalar(int n){
    for(int i = 0; i < this.data.length; i++){
      for(int j = 0; j < this.data[i].length; j++){
         this.data[i][j] *=n;        
      }
    }
  }
  
  
  // Matrix Addition -- matrix plus matrix (Check that dimensions match)
  Matrix addition(Matrix a){
    Matrix output = new Matrix(this.col, this.row);
    if(a.row == this.row && a.col == this.col){
      for(int i = 0; i < this.data.length; i++){
        for(int j = 0; j < this.data[i].length; j++){
           output.data[i][j] = this.data[i][j] + a.data[i][j];        
        }
      }
    } else {
      System.out.println("NO MATCH");
    }
    return output;
  }
   
   
  // Matrix Multiplication  (Check rows M1 and columns M2 match)
  Matrix multiply(Matrix a){
    Matrix output = new Matrix(this.row, a.col);
    if(a.col == this.row){
      for(int i = 0; i < output.data.length; i++){
        for(int j = 0; j < output.data[i].length; j++){
           for(int k = 0; k < a.col; k++){
             output.data[i][j] += a.data[k][i]*this.data[j][k];       
           }
        }
      }
    } else {
      System.out.println("NO MATCH");
    }
    return output;
  }
     
  
  
  
  // Randomizer  -->  Put in random numbers
  void randomize(){
    for(int i = 0; i < this.data.length; i++){
      for(int j = 0; j < this.data[i].length; j++){
         this.data[i][j] = (int)(Math.random()*10);        
      }
    }
  }
}
