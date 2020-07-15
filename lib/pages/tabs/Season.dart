import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SeasonPage extends StatefulWidget {
  SeasonPage({Key key}) : super(key: key);

  _SeasonPageState createState() => _SeasonPageState();
}

class _SeasonPageState extends State<SeasonPage> {
  List<Map> imgList = [
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/2.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('主页'),
        // ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("SunnyTravel")
              ],
            ),
            Container(
              //width: double.infinity,
              //height: 300,
              child: AspectRatio(
                aspectRatio: 16/9,
                child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(imgList[index]["url"],
                      fit: BoxFit.fill);
                },
                itemCount: imgList.length,
                pagination: new SwiperPagination(),
                autoplay: true,
                loop: true,
                control: new SwiperControl(),
              ),
              )
            ),
          ],
        ));
  }
}
