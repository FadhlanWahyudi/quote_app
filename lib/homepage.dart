import 'package:flutter/material.dart';
import 'package:quote_app/Healty/health.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.black)),
                      color: Colors.lightGreenAccent,
                      child: Text(
                          'Health',
                        style: TextStyle(fontSize: 20.0,color: Colors.white),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute
                          (builder: (context) => Healty()));
                      } ),
                )
            ),

          ],
        )
      ],
    );
  }
}
