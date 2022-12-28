import 'package:example/gradient_icon.dart';
import 'package:example/header.dart';
import 'package:example/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

@override
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(350, 60),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              width: 30,
                              margin: const EdgeInsets.only(right: 10),
                              padding: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color:
                                              Theme.of(context).dividerColor))),
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
                          GradientText(
                            'Sign in with Facebook',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            colors: const [
                              Color.fromRGBO(245, 57, 107, 1),
                              Color.fromRGBO(254, 115, 72, 1),
                            ],
                            gradientDirection: GradientDirection.btt,
                          ),
                        ],
                      )),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(350, 60),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              width: 30,
                              margin: const EdgeInsets.only(right: 10),
                              padding: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color:
                                              Theme.of(context).dividerColor))),
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
                          GradientText(
                            'Sign in with Twitter',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            colors: const [
                              Color.fromRGBO(245, 57, 107, 1),
                              Color.fromRGBO(254, 115, 72, 1),
                            ],
                            gradientDirection: GradientDirection.btt,
                          ),
                        ],
                      )),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: const Size(350, 60),
                    ),
                    onPressed: () {},
                    child: GradientText(
                      'Sign Up',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      colors: const [
                        Color.fromRGBO(245, 57, 107, 1),
                        Color.fromRGBO(254, 115, 72, 1),
                      ],
                      gradientDirection: GradientDirection.btt,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()))
                          },
                      child: const Text(
                        'ALREADY REGISTERED? SIGN IN',
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
