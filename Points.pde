// Class to generate input data and labels
class Points{
  float x,y;
  //Size of the training data
  float inputSize = 50000;
  
  PVector [] points = new PVector[inputSize];
  float [] label = new float[inputSize];
  
  Points(){
  //generate random input data
    for(int i = 0 ; i < points.length;i++){
      this.points[i] = new PVector(random(0,1),random(0,1));
    }
    makeLabels();
  }
  
 private void makeLabels(){
      
    for(int i = 0 ; i < points.length;i++){
      
      float yValue = new inputDataModel(points[i].x).getValue();
      
       if ( points[i].y > yValue){       
        
         label[i] = 1;
       }
       else{
         label[i] = 0;
       }
    }
  }
  
  public PVector[] getPoints(){
    return points;
  }
  public float[] getLabels(){
    return label;
  }
    
}
