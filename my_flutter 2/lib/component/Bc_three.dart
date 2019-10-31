import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
Widget thirdLoginArea =   new Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: new Column(
            children: [
              new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Text('第三方登录'),
                  Container(
                    width: 80,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                ],
              ),
              new SizedBox(
                height: 18,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    color: Colors.green[200],
                    // 第三方库icon图标
                    icon: Icon(FontAwesomeIcons.weixin),
                    iconSize: 40.0,
                    onPressed: () {},
                  ),
                  IconButton(
                    color: Colors.green[200],
                    icon: Icon(FontAwesomeIcons.facebook),
                    iconSize: 40.0,
                    onPressed: () {},
                  ),
                  IconButton(
                    color: Colors.green[200],
                    icon: Icon(FontAwesomeIcons.qq),
                    iconSize: 40.0,
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        );