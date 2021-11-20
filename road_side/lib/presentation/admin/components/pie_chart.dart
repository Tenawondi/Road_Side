import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartScreen extends StatefulWidget {
  const PieChartScreen({Key? key}) : super(key: key);

  @override
  _PieChartScreenState createState() => _PieChartScreenState();
}

class _PieChartScreenState extends State<PieChartScreen>
    with AutomaticKeepAliveClientMixin<PieChartScreen> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
      child: Row(
        children: [
          Expanded(
            child: Card(
              elevation: 6.0,
              child: PieChart(
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 200),
      chartLegendSpacing: 32,
      chartRadius: 150,
      colorList: [Colors.blue.shade100, Colors.yellow.shade100,Colors.green.shade200,Colors.pink.shade100],
      initialAngleInDegree: 0,
      legendOptions: LegendOptions(
        showLegendsInRow: true,
        legendPosition: LegendPosition.bottom,
        showLegends: true,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: false,
        showChartValues: true,
        showChartValuesInPercentage: true,
        showChartValuesOutside: false,
        decimalPlaces: 1,
      ),
    ),
              ),
            ),
         
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
Map<String, double> dataMap = {
    "New customers": 5,
    "Successful transactions": 3,
    "Declined transactions": 2,
    "Total number of transactions": 2,
  };