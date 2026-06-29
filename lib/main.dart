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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.red)),
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
                      child: FilledButton(
                        onPressed: () {
                          print('Hai premuto il bottone grande!');
                        },
                        child: Text('Premi qui'),
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
                      child: ElevatedButton(
                        onPressed: () {
                          print('Hai premuto il bottone!');
                        },
                        child: Text('Premi qui'),
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
