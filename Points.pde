class Points{
  float x,y;
  PVector [] points = new PVector[50000];
  float [] label = new float[50000];
  
  Points(){
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
