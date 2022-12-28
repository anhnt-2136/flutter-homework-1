import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/connexion.png', width: 130),
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
      ],
    );
  }
}
