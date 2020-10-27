import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String itemJudul;
  final String itemSub;
  final String itemImage;

  const DetailPage({Key key, this.itemJudul, this.itemSub, this.itemImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Quote Healty'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              itemImage,
              width: 500.0,
              height: 250.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                itemJudul,
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
