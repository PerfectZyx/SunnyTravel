import 'package:flutter/material.dart';

class ContactusPage extends StatelessWidget {
  const ContactusPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('意见反馈'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: size.width,
            child: Text('关于SunnyTravel的使用问题、改进建议，或举报不良信息，请联系我们。',
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
            child: Text('服务热线：(+86)15635389119',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
          ),
          SizedBox(
            height: 10.0,
            child:  Container(
              height: 10.0,
              color: Color(0xffffffff),
            ),
          ),
          Container(
            width: size.width,
            child: Text('服务邮箱：434317753@qq.com',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}
