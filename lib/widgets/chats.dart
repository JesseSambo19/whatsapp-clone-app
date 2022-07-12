import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50), // was 11.5
                    child: Image.network(
                        'https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY'),
                    // Image.asset("assets/images/girl.jpg"),
                    // Image.asset("assets/images/Male.jpg"),
                  ),
                ),
                // Image(
                //   image: AssetImage("assets/images/girl.jpg"),
                //   width: 5,
                //   height: 5,
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    left: 28.0,
                  ),
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Jason",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text("Lorem ipsum dolor sit amet consectetur.",
                            style: TextStyle(
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
                        "17:19",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
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
          _chats(
              "Jason",
              "Lorem ipsum dolor sit amet consectetur.",
              "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
              "17:19"),
          _chats(
              "Jason",
              "Lorem ipsum dolor sit amet consectetur.",
              "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
              "17:19"),
          _chats(
              "Jason",
              "Lorem ipsum dolor sit amet consectetur.",
              "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
              "17:19"),
          _chats(
              "Jason",
              "Lorem ipsum dolor sit amet consectetur.",
              "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
              "17:19"),
          _chats(
              "Jason",
              "Lorem ipsum dolor sit amet consectetur.",
              "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
              "17:19"),
          _chats(
              "Jason",
              "Lorem ipsum dolor sit amet consectetur.",
              "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
              "17:19"),
          _chats(
              "Jason",
              "Lorem ipsum dolor sit amet consectetur.",
              "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
              "17:19"),
          _chats(
              "Jason",
              "Lorem ipsum dolor sit amet consectetur.",
              "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
              "17:19"),
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
