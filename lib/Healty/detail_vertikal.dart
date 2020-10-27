import 'package:flutter/material.dart';

class DetailVerti extends StatelessWidget {
  final String itemText;
  final String itemSub;
  final String itemGambar;

  const DetailVerti({Key key, this.itemText, this.itemSub, this.itemGambar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Quote Healty'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              itemGambar,
              width: 500.0,
              height: 250.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                itemText,
                style: TextStyle(color: Colors.lightBlue, fontSize: 20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                itemSub,
                style: TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
