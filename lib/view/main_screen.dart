import 'dart:math';

import 'package:bmi_calc_dsc/view/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isMale = true;
  double height = 120.0;
  int weight = 60;
  int age = 22;
 late double  result ;


  var nameController = TextEditingController();

  Color unSelctedColor = Color.fromRGBO(44, 62, 80, 1);
  Color selctedColor = Color.fromRGBO(100, 30, 22, 1);
  Color backgrondColor =Color.fromRGBO(23, 32, 42, 1);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrondColor,
      appBar: AppBar(
        backgroundColor: backgrondColor,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: backgrondColor,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: isMale ? selctedColor : unSelctedColor,
                              borderRadius: BorderRadius.circular(10)),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.male,
                                size: 90,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.female,
                                size: 90,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: isMale ? unSelctedColor : selctedColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(213, 216, 220, 1)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.round()}",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "Cm",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(213, 216, 220, 1)),
                          )
                        ],
                      ),
                      Slider(
                          activeColor: selctedColor,
                          label: height.round().toString(),
                          value: height,
                          max: 220.0,
                          min: 80.0,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          }),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(44, 62, 80, 1),
                      borderRadius: BorderRadius.circular(10)),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                color: Color.fromRGBO(213, 216, 220, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                // color: Colors.white,
                              ),
                            ),
                            Text(
                              "$weight",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  child: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  backgroundColor:
                                      Color.fromRGBO(28, 40, 51, 1),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  child: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  backgroundColor:
                                      Color.fromRGBO(28, 40, 51, 1),
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(44, 62, 80, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                color: Color.fromRGBO(213, 216, 220, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                // color: Colors.white,
                              ),
                            ),
                            Text(
                              "$age",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  child: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  backgroundColor:
                                      Color.fromRGBO(28, 40, 51, 1),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  child: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  backgroundColor:
                                      Color.fromRGBO(28, 40, 51, 1),
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(44, 62, 80, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              color: Color.fromRGBO(100, 30, 22, 1),
              width: double.infinity,
              child: MaterialButton(
                child: const Text(
                  "CALCULATE YOUR BMI",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {


                   result = weight / pow(height / 100, 2);


                  _displayTextInputDialog(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Enter Your name'),
            content: TextFormField(
              keyboardType: TextInputType.name,
              controller: nameController,

              onChanged: (value) {
                setState(() {
                  nameController.text = value ;

                });
              },
            ),
            actions: <Widget>[
              FlatButton(
                color: selctedColor,
                textColor: Colors.white,
                child: Text('CANCEL'),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                    nameController.clear();
                  });
                },
              ),
              FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text('OK'),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(
                            name: nameController.text,
                            result: result,
                            isMale: isMale,
                            height: height,
                            age: age,
                            weight: weight,
                          ),
                        ));                  });
                },
              ),

            ],
          );
        });
  }
}
