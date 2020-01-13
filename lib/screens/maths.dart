import 'package:flutter/material.dart';
import 'package:nursery_rhymes/screens/quiz_brain.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

QuizBrainAddition addition = QuizBrainAddition();
QuizBrainSubtraction subtraction = QuizBrainSubtraction();
QuizBrainMultiplication multiplication = QuizBrainMultiplication();
QuizBrainDivision division = QuizBrainDivision();

void main() {
  runApp(new MathsScreen());
}

class MathsScreen extends StatefulWidget {
  MathsScreen({@required this.id, this.name});
  final id;
  final name;
  @override
  MathsScreenState createState() => MathsScreenState();
}

class MathsScreenState extends State<MathsScreen> {
  String _character;
  void checkAnswer() {
    print("_character====$_character");
    String correctAnswer = this.widget.name == "ADDITION"
        ? addition.getQuestionAnswer()
        : this.widget.name == "SUBTRACTION"
            ? subtraction.getQuestionAnswer()
            : this.widget.name == "MULTIPLICATION"
                ? multiplication.getQuestionAnswer()
                : this.widget.name == "DIVISION"
                    ? division.getQuestionAnswer()
                    : null;
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
                  addition.nextQuestion();
                  subtraction.nextQuestion();
                  multiplication.nextQuestion();
                  division.nextQuestion();
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
    print(this.widget.id);
    print(this.widget.name);
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
          child: this.widget.name == "ADDITION"
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Addition",
                            style: TextStyle(
                                fontFamily: 'Chango-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                                fontSize: 30),
                          )
                        ],
                      ),
                      Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                              child: Column(
                            children: <Widget>[
                              Text(addition.getQuestionText(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Chango-Regular',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 30)),
                              ListTile(
                                title: Text(addition.getOption1(),
                                    style: TextStyle(
                                        fontFamily: 'Chango-Regular',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink,
                                        fontSize: 20)),
                                leading: Radio(
                                  activeColor: Colors.pink,
                                  value: addition.getOption1(),
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
                                title: Text(addition.getOption2(),
                                    style: TextStyle(
                                        fontFamily: 'Chango-Regular',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink,
                                        fontSize: 20)),
                                leading: Radio(
                                  activeColor: Colors.pink,
                                  value: addition.getOption2(),
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
                                title: Text(addition.getOption3(),
                                    style: TextStyle(
                                        fontFamily: 'Chango-Regular',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink,
                                        fontSize: 20)),
                                leading: Radio(
                                  activeColor: Colors.pink,
                                  value: addition.getOption3(),
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
                                title: Text(addition.getOption4(),
                                    style: TextStyle(
                                        fontFamily: 'Chango-Regular',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink,
                                        fontSize: 20)),
                                leading: Radio(
                                  activeColor: Colors.pink,
                                  value: addition.getOption4(),
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
                  ))
              : this.widget.name == "SUBTRACTION"
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Suntraction",
                                style: TextStyle(
                                    fontFamily: 'Chango-Regular',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pink,
                                    fontSize: 30),
                              )
                            ],
                          ),
                          Card(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Center(
                                  child: Column(
                                children: <Widget>[
                                  Text(subtraction.getQuestionText(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Chango-Regular',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 30)),
                                  ListTile(
                                    title: Text(subtraction.getOption1(),
                                        style: TextStyle(
                                            fontFamily: 'Chango-Regular',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.pink,
                                            fontSize: 20)),
                                    leading: Radio(
                                      activeColor: Colors.pink,
                                      value: subtraction.getOption1(),
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
                                    title: Text(subtraction.getOption2(),
                                        style: TextStyle(
                                            fontFamily: 'Chango-Regular',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.pink,
                                            fontSize: 20)),
                                    leading: Radio(
                                      activeColor: Colors.pink,
                                      value: subtraction.getOption2(),
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
                                    title: Text(subtraction.getOption3(),
                                        style: TextStyle(
                                            fontFamily: 'Chango-Regular',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.pink,
                                            fontSize: 20)),
                                    leading: Radio(
                                      activeColor: Colors.pink,
                                      value: subtraction.getOption3(),
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
                                    title: Text(subtraction.getOption4(),
                                        style: TextStyle(
                                            fontFamily: 'Chango-Regular',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.pink,
                                            fontSize: 20)),
                                    leading: Radio(
                                      activeColor: Colors.pink,
                                      value: subtraction.getOption4(),
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
                      ))
                  : this.widget.name == "MULTIPLICATION"
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Multiplication",
                                    style: TextStyle(
                                        fontFamily: 'Chango-Regular',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink,
                                        fontSize: 30),
                                  )
                                ],
                              ),
                              Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Center(
                                      child: Column(
                                    children: <Widget>[
                                      Text(multiplication.getQuestionText(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'Chango-Regular',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 30)),
                                      ListTile(
                                        title: Text(multiplication.getOption1(),
                                            style: TextStyle(
                                                fontFamily: 'Chango-Regular',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.pink,
                                                fontSize: 20)),
                                        leading: Radio(
                                          activeColor: Colors.pink,
                                          value: multiplication.getOption1(),
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
                                        title: Text(multiplication.getOption2(),
                                            style: TextStyle(
                                                fontFamily: 'Chango-Regular',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.pink,
                                                fontSize: 20)),
                                        leading: Radio(
                                          activeColor: Colors.pink,
                                          value: multiplication.getOption2(),
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
                                        title: Text(multiplication.getOption3(),
                                            style: TextStyle(
                                                fontFamily: 'Chango-Regular',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.pink,
                                                fontSize: 20)),
                                        leading: Radio(
                                          activeColor: Colors.pink,
                                          value: multiplication.getOption3(),
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
                                        title: Text(multiplication.getOption4(),
                                            style: TextStyle(
                                                fontFamily: 'Chango-Regular',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.pink,
                                                fontSize: 20)),
                                        leading: Radio(
                                          activeColor: Colors.pink,
                                          value: multiplication.getOption4(),
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
                          ))
                      : this.widget.name == "DIVISION"
                          ? Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Division",
                                        style: TextStyle(
                                            fontFamily: 'Chango-Regular',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.pink,
                                            fontSize: 30),
                                      )
                                    ],
                                  ),
                                  Card(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Center(
                                          child: Column(
                                        children: <Widget>[
                                          Text(division.getQuestionText(),
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'Chango-Regular',
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontSize: 30)),
                                          ListTile(
                                            title: Text(division.getOption1(),
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Chango-Regular',
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.pink,
                                                    fontSize: 20)),
                                            leading: Radio(
                                              activeColor: Colors.pink,
                                              value: division.getOption1(),
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
                                            title: Text(division.getOption2(),
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Chango-Regular',
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.pink,
                                                    fontSize: 20)),
                                            leading: Radio(
                                              activeColor: Colors.pink,
                                              value: division.getOption2(),
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
                                            title: Text(division.getOption3(),
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Chango-Regular',
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.pink,
                                                    fontSize: 20)),
                                            leading: Radio(
                                              activeColor: Colors.pink,
                                              value: division.getOption3(),
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
                                            title: Text(division.getOption4(),
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Chango-Regular',
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.pink,
                                                    fontSize: 20)),
                                            leading: Radio(
                                              activeColor: Colors.pink,
                                              value: division.getOption4(),
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
                              ))
                          : null)
    ]));
  }
}
