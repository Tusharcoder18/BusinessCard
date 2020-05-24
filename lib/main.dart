import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(BusinessCard());
}

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Builder(
          builder: (context) => SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage("images/pp.jpg"),
                ),
                Text(
                  'P.Tushar',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Learner | Student',
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5),
                ),
                Divider(
                  color: Colors.white,
                  height: 30.0,
                  indent: 100.0,
                  endIndent: 100.0,
                  thickness: 3.0,
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'ghostridertushar@gmail.com',
                      style: TextStyle(
                        color: Colors.teal,
                      ),
                    ),
                    onTap: () {
                      Clipboard.setData(new ClipboardData(
                          text: 'ghostridertushar@gmail.com'));
                      SnackBar snackbar = SnackBar(
                        content: Text('Copied to Clipboard!'),
                        duration: Duration(seconds: 3),
                      );
                      Scaffold.of(context).showSnackBar(snackbar);
                    },
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+91 6304146271',
                      style: TextStyle(
                        color: Colors.teal,
                      ),
                    ),
                    onTap: () {
                      print('Tapped!');
                      Clipboard.setData(
                          new ClipboardData(text: '+91 630414XXXX'));
                      SnackBar snackbar = SnackBar(
                        content: Text('Copied to Clipboard!'),
                        duration: Duration(seconds: 3),
                      );
                      Scaffold.of(context).showSnackBar(snackbar);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
