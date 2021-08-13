import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:know/display/pagetemplate.dart';
import 'package:know/model/insignialists.dart';
import 'package:know/model/mypreferences.dart';
import 'dart:math';

const double _imageHeight = 180.0;
var _rng = new Random();

class QuizPage extends StatefulWidget {
  String title = "Quiz";

  MyPreferences preferences = MyPreferences();

  @override
  QuizPageState createState() => QuizPageState();
}

class QuizPageState extends State<QuizPage> {

  static int _startInsigniaListIndex = _rng.nextInt(InsigniaLists().currentInsigniaList.length);
  int _currentInsigniaListIndex = _startInsigniaListIndex;
  int _currentInsigniaIndex = _rng.nextInt(InsigniaLists().currentInsigniaList[_startInsigniaListIndex].length);

  String _currentService = "";
  String _currentRank = "";
  String _currentEO = "";

  int _radioChoice = 0;
  double _fontSize = 12.0;

  void _handleRadioValueChange1(int? value) {
    setState(() {
      int realValue;
      if (value == null) {
        realValue = 0;
      } else {
        realValue = value;
      }
      _radioChoice = realValue;
    });
  }

  @override
  Widget build(BuildContext context) {
//    Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea (
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildRadioListTile(0),
                  buildRadioListTile(1),
                  buildRadioListTile(2),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildRadioListTile(3),
                  buildRadioListTile(4),
                  buildRadioListTile(5),
                ],
              ),

              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white30.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Image.asset(InsigniaLists().currentInsigniaList[_currentInsigniaListIndex][_currentInsigniaIndex].imageResource, height: _imageHeight,),
              ),

              Text(
                '$_currentService\n$_currentRank\n$_currentEO',
              ),
              Row (
                children: <Widget>[
                  Expanded(
                      child: RaisedButton(
                          child: Text("Check Answer"),
                          onPressed: () {
                            setState(() {
                              if (_radioChoice != 0) {
                                var _curBranch = InsigniaLists().currentInsigniaList[_currentInsigniaListIndex][_currentInsigniaIndex]
                                    .branch;
                                _currentService = "Service: $_curBranch";
                                var _curRank = InsigniaLists().currentInsigniaList[_currentInsigniaListIndex][_currentInsigniaIndex]
                                    .rank;
                                _currentRank = "Rank: $_curRank";
                                var _curEO = InsigniaLists().currentInsigniaList[_currentInsigniaListIndex][_currentInsigniaIndex]
                                    .eo;
                                var _curLevel = InsigniaLists().currentInsigniaList[_currentInsigniaListIndex][_currentInsigniaIndex]
                                    .level;
                                _currentEO = "Grade: $_curEO-$_curLevel";
                              } else {
                                // for ALL we need to find all that use this image...
                                var imageName = InsigniaLists().currentInsigniaList[_currentInsigniaListIndex][_currentInsigniaIndex].imageResource;
                                RankTabulator rankTable = new RankTabulator();
                                EoTabulator eoTable = new EoTabulator();
                                _currentService = "Service: ";
                                var serviceDiv = "";
                                for (var i = 0; i < InsigniaLists().duplicateCheckList.length; i++) {
                                  for (var j = 0; j < InsigniaLists().duplicateCheckList[i].length; j++) {
                                    if (InsigniaLists().duplicateCheckList[i][j].imageResource == imageName) {
                                      var curBranch = InsigniaLists().duplicateCheckList[i][j].branch;
                                      // add branch
                                      _currentService = "$_currentService$serviceDiv$curBranch";
                                      serviceDiv = "/";
                                      // add rank
                                      var curRank = InsigniaLists().duplicateCheckList[i][j].rank;
                                      rankTable.add(curRank, curBranch);
                                      // add EO
                                      var curEOLevel = InsigniaLists().duplicateCheckList[i][j].eoLevel();
                                      eoTable.add(curEOLevel, curBranch);
                                      // next 3 lines for debug
                                      var rd = rankTable.toFancyString("Rank", "Branch");
                                      var ed = eoTable.toFancyString("Grade", "Branch");
                                      log.warning(rd);
                                    }
                                  }
                                }
                                _currentRank = rankTable.getRankString();
                                _currentEO = eoTable.getEoString();
                              }
                            });
                          })
                  ),
                  Expanded(
                      child: RaisedButton(
                          child: Text("Next"),
                          onPressed: () {
                            setState(() {
                              if (_radioChoice > 0) {
                                _currentInsigniaListIndex = _radioChoice - 1;
                              } else {
                                var prev = _currentInsigniaListIndex;
                                while (prev == _currentInsigniaListIndex) {
                                  _currentInsigniaListIndex =
                                      _rng.nextInt(InsigniaLists().currentInsigniaList.length);
                                }
                              }
                              var prev = _currentInsigniaIndex;
                              while (prev == _currentInsigniaIndex) {
                                _currentInsigniaIndex = _rng.nextInt(
                                    InsigniaLists().currentInsigniaList[_currentInsigniaListIndex]
                                        .length);
                              }
                              _currentService = "";
                              _currentRank = "";
                              _currentEO = "";
                            });
                          })
                  ),
                  Expanded(
                      child: ElevatedButton(
                          child: Text("Study"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => PageTemplate(_radioChoice, InsigniaLists().services[_radioChoice])
                              ),
                            );
                          })
                  ),
                ],
              )
            ],
          )
      ),
    );
  }

  Text buildText(String text) {
    var textStyle = new TextStyle(fontSize: _fontSize);
    return new Text(
      text,
      style: textStyle,
    );
  }

  Widget buildRadioListTile(int x) {
    return new Expanded (
        child: new RadioListTile(
          value: x,
          groupValue: _radioChoice,
          onChanged: _handleRadioValueChange1,
          title: buildText(InsigniaLists().services[x]),
        )
    );
  }

}

