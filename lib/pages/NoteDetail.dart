import 'package:flutter/material.dart';
import 'package:sunnytravel_app/utils/note.dart';

class TravalNoteDetail extends StatelessWidget {
  final Note note;
  TravalNoteDetail({Key key, @required this.note}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
        appBar: AppBar(
          title: Text('${note.title}'),
        ),
        body: SingleChildScrollView(child: new Column(
          children: <Widget>[
            Container(
                height: 200,
                width: 534,
                child: Image.asset('${note.img}', fit: BoxFit.fill)),
            Container(
              width: size.width,
              child: Text('用户游记：',
                  textAlign: TextAlign.left,
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
            ),
            Container(
              width: size.width,
              child: Text('${note.description}',
                  textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
            ),
          ],
        )));
  }
}
