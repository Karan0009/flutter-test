import "package:flutter/material.dart";

class Question extends StatelessWidget {
  final String questionText;
  // const Question({ Key? key }) : super(key: key);
  const Question({Key? key, required this.questionText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      margin: const EdgeInsets.all(15),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 24, backgroundColor: Colors.yellow),
        textAlign: TextAlign.center,
      ),
    );
  }
}
