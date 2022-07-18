import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  // const Chats({Key? key}) : super(key: key);
  List<List<dynamic>> chats = [
    [
      "Jason",
      Flexible(
        child: Text(
          "Lorem ipsum dolor sit amet consectetur." * 3,
          style: const TextStyle(
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
          Flexible(
            child: Text(
              "Lorem ipsum dolor sit amet consectetur." * 3,
              style: const TextStyle(
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
          Flexible(
            child: Text(
              "Lorem ipsum dolor sit amet consectetur." * 3,
              style: const TextStyle(
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
          Flexible(
            child: Text(
              "Lorem ipsum dolor sit amet consectetur." * 3,
              style: const TextStyle(
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
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 2.0),
            child: Icon(Icons.photo_size_select_actual,
                color: Color.fromARGB(190, 69, 90, 100)),
          ),
          Flexible(
            child: Text(
              "Lorem ipsum dolor sit amet consectetur." * 3,
              style: const TextStyle(
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
        children: [
          Icon(Icons.check, color: Color.fromARGB(190, 69, 90, 100)),
          Flexible(
            child: Text(
              "Lorem ipsum dolor sit amet consectetur." * 3,
              style: const TextStyle(
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
      Flexible(
        child: Text(
          "Lorem ipsum dolor sit amet consectetur." * 3,
          style: const TextStyle(
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
    return int.parse(chats[0][4]) +
        // int.parse(chats[1][4]) +
        // int.parse(chats[2][4]) +
        // int.parse(chats[3][4]) +
        int.parse(chats[4][4]) +
        int.parse(chats[5][4]) +
        // int.parse(chats[6][4]) +
        // int.parse(chats[7][4]) +
        int.parse(chats[8][4]) +
        int.parse(chats[9][4]);
  }

  @override
  Widget build(BuildContext context) {
    _chats(String name, Widget message, String image, String time,
        String counter) {
      Size size = MediaQuery.of(context).size;
      double _messageWidth = 0;
      return LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 480) {
          _messageWidth = size.width * 0.74;
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
                      InkWell(
                        onTap: () {},
                        radius: 27,
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage(image),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                          left: 28.0,
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
                                textAlign: TextAlign.left,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              message,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  counter.isEmpty
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
                      : Padding(
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
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          _chats(
            chats[0][0],
            chats[0][1],
            chats[0][2],
            chats[0][3],
            chats[0][4],
          ),
          _chats(
            chats[1][0],
            chats[1][1],
            chats[1][2],
            chats[1][3],
            chats[1][4],
          ),
          _chats(
            chats[2][0],
            chats[2][1],
            chats[2][2],
            chats[2][3],
            chats[2][4],
          ),
          _chats(
            chats[3][0],
            chats[3][1],
            chats[3][2],
            chats[3][3],
            chats[3][4],
          ),
          _chats(
            chats[4][0],
            chats[4][1],
            chats[4][2],
            chats[4][3],
            chats[4][4],
          ),
          _chats(
            chats[5][0],
            chats[5][1],
            chats[5][2],
            chats[5][3],
            chats[5][4],
          ),
          _chats(
            chats[6][0],
            chats[6][1],
            chats[6][2],
            chats[6][3],
            chats[6][4],
          ),
          _chats(
            chats[7][0],
            chats[7][1],
            chats[7][2],
            chats[7][3],
            chats[7][4],
          ),
          _chats(
            chats[8][0],
            chats[8][1],
            chats[8][2],
            chats[8][3],
            chats[8][4],
          ),
          _chats(
            chats[9][0],
            chats[9][1],
            chats[9][2],
            chats[9][3],
            chats[9][4],
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
