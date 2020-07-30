import 'package:flutter/material.dart';

class ShanghaiPage extends StatelessWidget {
  const ShanghaiPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('上海之旅'),
      ),
      body: SingleChildScrollView(
      child:Column(
        children: <Widget>[
          Container(
              height: 200,
              width: 534,
              child: Image.asset("images/sh.jpg", fit: BoxFit.fill)),
          Container(
            width: size.width,
            child: Text('旅行攻略：',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
          ),
          Container(
            width: size.width,
            child: Text('Day 01: 上海城隍庙旅游区(2小时) → 豫园(1小时) → 南京路步行街(3小时) → 外滩(1小时)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          Container(
            width: size.width,
            child: Text('Day 02: 中华艺术宫(4小时) → 田子坊(2小时) → 上海新天地(2小时)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          Container(
            width: size.width,
            child: Text('Day 03: 上海迪士尼度假区(1天)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          Container(
            width: size.width,
            child: Text('Day 04: 上海杜莎夫人蜡像馆(3小时) → 陆家嘴(2小时) → 东方明珠广播电视塔(2小时)',
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
            child: Text('数据更新至2020.07.26 19:39',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          Container(
            width: size.width,
            child: Text('现有确诊17人（昨日-4），累计确诊741人（昨日+0），累计治愈717人（昨日+4），累计死亡7人（昨日+0）',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
        ],
      ),),
    );
  }
}
