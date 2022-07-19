import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  // const Status({Key? key}) : super(key: key);
  List<List<String>> recentUpdates = [
    [
      "Jason",
      "Just now",
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
    _noStatusUpdate() {
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
                      Stack(
                        children: [
                          const SizedBox(
                            width: 65,
                            height: 60,
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage:
                                  AssetImage("assets/images/profile-pic.jpg"),
                              backgroundColor: Color.fromARGB(60, 69, 90, 100),
                            ),
                          ),
                          Positioned(
                            right: -1.5,
                            bottom: -1.5,
                            child: Container(
                              decoration: BoxDecoration(
                                  // color: Theme.of(context).primaryColor,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: const CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(18, 140, 126, 1),
                                  radius: 12,
                                  child: Icon(Icons.add, color: Colors.white)),
                            ),
                          ),
                        ],
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
                              "My status",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              "Tap to add status update",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(),
                ],
              ),
            ),
          ),
        ),
      );
    }

    _statusUpdate({
      required String name,
      required String update,
      required String image,
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
                          backgroundColor:
                              const Color.fromARGB(60, 69, 90, 100),
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
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              update,
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 30.0),
                    child: IconButton(
                        icon: Icon(
                          Icons.more_horiz,
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    _recentUpdates({
      required String name,
      required String update,
      required String image,
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
                      backgroundColor: const Color.fromARGB(60, 69, 90, 100),
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
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          update,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    _viewedUpdates(
        {required String name, required String update, required String image}) {
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
                      backgroundColor: const Color.fromARGB(60, 69, 90, 100),
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
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          update,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
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
          _noStatusUpdate(),
          _statusUpdate(
            name: "My status",
            update: "Just now",
            image: "assets/images/profile-pic.jpg",
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 5, left: 20.0),
            child: Text(
              "Recent updates",
              style: TextStyle(
                color: Theme.of(context).textTheme.subtitle2?.color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _recentUpdates(
            name: recentUpdates[0][0],
            update: recentUpdates[0][1],
            image: recentUpdates[0][2],
          ),
          _recentUpdates(
            name: recentUpdates[1][0],
            update: recentUpdates[1][1],
            image: recentUpdates[1][2],
          ),
          _recentUpdates(
            name: recentUpdates[2][0],
            update: recentUpdates[2][1],
            image: recentUpdates[2][2],
          ),
          _recentUpdates(
            name: recentUpdates[3][0],
            update: recentUpdates[3][1],
            image: recentUpdates[3][2],
          ),
          _recentUpdates(
            name: recentUpdates[4][0],
            update: recentUpdates[4][1],
            image: recentUpdates[4][2],
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 5, left: 20.0),
            child: Text(
              "Viewed updates",
              style: TextStyle(
                color: Theme.of(context).textTheme.subtitle2?.color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _viewedUpdates(
            name: viewedUpdates[0][0],
            update: viewedUpdates[0][1],
            image: viewedUpdates[0][2],
          ),
          _viewedUpdates(
            name: viewedUpdates[1][0],
            update: viewedUpdates[1][1],
            image: viewedUpdates[1][2],
          ),
          _viewedUpdates(
            name: viewedUpdates[2][0],
            update: viewedUpdates[2][1],
            image: viewedUpdates[2][2],
          ),
          _viewedUpdates(
            name: viewedUpdates[3][0],
            update: viewedUpdates[3][1],
            image: viewedUpdates[3][2],
          ),
          _viewedUpdates(
            name: viewedUpdates[4][0],
            update: viewedUpdates[4][1],
            image: viewedUpdates[4][2],
          ),
          const SizedBox(
            width: double.infinity,
            height: 80,
          ),
        ],
      ),
      floatingActionButton: Wrap(
        //will break to another line on overflow
        direction: Axis.vertical, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(
                // top: 10,
                left: 15,
                bottom: 10,
              ),
              child: FloatingActionButton(
                onPressed: () {
                  //action code for button 1
                },
                backgroundColor: Colors.grey[100],
                tooltip: 'Increment',
                child: const Icon(Icons.create, color: Colors.black54),
              )), //button first

          Container(
              width: 60,
              height: 60,
              margin: const EdgeInsets.only(
                top: 10,
                left: 10,
                // right: 5,
                // bottom: 5,
              ),
              child: FloatingActionButton(
                onPressed: () {},
                tooltip: 'Increment',
                child: const Icon(Icons.camera_alt),
              )), // button second
        ],
      ),
    );
  }
}
