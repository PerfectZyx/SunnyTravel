import 'package:flutter/material.dart';

class MohePage extends StatelessWidget {
  const MohePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('漠河之旅'),
      ),
      body: Column(
        children: <Widget>[
          Container(
              height: 200,
              width: 534,
              child: Image.asset("images/mh.jpg", fit: BoxFit.fill)),
          Container(
            width: size.width,
            child: Text('旅行攻略：',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
          ),
          Container(
            width: size.width,
            child: Text('Day 01: 九曲十八弯湿地公园(2小时) → 白桦林(2小时) → 黑龙江第一湾(2小时) → 乌苏里浅滩(2小时) → 北红村(2小时)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          Container(
            width: size.width,
            child: Text('Day 02: 鄂温克驯鹿园(2小时) → 北极村(3小时)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          Container(
            width: size.width,
            child: Text('Day 03: 观音山(2小时) → 松苑原始森林公园(2小时) → 北极星广场(2小时)',
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
            child: Text('现有确诊0人（昨日+0），累计确诊947人（昨日+0），累计治愈934人（昨日+0），累计死亡13人（昨日+0）',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
        ],
      ),
    );
  }
}
