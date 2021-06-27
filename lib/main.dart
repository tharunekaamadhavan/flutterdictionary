import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selected = 0;
  List<Widget> widgetArray = [
    Text('test'),
    Text('test2')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.blue,
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text(
                                "D I C T I O N A R Y ",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              Image.asset('images/icon.png', height: 20, width: 20)
                            ],  //row-children
                          ),
                      )
                    ]   //column-children
                  )
            ),
            Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  child: Center(
                    child: widgetArray[selected],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                  ),
                )
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.article_outlined), label: 'About'),
          ],
          onTap: tapBottomNavBar,
          currentIndex: selected,
        ),
    );
  }
  void tapBottomNavBar(int integer) {
    setState(() {
      selected = integer;
    });
  }
}
