import 'package:flutter/material.dart';
import 'package:module5_covid19_stats/constants.dart';

class WorldStats extends StatelessWidget {
  final Map worldData;

  const WorldStats({Key key, this.worldData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2),
        children: [
          StatusPanel(
            title: 'CONFIRMED',
            panelColor: Colors.red.shade100,
            textColor: Colors.red,
            count: worldData['cases'].toString(),
          ),
          StatusPanel(
            title: 'ACTIVE',
            panelColor: Colors.blue.shade100,
            textColor: Colors.blue.shade900,
            count: worldData['active'].toString(),
          ),
          StatusPanel(
            title: 'RECOVERED',
            panelColor: Colors.green.shade100,
            textColor: Colors.green,
            count: worldData['recovered'].toString(),
          ),
          StatusPanel(
            title: 'DEATH',
            panelColor: Colors.grey.shade400,
            textColor: Colors.grey.shade900,
            count: worldData['deaths'].toString(),
          ),
        ],
      ),
    );
  }
}

class StatusPanel extends StatelessWidget {
  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  StatusPanel({this.panelColor, this.textColor, this.title, this.count});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: panelColor,
          boxShadow: [
            BoxShadow(
              color: kInactiveColor,
              blurRadius: 2.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 2.0),
            )
          ]),
      margin: EdgeInsets.all(10.0),
      height: 80.0,
      width: width / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: textColor, fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          Text(
            count,
            style: TextStyle(
                color: textColor, fontSize: 16.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
