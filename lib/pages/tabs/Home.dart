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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.3,
              width: size.width,
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
              height: size.height * 0.02,
              child:  Container(
                height: size.height * 0.02,
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
                  width: size.width * 0.49,
                  height: size.height * 0.22,
                  paddingTop: size.height * 0.005,
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
                  width: size.width * 0.02,
                  height: size.height * 0.22,
                  child:  Container(
                    width: size.width * 0.02,
                    height: size.height * 0.22,
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
                  width: size.width * 0.49,
                  height: size.height * 0.22,
                  paddingTop: size.height * 0.005,
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
              height: size.height * 0.02,
              child:  Container(
                height: size.height * 0.02,
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
                  width: size.width * 0.49,
                  height: size.height * 0.22,
                  paddingTop: size.height * 0.005,
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
                  width: size.width * 0.02,
                  height: size.height * 0.22,
                  child:  Container(
                    width: size.width * 0.02,
                    height: size.height * 0.22,
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
                  width: size.width * 0.49,
                  height: size.height * 0.22,
                  paddingTop: size.height * 0.005,
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
