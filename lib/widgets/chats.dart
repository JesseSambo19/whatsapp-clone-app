import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  // const Chats({Key? key}) : super(key: key);
  List<List<dynamic>> chats = [
    [
      "Jason",
      const Flexible(
        child: Text(
          "Lorem ipsum dolor sit amet consectetur. ",
          style: TextStyle(
            // fontFamily: "OpenSans",
            fontSize: 18,
            color: Color.fromARGB(190, 69, 90, 100),
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      "assets/images/avatar-1.jpg",
      "14:27",
      "2"
    ],
    [
      "Marc",
      Row(
        children: [
          Stack(
            children: const [
              Icon(Icons.check, color: Colors.lightBlue),
              Positioned(
                  right: 5, child: Icon(Icons.check, color: Colors.lightBlue)),
            ],
          ),
          const Flexible(
            child: Text(
              "Lorem ipsum dolor sit amet consectetur. ",
              style: TextStyle(
                // fontFamily: "OpenSans",
                fontSize: 18,
                color: Color.fromARGB(190, 69, 90, 100),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      "assets/images/avatar-2.jpg",
      "13:50",
      ""
    ],
    [
      "Sophie",
      Row(
        children: [
          Stack(
            children: const [
              Icon(Icons.check, color: Colors.lightBlue),
              Positioned(
                  right: 5, child: Icon(Icons.check, color: Colors.lightBlue)),
            ],
          ),
          const Flexible(
            child: Text(
              "Lorem ipsum dolor sit amet consectetur. ",
              style: TextStyle(
                // fontFamily: "OpenSans",
                fontSize: 18,
                color: Color.fromARGB(190, 69, 90, 100),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      "assets/images/avatar-3.jpg",
      "13:22",
      ""
    ],
    [
      "Jennifer",
      Row(
        children: [
          Stack(
            children: const [
              Icon(
                Icons.check,
                color: Color.fromARGB(190, 69, 90, 100),
              ),
              Positioned(
                  right: 5,
                  child: Icon(
                    Icons.check,
                    color: Color.fromARGB(190, 69, 90, 100),
                  )),
            ],
          ),
          const Flexible(
            child: Text(
              "Lorem ipsum dolor sit amet consectetur. ",
              style: TextStyle(
                // fontFamily: "OpenSans",
                fontSize: 18,
                color: Color.fromARGB(190, 69, 90, 100),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      "assets/images/avatar-4.jpg",
      "12:52",
      ""
    ],
    [
      "William",
      Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(right: 2.0),
            child: Icon(Icons.photo_size_select_actual,
                color: Color.fromARGB(190, 69, 90, 100)),
          ),
          Flexible(
            child: Text(
              "Lorem ipsum dolor sit amet consectetur. ",
              style: TextStyle(
                // fontFamily: "OpenSans",
                fontSize: 18,
                color: Color.fromARGB(190, 69, 90, 100),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      "assets/images/avatar-5.jpg",
      "12:22",
      "1"
    ],
    [
      "Benedith",
      Row(
        children: const [
          Icon(Icons.mic, color: Color.fromRGBO(37, 211, 102, 1)),
          Flexible(
            child: Text(
              "0:21",
              style: TextStyle(
                // fontFamily: "OpenSans",
                fontSize: 18,
                color: Color.fromARGB(190, 69, 90, 100),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      "assets/images/avatar-6.jpg",
      "10:52",
      "1"
    ],
    [
      "John",
      Row(
        children: const [
          Icon(Icons.check, color: Color.fromARGB(190, 69, 90, 100)),
          Flexible(
            child: Text(
              "Lorem ipsum dolor sit amet consectetur. ",
              style: TextStyle(
                // fontFamily: "OpenSans",
                fontSize: 18,
                color: Color.fromARGB(190, 69, 90, 100),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      "assets/images/avatar-7.jpg",
      "Yesterday",
      ""
    ],
    [
      "Melissa",
      Row(
        children: const [
          Icon(Icons.check, color: Color.fromARGB(190, 69, 90, 100)),
          Padding(
            padding: EdgeInsets.only(left: 2.0, right: 2.0),
            child: Icon(Icons.photo_size_select_actual,
                color: Color.fromARGB(190, 69, 90, 100)),
          ),
          Flexible(
            child: Text(
              "Photo",
              style: TextStyle(
                // fontFamily: "OpenSans",
                fontSize: 18,
                color: Color.fromARGB(190, 69, 90, 100),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      "assets/images/avatar-8.jpg",
      "Yesterday",
      ""
    ],
    [
      "Maggie",
      Row(
        children: const [
          Icon(Icons.videocam, color: Color.fromARGB(190, 69, 90, 100)),
          Flexible(
            child: Text(
              "Video",
              style: TextStyle(
                // fontFamily: "OpenSans",
                fontSize: 18,
                color: Color.fromARGB(190, 69, 90, 100),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      "assets/images/avatar-9.jpg",
      "13/07/2022",
      "1"
    ],
    [
      "Thomas",
      const Flexible(
        child: Text(
          "Lorem ipsum dolor sit amet consectetur. ",
          style: TextStyle(
            // fontFamily: "OpenSans",
            fontSize: 18,
            color: Color.fromARGB(190, 69, 90, 100),
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      "assets/images/avatar-10.jpg",
      "13/07/2022",
      "4"
    ],
  ];

  result() {
    var chatsCounter = 0;
    for (int i = 0; i < 10; i++) {
      if (chats[i][4].isEmpty) {
        chatsCounter += 0;
      } else {
        chatsCounter += 1;
      }
    }
    return chatsCounter;
  }

  @override
  Widget build(BuildContext context) {
    _chats({
      required String name,
      required Widget message,
      required String image,
      required String time,
      required String messagesCounter,
    }) {
      Size size = MediaQuery.of(context).size;
      double _messageWidth = 0;
      return LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 480) {
          _messageWidth = size.width * 0.7;
        } else if (constraints.maxWidth > 330) {
          _messageWidth = size.width * 0.45;
        } else {
          _messageWidth = size.width * 0.4;
        }
        return InkWell(
          onTap: () {},
          child: SizedBox(
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
                        InkWell(
                          onTap: () {},
                          radius: 27,
                          child: CircleAvatar(
                            radius: 27,
                            backgroundImage: AssetImage(image),
                            backgroundColor: const Color.fromARGB(60, 69, 90, 100),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5.0,
                            left: 20.0,
                            bottom: 5.0,
                          ),
                          child: SizedBox(
                            width: _messageWidth,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  name,
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                message,
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    messagesCounter.isEmpty
                        ? Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              children: [
                                Text(
                                  time,
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        ?.color,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Positioned(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    time,
                                    style: const TextStyle(
                                      color: Color.fromRGBO(37, 211, 102, 1),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(5.0),
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(37, 211, 102, 1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          messagesCounter,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          _chats(
            name: chats[0][0],
            message: chats[0][1],
            image: chats[0][2],
            time: chats[0][3],
            messagesCounter: chats[0][4],
          ),
          _chats(
            name: chats[1][0],
            message: chats[1][1],
            image: chats[1][2],
            time: chats[1][3],
            messagesCounter: chats[1][4],
          ),
          _chats(
            name: chats[2][0],
            message: chats[2][1],
            image: chats[2][2],
            time: chats[2][3],
            messagesCounter: chats[2][4],
          ),
          _chats(
            name: chats[3][0],
            message: chats[3][1],
            image: chats[3][2],
            time: chats[3][3],
            messagesCounter: chats[3][4],
          ),
          _chats(
            name: chats[4][0],
            message: chats[4][1],
            image: chats[4][2],
            time: chats[4][3],
            messagesCounter: chats[4][4],
          ),
          _chats(
            name: chats[5][0],
            message: chats[5][1],
            image: chats[5][2],
            time: chats[5][3],
            messagesCounter: chats[5][4],
          ),
          _chats(
            name: chats[6][0],
            message: chats[6][1],
            image: chats[6][2],
            time: chats[6][3],
            messagesCounter: chats[6][4],
          ),
          _chats(
            name: chats[7][0],
            message: chats[7][1],
            image: chats[7][2],
            time: chats[7][3],
            messagesCounter: chats[7][4],
          ),
          _chats(
            name: chats[8][0],
            message: chats[8][1],
            image: chats[8][2],
            time: chats[8][3],
            messagesCounter: chats[8][4],
          ),
          _chats(
            name: chats[9][0],
            message: chats[9][1],
            image: chats[9][2],
            time: chats[9][3],
            messagesCounter: chats[9][4],
          ),
          const SizedBox(
            width: double.infinity,
            height: 80,
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}
