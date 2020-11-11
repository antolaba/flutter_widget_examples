import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() =>
      new _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool _animated = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Container')),
      body: Center(
          child: GestureDetector(
        onTap: () {
          setState(() {
            _animated = !_animated;
          });
        },
        child: AnimatedContainer(
          width: _animated ? 100 : 150,
          height: _animated ? 100 : 150,
          curve: Curves.decelerate,
          duration: Duration(seconds: 1),
          decoration: BoxDecoration(
              color: _animated ? Colors.red : Colors.lightBlue,
              border: _animated
                  ? Border.all(width: 4, color: Colors.lightBlue)
                  : Border.all(width: 4, color: Colors.red)),
          child: Center(
            child: Text('Animated container!',textAlign: TextAlign.center,),
          ),
          onEnd: () {
            print('END ANIMATION');
          },
        ),
      )),
    );
  }
}
