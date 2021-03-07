class inputDataModel{
float xValue;
float y;

  inputDataModel(float xValue){
   this.xValue = xValue;
  }
  float getValue(){
    y = 0.3*xValue + 0.0;
    return y;
  }
}
