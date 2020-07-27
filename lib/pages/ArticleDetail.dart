import 'package:flutter/material.dart';
import 'package:sunnytravel_app/utils/article.dart';

class ArticleDetail extends StatelessWidget {
  final Article article;
  ArticleDetail({Key key, @required this.article}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (article.flag == "1") {
      return new Scaffold(
          appBar: AppBar(
            title: Text(article.title),
          ),
          body: SingleChildScrollView(
              child: new Column(
            children: <Widget>[
              Container(
                  height: 200,
                  width: 534,
                  child: Image.asset(article.img, fit: BoxFit.fill)),
              Container(
                width: size.width,
                child: Text('用户游记：',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
              ),
              Container(
                width: size.width,
                child: Text(article.description,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16.0)),
              ),
            ],
          )));
    } else {
      return Scaffold(
          appBar: AppBar(
            title: Text(article.title),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                    height: 200,
                    width: 534,
                    child: Image.asset(article.img, fit: BoxFit.fill)),
                Container(
                  width: size.width,
                  child: Text('旅行攻略：',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500)),
                ),
                Container(
                  width: size.width,
                  child: Text(article.description,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16.0)),
                ),
                SizedBox(
                  height: 20.0,
                  child: Container(
                    height: 20.0,
                    color: Color(0xffffffff),
                  ),
                ),
                Container(
                  width: size.width,
                  child: Text('当地实时疫情：',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500)),
                ),
                Container(
                  width: size.width,
                  child: Text('数据更新至2020.07.26 19:52',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16.0)),
                ),
                Container(
                  width: size.width,
                  child: Text(article.virus,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16.0)),
                ),
              ],
            ),
          ));
    }
  }
}
