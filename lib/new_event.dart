

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NewEventScreen();

}
class _NewEventScreen extends State<NewEventScreen>{
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[600],
        title: Text("New Event"),
      ),
      backgroundColor: Colors.deepPurple[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Container(
               color: Colors.deepPurple[600],
               padding: EdgeInsets.all(5.0),


               child: TextField(
                  controller: _textEditingController,
                 decoration: InputDecoration(
                   label: Text(
                       style: TextStyle(color: Colors.white),
                       "Event"),
                   icon: Icon(
                     color:Colors.white,
                       Icons.calendar_month),
                 ),
               ),
             ),
           ),

          Builder(
            builder: (context) {
              return Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(380, 50),
                    backgroundColor: Colors.deepPurple[200],
                  ),

                    onPressed: () {
                  String newEventText = _textEditingController.text;
                  Navigator.of(context).pop(newEventText);
                }, child: Text("ADD")),
              );
            }
          ),
        ],
      ),
    );
  }
}

