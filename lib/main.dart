import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:triangle/navigation_drawer_widget.dart';
import 'package:triangle/screens/markets.dart';
import 'firebase_options.dart';
import 'package:triangle/screens/dailies.dart';
import 'package:triangle/screens/rewards.dart';
import "package:triangle/screens/profile.dart";
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfire_ui/auth.dart';

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF212121;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: primaryBlack,
      ),
      home: AuthGate(),
    );
  }
}

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        return StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            // User is not signed in
            if (!snapshot.hasData) {
              return const SignInScreen(providerConfigs: [
                EmailProviderConfiguration(),
              ]);
            }

            // Render your application if authenticated
            return const TriangleApp();
          },
        );
      },
    );
  }
}

class TriangleApp extends StatefulWidget {
  const TriangleApp({Key? key}) : super(key: key);

  @override
  State<TriangleApp> createState() => _TriangleAppState();
}

class _TriangleAppState extends State<TriangleApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.grey)),
      body: Stack(
        children: <Widget>[
          Offstage(
            offstage: index != 0,
            child: TickerMode(
              enabled: index == 0,
              child: const MaterialApp(
                home: Scaffold(body: MarketPage()),
                debugShowCheckedModeBanner: false,
              ),
            ),
          ),
          Offstage(
            offstage: index != 1,
            child: TickerMode(
              enabled: index == 1,
              child: const MaterialApp(
                home: Scaffold(body: DailiesPage()),
                debugShowCheckedModeBanner: false,
              ),
            ),
          ),
          Offstage(
            offstage: index != 2,
            child: TickerMode(
              enabled: index == 2,
              child: const MaterialApp(
                home: Scaffold(body: RewardsPage()),
                debugShowCheckedModeBanner: false,
              ),
            ),
          ),
          Offstage(
            offstage: index != 3,
            child: TickerMode(
              enabled: index == 3,
              child: const MaterialApp(
                home: Scaffold(body: ProfilePage()),
                debugShowCheckedModeBanner: false,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        //Floating action button on Scaffold
        onPressed: () {
          //code to execute on button press
        },
        child: const Icon(Icons.add), //icon inside button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[900],
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.show_chart,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          index = 0;
                        });
                      },
                    ),
                    const Text('Markets',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          index = 1;
                        });
                      },
                    ),
                    const Text('Dailies',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          index = 2;
                        });
                      },
                    ),
                    const Text('Rewards',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          index = 3;
                        });
                      },
                    ),
                    const Text('Profile',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void logOut() {
  FirebaseAuth.instance.signOut();
}
