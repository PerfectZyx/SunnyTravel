import 'package:flutter/material.dart';

class WuyuanPage extends StatelessWidget {
  const WuyuanPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('婺源之旅'),
      ),
      body: Column(
        children: <Widget>[
          Container(
              height: 200,
              width: 534,
              child: Image.asset("images/wy.jpg", fit: BoxFit.fill)),
          Container(
            width: size.width,
            child: Text('旅行攻略：',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
          ),
          Container(
            width: size.width,
            child: Text('Day 01: 文公山(2小时) → 鸳鸯湖(2小时) → 婺源博物馆(1小时)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          Container(
            width: size.width,
            child: Text('Day 02: 晓起(3小时) → 江岭(2小时) → 庆源村(2小时)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          Container(
            width: size.width,
            child: Text('Day 03: 思溪延村(2小时) → 彩虹桥(2小时) → 清华镇(1小时)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          Container(
            width: size.width,
            child: Text('Day 04: 洪村(2小时) → 大鄣山(3小时) → 理坑(2小时)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          SizedBox(
            height: 20.0,
            child:  Container(
              height: 20.0,
              color: Color(0xffffffff),
            ),
          ),
          Container(
            width: size.width,
            child: Text('当地实时疫情：',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
          ),
          Container(
            width: size.width,
            child: Text('数据更新至2020.07.26 19:26',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          Container(
            width: size.width,
            child: Text('现有确诊6人（昨日+0），累计确诊603人（昨日+0），累计治愈594人（昨日+0），累计死亡3人（昨日+0）',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
        ],
      ),
    );
  }
}
