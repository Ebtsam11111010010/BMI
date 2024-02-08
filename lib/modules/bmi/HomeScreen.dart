import 'dart:math';
import 'package:flutter/material.dart';
import '../bmi_result/BMIResult.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key})
      : super(key: key); //to give key access to take data
  @override
  State<HomeScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<HomeScreen> {
  // ignore: non_constant_identifier_names
  bool isMale = true;
  Color color = Colors.black38;
  String gander = 'Femle';
  double height = 180;
  int weight = 60;
  int Age = 20;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            "BMI Calculator",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(250, 33, 39, 68),
      ),
      backgroundColor: Color.fromARGB(250, 33, 39, 68),
      body: Column(
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                      isMale ? gander = "Male" : gander = "Female";
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: isMale ? Colors.purpleAccent : Colors.black38,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 60,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                  ),
                ),
              )), //male
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                      isMale ? gander = 'Male' : gander = 'Female';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: isMale ? Colors.black38 : Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 60,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                  ),
                ),
              )), //female
            ]),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Column(
                //  color: Colors.black38,
                children: [
                  Text(
                    '$gander',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${height.round()}',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'CM',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                      value: height,
                      max: 220,
                      min: 80,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Weight",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                child: const Icon(
                                  Icons.add,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Age",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "$Age",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    Age--;
                                  });
                                },
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    Age++;
                                  });
                                },
                                mini: true,
                                child: const Icon(
                                  Icons.add,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 400,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              //color: Colors.black38,
              borderRadius: BorderRadius.circular(28),
            ),
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2); //bmi calculate
                Navigator.push(
                  //switch to the second screen
                  context,
                  MaterialPageRoute(
                    //provide with screen (route)
                    builder: (context) => Bmiresultscreen(
                      result: result.round(),
                      isMale: isMale,
                      Age: Age,
                    ),
                  ),
                );
              },
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
