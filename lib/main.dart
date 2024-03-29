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
        primarySwatch: Colors.red,
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
        appBar: AppBar(
          title: const Text('Basics'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          centerTitle: true,
          elevation: 7.5,
        ),
        body: Container(
            height: size.height,
            width: size.width,
            color: Colors.teal,
            // margin: EdgeInsets.all(10),
            // padding: EdgeInsets.only(top: 150),
            child: Center(
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("data"),
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            imageFromAsset(height: 200, width: size.width),
                            Padding(
                                padding: EdgeInsets.only(top: 150),
                                child: profilePicture(radius: 50)
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Spacer(),
                                Text("Name"),
                              ],
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                          height: 10,
                          thickness: 1,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              profilePicture(),
                              // imageFromAsset(height: 100, width: 100),
                              Expanded(
                                child: simpleText("text"),
                              ),
                            ],
                          ),
                        ),

                        imageFromNetwork(),
                        imageFromNetwork(),
                        imageFromNetwork(),
                        imageFromNetwork(),
                      ],
                    ),
                  ),
                ),
                color: Colors.blue,
                margin: EdgeInsets.all(10),
              ),
            )));
  }


  CircleAvatar profilePicture({ double radius = 50 }) {
    return CircleAvatar(
      backgroundImage: AssetImage("images/pexels-feyza-yıldırım-18177110.jpg"),
      radius: radius,
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
              text: ' WorldWorld',
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
          ]),
    );
  }

  // Fct image from network
  Image imageFromNetwork() {
    return Image.network(
      "https://images.pexels.com/photos/18278210/pexels-photo-18278210.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
      height: 200,
    );
  }

  // Fct image from asset
  Image imageFromAsset({required double height, required double width}) {
    return Image.asset(
      "images/pexels-feyza-yıldırım-18177110.jpg",
      height: height,
      width: width,
      fit: BoxFit.cover,
    );
  }
}
