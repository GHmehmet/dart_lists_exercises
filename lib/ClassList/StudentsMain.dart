import 'dart:io';

import 'package:flutter_lists_exercises/ClassList/Students.dart';

void main(){

  var lStudents= <Students>[];
  int no=1;

  while(true){

    print("Enter the name");
    String name = stdin.readLineSync()!;
    print("Enter the level");
    int? level = int.parse(stdin.readLineSync()!);


    var student = Students(no, name, level);
    lStudents.add(student);
    no++; //for the number to increase automatically


    print("Press \"E\" for exit or press anythink for continıe.");
    String? choice = stdin.readLineSync();
    if(choice == "E"){
      break;
    }else{
      continue;
    }
  }

  for(var v in lStudents){
    print("************");
    print("No: ${v.no}");
    print("Name: ${v.name}");
    print("Level: ${v.level}");

  }





}