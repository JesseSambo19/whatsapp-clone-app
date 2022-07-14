import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<String>> chats = [
      [
        "Jason",
        "Lorem ipsum dolor sit amet consectetur.",
        "assets/images/avatar-1.jpg",
        "17:19"
      ],
      [
        "Marc",
        "Lorem ipsum dolor sit amet consectetur.",
        "assets/images/avatar-2.jpg",
        "17:19"
      ],
      [
        "Sophie",
        "Lorem ipsum dolor sit amet consectetur.",
        "assets/images/avatar-3.jpg",
        "17:19"
      ],
      [
        "Jennifer",
        "Lorem ipsum dolor sit amet consectetur.",
        "assets/images/avatar-4.jpg",
        "17:19"
      ],
      [
        "William",
        "Lorem ipsum dolor sit amet consectetur.",
        "assets/images/avatar-5.jpg",
        "17:19"
      ],
      [
        "Benedith",
        "Lorem ipsum dolor sit amet consectetur.",
        "assets/images/avatar-6.jpg",
        "17:19"
      ],
      [
        "John",
        "Lorem ipsum dolor sit amet consectetur.",
        "assets/images/avatar-7.jpg",
        "17:19"
      ],
      [
        "Melissa",
        "Lorem ipsum dolor sit amet consectetur.",
        "assets/images/avatar-8.jpg",
        "17:19"
      ],
      [
        "Maggie",
        "Lorem ipsum dolor sit amet consectetur.",
        "assets/images/avatar-9.jpg",
        "17:19"
      ],
      [
        "Thomas",
        "Lorem ipsum dolor sit amet consectetur.",
        "assets/images/avatar-10.jpg",
        "17:19"
      ],
    ];

    _chats(String name, String message, String image, String time) {
      return SizedBox(
        width: double.infinity,
        height: 90,
        child: Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(image),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    left: 28.0,
                  ),
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(message,
                            style: const TextStyle(
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30.0),
                  child: Column(
                    children: [
                      Text(
                        time,
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          _chats(chats[0][0], chats[0][1], chats[0][2], chats[0][3]),
          _chats(chats[1][0], chats[1][1], chats[1][2], chats[1][3]),
          _chats(chats[2][0], chats[2][1], chats[2][2], chats[2][3]),
          _chats(chats[3][0], chats[3][1], chats[3][2], chats[3][3]),
          _chats(chats[4][0], chats[4][1], chats[4][2], chats[4][3]),
          _chats(chats[5][0], chats[5][1], chats[5][2], chats[5][3]),
          _chats(chats[6][0], chats[6][1], chats[6][2], chats[6][3]),
          _chats(chats[7][0], chats[7][1], chats[7][2], chats[7][3]),
          _chats(chats[8][0], chats[8][1], chats[8][2], chats[8][3]),
          _chats(chats[9][0], chats[9][1], chats[9][2], chats[9][3]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.message),
      ),
    );
  }
}
