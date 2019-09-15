import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(9.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/16449638?s=460&v=4"),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text("SL"),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://avatars2.githubusercontent.com/u/16449638?s=460&v=4"),
          placeholder: AssetImage("assets/jar-loading.gif"),
        ),
      ),
    );
  }
}