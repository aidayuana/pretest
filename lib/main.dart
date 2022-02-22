import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  double num1 = 0, num2 = 0, hasil = 0;

  // onSubmit(){
  //   if(num1 ! 0 && num2 > 0){

  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Calculator App')),
        ),
        body: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hasil Perhitungan : ${hasil}",
                style:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    num1 = double.parse(value);
                  });
                },
                decoration: const InputDecoration(
                  hintText: "input pertama",
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    num2 = double.parse(value);
                  });
                },
                decoration: const InputDecoration(
                  hintText: "input kedua",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          child: const Text("+"),
                          onPressed: () {
                            setState(() {
                              hasil = num1 + num2;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          child: const Text("-"),
                          onPressed: () {
                            setState(() {
                              hasil = num1 - num2;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          child: const Text("/"),
                          onPressed: () {
                            setState(() {
                              hasil = num1 / num2;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          child: const Text("*"),
                          onPressed: () {
                            setState(() {
                              hasil = num1 * num2;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
