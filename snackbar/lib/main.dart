import 'package:flutter/material.dart';

void main() => runApp(SnackbarDemo());

class SnackbarDemo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('SnackbarDemo')), 
        body: SnackBarPage()),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: RaisedButton(
      onPressed: () {
        final snackBar = SnackBar(
            content: Text('Yay! A snackBar'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
              },
            )
          );
          Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Text('Show SnackBar')
    )
  );
  
  }
}
