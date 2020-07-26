import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  CategoryCard({Key key}) : super(key: key);

  _CategoryCard createState() => _CategoryCard();
}

class _CategoryCard extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
      child: Image.network('https://www.itying.com/images/flutter/6.png',
          fit: BoxFit.cover),
    );
  }
}
