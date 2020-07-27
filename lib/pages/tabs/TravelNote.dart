import 'package:flutter/material.dart';
import 'package:sunnytravel_app/components/ImageButton.dart';
import 'package:sunnytravel_app/utils/packages.dart';
import 'package:sunnytravel_app/pages/NoteDetail.dart';

class TravelNotePage extends StatefulWidget {
  TravelNotePage({Key key}) : super(key: key);

  _TravelNotePageState createState() => _TravelNotePageState();
}

class _TravelNotePageState extends State<TravelNotePage> {
  ImageButton _getRealImageButton(int index) {
    return ImageButton(
      children: <Widget>[
        Text(
          packageList[index].title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
      width: 250,
      height: 190,
      pressedImage: Image.asset(packageList[index].img, fit: BoxFit.cover),
      unpressedImage: Image.asset(packageList[index].img, fit: BoxFit.cover),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    new TravalNoteDetail(package: packageList[index])));
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
                itemCount: packageList == null ? 0 : packageList.length,
                itemBuilder: (context, index) {
                  // if(packageList[index].virus != '') {
                  return _getRealImageButton(index);
                  // }
                })));
  }
}
