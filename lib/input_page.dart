import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHight = 80.0;
const Color bottomContainerColor = Color(0xFFEB1555);
const Color activeCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
              children: const [
                Expanded(
                  child: ReusableCard(
                    clr: activeCardColor,
                    cardChild: IconContent(
                      ico: (FontAwesomeIcons.mars),
                      txt: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    clr: activeCardColor,
                    cardChild:
                        IconContent(ico: FontAwesomeIcons.venus, txt: 'FEMALE'),
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
          style: const TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}

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
