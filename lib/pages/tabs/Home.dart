import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
          ],
        ));
  }
}
