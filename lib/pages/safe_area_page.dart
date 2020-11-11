import 'package:flutter/material.dart';

class SafeAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.check)),
              Tab(icon: Icon(Icons.close)),
            ],
          ),
          title: Text('Safe area'),
        ),
        body: TabBarView(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: SafeArea(
                left: true,
                top: true,
                right: true,
                bottom: true,
                minimum: const EdgeInsets.all(10),
                child: Text(
                    'My Widget: This is my widget. It has some content that I don\'t want '
                        'blocked by certain manufacturers who add notches, holes, and round corners.'),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child:Text(
                  'My Widget: This is my widget. It has some content that I don\'t want '
                      'blocked by certain manufacturers who add notches, holes, and round corners.'),
            ),
          ],
        ),
      ),
    );
  }
}
