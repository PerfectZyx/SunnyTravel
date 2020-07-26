import 'package:flutter/material.dart';

class AboutappPage extends StatelessWidget {
  const AboutappPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('网站介绍'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: size.width,
              child: Text('-APP简介及定位',
                  textAlign: TextAlign.left,
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
            ),
            Container(
              width: size.width,
              child: Text(
                  'SunnyTravel，一个聚焦国内热门景点的旅游APP。\n在这里，您可以看到我们为您精选的旅游攻略锦囊，为您制定出最详尽省时的旅游路线，同时为您播报当前不同地区疫情实时情况，让您的旅途更加安心。\n在这里，您可以看到我们为您精选的旅游用户游记，为您介绍目的景点的优点、缺点，同时根据他人经验为您规划出最便捷的出行，让您的旅途更加放心。\n在这里，您可以看到不同季节/地区的热门旅游地点，为您的“随走随行”提供了极大的便利，同时帮助您能够对不同地域进行快速筛选，让您的旅途更加便捷。',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0)),
            ),
            SizedBox(
              height: 30.0,
              child: Container(
                height: 30.0,
                color: Color(0xffffffff),
              ),
            ),
            Container(
              width: size.width,
              child: Text('-服务人群',
                  textAlign: TextAlign.left,
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
            ),
            Container(
              width: size.width,
              child: Text(
                  '人群1：临时有出游意向，没有太多时间提前准备攻略的用户；\n人群2：有出游意向，想要查看当季适合出游地点的用户。',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0)),
            ),
            SizedBox(
              height: 30.0,
              child: Container(
                height: 30.0,
                color: Color(0xffffffff),
              ),
            ),
            Container(
              width: size.width,
              child: Text('技术架构',
                  textAlign: TextAlign.left,
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
            ),
            Container(
              width: size.width,
              child: Text('本APP的开发使用了Flutter开发框架。\nios图标库：cupertino_icons: ^0.1.2\n轮播图组件：flutter_swiper: ^1.1.6',
                  textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
            ),
            SizedBox(
              height: 30.0,
              child: Container(
                height: 30.0,
                color: Color(0xffffffff),
              ),
            ),
            Container(
              width: size.width,
              child: Text('好在哪里',
                  textAlign: TextAlign.left,
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
            ),
            Container(
              width: size.width,
              child: Text(
                  '1.针对不同季节/月份进行文章分类，更具针对性，节约您的时间。\n2.增加各地疫情情况汇总板块，疫情严重地区对您进行安全提示。\n3.素材来源真实，全方位为您展示目的地的可靠情况。',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0)),
            ),
            SizedBox(
              height: 30.0,
              child: Container(
                height: 30.0,
                color: Color(0xffffffff),
              ),
            ),
            Container(
              width: size.width,
              child: Text('不足之处',
                  textAlign: TextAlign.left,
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
            ),
            Container(
              width: size.width,
              child: Text(
                  '1.因时间所限，APP中攻略/游记内容并不完善，数量并不充足。我们期待在未来逐渐完善，扩充。\n2.因APP所用图片较多，初次进入APP，页面加载可能略慢。在后期我们考虑对图片像素进行压缩处理，以提升访问速度。',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0)),
            ),
          ],
        ),
      ),
    );
  }
}
