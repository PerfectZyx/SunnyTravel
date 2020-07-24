import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sunnytravel_app/components/ImageButton.dart';

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
        // appBar: AppBar(
        //   title: Text('主页'),
        // ),
        body: Column(
          children: <Widget>[
            // Row(
            //   children: <Widget>[
            //     Text("SunnyTravel")
            //   ],
            // ),
            Container(
              //width: double.infinity,
              //height: 300,
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
                //control: new SwiperControl(),
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
                    print('test');
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
                    print('test');
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
                    print('test');
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
                    print('test');
                  },
                ),
              ],
            ),
          ],
        ));
  }
}
