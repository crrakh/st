import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:st/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "Details";
  Future _openDetails() async{
    Map results = await Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context){
          return DetailPage(
            name: "Flutter",
            age: 22,
          );
        }
    ));
    if(results != null && results.containsKey("name") && results.containsKey("age")){
      setState(() {
        data = results["name"] + " " + results["age"].toString();
      });
    } else {
      print("Nothing");
    }
  }
  int width = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New app"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 150,
              color: Colors.red,
            ),
            Expanded(
              child: Container(


                color: Colors.black,
                child: Row(
                  
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                      margin: EdgeInsets.all(10),
                    
                    width: 100,
                    color: Colors.blueGrey,
                  )
                    ),
                    Expanded(

                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.deepOrangeAccent,
                      )
                  )
                ],
              ),
              )
            ),

          ],
        ),
      ),
    );

  }
}
