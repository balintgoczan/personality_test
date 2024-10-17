// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../logic/ptlogic.dart';

class PT extends StatefulWidget {
  const PT({super.key});

  @override
  State<PT> createState() => PTState();
}

class PTState extends State<PT> {
  int selectedButton = 0;
  bool next = false;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    int selectedbuttonTemp = selectedButton + 1;
    counter++;
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Center(
            child: Text(
          'Gecire P.T.',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${selectedbuttonTemp}, ${next}, ${counter}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // this generates 5 buttons
              children: List.generate(
                5,
                (index) {
                  return ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = index;
                        });
                      },
                      // ternary operator, its like an if-else statement, if selectedbutton = index, than color is purple, else its blue
                      style: ElevatedButton.styleFrom(
                          backgroundColor: selectedButton == index
                              ? Colors.deepPurple[200]
                              : Colors.blue[200]),
                      child: Text('${index + 1}'));
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    next = true;
                  },
                );
              },
              child: Text('Next'),
            )
          ],
        ),
      ),
    );
  }
}
