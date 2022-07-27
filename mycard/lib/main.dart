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
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/angela.jpg')
                ),
                const Text('Angle Yu',style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )),
                const Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.white
                  ),
                ),
                 Card(
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile (
                    leading:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                         Icon(
                          Icons.phone,
                          color: Colors.teal,
                        )
                      ],
                    ),
                    title: const Text(
                      '+44 123 456 789',
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: const Text(
                      '+44 123 456 789',
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  )),
                  const Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'angela@email.com',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal,
                            fontFamily: 'Source Sans Pro'),
                      ),
                    ))
              ],
        )),
      )
    );
  }
}




