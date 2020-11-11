import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Expanded'),),
        body: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      color: Colors.orange,
                      height: 60,
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        height: 60,
                        child: Center(
                          child: Text('Expanded', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.orange,
                      height: 60,
                      width: 100,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      color: Colors.orange,
                      height: 60,
                      width: 100,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                        height: 60,
                        child: Center(
                          child: Text('Flex 2', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.orange,
                      height: 60,
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        height: 60,
                        child: Center(
                          child: Text('Expanded', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.orange,
                        height: 60,
                        child: Center(
                          child: Text('Flex 2', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        height: 60,
                        child: Center(
                          child: Text('Expanded', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.orange,
                        height: 60,
                        child: Center(
                          child: Text('Flex 3', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                        height: 60,
                        child: Center(
                          child: Text('Flex 2', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
