import 'package:flutter/material.dart';
import 'package:whatsapp_clone/tabs/tab_calls.dart';
import 'package:whatsapp_clone/tabs/tab_camera.dart';
import 'package:whatsapp_clone/tabs/tab_chats.dart';
import 'package:whatsapp_clone/tabs/tab_status.dart';

class WhatsappHome extends StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Whatsapp"),
        elevation: 0.8,
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              debugPrint("search clicked");
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              debugPrint("more clicked");
            },
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraTab(),
          ChatsTab(),
          StatusTab(),
          CallsTab(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => debugPrint("open chats"),
      ),
    );
  }
}
