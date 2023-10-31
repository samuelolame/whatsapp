import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/Chat_page.dart';

const dGreen = Color(0xFF2ac0a6);
const dWhite = Colors.white;
const dBlack = Colors.black87;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp Design",
      home: HomePge(),
    );
  }
}

class HomePge extends StatelessWidget {
  const HomePge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dBlack,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: dWhite,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: dWhite,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SectionMenu(),
          FavoriteItem(),
          Expanded(
            child: MessageItem(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: dGreen,
        onPressed: () {
          print("Fonrti is good!!");
        },
        child: const Icon(
          Icons.edit,
          size: 30,
        ),
      ),
    );
  }
}

class SectionMenu extends StatelessWidget {
  SectionMenu({super.key});

  final List _menuItems = [
    "Message",
    "Online",
    "Groupe",
    "Calls",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: dBlack,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: _menuItems.map(
              (item) {
                return Container(
                  margin: const EdgeInsets.only(
                    right: 55,
                  ),
                  child: Text(
                    item,
                    style: const TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                      fontSize: 29,
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}

class FavoriteItem extends StatelessWidget {
  FavoriteItem({super.key});
  final List _favorite = [
    {
      "pseudo": 'Semy',
      "photo": 'images/photos/1.jpg',
    },
    {
      "pseudo": 'Emery',
      "photo": 'images/photos/2.jpg',
    },
    {
      "pseudo": 'Esthy',
      "photo": 'images/photos/3.jpg',
    },
    {
      "pseudo": 'Grace',
      "photo": 'images/photos/4.jpg',
    },
    {
      "pseudo": 'Mom',
      "photo": 'images/photos/5.jpg',
    },
    {
      "pseudo": 'Furaha',
      "photo": 'images/photos/6.jpg',
    },
    {
      "pseudo": 'Daniella',
      "photo": 'images/photos/7.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        decoration: const BoxDecoration(
          color: dGreen,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: const Text(
                    'Contact Favorie',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: dWhite,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print("Emery is okey!!!");
                  },
                  icon: const Icon(
                    Icons.more_horiz,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _favorite.map(
                  (favorite) {
                    return Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              backgroundImage: AssetImage(
                                favorite["photo"],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            favorite['pseudo'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: dWhite,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageItem extends StatelessWidget {
  MessageItem({super.key});
  final List messages = [
    {
      "sendProfil": 'images/photos/7.jpg',
      "sendName": 'Daniella',
      "message": 'Coucus',
      "unRead": 0,
      "date": '16:35',
    },
    {
      "sendProfil": 'images/photos/6.jpg',
      "sendName": 'Mam',
      "message": 'How about you my Daniella',
      "unRead": 2,
      "date": '16:03',
    },
    {
      "sendProfil": 'images/photos/7.jpg',
      "sendName": 'Daniella',
      "message": 'I am okey mom and you??',
      "unRead": 6,
      "date": '15:16',
    },
    {
      "sendProfil": 'images/photos/2.jpg',
      "sendName": 'Emery',
      "message": 'I am at home now',
      "unRead": 0,
      "date": '13:58',
    },
    {
      "sendProfil": 'images/photos/3.jpg',
      "sendName": 'Esthy',
      "message": 'good morning!!!, What up?',
      "unRead": 5,
      "date": '10:42',
    },
    {
      "sendProfil": 'images/photos/4.jpg',
      "sendName": 'Grace',
      "message": 'I am okey!!! how are you going',
      "unRead": 2,
      "date": '09:30',
    },
    {
      "sendProfil": 'images/photos/3.jpg',
      "sendName": 'Esthy',
      "message": 'good!!!,Where are you now?',
      "unRead": 0,
      "date": '09:05',
    },
    {
      "sendProfil": 'images/photos/4.jpg',
      "sendName": 'Grace',
      "message": 'I am okey!I am at home with Eme',
      "unRead": 3,
      "date": '07:31',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: messages.map(
        (sam) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Chat_page(),
                ),
              );
            },
            splashColor: Colors.lightGreen,
            child: Container(
              padding: const EdgeInsets.only(left: 30, right: 10, top: 15),
              child: Row(
                children: [
                  Container(
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      color: dGreen,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          sam['sendProfil'],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  sam['sendName'],
                                  style: GoogleFonts.inter(
                                      color: Colors.blueGrey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      sam['message'],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black87),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  sam['date'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                sam['unRead'] != 0
                                    ? Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: const BoxDecoration(
                                          color: dGreen,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Text(
                                          sam['unRead'].toString(),
                                        ),
                                      )
                                    : Container(),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: Colors.blueGrey,
                          height: 0.5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ).toList()),
    );
  }
}
