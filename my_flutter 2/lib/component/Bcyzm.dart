import 'dart:async';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final yzmColors;
  MyHomePage({this.yzmColors});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Timer _timer;

  //倒计时数值
  var countdownTime = 0;

  //倒计时方法
  startCountdown() {
    //倒计时时间
    countdownTime = 20;
    final call = (timer) {
      if (countdownTime < 1) {
        _timer.cancel();
      } else {
        setState(() {
          countdownTime -= 1;
        });
      }
    };
    _timer = Timer.periodic(Duration(seconds: 1), call);
  }

  String handleCodeAutoSizeText() {
    if (countdownTime > 0) {
      return "${countdownTime}s后重发";
    } else
      return "获取验证码";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            border: new Border.all(
              width: 2.0,
              color: widget.yzmColors ? Colors.blueAccent : Colors.grey,
            ),
            borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
          ),
          child: GestureDetector(
            onTap: () {
              if (countdownTime == 0) {
                widget.yzmColors ? startCountdown() : null;
              }
            },
            child: Text(
              handleCodeAutoSizeText(),
              style: TextStyle(
                fontSize: 13,
                color: widget.yzmColors ? Colors.blueAccent : Colors.grey,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Text(""),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer != null) {
      _timer.cancel();
    }
  }
}
