import 'package:flutter/material.dart';
import 'package:sunnytravel_app/components/ImageButton.dart';

class RegionPage extends StatefulWidget {
  RegionPage({Key key}) : super(key: key);

  _RegionPageState createState() => _RegionPageState();
}

class _RegionPageState extends State<RegionPage> {
  var _regionList = {
    "华中": {
      'pressedImage': "images/central.jpg",
      'unpressedImage': "images/central.jpg",
      // ignore: top_level_function_literal_block
      'onTap': () {
        print('1');
      }
    },
    "华北": {
      'pressedImage': "images/north.jpg",
      'unpressedImage': "images/north.jpg",
      // ignore: top_level_function_literal_block
      'onTap': () {
        print('2');
      }
    },
    "华南": {
      'pressedImage': "images/south.jpg",
      'unpressedImage': "images/south.jpg",
      // ignore: top_level_function_literal_block
      'onTap': () {
        print('3');
      }
    },
    "华东": {
      'pressedImage': "images/east.jpg",
      'unpressedImage': "images/east.jpg",
      // ignore: top_level_function_literal_block
      'onTap': () {
        print('4');
      }
    },
    "东北": {
      'pressedImage': "images/northeast.jpg",
      'unpressedImage': "images/northeast.jpg",
      // ignore: top_level_function_literal_block
      'onTap': () {
        print('5');
      }
    },
    "西北": {
      'pressedImage': "images/northwest.jpg",
      'unpressedImage': "images/northwest.jpg",
      // ignore: top_level_function_literal_block
      'onTap': () {
        print('6');
      }
    },
    "西南": {
      'pressedImage': "images/southwest.jpg",
      'unpressedImage': "images/southwest.jpg",
      // ignore: top_level_function_literal_block
      'onTap': () {
        print('7');
      }
    },
    "港澳台": {
      'pressedImage': "images/hkmt.jpg",
      'unpressedImage': "images/hkmt.jpg",
      // ignore: top_level_function_literal_block
      'onTap': () {
        print('8');
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
        width: 250,
        height: 190,
        pressedImage: Image.asset(this._regionList[name]['pressedImage'],
            fit: BoxFit.cover),
        unpressedImage: Image.asset(this._regionList[name]['unpressedImage'],
            fit: BoxFit.cover),
        onTap: this._regionList[name]['onTap']);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: GridView.count(crossAxisCount: 2, children: <Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: this._getRealImageButton('华北')),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: this._getRealImageButton('华中')),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: this._getRealImageButton('华南')),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: this._getRealImageButton('华东')),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: this._getRealImageButton('东北')),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: this._getRealImageButton('西北')),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: this._getRealImageButton('西南')),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: this._getRealImageButton('港澳台'))
        ]));
  }
}
