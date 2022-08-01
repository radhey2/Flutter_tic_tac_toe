import 'package:flutter/material.dart';

class MyGame extends StatefulWidget {
  const MyGame({Key? key}) : super(key: key);

  @override
  State<MyGame> createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {

  List<List> matrix;
  HomePage(){
    matrix = List<List>(3);
    matrix.length = 3;

    for(var i=0; i < matrix.length; i++){
      matrix[i] = List(3);
      for(var j = 0; j < matrix[i].length; j++){
        matrix[i][j] = '';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body:Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             buildElement(0,0),
             buildElement(0,1),
             buildElement(0,2),
           ],
         ),
         Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             buildElement(1,0),
             buildElement(1,1),
             buildElement(1,2),
           ],
         ),
         Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             buildElement(2,0),
             buildElement(2,1),
             buildElement(2,2),
           ],
         )
       ]
     ),
      )
    );
  }

  String lastchar = 'O';
  buildElement(int i, int j){
    return GestureDetector(
      onTap: (){
        if (lastchar == 'O')
          matrix[i][j] = 'X';
        else
          matrix[i][j] = 'O';
    lastchar = matrix[i][j];

       for(var k = 0; k < matrix.length; k++){
         var str = '';
         for(var m = 0; m < matrix.length; m++){
           str += matrix[k][m];
         }
         print(str);
       }
      },
      child:Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.black12,
        )
      ),
      child: Text(
          'X',
      style: TextStyle(
          fontSize: 52.0,
      ),),
    )
    );
  }
}
