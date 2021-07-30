import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:know/model/insignia.dart';
import 'package:know/model/insignialists.dart';

final Logger log = new Logger('page-template');

class PageTemplate extends StatelessWidget {

  double _imageHeight = 180.0;
  int _choice = 0;
  String _title = "";

  PageTemplate(int choice, String title) {
    _choice = choice;
    _title = "Guide for "+ title;
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: getItemList().map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: Colors.white30.withOpacity(0.25),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Image.asset(i.imageResource, height: _imageHeight,),
                          ),
                          Text(
                            "Service: "+i.branch+"\nRank: "+i.rank+"\nGrade: "+i.eoLevel(),
                          ),
                        ]);
                  },
                );
              }).toList(),
            ),

            ElevatedButton(
                child: const Text('Done'),
                onPressed: () {
                  Navigator.pop(ctx);
                }),
          ]),
    );
  }

  List<Insignia> getItemList() {
    if (_choice != 0) {
      return InsigniaLists().currentInsigniaList[_choice-1];
    } else {
      return InsigniaLists().currentInsigniaList.expand((x) => x).toList();
    }
  }
}
