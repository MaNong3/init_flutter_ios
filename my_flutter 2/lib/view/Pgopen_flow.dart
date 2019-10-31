import 'package:flutter/material.dart';

class OpenFlow extends StatefulWidget {
  @override
  MyList createState() => MyList();
}

class MyList extends State<OpenFlow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('开户首页')),
        body: Container(
          child: Column(
            children: <Widget>[
              new Stack(
                alignment: const FractionalOffset(0.5, 0.99),
                children: <Widget>[
                  new Image.asset("asset/img/cardBg.png"),
                  new Container(
                    width: 370.0,
                    height: 120.0,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Colors.red,
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: new Container(
                            margin: const EdgeInsets.fromLTRB(0, 5.0, 0, 20.0),
                            child: new Text(
                              '比财电子银行  🏦',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          subtitle: new Container(
                            child: new Text(
                              "***   ***  ***  ***",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          leading: new Icon(
                            Icons.account_box,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Text(
                    "您正在转入比财电子银行产品",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Center(
                  child: Container(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                        "应银行要求，购买产品需开通银行电子账户，通过电子 账户与银行卡直接进行交易，资金安全有保障。为了提升您的体验，避免您重复提交信息，请使用本技术服务开通账户。",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            textBaseline: TextBaseline.ideographic,
                            color: Colors.black87),
                      ))),
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: new Row(
                  children: <Widget>[
                    Container(
                      // margin: const EdgeInsets.only(left: 10.0),
                      child: Expanded(
                          child: Container(
                        margin: const EdgeInsets.only(left: 40.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(bottom: 10.0),
                              child: new Icon(
                                Icons.account_box,
                                color: Colors.lightBlue,
                              ),
                            ),
                            new Text('银行产品'),
                          ],
                        ),
                      )),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 10.0),
                            child: new Icon(
                              Icons.account_box,
                              color: Colors.lightBlue,
                            ),
                          ),
                          new Text('银行产品'),
                        ],
                      ),
                    ),
                    Container(
                      // margin: const EdgeInsets.only(left: 10.0),
                      child: Expanded(
                          child: Container(
                        margin: const EdgeInsets.only(right: 40.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(bottom: 10.0),
                              child: new Icon(
                                Icons.account_box,
                                color: Colors.lightBlue,
                              ),
                            ),
                            new Text('银行产品'),
                          ],
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                width: 350.0,
                margin: const EdgeInsets.only(top: 40),
                child: Builder(
                    builder: (context) => RaisedButton(
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.pushNamed(context, '/finishOpenFlow');
                          },
                          textColor: Colors.white,
                          child: Text("跳转到回显页面"),
                        )),
              ),
              
            ],
          ),
        ));
  }
}
