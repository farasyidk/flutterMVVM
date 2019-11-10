import 'package:flutter/material.dart';
import 'package:mvvm_mobx/core/models/user_model.dart';

class UserCard extends StatelessWidget {
  final User user;

  UserCard(this.user);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(64, 75, 96, .9),
            borderRadius: BorderRadius.circular(4)),
        padding: EdgeInsets.all(10),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          leading: Container(
            padding: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(width: 1, color: Colors.white24)
              ),
            ),
            child: Image.network(user.avatar),
          ),
          title: Text(
            user.name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
          ),
          subtitle: Text(
            user.email,
            style: TextStyle(color: Colors.yellowAccent)
          ),
        ),
      ),
    );
  }
}
