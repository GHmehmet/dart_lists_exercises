import 'dart:io';

import 'package:flutter_lists_exercises/Composition/Adress.dart';
import 'package:flutter_lists_exercises/Composition/Members.dart';

void main(){

  var lMembers = <Members>[];

  while(true){

    print("Enter the name of member");
    String name = stdin.readLineSync()!;
    print("Enter the age of member");
    int? age = int.parse(stdin.readLineSync()!);
    print("Enter the country of member");
    String country = stdin.readLineSync()!;
    print("Enter the city of member");
    String city = stdin.readLineSync()!;

    var adress = Adress(country, city);
    var member = Members(name, age, adress);

    lMembers.add(member);

    print("Press \"E\" for exit or press anythink for continıe.");
    String? choice = stdin.readLineSync();
    if(choice == "E") {
      for (var v in lMembers) {
        print("************");
        print("Name: ${v.name}");
        print("Age: ${v.age}");
        print("Country : ${v.adress.country}");
        print("City : ${v.adress.city}");

      }
      break;
    }else{
      continue;
    }

  }
}
