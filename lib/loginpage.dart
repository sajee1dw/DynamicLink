import 'package:dynamic_links/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  LogInPage({Key key, this.title}) : super(key: key);
final String title;
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios,
                color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        title: Text("Login Page"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.title),
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text(
                  'Profile',
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage(title: 'Demo Profile Page')));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}