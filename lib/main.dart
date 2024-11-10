import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get onPressed => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Container(),
            Container(
              margin: EdgeInsets.all(50),
              child: Center(
                child: Row(
                    children: <Widget>[
                      Expanded(
                          child: TextButton(
                              style:TextButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.all(6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              onPressed: onPressed, child: Text("Delivery",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold
                              )))
                      ) ,
                      const SizedBox(width: 10)
                      ,
                      Expanded(
                          child: TextButton(
                              style:TextButton.styleFrom(
                                backgroundColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              onPressed: onPressed, child: Text("Pickup",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold
                              )))
                      )
                    ]
                )
              )
            ),
            Container(
              child: IconButton(
                splashRadius: 100,
                iconSize: 200,
                icon: Ink.image(
                  image: AssetImage(
                      '../Assets/pizza_icon.png'),
                ),
                onPressed: () {
                  // do something when the button is pressed
                  debugPrint('Hi there');
                },
              ),
            ),
            Container(),
            Container(),
          ],
      ),
    );
  }
}
