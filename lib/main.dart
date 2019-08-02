import 'package:drawerapp/new_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS
            ? Colors.grey[57]
            : null,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "NTV Drawer App",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.black87,
            ),
          ),
          elevation:
              defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text("Rishabh Dev"),
                accountEmail: Text("rishabhdev.work@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.black54
                          : Colors.white,
                  child: Text("RD"),
                ),
              ),
              ListTile(
                title: Text("Directions"),
                trailing: Icon(Icons.directions),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => NewPage("Directions")));
                },
              ),
              ListTile(
                title: Text("History"),
                trailing: Icon(Icons.history),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => NewPage("History")));
                },
              ),
              Divider(),
              ListTile(
                title: Text("Close"),
                trailing: Icon(Icons.close),
                onTap: () => Navigator.of(context).pop(),
              )
            ],
          ),
        ),
        body: Container(
          child: Center(
            child: Text("Yo Hommies!"),
          ),
        ));
  }
}
