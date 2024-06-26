
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  final List<double> dalysData = [
    54,54,53,54,54,53,53,52,52
  ];

  final List<String> stateNames = [
    'SK',
    'ML',
    'AS',
    'AR',
    'NL',
    'MN',
    'MZ',
    'TR',
    'WB'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('North-East IN stats'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'DALYs relative to autism spectrum disorders across Indian states in 2017, by SDI',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Expanded(
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceBetween,
                  maxY: 60,
                  barTouchData: BarTouchData(enabled: false),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index < 0 || index >= stateNames.length) {
                            return Text('');
                          }
                          return Text(
                            stateNames[index],
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                            textAlign: TextAlign.center,
                          );
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 5,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toInt().toString(),
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          );
                        },
                      ),
                    ),
                  ),
                  gridData: FlGridData(show: true),
                  borderData: FlBorderData(show: false),
                  barGroups: dalysData.asMap().entries.map((entry) {
                    return BarChartGroupData(
                      x: entry.key,
                      barsSpace: 20, // Adjust the space between the bars
                      barRods: [
                        BarChartRodData(
                          toY: entry.value,
                          color: Colors.lightBlue,
                          width: 20,
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
