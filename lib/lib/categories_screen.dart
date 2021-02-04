import 'package:flutter/material.dart';

import './dummy_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeal'),
      ),
      body: Column(
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
            child: GridView(
              padding: const EdgeInsets.all(25),
              children: DUMMY_CATEGORIES
                  .map(
                    (catData) => CategoryItem(
                      catData.title,
                      catData.color,
                    ),
                  )
                  .toList(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 290,
                childAspectRatio: 1.65,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
