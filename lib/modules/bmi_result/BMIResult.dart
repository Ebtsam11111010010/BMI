import 'package:flutter/material.dart';
import 'dart:ui';

// ignore: must_be_immutable
class Bmiresultscreen extends StatelessWidget {
//  const Bmiresultscreen({super.key});
  int result = 0;
  bool isMale = true;
  int Age = 22;
  Bmiresultscreen({
    Key? key,
    required this.result,
    required this.Age,
    required this.isMale,
  }) : super(key: key); //now we can access the data between home & bmi screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BMI Result',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(250, 33, 39, 68),
      ),
      backgroundColor: Color.fromARGB(250, 33, 39, 68),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black38,
                  ),
                  child: Center(
                    child: Text(
                      'Gender :${isMale ? 'Male' : 'Female'} ',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black38,
                  ),
                  child: Center(
                    child: Text(
                      'Age:$Age',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black38,
                  ),
                  child: Center(
                    child: Text(
                      'BMI:$result',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
