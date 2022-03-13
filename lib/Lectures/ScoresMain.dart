import 'package:flutter_lists_exercises/Lectures/Scores.dart';

void main(){

  var l1 = Lectures("Mathematic", 80);
  var l2 = Lectures("Physical", 60);
  var l3 = Lectures("Chemistry", 74);
  var l4 = Lectures("History", 63);
  var l5 = Lectures("Geometry", 77);

  var lScores = <Lectures>[];

  lScores.add(l1);
  lScores.add(l2);
  lScores.add(l3);
  lScores.add(l4);
  lScores.add(l5);

 for(var v in lScores)
  print("${v.name} : ${v.score}");

 // average

  int total=0;

  for(var v in lScores){
    total =total + (v.score) ;
  }

  double average = (total/lScores.length);
  print("Average: $average");

}