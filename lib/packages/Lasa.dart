import 'package:flutter/material.dart';

class LasaPage extends StatelessWidget {
  const LasaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('拉萨之旅'),
      ),
      body: Column(
        children: <Widget>[
          Container(
              height: 200,
              width: 534,
              child: Image.asset("images/ls.jpg", fit: BoxFit.fill)),
          Container(
            width: size.width,
            child: Text('旅行攻略：',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
          ),
          Container(
            width: size.width,
            child: Text('Day 01: 布达拉宫(3小时) → 宗角禄康公园(1小时) → 大昭寺(1.5小时) → 八廓街(2小时)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          Container(
            width: size.width,
            child: Text('Day 02: 哲蚌寺(2小时) → 娘热民俗风情园(2小时) → 色拉寺(2小时)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          Container(
            width: size.width,
            child: Text('Day 03: 念青唐古拉山(30分钟) → 那根拉(30分钟) → 纳木错(2小时)',
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
            child: Text('数据更新至2020.07.26 19:52',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          Container(
            width: size.width,
            child: Text('现有确诊0人（昨日+0），累计确诊1人（昨日+0），累计治愈1人（昨日+0），累计死亡0人（昨日+0）',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
        ],
      ),
    );
  }
}
