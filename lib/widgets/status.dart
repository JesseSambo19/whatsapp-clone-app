import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  // const Status({Key? key}) : super(key: key);
  List<List<String>> recentUpdates = [
    [
      "Jason",
      "3 minutes ago",
      "assets/images/avatar-1.jpg",
    ],
    [
      "Marc",
      "27 minutes ago",
      "assets/images/avatar-2.jpg",
    ],
    [
      "Sophie",
      "48 minutes ago",
      "assets/images/avatar-3.jpg",
    ],
    [
      "Jennifer",
      "Today, 09:37",
      "assets/images/avatar-4.jpg",
    ],
    [
      "William",
      "Today, 09:31",
      "assets/images/avatar-5.jpg",
    ],
  ];

  List<List<String>> viewedUpdates = [
    [
      "Benedith",
      "Yesterday, 23:14",
      "assets/images/avatar-6.jpg",
    ],
    [
      "John",
      "Yesterday, 20:43",
      "assets/images/avatar-7.jpg",
    ],
    [
      "Melissa",
      "Yesterday, 19:20",
      "assets/images/avatar-8.jpg",
    ],
    [
      "Maggie",
      "Yessterday, 18:00",
      "assets/images/avatar-9.jpg",
    ],
    [
      "Thomas",
      "Yesterday, 17:47",
      "assets/images/avatar-10.jpg",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    _myStatus() {
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
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 27,
                          backgroundImage:
                              AssetImage("assets/images/profile-pic.jpg"),
                        ),
                        Positioned(
                          right: -5,
                          bottom: -5,
                          child: Container(
                            width: 25,
                            height: 25,
                            padding: const EdgeInsets.all(0.0),
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                            child: const Center(
                                child: Text("+",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 25))),
                          ),
                        ),
                      ],
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
                        children: const [
                          Text(
                            "My status",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Tap to add status update",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 0, left: 30.0),
                //   child: IconButton(
                //       icon: Icon(
                //         Icons.search,
                //         color: Theme.of(context).primaryColor,
                //       ),
                //       onPressed: () {}),
                // ),
                Container(),
              ],
            ),
          ),
        ),
      );
    }

    _recentUpdates(String name, String update, String image) {
      return SizedBox(
        width: double.infinity,
        height: 90,
        child: Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromRGBO(37, 211, 102, 1),
                      width: 2.5,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage(image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    left: 20.0,
                    bottom: 5.0,
                  ),
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
                      Text(
                        update,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
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

    _viewedUpdates(String name, String update, String image) {
      return SizedBox(
        width: double.infinity,
        height: 90,
        child: Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.5,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage(image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    left: 20.0,
                    bottom: 5.0,
                  ),
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
                      Text(
                        update,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
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
          _myStatus(),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 5, left: 20.0),
            child: const Text(
              "Recent updates",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _recentUpdates(
            recentUpdates[0][0],
            recentUpdates[0][1],
            recentUpdates[0][2],
          ),
          _recentUpdates(
            recentUpdates[1][0],
            recentUpdates[1][1],
            recentUpdates[1][2],
          ),
          _recentUpdates(
            recentUpdates[2][0],
            recentUpdates[2][1],
            recentUpdates[2][2],
          ),
          _recentUpdates(
            recentUpdates[3][0],
            recentUpdates[3][1],
            recentUpdates[3][2],
          ),
          _recentUpdates(
            recentUpdates[4][0],
            recentUpdates[4][1],
            recentUpdates[4][2],
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 5, left: 20.0),
            child: const Text(
              "Viewed updates",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _viewedUpdates(
            viewedUpdates[0][0],
            viewedUpdates[0][1],
            viewedUpdates[0][2],
          ),
          _viewedUpdates(
            viewedUpdates[1][0],
            viewedUpdates[1][1],
            viewedUpdates[1][2],
          ),
          _viewedUpdates(
            viewedUpdates[2][0],
            viewedUpdates[2][1],
            viewedUpdates[2][2],
          ),
          _viewedUpdates(
            viewedUpdates[3][0],
            viewedUpdates[3][1],
            viewedUpdates[3][2],
          ),
          _viewedUpdates(
            viewedUpdates[4][0],
            viewedUpdates[4][1],
            viewedUpdates[4][2],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
