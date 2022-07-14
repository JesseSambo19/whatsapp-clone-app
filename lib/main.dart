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
  late TabController TabBarController;

  @override
  void initState() {
    super.initState();

    TabBarController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    TabBarController.dispose();

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
        appBar: AppBar(
          title: const Text(
            "WhatsApp",
          ),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          ],
          bottom: TabBar(
            controller: TabBarController,
            tabs: const [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: TabBarView(
          controller: TabBarController,
          children: const [
            Center(
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
        // body: ListView(
        //   padding: const EdgeInsets.all(8),
        //   children: const [
        //     Chats(),
        //     Chats(),
        //     Chats(),
        //     Chats(),
        //     Chats(),
        //     Chats(),
        //     Chats(),
        //     Chats(),
        //     Chats(),
        //     Chats(),
        //   ],
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.message),
        // ),
      ),
    );
  }
}
