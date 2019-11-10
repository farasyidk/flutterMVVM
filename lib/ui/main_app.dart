import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mvvm_mobx/core/viewmodels/user_mobx.dart';
import 'package:mvvm_mobx/ui/user_card.dart';

final UserMobx userMobx = UserMobx();
final Random random = new Random();

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo MVVM MobX"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Observer(
                builder: (context) => userMobx.user != null ? UserCard(userMobx.user) : Text("klik Tombol +"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            userMobx.getUser(random.nextInt(10) + 1);
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ));
  }
}
