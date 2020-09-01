import 'package:flutter/material.dart';

class SelectedCountry extends StatelessWidget {
  final Map bangladeshData;

  const SelectedCountry({Key key, this.bangladeshData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: PanelData(
        image: Image.network(
          bangladeshData['countryInfo']['flag'],
          height: 100.0,
          width: 100.0,
        ),
        country: bangladeshData['country'],
        cases: bangladeshData['cases'].toString(),
        todayCases: bangladeshData['todayCases'].toString(),
        recovered: bangladeshData['recovered'].toString(),
        deaths: bangladeshData['deaths'].toString(),
        todayDeaths: bangladeshData['todayDeaths'].toString(),
      ),
    );
  }
}

class PanelData extends StatelessWidget {
  final Image image;
  final String country;
  final String cases;
  final String todayCases;
  final String recovered;
  final String deaths;
  final String todayDeaths;

  const PanelData({
    Key key,
    this.country,
    this.cases,
    this.todayCases,
    this.recovered,
    this.deaths,
    this.todayDeaths,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  country,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                image,
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Cases',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Cases Today',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Recovered',
                  style: TextStyle(
                      color: Colors.green.shade400,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Deaths',
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Deaths Today',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Text(
                    cases,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    todayCases,
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    recovered,
                    style: TextStyle(
                        color: Colors.green.shade400,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    deaths,
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    todayDeaths,
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
