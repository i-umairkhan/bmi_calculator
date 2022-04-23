import 'package:flutter/material.dart';
import './constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    required this.buttonTitle,
    required this.ontap,
    Key? key,
  }) : super(key: key);

  final Function ontap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: largeTextStyle,
        )),
        color: bottomContainerColor,
        width: double.infinity,
        height: bottomContainerHight,
        margin: const EdgeInsets.only(top: 10),
      ),
    );
  }
}
