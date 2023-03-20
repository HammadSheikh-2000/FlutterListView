import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Hammads App"),
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context,index)
                    {
                      return const ListTile(
                        title: Text('Hammmad Sheikh',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/girl.jpg'),
                        ),
                        subtitle: Text("Hi, John how are you? "),
                        trailing: Text('3:36 PM'),
                      );
                    },
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
