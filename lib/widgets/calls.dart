import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  // const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<dynamic>> calls = [
      [
        "Jason",
        "(3) Today, 18:29",
        "assets/images/avatar-1.jpg",
        const Icon(Icons.phone),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Transform.rotate(
            angle: 200,
            child: Icon(Icons.arrow_forward,
                color: Theme.of(context).primaryColor),
          ),
        ),
      ],
      [
        "Marc",
        "Today, 18:01",
        "assets/images/avatar-2.jpg",
        const Icon(Icons.phone),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Transform.rotate(
            angle: 200,
            child: Icon(Icons.arrow_forward,
                color: Theme.of(context).primaryColor),
          ),
        ),
      ],
      [
        "Sophie",
        "(2) Today, 13:03",
        "assets/images/avatar-3.jpg",
        const Icon(Icons.videocam),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Transform.rotate(
            angle: 200,
            child: const Icon(Icons.arrow_back, color: Colors.red),
          ),
        ),
      ],
      [
        "Jennifer",
        "Yesterday, 16:21",
        "assets/images/avatar-4.jpg",
        const Icon(Icons.phone),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Transform.rotate(
            angle: 200,
            child: const Icon(Icons.arrow_back, color: Colors.red),
          ),
        ),
      ],
      [
        "William",
        "Yesterday, 09:38",
        "assets/images/avatar-5.jpg",
        const Icon(Icons.phone),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Transform.rotate(
            angle: 200,
            child:
                Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          ),
        ),
      ],
      [
        "Benedith",
        "(3) 14 July, 21:47",
        "assets/images/avatar-6.jpg",
        const Icon(Icons.videocam),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Transform.rotate(
            angle: 200,
            child: Icon(Icons.arrow_forward,
                color: Theme.of(context).primaryColor),
          ),
        ),
      ],
      [
        "John",
        "12 July, 16:21",
        "assets/images/avatar-7.jpg",
        const Icon(Icons.videocam),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Transform.rotate(
            angle: 200,
            child: const Icon(Icons.arrow_back, color: Colors.red),
          ),
        ),
      ],
      [
        "Melissa",
        "12 July, 09:38",
        "assets/images/avatar-8.jpg",
        const Icon(Icons.phone),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Transform.rotate(
            angle: 200,
            child: const Icon(Icons.arrow_back, color: Colors.red),
          ),
        ),
      ],
      [
        "Maggie",
        "(3) 11 July, 15:44",
        "assets/images/avatar-9.jpg",
        const Icon(Icons.phone),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Transform.rotate(
            angle: 200,
            child:
                Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          ),
        ),
      ],
      [
        "Thomas",
        "11 July, 14:54",
        "assets/images/avatar-10.jpg",
        const Icon(Icons.phone),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Transform.rotate(
            angle: 200,
            child:
                Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          ),
        ),
      ],
    ];

    _myCalls({
      required String name,
      required String info,
      required String image,
      required Icon callIcon,
      required Padding call,
    }) {
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
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage(image),
                          backgroundColor:
                              const Color.fromARGB(60, 69, 90, 100),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                          left: 20.0, //was 28
                          bottom: 5.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              name,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Row(
                              children: [
                                call,
                                Text(
                                  info,
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: IconButton(
                      icon: callIcon,
                      color: Theme.of(context).primaryColor,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          _myCalls(
            name: calls[0][0],
            info: calls[0][1],
            image: calls[0][2],
            callIcon: calls[0][3],
            call: calls[0][4],
          ),
          _myCalls(
            name: calls[1][0],
            info: calls[1][1],
            image: calls[1][2],
            callIcon: calls[1][3],
            call: calls[1][4],
          ),
          _myCalls(
            name: calls[2][0],
            info: calls[2][1],
            image: calls[2][2],
            callIcon: calls[2][3],
            call: calls[2][4],
          ),
          _myCalls(
            name: calls[3][0],
            info: calls[3][1],
            image: calls[3][2],
            callIcon: calls[3][3],
            call: calls[3][4],
          ),
          _myCalls(
            name: calls[4][0],
            info: calls[4][1],
            image: calls[4][2],
            callIcon: calls[4][3],
            call: calls[4][4],
          ),
          _myCalls(
            name: calls[5][0],
            info: calls[5][1],
            image: calls[5][2],
            callIcon: calls[5][3],
            call: calls[5][4],
          ),
          _myCalls(
            name: calls[6][0],
            info: calls[6][1],
            image: calls[6][2],
            callIcon: calls[6][3],
            call: calls[6][4],
          ),
          _myCalls(
            name: calls[7][0],
            info: calls[7][1],
            image: calls[7][2],
            callIcon: calls[7][3],
            call: calls[7][4],
          ),
          _myCalls(
            name: calls[8][0],
            info: calls[8][1],
            image: calls[8][2],
            callIcon: calls[8][3],
            call: calls[8][4],
          ),
          _myCalls(
            name: calls[9][0],
            info: calls[9][1],
            image: calls[9][2],
            callIcon: calls[9][3],
            call: calls[9][4],
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
          child: const Icon(Icons.add_call),
        ),
      ),
    );
  }
}
