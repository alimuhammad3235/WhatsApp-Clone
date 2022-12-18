import 'package:flutter/material.dart';

class Callview extends StatelessWidget {
  const Callview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Call_view(),
          Recent_calls(),
          calls("James", "(3) yesterday 12:45", "images/dp.jpg",
              Icons.call_received, Colors.red),
          calls("Contact 03", "(2) December 5, 2:45", "images/dp2.jpg",
              Icons.call_made_rounded, Colors.green),
          calls("Contact 10", "  November 29, 10:45", "images/dp9.jpg",
              Icons.call_made_rounded, Colors.green),
          calls("Contact 06", "(3) October 21, 9:45", "images/dp5.jpg",
              Icons.call_received, Colors.red),
          calls("Contact 11", " October 20, 5:12", "images/dp10.jpg",
              Icons.call_received, Colors.red),
          calls("Contact 02", "(7) October 19, 6:23", "images/dp1.jpg",
              Icons.call_received, Colors.red),
          calls("Contact 05", " October 16, 9:45", "images/dp4.jpg",
              Icons.call_made_rounded, Colors.green),
          calls("James", " October 16 6:55", "images/dp.jpg",
              Icons.call_made_rounded, Colors.green),
          calls("Contact 13", " October 5, 01:15", "images/dp12.jpg",
              Icons.call_made_rounded, Colors.green),
        ]),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Call_view() {
  return const ListTile(
    tileColor: Colors.white,
    title: Text(
      "Create Call link",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    ),
    subtitle: Text("share a link for you whatsapp call",
        style: TextStyle(fontWeight: FontWeight.bold)),
    leading: CircleAvatar(
      backgroundImage: AssetImage("images/link.jpg"),
      radius: 30,
    ),
  );
}

// ignore: non_constant_identifier_names
Recent_calls() {
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
                "Recent Calls",
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

calls(text1, time1, String assetsurl, IconData iconData, Color iconColor) {
  return SingleChildScrollView(
    child: Column(children: [
      ListTile(
        tileColor: Colors.white,
        leading: CircleAvatar(
          backgroundImage: AssetImage(assetsurl),
          radius: 30,
        ),
        title: Text(
          "$text1",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        subtitle: Row(
          children: [
            Icon(
              iconData,
              color: iconColor,
            ),
            Text(
              " $time1",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[900]),
            ),
          ],
        ),
        trailing: const Icon(
          Icons.call_sharp,
          color: Colors.green,
          size: 35,
        ),
      ),
      const SizedBox(
        height: 6,
      ),
    ]),
  );
}
