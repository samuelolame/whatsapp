import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';

class Chat_page extends StatelessWidget {
  const Chat_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dBlack,
      appBar: AppBar(
        backgroundColor: dBlack,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 23,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 23,
            ),
          ),
        ],
      ),
      body: MessageChat(),
      bottomNavigationBar: ButtomSect(),
    );
  }
}

class ButtomSect extends StatelessWidget {
  const ButtomSect({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10,
      child: Container(
        height: 70,
        padding: const EdgeInsets.all(0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: dGreen,
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.emoji_emotions,
                            size: 30,
                            color: dWhite,
                          ),
                          hintText: "message",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        print("message is writing here");
                      },
                      icon: const Icon(
                        Icons.upload_outlined,
                        color: dWhite,
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        print("send message");
                      },
                      icon: const Icon(
                        Icons.image,
                        color: dWhite,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 06,
                right: 2,
              ),
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                color: dGreen,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  print("record a audio");
                },
                icon: const Icon(
                  Icons.mic_none_sharp,
                  color: dWhite,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageChat extends StatelessWidget {
  const MessageChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        color: dWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              "Samuel Oll",
              style: GoogleFonts.inter(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "was online 35 minute ego",
              style: GoogleFonts.inter(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 45,
            ),
            // here i Affected  my  widget
            const TextMessage(
              message: "message",
              date: "12:34",
              sendProfil: "images/photos/4.jpg",
              isReceiver: 1,
              isDirect: 0,
            )
          ],
        ),
      ),
    );
  }
}

class TextMessage extends StatelessWidget {
  final String message, date, sendProfil;
  final int isReceiver, isDirect;
  const TextMessage({
    super.key,
    required this.message,
    required this.date,
    required this.sendProfil,
    required this.isReceiver,
    required this.isDirect,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Row(
        children: [
          isReceiver == 1 && isDirect == 0
              ? Container(
                  margin: const EdgeInsets.only(right: 15),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(sendProfil),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(
                  width: 60,
                  color: dGreen,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check,
                        color: dGreen,
                        size: 13.0,
                      ),
                      const SizedBox(
                        width: 7.0,
                      ),
                      Text(
                        date,
                        style: GoogleFonts.inter(
                            color: dGreen,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
          Expanded(
            child: Container(
              height: 60,
              color: Colors.amber,
              child: Text(
                message,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
