import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_flutter/component/Bc_three.dart';
import 'package:my_flutter/component/Bcyzm.dart';
import '../component/Bclogin.dart';
import '../component/Bctoast.dart';

class ThemeColors {
  ///纯黑色
  static Color blue = Colors.blue;
}

class Login extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Login> {
  String value;
  @override
  void initState() {
    this.value = "";
    super.initState();
  }

  //手机号的控制器
  TextEditingController phoneController = TextEditingController();
//密码的控制器
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 20, top: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 46,
                  child: Image(
                    image: AssetImage('asset/img/login-logo.png'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    '您好，欢迎来到比财',
                    style: TextStyle(fontSize: 26),
                  ),
                ),
              ],
            )),
        //手机号
        CreateMyInput(
          iconString: "11",
          placeholder: "请输入手机号",
          isPassword: false,
          isInputType: false,
          inputController: phoneController,
          onChange: (e) => {
            setState(() {
              value = e;
            }),
          },
        ),
        //验证码

        new Stack(children: <Widget>[
          new CreateMyInput(
              iconString: "11",
              placeholder: "验证码",
              isInputType: true,
              isPassword: true,
              inputController: passController),
          Container(
              margin: const EdgeInsets.only(left: 270.0, top: 20),
              child:
                  new MyHomePage(yzmColors: value.length == 11 ? true : false)),
        ]),
        Container(
            width: 300.0,
            margin: const EdgeInsets.only(top: 40),
            child: Builder(
                builder: (context) => RaisedButton(
                      color: ThemeColors.blue,
                      onPressed: _login,
                      textColor: Colors.white,
                      child: Text("登陆"),
                    ))),
        Container(
          margin: const EdgeInsets.only(top: 350),
          child: thirdLoginArea,
        )
      ],
    );
  }

  void _login() {
    print({'phone': phoneController.text, 'password': passController.text});
    if (phoneController.text.length != 11) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('手机号码格式不对'),
              ));
    } else if (passController.text.length == 0) {
      Toast.toast(context, msg: "密码不能为空");
    } else {
      Navigator.pushNamed(context, '/openFlow');
      this.onTextClear();
    }
  }

  void onTextClear() {
    setState(() {
      phoneController.clear();
      passController.clear();
    });
  }
}
