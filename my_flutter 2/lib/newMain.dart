import 'package:flutter/material.dart';

class MyHomeWidget extends StatelessWidget {
 final List data = new List();
  MyHomeWidget() {
    for (var i = 0; i < 5; i++) {
      data.add({
        "title": "我是标题$i",
        "subTitle": "我是副标题$i",
        "imgUrl": "https://avatars3.githubusercontent.com/u/6915570?s=460&v=4"
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: this.data.length,
      itemBuilder: (context, index) {
        var _data = this.data[index];
        return ListTile(
            leading: Image.network(_data["imgUrl"]),
            title: Text(_data["title"]),
            subtitle: Text(_data["subTitle"]),
            trailing: Icon(Icons.chevron_right));
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