class Tabulator {
  Map<String,List<String>> _tabulation = {};

  void add(String key, String value) {
    // add to map
    if (_tabulation.containsKey(key)) {
      _tabulation[key]!.add(value);
    } else {
      List<String> branches = [value];
      _tabulation[key] = branches;
    }
  }

  String toFancyString(String header, String entry) {
    var str = "$header Tabulator";
    for (var eo in _tabulation.keys) {
      str = "$str\n\t$entry: ";
      for (var b in _tabulation[eo]!) {
        str = "$str$b|";
      }
      str = "$str\n";
    }
    return str;
  }

}

class RankTabulator extends Tabulator {
  String getRankString() {
    String rankStr;
    // now sort out EOs - if only one, list it without branches
    if (_tabulation.length == 0) {
      // wtf
      rankStr =  "";
    } else if (_tabulation.length == 1) {
      var soleRank = _tabulation.keys.toList()[0];
      rankStr =  "Rank: $soleRank";
    } else {
      rankStr = "Rank: ";
      var rankDiv = "";
      for (var eo in _tabulation.keys) {
        rankStr = "$rankStr$rankDiv$eo (";
        rankDiv = ", ";
        var brDiv = "";
        for (var brs in _tabulation[eo]!) {
          rankStr = "$rankStr$brDiv$brs";
          brDiv="/";
        }
        rankStr =  "$rankStr)";
      }
    }
    return rankStr;
  }
  bool multiple() {
    return _tabulation.length > 0;
  }
}

class EoTabulator extends Tabulator {
  String getEoString() {
    String eoStr;
    // now sort out EOs - if only one, list it without branches
    if (_tabulation.length == 0) {
      // wtf
      eoStr =  "";
    } else if (_tabulation.length == 1) {
      var soleEO = _tabulation.keys.toList()[0];
      eoStr =  "Grade: $soleEO";
    } else {
      eoStr = "Grade: ";
      var eoDiv = "";
      for (var eo in _tabulation.keys) {
        eoStr = "$eoStr$eoDiv$eo (";
        eoDiv = ", ";
        var brDiv = "";
        for (var brs in _tabulation[eo]!) {
          eoStr = "$eoStr$brDiv$brs";
          brDiv="/";
        }
        eoStr =  "$eoStr)";
      }
    }
    return eoStr;
  }
}
