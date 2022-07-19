import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:whatsapp_clone_app/widgets/calls.dart';
import 'package:whatsapp_clone_app/widgets/camera.dart';
import 'package:whatsapp_clone_app/widgets/chats.dart';
import 'package:whatsapp_clone_app/widgets/status.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

// Keep splash screen until initialization is complete
  // ignore: deprecated_member_use
  FlutterNativeSplash.removeAfter(initialization);

  runApp(const MyApp());
}

Future initialization(BuildContext? context) async {
  // Load resources
  await Future.delayed(const Duration(seconds: 3));
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

    tabBarController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 1,
    );
  }

  @override
  void dispose() {
    tabBarController.dispose();

    super.dispose();
  }

  bool isScrollable = false;

  @override
  Widget build(BuildContext context) {
    @override
    void didChangeDependencies() {
      precacheImage(const AssetImage('assets/images/profile-pic.jpg'), context);
      precacheImage(const AssetImage('assets/images/avatar-1.jpg'), context);
      precacheImage(const AssetImage('assets/images/avatar-2.jpg'), context);
      precacheImage(const AssetImage('assets/images/avatar-3.jpg'), context);
      precacheImage(const AssetImage('assets/images/avatar-4.jpg'), context);
      precacheImage(const AssetImage('assets/images/avatar-5.jpg'), context);
      precacheImage(const AssetImage('assets/images/avatar-6.jpg'), context);
      precacheImage(const AssetImage('assets/images/avatar-7.jpg'), context);
      precacheImage(const AssetImage('assets/images/avatar-8.jpg'), context);
      precacheImage(const AssetImage('assets/images/avatar-9.jpg'), context);
      precacheImage(const AssetImage('assets/images/avatar-10.jpg'), context);
      super.didChangeDependencies();
    }

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 400) {
        isScrollable = false;
      } else {
        isScrollable = true;
      }
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
                // fontFamily: "OpenSans",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              subtitle2: const TextStyle(
                // fontFamily: "OpenSans",
                fontSize: 18,
                color: Color.fromARGB(190, 69, 90, 100),
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
              isScrollable: isScrollable,
              tabs: [
                const Center(child: Tab(icon: Icon(Icons.camera_alt))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Tab(
                      text: "CHATS",
                    ),
                    Container(
                      width: 16,
                      height: 16,
                      // padding: const EdgeInsets.all(5.0),
                      margin: const EdgeInsets.only(left: 5),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: Text(Chats().result().toString(),
                              style: const TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.w600,
                              ))),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Tab(
                      text: "STATUS",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
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
              const Camera(),
              Chats(),
              Status(),
              Calls(),
            ],
          ),
        ),
      );
    });
  }
}
