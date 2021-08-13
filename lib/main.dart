import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:flutter/cupertino.dart';
import './page/quizpage.dart';
import './page/preferencepage.dart';
import './model/settings.dart';

const String _appBarTitle = "Know Your Insignia";

final Logger log = new Logger('insignia');

void main() {
  runApp(MaterialApp(
      title: "App",
      home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {

  // int _bottomIndex = 0;
  // List<BottomNavigationBarItem> _items = [
  //   new BottomNavigationBarItem(icon: new Icon(Icons.settings), label: "Preferences"),
  //   new BottomNavigationBarItem(icon: new Icon(Icons.question_answer), label: "Quiz"),
  //   new BottomNavigationBarItem(icon: new Icon(Icons.book), label: "Study"),
  // ];

  // @override
  // void initState() {
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        backgroundColor: Colors.grey.shade900,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("Settings"),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new PreferencePage();
                })),
              ),
              ListTile(
                title: Text("Quiz"),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new QuizPage();
                })),
              ),
            ],
          ),
        ),
        body: SafeArea (
          child: Padding (
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: PreferencePage(), //QuizPage(),
          ),
        ),
    );
  }

  SimpleDialog preferencesDialog(BuildContext context) {
    return new SimpleDialog(
      title: new Text('Do you like Flutter?'),
      children: <Widget>[
        new SimpleDialogOption(child: new Text('Yes!!!'),onPressed: (){Navigator.pop(context);},),
        new SimpleDialogOption(child: new Text('NO :('),onPressed: (){Navigator.pop(context);},),
        new SimpleDialogOption(child: new Text('Maybe :|'),onPressed: (){Navigator.pop(context);},),
      ],
    );
  }
}
