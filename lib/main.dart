import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    _showSnackBar() {
        final snackBar = new SnackBar(
            content: new Text("Hello guys !"),
            duration: new Duration(seconds: 3),
            backgroundColor: Colors.green,
            action: new SnackBarAction(
                label: 'OK',
                onPressed: () {
                    print("Hello guys !");
                },
                textColor: Colors.white,
            )
        );
        _scaffoldKey.currentState.showSnackBar(snackBar);
    }

    @override 
    Widget build(BuildContext buildContext) {
        return new MaterialApp(
            title: "My App",
            home: new Scaffold(
                key: _scaffoldKey,
                appBar: new AppBar(
                    title: new Text("SnackBar"),
                    actions: <Widget>[
                        new IconButton(
                            icon: new Icon(Icons.info),
                            onPressed: () {
                                _showSnackBar();
                            },
                        )
                    ],
                ),
                body: new Text("Body"),
            ),
        );
    }
}