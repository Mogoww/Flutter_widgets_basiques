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
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: BasicsPage(),
    );
  }
}

class BasicsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var platform = Theme.of(context).platform;
    print('size: $size');
    print('platform: $platform');
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.teal,
        // margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
      ),
    );
  }

}