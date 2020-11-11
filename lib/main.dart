import 'package:flutter/material.dart';
import 'package:flutterwidgetexamples/pages/animated_container_page.dart';
import 'package:flutterwidgetexamples/pages/expanded_page.dart';
import 'package:flutterwidgetexamples/pages/opacity_page.dart';
import 'package:flutterwidgetexamples/pages/safe_area_page.dart';
import 'package:flutterwidgetexamples/pages/wrap_page.dart';
import 'package:flutterwidgetexamples/widget_page_class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<WidgetPage> _list = [
    new WidgetPage('Safe area', new SafeAreaPage()),
    new WidgetPage('Expanded', new ExpandedPage()),
    new WidgetPage('Wrap', new WrapPage()),
    new WidgetPage('Animated container', new AnimatedContainerPage()),
    new WidgetPage('Opacity', new OpacityPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter widget examples'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  child: Container(
                      padding: EdgeInsets.all(25),
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Text(
                        _list[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _list[index].page),
                    );
                  });
            },
            itemCount: _list.length,
          ),
        ));
  }
}
