import 'package:flutter/material.dart';
import 'package:sunnytravel_app/components/ImageButton.dart';

import '../SearchArticle.dart';

class RegionPage extends StatefulWidget {
  RegionPage({Key key}) : super(key: key);

  _RegionPageState createState() => _RegionPageState();
}

class _RegionPageState extends State<RegionPage> {
  var _regionList = {
    "华中": {
      'pressedImage': "images/central.jpg",
      'unpressedImage': "images/central.jpg"
    },
    "华北": {
      'pressedImage': "images/north.jpg",
      'unpressedImage': "images/north.jpg"
    },
    "华南": {
      'pressedImage': "images/south.jpg",
      'unpressedImage': "images/south.jpg"
    },
    "华东": {
      'pressedImage': "images/east.jpg",
      'unpressedImage': "images/east.jpg"
    },
    "东北": {
      'pressedImage': "images/northeast.jpg",
      'unpressedImage': "images/northeast.jpg"
    },
    "西北": {
      'pressedImage': "images/northwest.jpg",
      'unpressedImage': "images/northwest.jpg"
    },
    "西南": {
      'pressedImage': "images/southwest.jpg",
      'unpressedImage': "images/southwest.jpg"
    },
    "港澳台": {
      'pressedImage': "images/hkmt.jpg",
      'unpressedImage': "images/hkmt.jpg"
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
        height: size.height * 0.25,
        pressedImage: Image.asset(this._regionList[name]['pressedImage'],
            fit: BoxFit.cover),
        unpressedImage: Image.asset(this._regionList[name]['unpressedImage'],
            fit: BoxFit.cover),
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                  new SearchArticle(searchKey: [name, "", "0", name],)));
        });
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
