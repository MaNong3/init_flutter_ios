import 'package:flutter/material.dart';
// import 'package:my_flutter/change.dart';


Widget _myListTile(String title, String cont) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 1, color: Colors.black12))),
    child: ListTile(
      title: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      trailing: Text(cont),
    ),
  );
}

Widget createModalBottomSheetDialog() {
  return new Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      new Text("111111111111111111111111111111"),
      new Text("222222222222222222222222222222"),
      new Text("3333333333333333333333333333333"),
      new Text("4444444444444444444444444444444"),
      new Text("55555555555555555555555555555555"),
    ],
  );
}

Widget _openTitle(String title) {
  return Container(
    alignment: Alignment.centerLeft,
    margin: const EdgeInsets.all(10.0),
    child: Text(
      title,
    ),
  );
}

Widget createSimpleDialog() {
  return new SimpleDialog(
    contentPadding: EdgeInsets.all(10.0),
    title: new Text('我是标题'),
    children: <Widget>[
      new Text('内容1'),
      new Text('内容2'),
      new Text('内容3'),
      new Text('内容3'),
      new Text('内容3'),
      new Text('内容3'),
      new Text('内容3'),
      new Text('内容3'),
    ],
  );
}

Widget _actionList() {
  return Container(
    child: Column(
      children: <Widget>[
        _myListTile('姓名', "XXX"),
        _myListTile('身份证号码', "211322100000000"),
        _myListTile('身份证有效期', "2015.1.1-2019.9.9"),
        _myListTile('联系地址', "地球"),
      ],
    ),
  );
}

// Navigator.pop(context);
class FinishOpenFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('完善开户信息')),
        body: new Container(
            child: Column(
          children: <Widget>[
            Container(
              child: _openTitle("核实个人信息"),
              ),
            _actionList(),
            _openTitle("完善个人信息"),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                ListTile(
                    title: Text(
                      "职业",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    trailing: Container(
                      child: GestureDetector(
                        onTap: () {
                          //显示 dialog
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return createSimpleDialog();
                            },
                          );
                        },
                        child: Icon(Icons.chevron_right),
                      ),
                    )),
              ],
            ),
            _openTitle("绑定一张常用储蓄卡，作为转入本产品的付款方式"),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                ListTile(
                    title: Text(
                      "银行卡",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    trailing: Container(
                      child: GestureDetector(
                        onTap: () {
                          //显示 dialog， 点击外部 会销毁 并且外部是半透明效果
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return createModalBottomSheetDialog();
                            },
                          );
                        },
                        child: Icon(Icons.chevron_right),
                      ),
                    )),
              ],
            ),
            RaisedButton(
              color: Colors.blueAccent,
              child: Text(
                '查看商品详情页面',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                // Navigator.push(context,
                //     new MaterialPageRoute(builder: (context) => new Change()));
              },
            )
          ],
        )));
  }
}
