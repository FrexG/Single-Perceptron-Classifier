class inputDataModel{
float xValue;
float y;
float slope = 0.3;
float intercept

  inputDataModel(float xValue){
   this.xValue = xValue;
   this.intercept = intercept;
  }
  float getValue(){
    y = slope*xValue + intercept;
    return y;
  }
}
