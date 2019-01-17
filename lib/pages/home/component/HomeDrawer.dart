import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String imgUrl = 'https://tx2.a.yximgs.com/uhead/AB/2018/09/01/13/BMjAxODA5MDExMzU1MzBfOTgzMDYwODVfMV9oZDk5NF8yMzA=_s.jpg';
    return Container(child: new Column(children: <Widget>[

      RaisedButton(
        onPressed: () {
          print('动态');
        },
        elevation: 0.0,
        highlightColor: Colors.white,
        highlightElevation: 0.0,
        padding: EdgeInsets.all(0.0),
        color: Colors.white,
        child: Column(children: <Widget>[
          new ClipOval(
            child: new FadeInImage.assetNetwork(
              placeholder: "images/normal_user_icon.webp",
              //预览图
              fit: BoxFit.fitWidth,
              image: imgUrl,
              width: 60.0,
              height: 60.0,
            ),
          ),
          Padding(child: Text("相忘于江湖", style: TextStyle(fontSize: 18.0),),
            padding: EdgeInsets.all(15.0),),
        ],),),
      HorizontalItem(),
      Container(height: 30.0,),
      VerticalItem()
    ],
      crossAxisAlignment: CrossAxisAlignment.center,

    ),
      color: Colors.white,
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 80.0),
      width: 260.0,
    );
  }
}

class HorizontalItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Row(children: <Widget>[

        Expanded(child: RaisedButton(
          onPressed: () {
            print('动态');
          },
          elevation: 0.0,
          highlightColor: Colors.white,
          highlightElevation: 0.0,
          color: Colors.white,
          padding: EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            Icon(IconData(0xe6d9, fontFamily: "drawer"), size: 20.0,),
            Text("动态"),
          ],),),),

        Expanded(child: RaisedButton(
          onPressed: () {
            print('消息');
          },
          elevation: 0.0,
          highlightColor: Colors.white,
          highlightElevation: 0.0,
          color: Colors.white,
          padding: EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            Icon(IconData(0xe6f1, fontFamily: "drawer"), size: 20.0,),
            Text("消息"),
          ],),),),


        Expanded(child: RaisedButton(
          onPressed: () {
            print('私信');
          },
          elevation: 0.0,
          highlightColor: Colors.white,
          highlightElevation: 0.0,
          color: Colors.white,
          padding: EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            Icon(IconData(0xe788, fontFamily: "drawer"), size: 20.0,),
            Text("私信"),
          ],),),),

      ],
      ),
    );
  }
}

class VerticalItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(

      children: <Widget>[

        RaisedButton(
          onPressed: () {
            print('搜索');
          },
          elevation: 0.0,
          highlightColor: Colors.white,
          highlightElevation: 0.0,
          color: Colors.white,
          padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
          child: Row(children: <Widget>[
            Icon(IconData(0xe611, fontFamily: "drawer"),
              color: Colors.grey,
              size: 20.0,),
            Text("  搜索", style: TextStyle(fontSize: 16.0),)
          ],),),
        RaisedButton(
          onPressed: () {
            print('设置');
          },
          elevation: 0.0,
          highlightColor: Colors.white,
          highlightElevation: 0.0,
          color: Colors.white,
          padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
          child: Row(children: <Widget>[
            Icon(IconData(0xe615, fontFamily: "drawer"),
              color: Colors.grey,
              size: 20.0,),
            Text("  设置", style: TextStyle(fontSize: 16.0),)
          ],),),
        RaisedButton(
          onPressed: () {
            print('本地作品集');
          },
          elevation: 0.0,
          highlightColor: Colors.white,
          highlightElevation: 0.0,
          color: Colors.white,
          padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
          child: Row(children: <Widget>[
            Icon(IconData(0xe602, fontFamily: "drawer"),
              color: Colors.grey,
              size: 20.0,),
            Text("  本地作品集", style: TextStyle(fontSize: 16.0),)
          ],),),
        RaisedButton(
          onPressed: () {
            print('扫一扫');
          },
          elevation: 0.0,
          highlightColor: Colors.white,
          highlightElevation: 0.0,
          color: Colors.white,
          padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
          child: Row(children: <Widget>[
            Icon(IconData(0xe607, fontFamily: "drawer"),
              color: Colors.grey,
              size: 20.0,),
            Text("  扫一扫", style: TextStyle(fontSize: 16.0),)
          ],),),
        RaisedButton(
          onPressed: () {
            print('家长控制模式');
          },
          elevation: 0.0,
          highlightColor: Colors.white,
          highlightElevation: 0.0,
          color: Colors.white,
          padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
          child: Row(children: <Widget>[
            Icon(IconData(0xe8f2, fontFamily: "drawer"),
              color: Colors.grey,
              size: 20.0,),
            Text("  家长控制模式", style: TextStyle(fontSize: 16.0),)

          ],),),
      ],
    );
  }
}
