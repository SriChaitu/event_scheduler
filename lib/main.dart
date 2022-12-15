import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  final List<Widget> _list = [

  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Event Scheduler'),
          backgroundColor: Colors.deepPurple[600],
        ),
        backgroundColor: Colors.deepPurple[300],
        body:
              Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: _list.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              height: 50,
                              color: Colors.white,
                              child: Center(child: _list[index],),
                            ),
                          );
                        }),
                  ),
                ],
              ),


        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              backgroundColor: Colors.deepPurple[600],
                onPressed:() async {
                  String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NewEventScreen()));
                  setState(() {
                    _list.add(Text (newText));
                  });
                },
                child: Icon(Icons.add),
                );
          }
        ),
      ),

    );
  }
}
