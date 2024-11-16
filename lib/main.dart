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
      // home: const Pepparoni(),
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

  String _dropdownvalue = "Panadura";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
          child: ListView(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 10),
                  child: Center(
                      child: Row(
                          children: <Widget>[
                            const SizedBox(width: 30),
                            Expanded(
                                child: TextButton(
                                    style:TextButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    onPressed: null,
                                    child: Text("Delivery",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold
                                    )))
                            ) ,
                            const SizedBox(width: 30)
                            ,
                            Expanded(
                                child: TextButton(
                                    style:TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      backgroundColor: Color.fromRGBO(200, 200, 200, 100),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const Pickup()));
                                    },
                                    child: Text("Pickup",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold
                                    )))
                            ),
                            const SizedBox(width: 30)
                          ]
                      )
                  )
              ),
              Container(
                  margin: EdgeInsets.only(left:20, right: 50),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.green,
                        ),
                      ),
                      Expanded(
                          child: DropdownButton(
                              items: const[
                                DropdownMenuItem(child: Text("Panadura"), value: "Panadura",),
                                DropdownMenuItem(child: Text("Colombo"), value: "Colombo",),
                                DropdownMenuItem(child: Text("Galle"), value: "Galle",),
                                DropdownMenuItem(child: Text("Gampaha"), value: "Gampaha",),
                                DropdownMenuItem(child: Text("Nuwara Eliya"), value: "Nuwara Eliya",),
                              ],
                              value: _dropdownvalue,
                              isExpanded: true,
                              onChanged: (String? selectedbvalue){
                                if(selectedbvalue is String){
                                  setState(() {
                                    this._dropdownvalue = selectedbvalue;
                                  });
                                }
                              }
                          )
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
                    fillColor: Color.fromRGBO(200, 200, 200, 100),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: '⌕ Search here..',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                splashRadius: 10,
                                iconSize: 10,
                                icon: Image.asset(
                                    'assets/deals_icon.png'
                                ),
                                onPressed: () {
                                  // do something when the button is pressed debugPrint('Hi there');
                                },
                              ),
                              Text("Deals")
                            ],
                          )
                      ),
                      Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                splashRadius: 100,
                                iconSize: 100,
                                icon: Image.asset(
                                    'assets/top_eats_icon.png'
                                ),
                                onPressed: () {
                                  // do something when the button is pressed debugPrint('Hi there');
                                },
                              ),
                              Text("Top eats")
                            ],
                          )
                      ),
                      Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                splashRadius: 100,
                                iconSize: 100,
                                icon: Image.asset(
                                    'assets/rewords_icon.png'
                                ),
                                onPressed: () {
                                  // do something when the button is pressed debugPrint('Hi there');
                                },
                              ),
                              Text("Rewards")
                            ],
                          )
                      ),
                      Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                splashRadius: 100,
                                iconSize: 100,
                                icon: Image.asset(
                                    'assets/pizza_icon.png'
                                ),
                                onPressed: () {
                                  // do something when the button is pressed debugPrint('Hi there');
                                },
                              ),
                              Text("Pizza")
                            ],
                          )
                      )
                    ],
                  ),
              ),
              Container(
                  color: Color.fromRGBO(200, 200, 200, 100),
                  child: Column(
                    children: [
                      Container(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Pepparoni()),
                              );
                            },
                            child: Card(
                              margin: EdgeInsets.only(left:10,right: 10, top: 20),
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
                                      'assets/pizza.png',
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
                                              "Pepparoni",
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
                                                    "\$ 15.00",
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
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Olive()),
                            );
                          },
                          child: Card(
                            margin: EdgeInsets.only(left:10,right: 10, top: 20, bottom: 10),
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
                                    'assets/pizza_2.png',
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
                                            "Olive + cheese",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          subtitle: Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: Text(
                                                  "\$ 20.00",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20.0
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text("·35-45 min",
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
                                          child: Text("⭐3.5",
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
                      ),
                    ],
                  )
              ),
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
            icon: Icon(Icons.delivery_dining_sharp),
            label: 'Orders',
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

