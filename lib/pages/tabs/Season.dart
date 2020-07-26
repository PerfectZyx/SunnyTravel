import 'package:flutter/material.dart';
import 'package:sunnytravel_app/components/ImageButton.dart';

class SeasonPage extends StatefulWidget {
  SeasonPage({Key key}) : super(key: key);

  _SeasonPageState createState() => _SeasonPageState();
}

class _SeasonPageState extends State<SeasonPage> {
  var _seasonList = {
    '春': {
      'pressedImage': "images/spring.jpg",
      'unpressedImage': "images/spring.jpg",
      // ignore: top_level_function_literal_block
      'onTap': () {
        print('1');
      }
    },
    "夏": {
      'pressedImage': "images/summer.jpg",
      'unpressedImage': "images/summer.jpg",
      // ignore: top_level_function_literal_block
      'onTap': () {
        print('2');
      }
    },
    "秋": {
      'pressedImage': "images/autumn.jpg",
      'unpressedImage': "images/autumn.jpg",
      // ignore: top_level_function_literal_block
      'onTap': () {
        print('3');
      }
    },
    "冬": {
      'pressedImage': "images/winter.jpg",
      'unpressedImage': "images/winter.jpg",
      // ignore: top_level_function_literal_block
      'onTap': () {
        print('4');
      }
    }
  };

  ImageButton _getRealImageButton(String name) {
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
        width: 500,
        height: 140,
        pressedImage: Image.asset(this._seasonList[name]['pressedImage'],
            fit: BoxFit.cover),
        unpressedImage: Image.asset(this._seasonList[name]['unpressedImage'],
            fit: BoxFit.cover),
        onTap: () {
//          Navigator.push(context, MaterialPageRoute(builder: (context) {
//            return SecondScreen();
//          }));
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
