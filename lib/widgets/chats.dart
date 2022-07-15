import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<String>> chats = [
      [
        "Jason",
        "Lorem ipsum dolor sit amet consectetur." * 3,
        "assets/images/avatar-1.jpg",
        "14:27",
        "6"
      ],
      [
        "Marc",
        "Lorem ipsum dolor sit amet consectetur." * 3,
        "assets/images/avatar-2.jpg",
        "13:50",
        ""
      ],
      [
        "Sophie",
        "Lorem ipsum dolor sit amet consectetur." * 3,
        "assets/images/avatar-3.jpg",
        "13:22",
        ""
      ],
      [
        "Jennifer",
        "Lorem ipsum dolor sit amet consectetur." * 3,
        "assets/images/avatar-4.jpg",
        "12:52",
        ""
      ],
      [
        "William",
        "Lorem ipsum dolor sit amet consectetur." * 3,
        "assets/images/avatar-5.jpg",
        "12:22",
        "1"
      ],
      [
        "Benedith",
        "Lorem ipsum dolor sit amet consectetur." * 3,
        "assets/images/avatar-6.jpg",
        "10:52",
        "2"
      ],
      [
        "John",
        "Lorem ipsum dolor sit amet consectetur." * 3,
        "assets/images/avatar-7.jpg",
        "Yesterday",
        ""
      ],
      [
        "Melissa",
        "Lorem ipsum dolor sit amet consectetur." * 3,
        "assets/images/avatar-8.jpg",
        "Yesterday",
        "20"
      ],
      [
        "Maggie",
        "Lorem ipsum dolor sit amet consectetur." * 3,
        "assets/images/avatar-9.jpg",
        "13/07/2022",
        "20"
      ],
      [
        "Thomas",
        "Lorem ipsum dolor sit amet consectetur." * 3,
        "assets/images/avatar-10.jpg",
        "13/07/2022",
        "20"
      ],
    ];

    _chats(String name, String message, String image, String time,
        String counter) {
      Size size = MediaQuery.of(context).size;
      double _messageWidth = 0;
      return LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 480) {
          _messageWidth = size.width * 0.75;
        } else if (constraints.maxWidth > 330) {
          _messageWidth = size.width * 0.5;
        } else {
          _messageWidth = size.width * 0.25;
        }
        return SizedBox(
          width: double.infinity,
          height: 90,
          child: Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(image),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          left: 28.0,
                          bottom: 8.0,
                        ),
                        child: SizedBox(
                          width: _messageWidth,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                name,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  message,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  counter.isEmpty
                      ? Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Column(
                            children: [
                              Text(
                                time,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                time,
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(5.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.lightGreen,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                      child: Text(counter,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600))),
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
      });
    }

    return Scaffold(
      body: ListView(
        children: [
          _chats(
              chats[0][0], chats[0][1], chats[0][2], chats[0][3], chats[0][4]),
          _chats(
              chats[1][0], chats[1][1], chats[1][2], chats[1][3], chats[1][4]),
          _chats(
              chats[2][0], chats[2][1], chats[2][2], chats[2][3], chats[2][4]),
          _chats(
              chats[3][0], chats[3][1], chats[3][2], chats[3][3], chats[3][4]),
          _chats(
              chats[4][0], chats[4][1], chats[4][2], chats[4][3], chats[4][4]),
          _chats(
              chats[5][0], chats[5][1], chats[5][2], chats[5][3], chats[5][4]),
          _chats(
              chats[6][0], chats[6][1], chats[6][2], chats[6][3], chats[6][4]),
          _chats(
              chats[7][0], chats[7][1], chats[7][2], chats[7][3], chats[7][4]),
          _chats(
              chats[8][0], chats[8][1], chats[8][2], chats[8][3], chats[8][4]),
          _chats(
              chats[9][0], chats[9][1], chats[9][2], chats[9][3], chats[9][4]),
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
