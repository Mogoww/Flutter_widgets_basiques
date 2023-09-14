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
    var size = MediaQuery
        .of(context)
        .size;
    var platform = Theme
        .of(context)
        .platform;
    print('size: $size');
    print('platform: $platform');
    return Scaffold(
        body: Container(
            height: size.height,
            width: size.width,
            color: Colors.teal,
            // margin: EdgeInsets.all(10),
            // padding: EdgeInsets.only(top: 150),
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Center(
                  child: simpleText("text")
                ),
              )
            )
        )
    );
  }

  // Function qui retourne un widget Text
  Text simpleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.w200,
        fontStyle: FontStyle.italic,
      ),
      textAlign: TextAlign.center,
    );
  }

  // Function qui retourne un widget TextSpan
  Text spanText() {
    return const Text.rich(
        TextSpan(
            text: 'Hello ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.italic,
            ),
            children: [
              TextSpan(
                text: ' World',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 40,
                  fontWeight: FontWeight.w200,
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextSpan(
                text: ' !',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.w200,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ]
        ),
    );
  }
}