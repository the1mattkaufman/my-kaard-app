import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Kaard App',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: const MyKaardApp(
        title: '',
      ),
    );
  }
}

class MyKaardApp extends StatefulWidget {
  const MyKaardApp({super.key, required this.title});
  final String title;

  @override
  State<MyKaardApp> createState() => _MyKaardAppState();
}

class _MyKaardAppState extends State<MyKaardApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                              CircleAvatar(
                                radius: 100,
                                backgroundImage: NetworkImage(
                                    'https://avatars.githubusercontent.com/u/15354688?v=4'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Matt Kaufman',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal,
                                    fontSize: 28,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Business Leader',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20,
                                  ))
                            ]))),
                    const SizedBox(
                      height: 5,
                    ),
                    Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: SocialWidget(
                                  placeholderText: 'the1mattkaufman',
                                  iconData: SocialIconsFlutter.github,
                                  iconColor: Colors.black,
                                  iconSize: 24,
                                  link: 'https://github.com/the1mattkaufman',
                                  placeholderStyle: const TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ))),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: SocialWidget(
                                  placeholderText: 'the1mattkaufman',
                                  iconData: SocialIconsFlutter.twitter,
                                  iconColor: Colors.blue,
                                  iconSize: 24,
                                  link: 'https://twitter.com/the1mattkaufman',
                                  placeholderStyle: const TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ))),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ))
                  ],
                )
              ],
            )));
  }
}
