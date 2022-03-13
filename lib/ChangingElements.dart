import 'dart:math';

void main(){

  var l1 = <int>[10,15,20,25,30,35,40,45,50];
  var l2 = <int>[];
  var lOdd = <int>[];
  var lEven = <int>[];
  var lRandom = <int>[];

  print(l1);  //[10,15,20,25,30,35,40,45,50]

  // I want to print the elements of l1 in reverse.;

  for(var i=(l1.length-1);i>=0;i--){
    l2.add(l1[i]);
  }
  print(l2); //[50, 45, 40, 35, 30, 25, 20, 15, 10]

  // I want to multiply the value of each element in l1 by 2.

  for(var v=0;v<l1.length;v++){
    l1[v]= l1[v]*2;
  }
  print(l1); //[20, 30, 40, 50, 60, 70, 80, 90, 100]

  //I want to separate the elements of l1 as odd and even.

  for(var v=0;v<l1.length;v++){
    if(l1[v]%2==0){
      lEven.add(l1[v]);
    }else{
      lOdd.add(l1[v]);
    }
  }

  print(lOdd); // []  because they are all even numbers
  print(lEven); // [20, 30, 40, 50, 60, 70, 80, 90, 100]

  // I want to create random numbers

  for(var v=0;v<10;v++){
   int r = Random().nextInt(100);
   lRandom.add(r);
  }
  lRandom.sort((a, b) => a.compareTo(b));
  print(lRandom);



}