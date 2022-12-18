import 'package:flutter/material.dart';

class Status1 extends StatelessWidget {
  const Status1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            status(),
            statusr(),
            statusview("images/dp.jpg", "James", "Today at 6:00"),
            statusview("images/dp6.jpg", "Contact 07", "Today at 1:00"),
            statusview("images/dp8.jpg", "Contact 09", "Yesterday at 12:00"),
            statusview("images/dp12.jpg", "Contact 13", "Yesterday at 4:00"),
            viewed_status(),
            statusview("images/dp7.jpg", "Contact 08", "Today at 2:30"),
            statusview("images/dp3.jpg", "Contact 04", "Yesterday at 3:34"),
            statusview("images/dp2.jpg", "Contact 03", "Yesterday at 4:44"),
          ],
        ),
      ),
    );
  }
}

status() {
  return SingleChildScrollView(
    child: Column(
      children: [
        ListTile(
          tileColor: Colors.white,
          leading: Stack(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/dp4.jpg"),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.greenAccent[700],
                  radius: 10,
                  child: const Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          title: const Text(
            "My Status",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          subtitle: const Text("Tap to add status update",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        const SizedBox(
          height: 05,
        ),
      ],
    ),
  );
}

statusr() {
  return Column(
    children: [
      Container(
        height: 40,
        color: Colors.transparent,
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Recent Updates",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 5,
      ),
    ],
  );
}

statusview(assetsurl, text1, time1) {
  return Column(
    children: [
      ListTile(
          tileColor: Colors.white,
          leading: CircleAvatar(
            backgroundImage: AssetImage("$assetsurl"),
            radius: 30,
          ),
          title: Text(
            "$text1",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(
            " $time1",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[900]),
          )),
      const SizedBox(
        height: 6,
      )
    ],
  );
}

// ignore: non_constant_identifier_names
viewed_status() {
  return Column(
    children: [
      Container(
        height: 40,
        color: Colors.transparent,
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Viewed Updates",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 5,
      ),
    ],
  );
}
