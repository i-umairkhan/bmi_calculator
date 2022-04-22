import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.clr, required this.cardChild, Key? key})
      : super(key: key);

  final Color clr;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration:
          BoxDecoration(color: clr, borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(15),
    );
  }
}
