import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/widgets/calls.dart';
import 'package:whatsapp_clone_app/widgets/chats.dart';
import 'package:whatsapp_clone_app/widgets/status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController tabBarController;

  @override
  void initState() {
    super.initState();

    tabBarController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabBarController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // global color theme for the app theme
        primarySwatch: Colors.teal,
        // accentColor: Colors.amber,
        // errorColor: Colors.red,
        fontFamily: "Quicksand",
        textTheme: ThemeData.light().textTheme.copyWith(
            // custom textTheme it will only affect the titles for the expenses
            subtitle1: const TextStyle(
              fontFamily: "OpenSans",
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            button: const TextStyle(
              color: Colors.grey,
            )),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                // custom textTheme it will only affect the title in the appBar
                subtitle1: const TextStyle(
                  fontFamily: "OpenSans",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "WhatsApp Clone",
          ),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
          ],
          bottom: TabBar(
            controller: tabBarController,
            tabs: [
              const Tab(icon: Icon(Icons.camera_alt)),
              Row(
                children: [
                  const Tab(
                    text: "CHATS",
                  ),
                  Expanded(
                    child: Container(
                      width: 20,
                      height: 20,
                      // padding: const EdgeInsets.all(5.0),
                      margin: const EdgeInsets.only(left: 5.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: Text(Chats().result().toString(),
                              style: const TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w600))),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Tab(
                    text: "STATUS",
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child: CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.white,
                      // backgroundImage: AssetImage(image),
                    ),
                  ),
                ],
              ),
              const Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabBarController,
          children: [
            const Center(
              child: Text(
                "Camera",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
