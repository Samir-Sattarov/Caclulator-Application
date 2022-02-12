import 'package:calculator/pesintation/widget/button.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String history = '';
  String result = '';
  void valueClick(String text) {
    setState(() {
      result += text;
    });
  }

  void resultValue(String text) {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      history = result;
      result = eval.toString();
    });
  }

  void allClear(String text) {
    setState(() {
      history = '';
      result = '';
    });
  }

  void clear(String text) {
    setState(() {
      result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        history,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 112, 112, 112),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        result,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 22, 22, 22),
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                        backgound: Colors.blueGrey,
                        txtColor: Colors.white,
                        txt: 'AC',
                        onPressed: allClear,
                      ),
                      ButtonWidget(
                          backgound: Colors.blueGrey,
                          txtColor: Colors.white,
                          txt: 'C',
                          onPressed: clear),
                      ButtonWidget(
                        backgound: Colors.blueGrey,
                        txtColor: Colors.white,
                        txt: '%',
                        onPressed: valueClick,
                      ),
                      ButtonWidget(
                        backgound: Colors.blueGrey,
                        txtColor: Colors.white,
                        txt: '/',
                        onPressed: valueClick,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                        backgound: Colors.transparent,
                        txtColor: Colors.white,
                        txt: '7',
                        onPressed: valueClick,
                      ),
                      ButtonWidget(
                        backgound: Colors.transparent,
                        txtColor: Colors.white,
                        txt: '8',
                        onPressed: valueClick,
                      ),
                      ButtonWidget(
                        backgound: Colors.transparent,
                        txtColor: Colors.white,
                        txt: '9',
                        onPressed: valueClick,
                      ),
                      ButtonWidget(
                        backgound: Colors.blueGrey,
                        txtColor: Colors.white,
                        txt: '*',
                        onPressed: valueClick,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                        backgound: Colors.transparent,
                        txtColor: Colors.white,
                        txt: '1',
                        onPressed: valueClick,
                      ),
                      ButtonWidget(
                        backgound: Colors.transparent,
                        txtColor: Colors.white,
                        txt: '2',
                        onPressed: valueClick,
                      ),
                      ButtonWidget(
                        backgound: Colors.transparent,
                        txtColor: Colors.white,
                        txt: '3',
                        onPressed: valueClick,
                      ),
                      ButtonWidget(
                        backgound: Colors.blueGrey,
                        txtColor: Colors.white,
                        txt: '-',
                        onPressed: valueClick,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                        backgound: Colors.transparent,
                        txtColor: Colors.white,
                        txt: '1',
                        onPressed: valueClick,
                      ),
                      ButtonWidget(
                        backgound: Colors.transparent,
                        txtColor: Colors.white,
                        txt: '2',
                        onPressed: valueClick,
                      ),
                      ButtonWidget(
                        backgound: Colors.transparent,
                        txtColor: Colors.white,
                        txt: '3',
                        onPressed: valueClick,
                      ),
                      ButtonWidget(
                        backgound: Colors.blueGrey,
                        txtColor: Colors.white,
                        txt: '+',
                        onPressed: valueClick,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                        backgound: Colors.transparent,
                        txtColor: Colors.white,
                        txt: '00',
                        onPressed: valueClick,
                      ),
                      ButtonWidget(
                        backgound: Colors.transparent,
                        txtColor: Colors.white,
                        txt: '0',
                        onPressed: valueClick,
                      ),
                      ButtonWidget(
                        backgound: Colors.transparent,
                        txtColor: Colors.white,
                        txt: '.',
                        onPressed: valueClick,
                      ),
                      ButtonWidget(
                        backgound: Colors.blueGrey,
                        txtColor: Colors.white,
                        txt: '=',
                        onPressed: resultValue,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
