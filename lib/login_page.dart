import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 180),
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
            const Text.rich(TextSpan(
              text: 'CONN',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(244, 39, 129, 1),
              ),
              children: <TextSpan>[
                TextSpan(text: 'EXION', style: TextStyle(color: Colors.white)),
              ],
            )),
            const Padding(
                padding: EdgeInsets.only(left: 65, right: 65),
                child: Text('Find and Meet people around you to find LOVE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ))),
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
            )
          ]),
        ),
      ),
    );
  }
}
