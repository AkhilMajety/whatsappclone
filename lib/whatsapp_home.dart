import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/call_screen.dart';
import 'package:whatsappclone/pages/camera_screen.dart';
import 'package:whatsappclone/pages/chat_screen.dart';
import 'package:whatsappclone/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  final List<CameraDescription> cameras;
  WhatsAppHome({this.cameras});
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool showFab = true;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0.7,
          bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.camera_alt),
              ),
              new Tab(text: "CHATS"),
              new Tab(text: "STATUS"),
              new Tab(text: "CALLS"),
            ],
          ),
          actions: <Widget>[
            new Icon(
              Icons.search,
              color: Colors.amberAccent,
            ),
            new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
            new Icon(
              Icons.more_vert,
              color: Colors.amberAccent,
            )
          ],
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new CameraScreen(widget.cameras),
            new ChatScreen(),
            new StatusScreen(),
            new CallScreen(),
          ],
        ),
        floatingActionButton: showFab
            ? FloatingActionButton(
                backgroundColor: Theme.of(context).accentColor,
                child: new Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                onPressed: () => print("open chats"),
              )
            : null);
  }
}
