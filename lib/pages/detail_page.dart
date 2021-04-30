import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static final String id = "detail_page";
  final String name;
  final int age;
  DetailPage({this.name, this.age});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).pop({"name" : "Dart", "age" : 33});
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.blueGrey,
            onSurface: Colors.lightBlue,
            onPrimary: Colors.lightBlue
          ),

          child: Text(widget.name + " " + widget.age.toString()),
        ),
      ),
    );
  }
}
