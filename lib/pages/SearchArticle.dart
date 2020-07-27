import 'package:flutter/material.dart';
import 'package:sunnytravel_app/components/ImageButton.dart';
import 'package:sunnytravel_app/utils/article.dart';
import 'package:sunnytravel_app/pages/ArticleDetail.dart';

class SearchArticle extends StatefulWidget {
  List searchKey; // 第一个是地区，第二个是季节，第三个是flag， 第四个是appbar名字
  SearchArticle({Key key, @required this.searchKey}) : super(key: key);

  _SearchArticle createState() {
    var list = articleList.where((e) =>
        e.region.contains(searchKey[0]) &&
        e.season.contains(searchKey[1]) &&
        e.flag == searchKey[2]);
    return _SearchArticle(list.toList(), searchKey[3]);
  }
}

class _SearchArticle extends State<SearchArticle> {
  List articleList;
  String name;

  _SearchArticle(this.articleList, this.name);

  ImageButton _getRealImageButton(int index) {
    return ImageButton(
      children: <Widget>[
        Text(
          this.articleList[index].title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
      width: 250,
      height: 190,
      pressedImage: Image.asset(this.articleList[index].img, fit: BoxFit.cover),
      unpressedImage:
          Image.asset(this.articleList[index].img, fit: BoxFit.cover),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    new ArticleDetail(article: this.articleList[index])));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: this.name == "游记" ? null : AppBar(
          title: Text(name),
        ),
        body: Padding(
            padding: new EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                ),
                itemCount:
                    this.articleList == null ? 0 : this.articleList.length,
                itemBuilder: (context, index) {
                  // if(packageList[index].virus != '') {
                  return _getRealImageButton(index);
                  // }
                })));
  }
}
