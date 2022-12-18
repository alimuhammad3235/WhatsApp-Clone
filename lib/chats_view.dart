import 'package:flutter/material.dart';

class Mychats extends StatelessWidget {
  const Mychats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          chats("James", "Hey, Bro what's up????", "12:02", "images/dp.jpg"),
          chats("Contact 02", "Hey Kiya horaha hai", "11:50", "images/dp1.jpg",
              Icons.check, Colors.grey),
          chats("Contact 03", "Hey Buddy whats up", "09:54", "images/dp2.jpg",
              Icons.done_all, Colors.blue),
          chats("Contact 04", "Is everything All right?", "05:34",
              "images/dp3.jpg", Icons.check, Colors.grey),
          chats("Contact 05", "Set hai", "04:56", "images/dp4.jpg",
              Icons.done_all, Colors.blue),
          chats("Contact 06", "okk done....", "02:34", "images/dp5.jpg"),
          chats("Contact 07", "Ok fine....", "04:23", "images/dp6.jpg",
              Icons.done_all, Colors.blue),
          chats("Contact 08", "check it...", "09:45", "images/dp7.jpg"),
          chats("Contact 09", "Hey Kiya horaha hai", "07:59", "images/dp8.jpg",
              Icons.done_all, Colors.blue),
          chats("Contact 10", "Hey Kiya horaha hai", "03:19", "images/dp9.jpg",
              Icons.check, Colors.grey),
          chats(
              "Contact 11", "Hey Kiya horaha hai", "06:18", "images/dp10.jpg"),
          chats("Contact 12", "Hey Kiya horaha hai", "11:50", "images/dp11.jpg",
              Icons.check, Colors.grey),
          chats("Contact 13", "Hey Kiya horaha hai", "02:03", "images/dp12.jpg",
              Icons.done_all, Colors.blue),
          chats(
              "Contact 14", "Hey Kiya horaha hai", "04:20", "images/dp13.jpg"),
        ],
      ),
    ));
  }
}

chats(text1, text2, time1, String assetsurl,
    [IconData? iconData, Color? iconColor]) {
  return SingleChildScrollView(
    child: Column(
      children: [
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
          subtitle: Text("$text2",
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          trailing: Column(
            children: [
              Text(
                "$time1",
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                iconData,
                color: iconColor,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 05,
        )
      ],
    ),
  );
}
