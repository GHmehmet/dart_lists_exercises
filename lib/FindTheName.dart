import 'dart:io';

void main(){

  var lNames = <String>["Ali","Mehmet","Esra","Helen","Gulsen"];

  print("Enter the name that do you want search ");
  String? name = stdin.readLineSync();


  int check=0;
  int index=0;
  for(var v=0;v<lNames.length;v++){

    if(name == lNames[v]){
    check+=1;
    index=v;
    }

  }
  if(check==1){
    print("The name you are looking for is in the $index. index of the list.");
  }else{
    print("there is no the name which your search in the list");
  }



}