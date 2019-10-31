import 'package:flutter/material.dart';
// import 'package:fluro/fluro.dart';
import '../view/Pgopen_flow.dart';
import '../view/Finish_openFlow.dart';
final routes = <String, WidgetBuilder>{
  // 按钮
  '/openFlow': (context) => new OpenFlow(),
  '/finishOpenFlow': (context) => new FinishOpenFlow()
  
};
