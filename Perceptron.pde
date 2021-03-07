class Perceptron{
  float w1,w2;
  float x1,x2;
  
  Perceptron(float w1,float w2){
    // Initialize weights to random values
    this.w1 = w1;
    this.w2 = w2;
    
  }
  
  public void getEstimate(float input1,float input2,float label){
    this.x1 = input1;
    this.x2 = input2;
    
    float weightedSum = (x1 * w1) + (x2 * w2);
    float predictedValue = sigmoid(weightedSum);
   
    updateWeights(label,predictedValue,x1,x2);
  }
  
  //Activation function
  private float sigmoid(float sum){
    float Z = 1/(1 + exp(-sum));
   
    return Z;
  }
  
  private void updateWeights(float label,float predictedValue,float x1,float x2){
    // Update the weights using the backpropagation algorithm
    float deltaW1 = -2 * x1 * predictedValue * (label - predictedValue) * (1 - predictedValue);
    
    float deltaW2 = -2 * x2 * predictedValue * (label - predictedValue) * (1 - predictedValue);
    
    // Update weights
    
    w1 = w1 - deltaW1;
    w2 = w2 - deltaW2;
  }
  
  // return final trained weights
  public float[] getFinalWeights(){
    float[] weights = {w1,w2};
    return weights;
  }
  // Make predictions
  public float predict(float weight1,float weight2,float x1,float x2){
    float weightedSum = (x1 * weight1) + (x2 * weight2);
    float predictedValue = sigmoid(weightedSum);
    
     return predictedValue;
  }
    
}
