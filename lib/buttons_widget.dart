import 'package:flutter/material.dart';


class GestureApp extends StatefulWidget {
  @override
  _GestureAppState createState() => _GestureAppState();
}

class _GestureAppState extends State<GestureApp> {
  String name = 'No Name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gesture & Inkwell'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(name),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      setState(() {
                        name = 'No Name';
                      });
                    },
                    child: Text('Default'),
                    ),
                IconButton(
                  icon: Icon(
                    Icons.star,
                    color: Colors.deepPurple,
                    size: 30.0,
                  ),
                  onPressed: () {
                    setState(() {
                      name = 'I am a IconButton';
                    });
                  },
                ),
                GestureDetector(
                  child: Text('Duoble Tap', style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
                  onDoubleTap: () {
                    setState(() {
                      name = 'Hello I am Gesture detector';
                    });
                  },
                ),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(4),
                    color: Colors.indigo,
                    child: Text('LongPress', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                  onLongPress: changeName,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void changeName() {
    setState(() {
      name = 'Hello I am Inkwell';
    });
  }
}
