import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './reusable_card.dart';
import './icon_content.dart';
import './constants.dart';
import './results_page.dart';
import './bottom_button.dart';
import './round_icon.dart';

enum Genders { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  int hight = 180;
  int weight = 65;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              children: [
                Expanded(
                  child: ReusableCard(
                    clr: activeCardColor,
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'HEIGHT',
                            style: lableTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(hight.toString(), style: numberTextStyle),
                              const Text('cm', style: lableTextStyle),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: const Color(0xFF8D8E9E),
                              thumbColor: const Color(0xFFEB1555),
                              overlayColor: const Color(0x29EB1555),
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 15),
                              overlayShape: const RoundSliderOverlayShape(
                                  overlayRadius: 30),
                            ),
                            child: Slider(
                                value: hight.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: (newValue) {
                                  setState(() {
                                    hight = newValue.round();
                                  });
                                }),
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      clr: activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: lableTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: numberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                ico: FontAwesomeIcons.minus,
                                changeWeight: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                ico: FontAwesomeIcons.plus,
                                changeWeight: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      )),
                ),
                Expanded(
                  child: ReusableCard(
                      clr: activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: lableTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: numberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                ico: FontAwesomeIcons.minus,
                                changeWeight: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                ico: FontAwesomeIcons.plus,
                                changeWeight: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            ontap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ResultsPage())),
          )
        ],
      ),
    );
  }
}
