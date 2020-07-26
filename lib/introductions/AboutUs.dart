import 'package:flutter/material.dart';

class AboutusPage extends StatelessWidget {
  const AboutusPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('我们是谁'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: size.width,
            child: Text('注：以下排名按照首字母顺序排序，在本次开发过程中我们按照模块进行纵向分工，保证了每人任务的均衡性。',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14.0)),
          ),
          SizedBox(
            height: 20.0,
            child:  Container(
              height: 0.0,
              color: Color(0xffffffff),
            ),
          ),
          Container(
            width: size.width,
            child: Text('梁思立(1712906)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
          ),
          Container(
            width: size.width,
            child: Text('南开大学软件学院2017级本科生\n负责分工：\n电子邮箱：jack_he_he@163.com',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          SizedBox(
            height: 30.0,
            child:  Container(
              height: 30.0,
              color: Color(0xffffffff),
            ),
          ),
          Container(
            width: size.width,
            child: Text('孙晓冰(1712981)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
          ),
          Container(
            width: size.width,
            child: Text('南开大学软件学院2017级本科生\n负责分工：\n电子邮箱：759677946@qq.com',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
          SizedBox(
            height: 30.0,
            child:  Container(
              height: 30.0,
              color: Color(0xffffffff),
            ),
          ),
          Container(
            width: size.width,
            child: Text('赵咏欣(1712988)',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
          ),
          Container(
            width: size.width,
            child: Text('南开大学软件学院2017级本科生\n负责分工：\n电子邮箱：zyx_nkcs@163.com',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
          ),
        ],
      ),
    );
  }
}
