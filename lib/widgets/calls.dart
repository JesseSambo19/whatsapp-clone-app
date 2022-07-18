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

    _myCalls(
        String name, String info, String image, Icon callIcon, Padding call) {
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
                      radius: 27,
                      backgroundImage: AssetImage(image),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5.0,
                        left: 28.0,
                        bottom: 5.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            name,
                            textAlign: TextAlign.left,
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
                  padding: const EdgeInsets.only(top: 0, left: 30.0),
                  child: IconButton(
                    icon: callIcon,
                    color: Theme.of(context).textTheme.subtitle2?.color,
                    onPressed: () {},
                  ),
                ),
              ],
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
            calls[0][0],
            calls[0][1],
            calls[0][2],
            calls[0][3],
            calls[0][4],
          ),
          _myCalls(
            calls[1][0],
            calls[1][1],
            calls[1][2],
            calls[1][3],
            calls[1][4],
          ),
          _myCalls(
            calls[2][0],
            calls[2][1],
            calls[2][2],
            calls[2][3],
            calls[2][4],
          ),
          _myCalls(
            calls[3][0],
            calls[3][1],
            calls[3][2],
            calls[3][3],
            calls[3][4],
          ),
          _myCalls(
            calls[4][0],
            calls[4][1],
            calls[4][2],
            calls[4][3],
            calls[4][4],
          ),
          _myCalls(
            calls[5][0],
            calls[5][1],
            calls[5][2],
            calls[5][3],
            calls[5][4],
          ),
          _myCalls(
            calls[6][0],
            calls[6][1],
            calls[6][2],
            calls[6][3],
            calls[6][4],
          ),
          _myCalls(
            calls[7][0],
            calls[7][1],
            calls[7][2],
            calls[7][3],
            calls[7][4],
          ),
          _myCalls(
            calls[8][0],
            calls[8][1],
            calls[8][2],
            calls[8][3],
            calls[8][4],
          ),
          _myCalls(
            calls[9][0],
            calls[9][1],
            calls[9][2],
            calls[9][3],
            calls[9][4],
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
