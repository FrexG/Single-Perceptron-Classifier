/*
  A Simple linear classifier using a two input
  perceptron 
 */
 
 // Run this file to start the application
 
int loopCount = 1000;
Train train;

void setup(){
  size(500,500);
  train = new Train();  
  background(0);
}

void draw(){
   
  train.trainPerceptron();
  
  if(loopCount > 0){
    train.predictOnTrainedWeights();
    }
    loopCount--;
}
