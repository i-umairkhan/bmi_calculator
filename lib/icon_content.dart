import 'package:flutter/material.dart';

const lableTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

class IconContent extends StatelessWidget {
  const IconContent({
    required this.ico,
    required this.txt,
    Key? key,
  }) : super(key: key);

  final IconData ico;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ico,
          size: 80,
        ),
        const SizedBox(height: 15.0),
        Text(
          txt,
          style: lableTextStyle,
        )
      ],
    );
  }
}
