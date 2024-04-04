import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.redAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  //write function definations here

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          SizedBox(
            width: 15.0,
          ),
          // GradientContainer(),
          Expanded(
            flex: 1,
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNum.png'),
              onPressed: () {
                setState(() {
                  leftDiceNum = Random().nextInt(6) + 1;
                  rightDiceNum = Random().nextInt(6) +
                      1; //if both image should change when press one dice
                });
                print('1st dice clicked');
              },
            ),
          ), //we can also add image by this method
          // SizedBox(
          //   width: 15.0,
          // ),
          Expanded(
            flex: 1,
            child: TextButton(
              child: Image(
                image: AssetImage('images/dice$rightDiceNum.png'),
              ),
              onPressed: () {
                setState(() {
                  rightDiceNum = Random().nextInt(6) + 1;
                  leftDiceNum = Random().nextInt(6) +
                      1; //if both image should change when press one dice
                });
                print('2nd dice rolled');
              },
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
        ],
      ),
    );
  }
}

//to create class for widget:
class GradientContainer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
        // to use gradient colors
        gradient: LinearGradient(
          colors: [
            //color list
            Colors.deepPurple.shade200,
            Colors.deepPurple.shade400
          ],
          begin: Alignment
              .topCenter, //thhese two lines are to position the gradient allingment
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
