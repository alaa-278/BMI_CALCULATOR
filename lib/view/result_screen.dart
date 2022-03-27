import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final double result;
  final bool isMale;
  final double height;
  final int weight;
  final int age;
  final String name;

  ResultScreen(
      {required this.result,
      required this.isMale,
      required this.height,
      required this.weight,
      required this.age,
      required this.name});

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(23, 32, 42, 1),
        centerTitle: true,
        title: Text(
          "BMI RESULT",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(23, 32, 42, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Hello , ${widget.name}",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric( horizontal:  20.0),
              child: Text(
                "Your Result :",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          " ${widget.isMale ? "MALE" : "FEMALE"}",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        Text(
                          'weight : ${widget.weight}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        Text(
                          'height : ${widget.height}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        Text(
                          'age : ${widget.age}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        Center(
                          child: Text(
                            "${widget.result}".toString().substring(0, 4),
                            style: TextStyle(
                                fontSize: 70,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        buildresultBmi(widget.result),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromRGBO(33, 47, 61, 1),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildresultBmi(result) {
    if (widget.result < 18) {
      return Text(
        'you are Under Weight',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      );
    } else if (widget.result >= 18.5 && widget.result <= 24.9) {
      return Text(
        'you are Normal Weight',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      );
    } else if (widget.result >= 25 && widget.result <= 29.9) {
      return Text(
        'you are Over Weight',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      );
    } else if (widget.result >= 30 && widget.result <= 39.9) {
      return Text(
        'you are Obesity',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      );
    } else {
      return Text(
        'you are Morbid Obesity ',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      );
    }
  }
}
