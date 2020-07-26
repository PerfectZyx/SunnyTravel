import 'package:flutter/material.dart';
import 'package:sunnytravel_app/utils/packages.dart';

class TravalNoteDetail extends StatelessWidget {
  final Package package;
  TravalNoteDetail({Key key, @required this.package}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('${package.title}'),
        ),
        body: Center(
          child: Text('${package.description}'),
        ));
  }
}