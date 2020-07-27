import 'package:flutter/material.dart';
import 'package:sunnytravel_app/pages/SearchArticle.dart';
import 'tabs/Home.dart';
import 'tabs/Season.dart';
import 'tabs/Region.dart';
import 'tabs/TravelNote.dart';
import 'tabs/About.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  int _currentIndex = 0;
  List _pageList = [SwiperPage(), SeasonPage(), RegionPage(), SearchArticle(searchKey: ["","","1","游记"],), AboutPage()];

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('SunnyTravel'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('主页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.wb_sunny), title: Text('季节推荐')),
            BottomNavigationBarItem(
                icon: Icon(Icons.landscape), title: Text('地区推荐')),
            BottomNavigationBarItem(
                icon: Icon(Icons.toys), title: Text('用户游记')),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity), title: Text('关于我们')),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