class Pepparoni extends StatelessWidget {
  const Pepparoni({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.only(left: 30,right:300, top: 120),
        alignment: Alignment.topLeft,
        child: FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back,color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Image.asset(
                'assets/pizza.png',
                height: 220,
                fit: BoxFit.cover,
                width: double.infinity,
                ),

            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Pepparoni Pizza",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Famouse pepparoni pizza from America",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 10),
                  Expanded(
                      child: Text(
                          "🕒 25 - 35 min - delivery",
                        style: TextStyle(
                          fontSize: 15
                        ),
                      )
                  ),
                  Expanded(
                      child: Text("4.9 ⭐ (400+) 5.9\$ Fee",
                      style: TextStyle(
                        fontSize: 18
                      ),)
                  ),
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(left:20, top:20),
                child: Text("Topings:",
                  style: TextStyle(
                      fontSize: 25
                  ),)
            ),
            Container(
              margin: EdgeInsets.only(left:40, top: 1),
                child: Text("mozzarella cheese, pepperoni",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54
                  ),)
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Card(
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.black,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/pizza.png',
                        height: 200,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.green),
                        onPressed: () {

                        },
                        child: const Text(
                          "Add to Cart",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining_sharp),
            label: 'Orders',
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

class Olive extends StatelessWidget {
  const Olive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.only(left: 30,right:300, top: 120),
        alignment: Alignment.topLeft,
        child: FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back,color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(
          child: ListView(
            children: [
              Container(
                child: Image.asset(
                  'assets/pizza_2.png',
                  height: 220,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Olive + Cheese Pizza",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Famouse Olive pizza from Itali",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    children: <Widget>[
                      const SizedBox(width: 10),
                      Expanded(
                          child: Text(
                            "🕒 35 - 45 min - delivery",
                            style: TextStyle(
                                fontSize: 15
                            ),
                          )
                      ),
                      Expanded(
                          child: Text("3.5 ⭐ (200+) 5.9\$ Fee",
                            style: TextStyle(
                                fontSize: 18
                            ),)
                      ),
                    ],
                  )
              ),
              Container(
                  margin: EdgeInsets.only(left:20, top:20),
                  child: Text("Topings:",
                    style: TextStyle(
                        fontSize: 25
                    ),)
              ),
              Container(
                  margin: EdgeInsets.only(left:40, top: 1),
                  child: Text("mozzarella cheese, olive, pepper, bellpepper, onion",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54
                    ),)
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                child: Card(
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.black,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/pizza_2.png',
                          height: 200,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {

                          },
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining_sharp),
            label: 'Orders',
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

class Pickup extends StatelessWidget{
  const Pickup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
                margin: EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 10),
                child: Center(
                    child: Row(
                        children: <Widget>[
                          const SizedBox(width: 30),
                          Expanded(
                              child: TextButton(
                                  style:TextButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(200, 200, 200, 100),
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  onPressed: () {
                                      Navigator.pop(context);
                                  },
                                  child: Text("Delivery",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold
                                      )))
                          ) ,
                          const SizedBox(width: 30)
                          ,
                          Expanded(
                              child: TextButton(
                                  style:TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  onPressed: null,
                                  child: Text("Pickup",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold
                                      )))
                          ),
                          const SizedBox(width: 30)
                        ]
                    )
                )
            ),
            Container(
              margin: EdgeInsets.only(left:20,right: 20, top:50),
              child: Card(
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.black,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/map.png',
                        height: 500,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10, left:70),
              child: Text(
                "No pick-up Stores found",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:30),
              child: Text(
                "Select another area or order delivery insted",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black38,
                ),
              ),
            ),
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
            icon: Icon(Icons.delivery_dining_sharp),
            label: 'Orders',
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


