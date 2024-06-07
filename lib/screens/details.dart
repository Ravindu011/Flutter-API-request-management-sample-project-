import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/User.dart';

class UserDetail extends StatelessWidget {

  late final User user;

  UserDetail(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Row(
          children: <Widget>[
            // CircleAvatar(
            //   backgroundImage: NetworkImage(user.avatar),
            // ),
            Text(user.name,style: TextStyle(
              color: Colors.white
            ),),
          ],
        ),

      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(user.avatar),
            ),
            Padding(padding: const EdgeInsets.all(8.0),
            child: Text(user.name),
            ),
            Padding(padding: const EdgeInsets.all(8.0),
              child: Text(user.index),
            ),
            Padding(padding: const EdgeInsets.all(8.0),
              child: Text(user.email),
            ),
          ],
        ),
      ),
    );
  }
}
