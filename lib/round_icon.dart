import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {required this.ico, required this.changeWeight, Key? key})
      : super(key: key);

  final IconData ico;
  final Function changeWeight;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(ico),
      onPressed: (() {
        changeWeight();
      }),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}
