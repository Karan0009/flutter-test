import "package:flutter/material.dart";

import "./question.dart";

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(const MyAppStateWidget());

/// This is a stateless widget
class MyAppStatelessWidget extends StatelessWidget {
  const MyAppStatelessWidget({Key? key}) : super(key: key);

  void answerQuestion() {
    print("question answered");
  }

  @override
  Widget build(BuildContext context) {
    const String _appTitle = "quiz about you";
    var _questions = ["Are you a good person?", "Are you smart?"];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(_appTitle),
        backgroundColor: Colors.red,
        elevation: 10,
        shadowColor: Colors.yellow,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        Text(_questions.elementAt(0)),
        RaisedButton(
          child: const Text("Ans1"),
          onPressed: answerQuestion,
        ),
        RaisedButton(
            child: const Text("Ans2"), onPressed: () => print("hello world")),
        RaisedButton(
          child: const Text("Ans3"),
          onPressed: () => print("hello world three"),
        )
      ]),
    ));
  }
}

class MyAppStateWidget extends StatefulWidget {
  const MyAppStateWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyAppStateWidget> {
  var _questionIndex = 0;
  final List<String> _questions = ["Are you a good person?", "Are you smart?"];
  void _answerQuestion() {
    setState(() {
      if (_questionIndex >= _questions.length - 1) {
        _questionIndex = 0;
      } else {
        _questionIndex += 1;
      }
    });
    print("question answered :" + _questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    const String _appTitle = "quiz about you";

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(_appTitle),
        backgroundColor: Colors.red,
        elevation: 10,
        shadowColor: Colors.yellow,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        Question(questionText: _questions.elementAt(_questionIndex)),
        RaisedButton(
          child: const Text("Ans1"),
          onPressed: _answerQuestion,
        ),
        // RaisedButton(
        //     child: const Text("Ans2"), onPressed: () => print("hello world")),
        // RaisedButton(
        //   child: const Text("Ans3"),
        //   onPressed: () => print("hello world three"),
        // )
      ]),
    ));
  }
}
