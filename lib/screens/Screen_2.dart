import 'package:flutter/material.dart';
import '../widgets/s2_det.dart';

class ScreenNo2 extends StatelessWidget {
  final String id;
  final String categoryTitle;
  final Color rang;
  final String imgurl;

  ScreenNo2(this.id, this.categoryTitle, this.rang, this.imgurl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink, //Theme.of(context).accentColor,
        title: Text(
          'The Meals',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        width: 500,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Detail of ' + categoryTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.pink,
                )),
            SizedBox(
              height: 15,
            ),
            s2dat(id, categoryTitle, imgurl),
          ],
        ),
      ),
    );
  }
}
