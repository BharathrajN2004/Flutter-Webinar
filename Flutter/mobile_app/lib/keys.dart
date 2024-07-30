import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class PositionedTiles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionedTilesState();
}

class PositionedTilesState extends State<PositionedTiles> {
  late List<Widget> tiles;

  @override
  void initState() {
    super.initState();
    tiles = [
      StatelessColorfulTile(),
      StatelessColorfulTile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GEEKSFORGEEKS"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Text("Stateleess"),
          Row(children: tiles),
          ElevatedButton(
              child: Icon(Icons.sentiment_very_satisfied),
              onPressed: swapTiles),
          SizedBox(
            height: 200,
          ),
          Text("Stateful"),
          InStateful(),
        ],
      ),
    );
  }

  swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}

class StatelessColorfulTile extends StatelessWidget {
  Color myColor = UniqueColorGenerator.getColor();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: myColor, child: Padding(padding: EdgeInsets.all(70.0))),
      ],
    );
  }
}

class InStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InStatefulState();
}

class InStatefulState extends State<InStateful> {
  late List<Widget> tiles;

  @override
  void initState() {
    super.initState();
    tiles = [
      StatefulColorfulTile(),
      StatefulColorfulTile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: tiles),
        ElevatedButton(
            child: Icon(Icons.sentiment_very_satisfied), onPressed: swapTiles),
      ],
    );
  }

  swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}

class StatefulColorfulTile extends StatefulWidget {
  // StatefulColorfulTile({required Key key}) : super(key: key);
  const StatefulColorfulTile({super.key});
  @override
  State<StatefulWidget> createState() => StatefulColorfulTileState();
}

class StatefulColorfulTileState extends State<StatefulColorfulTile> {
  late Color myColor;
  @override
  void initState() {
    super.initState();
    myColor = UniqueColorGenerator.getColor();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: myColor,
        child: Padding(
          padding: EdgeInsets.all(70.0),
        ));
  }
}

class UniqueColorGenerator {
  static List colorOptions = [
    Colors.blue,
    Colors.red,
  ];
  static Random random = new Random();
  static Color getColor() {
    if (colorOptions.length > 0) {
      return colorOptions.removeAt(random.nextInt(colorOptions.length));
    } else {
      return Color.fromARGB(random.nextInt(256), random.nextInt(256),
          random.nextInt(256), random.nextInt(256));
    }
  }
}
