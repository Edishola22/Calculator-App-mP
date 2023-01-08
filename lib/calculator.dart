
import 'package:flutter/material.dart';

import 'data/logic.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var logicData = Logic();
  var result = 0;

  Widget calculatorBtn(String btnTxt, Color btnColor, Color txtColor){
    return ElevatedButton(
              onPressed: () async {
                var btnNum = int.parse(btnTxt);
                setState(() => result = btnNum);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: btnColor,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
            ),
          child: Text(
                  btnTxt,
                  style: TextStyle(
                      fontSize: 35,
                      color: txtColor
                          ),
                  ),
            );
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Calculator",
          style: TextStyle(
            color: Colors.white
          ),
        ),
            backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                Text(
                  "$result",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50
                  ),
                )
              ],
            ),

            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorBtn("AC", Colors.grey, Colors.black),
                calculatorBtn("+/-", Colors.grey, Colors.black),
                calculatorBtn("%", Colors.grey, Colors.black),
                calculatorBtn("/", Colors.amber.shade600, Colors.white)
              ],
            ),
            SizedBox(
              height: 5,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorBtn("7", Colors.grey.shade800, Colors.white),
                calculatorBtn("8", Colors.grey.shade800, Colors.white),
                calculatorBtn("9", Colors.grey.shade800, Colors.white),
                calculatorBtn("*", Colors.amber.shade600, Colors.white)
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorBtn("4", Colors.grey.shade800, Colors.white),
                calculatorBtn("5", Colors.grey.shade800, Colors.white),
                calculatorBtn("6", Colors.grey.shade800, Colors.white),
                calculatorBtn("-", Colors.amber.shade600, Colors.white)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorBtn("1", Colors.grey.shade800, Colors.white),
                calculatorBtn("2", Colors.grey.shade800, Colors.white),
                calculatorBtn("3", Colors.grey.shade800, Colors.white),
                calculatorBtn("+", Colors.amber.shade600, Colors.white)
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 35
                      ),
                    )
                ),
                calculatorBtn(".", Colors.grey.shade800, Colors.white),
                calculatorBtn("=", Colors.amber.shade600, Colors.white)
              ],
            ),
          ],
        ),
      )
    );
  }
}
