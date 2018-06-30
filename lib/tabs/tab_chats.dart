import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat_model.dart';

List<ChatItem> items = <ChatItem>[];

class ChatsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return chatItem;
      },
    );
  }

  ChatItem chatItem = new ChatItem(
    name: "Joan Cabezas",
    message: "Hey, flutter is awesome !",
    avatarUrl:
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=adult-beard-boy-220453.jpg&fm=jpg",
    time: "08:20",
  );
}
