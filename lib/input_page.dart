import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(cardColor: Color(0xff1d1e33)),
                ),
                Expanded(
                  child: ReusableCard(cardColor: Color(0xff1d1e33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(cardColor: Color(0xff1d1e33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(cardColor: Color(0xff1d1e33)),
                ),
                Expanded(
                  child: ReusableCard(cardColor: Color(0xff1d1e33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color cardColor;

  ReusableCard({@required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
