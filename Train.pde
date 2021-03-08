class Train{
  // Experiment with varying y-intercept values for the linear input model
  float intercept = 0.1;

  private int epochs = 20;
  private float[] labels;
  private PVector[] points;
  private Points p;
  private Perceptron perceptron;
  float[] weights;
  
  Train(){
  // Initialize input data points
    p = new Points();
  // Retrive input labels and input data points
    setLabels();
    setPoints();
    
    // Initialize perceptron to a random weights
    perceptron = new Perceptron(random(0,1),random(0,1));
  }
  
  private void setLabels(){
    this.labels = p.getLabels();
  }
  private void setPoints(){
    this.points = p.getPoints();
  }
  
  public void trainPerceptron(){
    float  y1 = new inputDataModel(0,intercept).getValue();
    float  y2 =  new inputDataModel(1,intercept).getValue();
    
    // Map output values to the vertical dimension of the canvas
    y1 = map(y1,0,1,0,height);
    y2 = map(y2,0,1,0,height);
    
    line(0,y1,width,y2);
    stroke(255);
    
    while(epochs > 0){  
      
      println("Epoch "+epochs);      
      // For each data point train the perceptron
      for(int i = 0; i < points.length;i++){
        float label = labels[i];
        PVector p = points[i];
        perceptron.getEstimate(p.x,p.y,label);
      
        }
    epochs = epochs - 1;
    }

  }
  
 public void predictOnTrainedWeights(){
   trainPerceptron();
  // Get the final adjusted weight values 
   weights = perceptron.getFinalWeights();
   
   float x = random(0,1);
   float y = random(0,1);
   
   // Make a classification based on the adjusted weight values
   
   float predicted = perceptron.predict(weights[0],weights[1],x,y);
   
   if (predicted >= 0.9){
     fill(255,0,0);
   }else{
     fill(0,255,0);
   }
   
   x = map(x,0,1,0,width);
   y = map(y,0,1,0,height);
   circle(x,y,10);
  
 }
    
}
