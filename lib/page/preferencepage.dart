import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import '../model/mypreferences.dart';
import '../model/settings.dart';

class PreferencePage extends StatefulWidget {
  @override
  PreferencePageState createState() => new PreferencePageState();
}

class PreferencePageState extends State<PreferencePage> {

  Settings settings = Settings.getInstance();

  bool _usa_set = false;
  bool _usn_set = false;
  bool _usaf_set = false;
  bool _uscg_set = false;
  bool _usmc_set = false;

  ImageIcon seal_usa = ImageIcon(
    AssetImage('SEAL_USA_24.png'),
  );
  ImageIcon seal_usn = ImageIcon(
    AssetImage('SEAL_USN_64.png'),
  );
  ImageIcon seal_usaf = ImageIcon(
    AssetImage('SEAL_USAF_64.png'),
  );
  ImageIcon seal_uscg = ImageIcon(
    AssetImage('SEAL_USCG_64.png'),
  );
  ImageIcon seal_usmc = ImageIcon(
    AssetImage('SEAL_USMC_64.png'),
  );

  void initState() {
    settings.init().then((value) => {
      _usa_set = settings.getShowArmy()
    });
  }

  void _onChangedArmy(bool value) {
    settings.setShowArmy(value);
    setState(() { _usa_set = value; });
  }

  void _onChangedNavy(bool value) {
    settings.setShowNavy(value);
    setState(() { _usn_set = value; });
  }

  void _onChangedAirForce(bool value) {
    settings.setShowAirForce(value);
    setState(() { _usaf_set = value; });
  }

  void _onChangedMarines(bool value) {
    settings.setShowMarines(value);
    setState(() { _usmc_set = value; });
  }

  void _onChangedCoastGuard(bool value) {
    settings.setShowCoastGuard(value);
    setState(() { _uscg_set = value; });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
        appBar: new AppBar(
          title: new Text('Settings'),
        ),
        body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new SwitchListTile(
                  title: const Text('US Army'),
                  value: _usa_set,
                  onChanged: (bool value) {
                    setState(() {
                      _onChangedArmy(value);
                    });
                  },
                  secondary: new Container(child: new Image.asset('SEAL_USA_24.png')),
                ),
                new SwitchListTile(
                  title: const Text('US Navy'),
                  value: _usn_set,
                  onChanged: (bool value) {
                    setState(() {
                      _onChangedNavy(value);
                    });
                  },
                  secondary: new Container(child: new Image.asset('SEAL_USN_24.png')),
                ),
                new SwitchListTile(
                  title: const Text('US Air Force'),
                  value: _usaf_set,
                  onChanged: (bool value) {
                    setState(() {
                      _onChangedAirForce(value);
                    });
                  },
                  secondary: new Container(child: new Image.asset('SEAL_USAF_24.png')),
                ),
                new SwitchListTile(
                  title: const Text('US Marine Corp'),
                  value: _usmc_set,
                  onChanged: (bool value) {
                    setState(() {
                      _onChangedMarines(value);
                    });
                  },
                  secondary: new Container(child: new Image.asset('SEAL_USMC_24.png')),
                ),
                new SwitchListTile(
                  title: const Text('US Coast Guard'),
                  value: _uscg_set,
                  onChanged: (bool value) {
                    setState(() {
                      _onChangedCoastGuard(value);
                    });
                  },
                  secondary: new Container(child: new Image.asset('SEAL_USCG_24.png')),
                ),
              ],
             ),
          )
        )
    );
  }

}