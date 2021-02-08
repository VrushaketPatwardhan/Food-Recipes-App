import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/S1_items.dart';

class ScreenNo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Categories'),
      ),
      body: SizedBox(
        width: 500,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Text('Categories',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.pink,
                )),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(25),
                children: DUMMY_CATEGORIES
                    .map(
                      (catData) => S1Items(
                        catData.id,
                        catData.title,
                        catData.color,
                        catData.imgurl,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
