import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  String name;
  String message;
  String time;
  String avatarUrl;

  ChatItem({this.name, this.message, this.time, this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(indent: 72.0,
          height: 2.0,
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
              ),
              Text(
                time,
                style: TextStyle(color: Colors.grey, fontSize: 13.0),
              ),
            ],
          ),
          subtitle: Container(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              message,
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl),
            backgroundColor: Colors.grey,
            foregroundColor: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }
}
