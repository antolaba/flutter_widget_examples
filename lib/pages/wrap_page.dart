import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wrap')),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.yellow,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Wrap(
              direction: Axis.vertical,
              spacing: 20,//MainAxis
              runSpacing: 20,// CrossAxis
              alignment: WrapAlignment.end,
              runAlignment: WrapAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: 60,
                  color: Colors.purple,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: 60,
                  color: Colors.purple,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: 60,
                  color: Colors.purple,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: 60,
                  color: Colors.purple,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: 60,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.yellow,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 20,//MainAxis
              runSpacing: 20,// CrossAxis
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              children: <Widget>[
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 4,
                  color: Colors.purple,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 4,
                  color: Colors.purple,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 4,
                  color: Colors.purple,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 4,
                  color: Colors.purple,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 4,
                  color: Colors.purple,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
