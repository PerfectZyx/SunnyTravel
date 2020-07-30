import 'package:flutter/material.dart';
import 'package:sunnytravel_app/pages/NoteDetail.dart';
import 'package:sunnytravel_app/components/ImageButton.dart';
import 'package:sunnytravel_app/pages/SearchArticle.dart';
import 'package:sunnytravel_app/utils/packages.dart';

class SeasonPage extends StatefulWidget {
  SeasonPage({Key key}) : super(key: key);

  _SeasonPageState createState() => _SeasonPageState();
}

class _SeasonPageState extends State<SeasonPage> {
  var _seasonList = {
    '春': {
      'pressedImage': "images/spring.jpg",
      'unpressedImage': "images/spring.jpg"
    },
    "夏": {
      'pressedImage': "images/summer.jpg",
      'unpressedImage': "images/summer.jpg"
    },
    "秋": {
      'pressedImage': "images/autumn.jpg",
      'unpressedImage': "images/autumn.jpg"
    },
    "冬": {
      'pressedImage': "images/winter.jpg",
      'unpressedImage': "images/winter.jpg"
    }
  };

  ImageButton _getRealImageButton(String name) {
    Size size = MediaQuery.of(context).size;
    return ImageButton(
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
        width: size.width,
        height: size.height * 0.2,
        pressedImage: Image.asset(this._seasonList[name]['pressedImage'],
            fit: BoxFit.cover),
        unpressedImage: Image.asset(this._seasonList[name]['unpressedImage'],
            fit: BoxFit.cover),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      new SearchArticle(searchKey: ["", name, "0", name])));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: ListView(children: <Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: this._getRealImageButton('春')),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: this._getRealImageButton('夏')),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: this._getRealImageButton('秋')),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: this._getRealImageButton('冬'))
        ]));
  }
}
