import 'package:example/gradient_icon.dart';
import 'package:example/header.dart';
import 'package:example/register_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

@override
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 50),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(254, 115, 72, 1),
              Color.fromRGBO(245, 57, 107, 1),
            ],
          )),
          child: Column(children: <Widget>[
            const Header(),
            const Padding(
              padding: EdgeInsets.only(top: 30, bottom: 40),
              child: Text('SIGN IN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Enter Email',
                    labelStyle: TextStyle(fontSize: 20, color: Colors.white),
                    fillColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.5))),
                focusNode: FocusNode(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.5)),
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 20, color: Colors.white),
                    fillColor: Colors.white,
                    focusColor: Colors.blue),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, top: 20, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      checkColor: Colors.white,
                      activeColor: const Color.fromRGBO(249, 108, 48, 1),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const Text(
                      'Remember Password',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            Center(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: const Size(300, 60),
              ),
              onPressed: () {},
              child: GradientText(
                'GET STARTED',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                colors: const [
                  Color.fromRGBO(245, 57, 107, 1),
                  Color.fromRGBO(254, 115, 72, 1),
                ],
              ),
            )),
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 3,
                        shape: const CircleBorder(),
                        minimumSize: const Size(60, 60),
                      ),
                      onPressed: () {},
                      child: const GradientIcon(
                        FontAwesomeIcons.facebookF,
                        25,
                        LinearGradient(
                          colors: <Color>[
                            Color.fromRGBO(245, 57, 107, 1),
                            Color.fromRGBO(254, 115, 72, 1),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 3,
                        shape: const CircleBorder(),
                        minimumSize: const Size(60, 60),
                      ),
                      onPressed: () {},
                      child: const GradientIcon(
                        FontAwesomeIcons.twitter,
                        25,
                        LinearGradient(
                          colors: <Color>[
                            Color.fromRGBO(245, 57, 107, 1),
                            Color.fromRGBO(254, 115, 72, 1),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      )),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'FORGOT PASSWORD?',
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.underline),
              ),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.black.withOpacity(0.3),
                child: MaterialButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()))
                  },
                  child: const Text.rich(TextSpan(
                    text: 'DON\'T HAVE AN ACCOUNT?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(254, 115, 72, 1),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' SIGN UP',
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline)),
                    ],
                  )),
                ),
              ),
            ))
          ]),
        ),
      ),
    );
  }
}
