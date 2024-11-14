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
      body: Container(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 10),
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
                  margin: EdgeInsets.only(left:60, right: 50),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text("Location",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),)
                      ),

                      Expanded(
                          child: Text("Panadura",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),)
                      ),
                      Expanded(
                          child: Text("Drop down",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),)
                      )
                    ],
                  )
              ),
              Container(
                margin: EdgeInsets.all(30),
                child: TextField(
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(225, 225, 225, 100),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: '  🔍 Search here..',
                  ),
                ),
              ),
              Container(
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Container(
                        child: Card(
                          elevation: 12,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: Colors.white,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                                child: Image.asset(
                                  'assets/burger.png',
                                  height: 220,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child:  const ListTile(
                                        title: Text(
                                          "McDonald's",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        subtitle: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "\$ 29.00",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20.0
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text("·25-35 min",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 15.0
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(left:130, top: 0),
                                        child: Text("⭐4.9",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      )
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          elevation: 12,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: Colors.white,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                                child: Image.asset(
                                  'assets/burger.png',
                                  height: 220,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child:  const ListTile(
                                        title: Text(
                                          "McDonald's",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        subtitle: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "\$ 29.00",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20.0
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text("·25-35 min",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 15.0
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(left:130, top: 0),
                                        child: Text("⭐4.9",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      )
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              Container()
            ],
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Browser',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
      );
  }
}
