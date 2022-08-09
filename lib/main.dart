import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 150,
            ),
            Container(
              width: 225,
              height: 225,
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
              ),
              child: Image.asset(
                'images/bs.jpg',
                fit: BoxFit.cover,
                // width: 200,
                //height: 500,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
              child: const Text(
                'MR.Thanakrit Rattanaphan (Bliss)',
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 252, 3, 103),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.email_outlined,
                    size: 50,
                    color: Color.fromARGB(255, 2, 2, 2),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '6240011011@psu.ac.th',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 74, 3, 252),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.call_outlined,
                    size: 50,
                    color: Color.fromARGB(255, 7, 7, 7),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '+66 91-824-7938',
                      style: TextStyle(
                        fontFamily: 'IndieFlower',
                        fontSize: 20,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 74, 3, 252),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
