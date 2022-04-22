import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './reusable_card.dart';
import './icon_content.dart';

const bottomContainerHight = 80.0;
const Color bottomContainerColor = Color(0xFFEB1555);
const Color inactiveCardColor = Color(0xFF111328);
const Color activeCardColor = Color(0xFF1D1E33);
enum Genders { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(Genders gender) {
    if (gender == Genders.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    if (gender == Genders.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (() => setState(
                          () {
                            // updateColor(Genders.male);
                            maleCardColor == inactiveCardColor
                                ? {
                                    maleCardColor = activeCardColor,
                                    femaleCardColor = inactiveCardColor
                                  }
                                : maleCardColor = inactiveCardColor;
                          },
                        )),
                    child: ReusableCard(
                      clr: maleCardColor,
                      cardChild: const IconContent(
                        ico: (FontAwesomeIcons.mars),
                        txt: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (() => setState(
                          () {
                            // updateColor(Genders.female);
                            femaleCardColor == inactiveCardColor
                                ? {
                                    femaleCardColor = activeCardColor,
                                    maleCardColor = inactiveCardColor
                                  }
                                : femaleCardColor = inactiveCardColor;
                          },
                        )),
                    child: ReusableCard(
                      clr: femaleCardColor,
                      cardChild: const IconContent(
                        ico: (FontAwesomeIcons.venus),
                        txt: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    clr: activeCardColor,
                    cardChild: Text('Card3'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    clr: activeCardColor,
                    cardChild: Text('Card4'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    clr: activeCardColor,
                    cardChild: Text('Card5'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHight,
            margin: const EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}
