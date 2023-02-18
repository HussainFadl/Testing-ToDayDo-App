class Task{


  final String name;
  bool isDone;

  Task ({required this.name, this.isDone = false});

  void doneChange(){
    isDone  =  !isDone; // ( ! exclamation mark) reverse the bool value to the opposite value
  }
}