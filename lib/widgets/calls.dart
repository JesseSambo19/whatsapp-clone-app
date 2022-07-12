import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _myCalls(String name, String info, String image, Icon call) {
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
                    child: Image.network(image),
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
                      children: [
                        Text(
                          name,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: Transform.rotate(
                                angle: 200,
                                child: Container(child: call),
                              ),
                            ),
                            Text(
                              info,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 30.0),
                  child: IconButton(
                      icon: Icon(
                        Icons.phone,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {}),
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
          _myCalls(
            "Jason",
            "(3) Today, 18:29",
            "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
            Icon(Icons.arrow_forward, color: Theme.of(context).primaryColor),
          ),
          _myCalls(
            "Jason",
            "(3) Today, 18:29",
            "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
            Icon(Icons.arrow_forward, color: Theme.of(context).primaryColor),
          ),
          _myCalls(
            "Jason",
            "(3) Today, 18:29",
            "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
            Icon(Icons.arrow_forward, color: Theme.of(context).primaryColor),
          ),
          _myCalls(
            "Jason",
            "(3) Today, 18:29",
            "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
            Icon(Icons.arrow_forward, color: Theme.of(context).primaryColor),
          ),
          _myCalls(
            "Jason",
            "(3) Today, 18:29",
            "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
            Icon(Icons.arrow_forward, color: Theme.of(context).primaryColor),
          ),
          _myCalls(
            "Jason",
            "(3) Today, 18:29",
            "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
            Icon(Icons.arrow_forward, color: Theme.of(context).primaryColor),
          ),
          _myCalls(
            "Jason",
            "(3) Today, 18:29",
            "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
            Icon(Icons.arrow_forward, color: Theme.of(context).primaryColor),
          ),
          _myCalls(
            "Jason",
            "(3) Today, 18:29",
            "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
            Icon(Icons.arrow_forward, color: Theme.of(context).primaryColor),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.phone),
      ),
    );
  }
}
