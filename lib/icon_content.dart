import 'package:flutter/material.dart';
import './constants.dart';

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
