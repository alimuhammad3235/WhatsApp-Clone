import 'package:flutter/material.dart';
import 'package:wcolne/call_view.dart';
import 'package:wcolne/chats_view.dart';
import 'package:wcolne/status_view.dart';

class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 10, 159, 15),
          title: const Text(
            "WhatsApp",
            style: TextStyle(fontSize: 25),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
          bottom: TabBar(controller: _controller, tabs: const [
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ]),
        ),
        body: TabBarView(
          controller: _controller,
          children: const [
            Mychats(),
            Status1(),
            Callview(),
          ],
        ));
  }
}
