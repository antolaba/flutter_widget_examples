import 'package:flutter/material.dart';

class OpacityPage extends StatefulWidget {
  @override
  _OpacityPageState createState() => new _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  bool _opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Animated Container')),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Opacity(
                      opacity: 0.5,
                      child: Container(
                        width: 150,
                        height: 100,
                        color: Colors.pink,
                        child: Center(
                            child: Text(
                              'Opacity 0.5',
                              textAlign: TextAlign.center,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Opacity(
                      opacity: 1,
                      child: Container(
                        width: 150,
                        height: 100,
                        color: Colors.pink,
                        child: Center(
                            child: Text(
                              'Opacity 1',
                              textAlign: TextAlign.center,
                            )),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Animated Opacity'),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _opacity = !_opacity;
                    });
                  },
                  child: AnimatedOpacity(
                      opacity: _opacity ? 1.0 : 0.2,
                      duration: Duration(seconds:  1),
                      curve: Curves.decelerate,
                      child: Container(
                        width: 150,
                        height: 100,
                        color: Colors.orange,
                        child: Center(
                            child: Text(
                              _opacity ? 'Opacity 1' : 'Opacity 0.2',
                              textAlign: TextAlign.center,
                            )),
                      ),
                  ),
                )
              ],
            )));
  }
}
