import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class s2dat extends StatelessWidget {
  final String id;
  final String title;
  final String imgurl;
  final testData = ["Example1", "Example2", "Example3", "Example100"];
  s2dat(this.id, this.title, this.imgurl);

  @override
  Widget build(BuildContext context) {
    final _markDownData =
        testData.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    return InkWell(
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  imgurl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                child: Container(
                  width: double.infinity,
                  color: Colors.grey,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            width: double.infinity,
            height: 120,
            margin: EdgeInsets.all(40.0),
            child: Markdown(data: _markDownData),
          ),
          RichText(
            text: new TextSpan(
              children: [
                new TextSpan(
                  text: 'Click Here For More Updates',
                  style: new TextStyle(color: Colors.blue),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://www.youtube.com/channel/UCrdzQ7vv-qJg5B7i6Wjj6eg');
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
