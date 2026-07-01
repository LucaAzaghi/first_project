import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('First Project'), centerTitle: true),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 500) {
              return Container(
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Prima riga'),
                    Text('Seconda riga'),
                    Text('Terza riga'),

                    Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text('1'), Text('2'), Text('3')],
                      ),
                    ),

                    Center(
                      child: IconButton(
                        iconSize: 100,
                        color: Colors.lightGreen,
                        onPressed: () {
                          print('Hai premuto il bottone grande!');
                        },
                        icon: Icon(Icons.person),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Container(
                color: Colors.cyan,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Prima riga'),
                    Text('Seconda riga'),
                    Text('Terza riga'),

                    Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text('1'), Text('2'), Text('3')],
                      ),
                    ),

                    Center(
                      child: IconButton(
                        iconSize: 84,
                        color: Colors.pink,
                        onPressed: () {
                          print('Hai premuto il bottone piccolo!');
                        },
                        icon: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
