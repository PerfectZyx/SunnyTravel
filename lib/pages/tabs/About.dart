import 'package:flutter/material.dart';
import 'package:sunnytravel_app/introductions/AboutUs.dart';
import 'package:sunnytravel_app/introductions/AboutApp.dart';
import 'package:sunnytravel_app/introductions/ContactUs.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Image.asset(
            "images/mylogo.jpg"
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(width: 1, color:Colors.black12)
              )
            ),
            child: ListTile(
              leading: Icon(Icons.stay_current_portrait),
              title: Text("APP介绍"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context){
                      return AboutappPage();
                    }
                  )
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(width: 1, color:Colors.black12)
              )
            ),
            child: ListTile(
              leading: Icon(Icons.accessibility_new),
              title: Text("我们是谁"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context){
                      return AboutusPage();
                    }
                  )
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(width: 1, color:Colors.black12)
              )
            ),
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text("意见反馈"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context){
                      return ContactusPage();
                    }
                  )
                );
              },
            ),
          ),
        ],
      ),
    );
  }

}