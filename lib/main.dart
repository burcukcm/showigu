
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    var ekranbilgisi=MediaQuery.of(context);
    final double ekranyukseklik =ekranbilgisi.size.height;
    final double ekrangenislik=ekranbilgisi.size.width;

    return  Scaffold(
      backgroundColor:const Color.fromRGBO(200, 200, 200, 1.0),
    body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: ekrangenislik,
              height: ekranyukseklik / 2,
              decoration: BoxDecoration(
                color: Colors.white,
                image: const DecorationImage(
                  image: AssetImage("resimler/logo.jpeg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),

              ),
            ),
             const Padding(
              padding: EdgeInsets.only(right :20.0 ,left: 20.0,top: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle_rounded),
                  labelText: "UserName",
                ),
              ),
             ),
             const Padding(
              padding: EdgeInsets.only(right :20.0 ,left: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: "Password",
                ),
                obscureText: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
