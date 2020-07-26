import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sunnytravel_app/components/ImageButton.dart';
import 'package:sunnytravel_app/packages/Wuyuan.dart';
import 'package:sunnytravel_app/packages/Mohe.dart';
import 'package:sunnytravel_app/packages/Lasa.dart';
import 'package:sunnytravel_app/packages/Shanghai.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> imgList = [
    {"url": "images/dali.jpg"},
    {"url": "images/qinghai.jpg"},
    {"url": "images/tianjin.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              child: AspectRatio(
                aspectRatio: 16/9,
                child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.asset(imgList[index]["url"],
                      fit: BoxFit.fill);
                },
                itemCount: imgList.length,
                pagination: new SwiperPagination(),
                autoplay: true,
                loop: true,
              ),
              )
            ),
            SizedBox(
              height: 10.0,
              child:  Container(
                height: 10.0,
                color: Color(0xffffffff),
              ),
            ),
            Row(
              children: <Widget>[
                 ImageButton(
                  children: <Widget>[
                    Text(
                      '婺源之旅',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                  width: 200,
                  height: 140,
                  paddingTop: 5,
                  pressedImage: Image.asset(
                    "images/wy.jpg",
                  ),
                  unpressedImage: Image.asset(
                    "images/wy.jpg"
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context){
                          return WuyuanPage();
                        }
                      )
                    );
                  },
                ),
                SizedBox(
                  width: 11.3,
                  height: 140.0,
                  child:  Container(
                    width: 11.0,
                    height: 160.0,
                    color: Color(0xffffffff),
                  ),
                ),
                ImageButton(
                  children: <Widget>[
                    Text(
                      '漠河之旅',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                  width: 200,
                  height: 140,
                  paddingTop: 5,
                  pressedImage: Image.asset(
                    "images/mh.jpg",
                  ),
                  unpressedImage: Image.asset(
                    "images/mh.jpg"
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context){
                          return MohePage();
                        }
                      )
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
              child:  Container(
                height: 10.0,
                color: Color(0xffffffff),
              ),
            ),
            Row(
              children: <Widget>[
                 ImageButton(
                  children: <Widget>[
                    Text(
                      '拉萨之旅',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                  width: 200,
                  height: 140,
                  paddingTop: 5,
                  pressedImage: Image.asset(
                    "images/ls.jpg",
                  ),
                  unpressedImage: Image.asset(
                    "images/ls.jpg"
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context){
                          return LasaPage();
                        }
                      )
                    );
                  },
                ),
                SizedBox(
                  width: 11.3,
                  height: 140.0,
                  child:  Container(
                    width: 11.0,
                    height: 160.0,
                    color: Color(0xffffffff),
                  ),
                ),
                ImageButton(
                  children: <Widget>[
                    Text(
                      '上海之旅',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                  width: 200,
                  height: 140,
                  paddingTop: 5,
                  pressedImage: Image.asset(
                    "images/sh.jpg",
                  ),
                  unpressedImage: Image.asset(
                    "images/sh.jpg"
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context){
                          return ShanghaiPage();
                        }
                      )
                    );
                  },
                ),
              ],
            ),
          ],
        ));
  }
}
