import 'package:flutter/material.dart';
import 'package:nursery_rhymes/screens/quiz_brain.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

QuizBrain quizBrain = QuizBrain();
void main() {
  runApp(new MathsScreen());
}

class MathsScreen extends StatefulWidget {
  @override
  MathsScreenState createState() => MathsScreenState();
}

class MathsScreenState extends State<MathsScreen> {
  String _character;
  void checkAnswer() {
    print("_character====$_character");
    String correctAnswer = quizBrain.getQuestionAnswer();
    if (_character == correctAnswer) {
      showDialog(
          context: context,
          builder: (_) => AssetGiffyDialog(
              onlyOkButton: true,
              cornerRadius: 50.0,
              image: Image.asset(
                'assets/images/right.gif',
                fit: BoxFit.cover,
              ),
              title: Text(
                'Yup!!!  Keep it up!!!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              onOkButtonPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  quizBrain.nextQuestion();
                  _character = '';
                });
              }));
    } else {
      showDialog(
          context: context,
          builder: (_) => AssetGiffyDialog(
              onlyOkButton: true,
              cornerRadius: 50.0,
              image: Image.asset(
                'assets/images/no.gif',
                fit: BoxFit.cover,
              ),
              title: Text(
                'Opps!! Please try again',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              onOkButtonPressed: () {
                Navigator.of(context).pop();
                _character = '';
              }));
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: <Widget>[
      Center(
        child: new Image.asset(
          'assets/images/dashboard.jpg',
          width: size.width,
          height: size.height,
          fit: BoxFit.fill,
        ),
      ),
      SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    Text("Addition", style:TextStyle(
                                fontFamily: 'Chango-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                                fontSize: 30),)
                  ],),
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Text(
                            quizBrain.getQuestionText(),
                            textAlign: TextAlign.center,
                            style:TextStyle(
                                fontFamily: 'Chango-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 30)
                          ),
                          ListTile(
                            title: Text(
                              quizBrain.getOption1(),
                              style:  TextStyle(
                                fontFamily: 'Chango-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                                fontSize: 20)
                            ),
                            leading: Radio(
                              activeColor: Colors.pink,
                              value: quizBrain.getOption1(),
                              groupValue: _character,
                              onChanged: (Object value) {
                                setState(() {
                                  _character = value;
                                });
                                print(value);
                                checkAnswer();
                              },
                            ),
                          ),
                          ListTile(
                            title: Text(
                              quizBrain.getOption2(),
                               style:  TextStyle(
                                fontFamily: 'Chango-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                                fontSize: 20)
                            ),
                            leading: Radio(
                              activeColor: Colors.pink,
                              value: quizBrain.getOption2(),
                              groupValue: _character,
                              onChanged: (Object value) {
                                setState(() {
                                  _character = value;
                                });
                                print(value);
                                checkAnswer();
                              },
                            ),
                          ),
                          ListTile(
                            title: Text(
                              quizBrain.getOption3(),
                             style:  TextStyle(
                                fontFamily: 'Chango-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                                fontSize: 20)
                            ),
                            leading: Radio(
                              activeColor: Colors.pink,
                              value: quizBrain.getOption3(),
                              groupValue: _character,
                              onChanged: (Object value) {
                                setState(() {
                                  _character = value;
                                });
                                print(value);
                                checkAnswer();
                              },
                            ),
                          ),
                          ListTile(
                            title: Text(
                              quizBrain.getOption4(),
                                style:  TextStyle(
                                fontFamily: 'Chango-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                                fontSize: 20)
                            ),
                            leading: Radio(
                              activeColor: Colors.pink,
                              value: quizBrain.getOption4(),
                              groupValue: _character,
                              onChanged: (Object value) {
                                setState(() {
                                  _character = value;
                                });
                                print(value);
                                checkAnswer();
                              },
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ],
              )))
    ]));
  }
}
