import 'package:flutter/material.dart';
import 'package:sunnytravel_app/components/ImageButton.dart';
import 'package:sunnytravel_app/utils/packages.dart';

class TravelNotePage extends StatefulWidget {
  TravelNotePage({Key key}) : super(key: key);

  _TravelNotePageState createState() => _TravelNotePageState();
}

class _TravelNotePageState extends State<TravelNotePage> {
  ImageButton _getRealImageButton(int index) {
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
      width: 250,
      height: 190,
      pressedImage: Image.asset(travelNoteList[index].img, fit: BoxFit.cover),
      unpressedImage: Image.asset(travelNoteList[index].img, fit: BoxFit.cover),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    new TravalNoteDetail(package: travelNoteList[index])));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
            ),
            itemCount: travelNoteList == null ? 0 : travelNoteList.length,
            itemBuilder: (context, index) {
              return _getRealImageButton(index);
            }));
  }
}

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
