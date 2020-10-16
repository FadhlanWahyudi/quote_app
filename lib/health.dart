import 'package:flutter/material.dart';

class Healty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes Healty'),
        backgroundColor: Colors.lightBlue,
      ),
      body: _PageList(),
    );
  }
}

class _PageList extends StatefulWidget {
  @override
  __PageListState createState() => __PageListState();
}

class __PageListState extends State<_PageList> {
  List<String> judul = [
    'The real welth is health',
    'The real welth is health',
    'The real welth is health',
    'The real welth is health',
    'The real welth is health'
  ];

  List<String> subJudul = [
    'The Real Welth is Health',
    'The Real Welth is Health',
    'The Real Welth is Health',
    'The Real Welth is Health',
    'The Real Welth is Health'
  ];

  List<String> img = [
    'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg',
    'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg',
    'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg',
    'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg',
    'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg'

  ];

  @override
  Widget build(BuildContext context) {
   return Container(
     child: ListView.builder(
       scrollDirection: Axis.horizontal,
       itemCount: judul.length,
       itemBuilder: (BuildContext context, int index ){
         final title = judul[index].toString();
         final subTitle = subJudul[index].toString();
         final gambar = img[index].toString();

         return Container(
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               image: DecorationImage(
                   fit: BoxFit.fill,
                   colorFilter: ColorFilter.mode(
                       Colors.black.withOpacity(0.5), BlendMode.luminosity
                   ),
                   image: NetworkImage(gambar)
               )
           ),
           height: 200.0,
           padding: EdgeInsets.only(top: 8.0, left: 8.0),
           child: GestureDetector(
             child: Stack(
               children: <Widget>[
                 Padding(
                     padding: const EdgeInsets.all(10.0),
                   child: Column(
                     children: <Widget>[
                       Container(
                         child: topContent(title, subTitle),
                       ),
                     ],
                   ),
                 )
               ],
             ),
           ),
         );
       }

     ),
   );
  }
  backgroundImage(String gambar) {
    return new Container(
      height: 200,

    );
  }
  topContent(String nama, String deksripsi) {
    return new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child: Text(
              nama
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 2.0,
            width: 200.0,
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.symmetric(horizontal: 80.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Material(
            color: Colors.transparent,
            child: Text(
              deksripsi,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
