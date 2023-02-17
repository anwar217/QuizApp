import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Yellow', 'score': 20},
        {'text': 'Red', 'score': 5},
        {'text': 'Pink', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 7},
        {'text': 'Brid', 'score': 1}
      ]
    },
    {
      'questionText': 'Who\'s your favorite food ?',
      'answers': [
        {'text': 'Pizza', 'score': 9},
        {'text': 'Pasta', 'score': 5},
        {'text': 'Burger', 'score': 3},
        {'text': 'Noodles', 'score': 1}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _restQuiz(){
    setState(() {
       _questionIndex = 0;
     _totalScore = 0;
    });
    
  }

  void _answerQuestion(int score) {
   
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Quiz App'),
          backgroundColor: Color.fromARGB(255, 160, 226, 236),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _answerQuestion, _questionIndex)
            : Result(_totalScore, _restQuiz),
      ),
    );
  }
}
