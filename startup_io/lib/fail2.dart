import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(new MaterialApp(
    home: new AnimatedPieChartExample(),
  ));
}

final List<List<CircularStackEntry>> _quarterlyProfitPieData = [
  <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(12, Colors.redAccent[200], rankKey: 'Q1'),
        new CircularSegmentEntry(100, Colors.tealAccent[400], rankKey: 'Q2'),
      ],
      rankKey: 'Quarterly Profits',
    ),
  ],
  <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(44, Colors.redAccent[200], rankKey: 'Q1'),
        new CircularSegmentEntry(100, Colors.tealAccent[400], rankKey: 'Q2'),
      ],
      rankKey: 'Quarterly Profits',
    ),
  ],
  <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(37, Colors.redAccent[200], rankKey: 'Q1'),
        new CircularSegmentEntry(100, Colors.tealAccent[400], rankKey: 'Q2'),
      ],
      rankKey: 'Quarterly Profits',
    ),
  ],
  <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(38, Colors.redAccent[200], rankKey: 'Q1'),
        new CircularSegmentEntry(100, Colors.tealAccent[400], rankKey: 'Q2'),
      ],
      rankKey: 'Quarterly Profits',
    ),
  ],
  <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(56, Colors.redAccent[200], rankKey: 'Q1'),
        new CircularSegmentEntry(100, Colors.tealAccent[400], rankKey: 'Q2'),
      ],
      rankKey: 'Quarterly Profits',
    ),
  ],
];

class AnimatedPieChartExample extends StatefulWidget {
  @override
  _AnimatedPieChartExampleState createState() =>
      new _AnimatedPieChartExampleState();
}

class _AnimatedPieChartExampleState extends State<AnimatedPieChartExample> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
  new GlobalKey<AnimatedCircularChartState>();
  final _chartSize = const Size(200, 200);
  int sampleIndex = 0;

  void _cycleSamples() {
    setState(() {
      if (sampleIndex + 1 == 5) {
        sampleIndex = 0;
      }
      else {
        sampleIndex++;
      }
      List<CircularStackEntry> data = _quarterlyProfitPieData[sampleIndex % 5];
      _chartKey.currentState.updateData(data);
    });
  }




  List year = ["Year 1 : 12%", "Year 2 : 44%", "Year 3 : 37%", "Year 4 : 38%", "Year 5 : 56%"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Center(
          child: new AnimatedCircularChart(
            key: _chartKey,
            size: _chartSize,
            initialChartData: _quarterlyProfitPieData[0],
            chartType: CircularChartType.Radial,
            holeLabel: year[sampleIndex],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.refresh),
          onPressed: _cycleSamples,
        )
    );
  }
}