import 'dart:io';
void main() {
activity();
}
void activity()async{
act1();
String data= await act2();
act3(data);
}
void act1(){
  print("This act1");
}
Future act2() async{

  Duration du =new Duration(seconds: 3);
  String stuff='';
 await Future.delayed(du,(){
    stuff="data for act3";
    print("This act2");
  });
  return stuff;
}
void act3(String data){

  print("This act3");
  print(data);
}