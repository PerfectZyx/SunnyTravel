import 'package:flutter/material.dart';
import 'package:sunnytravel_app/components/ImageButton.dart';
import 'package:sunnytravel_app/utils/note.dart';
import 'package:sunnytravel_app/pages/NoteDetail.dart';

class TravelNotePage extends StatefulWidget {
  TravelNotePage({Key key}) : super(key: key);

  _TravelNotePageState createState() => _TravelNotePageState();
}

class _TravelNotePageState extends State<TravelNotePage> {

  ImageButton _getRealImageButton(int index) {
    Size size = MediaQuery.of(context).size;
    return ImageButton(
      children: <Widget>[
        Text(
          travelNoteList[index].title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
      width: size.width,
      height: size.height * 0.25,
      pressedImage: Image.asset(travelNoteList[index].img, fit: BoxFit.cover),
      unpressedImage: Image.asset(travelNoteList[index].img, fit: BoxFit.cover),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    new TravalNoteDetail(note: travelNoteList[index])));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                ),
                itemCount: travelNoteList == null ? 0 : travelNoteList.length,
                itemBuilder: (context, index) {
                  // if(packageList[index].virus != '') {
                  return _getRealImageButton(index);
                  // }
                })));
  }
}
