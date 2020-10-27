import 'package:flutter/material.dart';
import 'package:quote_app/Healty/detail_vertikal.dart';
import 'package:quote_app/Healty/detailpage.dart';

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
    'love yourself enough to live a healthy lifestyle',
    'Take care of your health, because it will accommodate your long life',
    'Water is life and clean water means health',
    'Health always seems valuable after we lose it'
  ];

  List<String> subJudul = [
    'Kekayaan yang sebenarnya adalah kesehatan',
    'cintai diri Anda sendiri untuk menjalani gaya hidup sehat',
    'Peliharalah kesehatan Anda, karena ia yang akan mewadahi umur panjang Anda',
    'Air adalah kehidupan dan air bersih berarti kesehatan',
    'Kesehatan selalu tampak berharga setelah kita kehilangannya'
  ];

  List<String> img = [
    'assets/images/1.jpeg',
    'assets/images/2.jpeg',
    'assets/images/3.jpeg',
    'assets/images/4.jpeg',
    'assets/images/5.jpeg'
  ];

  List<String> text = [
    'Dont be a young person who ages without good health and abilities',
    'Take care of your body. It s the only place you have to live',
    "You can't hire someone else to exercise for you",
    'In health there is freedom. Health is the very first thing in all freedom',
    'In health there is "I have the principle of balance to achieve a peaceful life, namely love, health and stability, freedom. Health is the first thing in all freedom.'
  ];

  List<String> subText = [
    '"Jangan jadi anak muda yang menua tanpa kesehatan dan kemampuan yang baik',
    'Jaga tubuhmu. Itulah satu-satunya tempat yang kamu miliki untuk hidup',
    'Anda tidak bisa menyewa orang lain untuk berolahraga untuk Anda',
    'Dalam kesehatan terdapat kebebasan. Kesehatan adalah hal paling pertama dalam semua kebebasan',
    'Aku memiliki prinsip keseimbangan untuk mencapai kehidupan yang tenteram, yakni cinta, kesehatan, dan kemapanan'
  ];

  List<String> pict = [
    'assets/images/6.jpeg',
    'assets/images/7.jpeg',
    'assets/images/8.jpeg',
    'assets/images/9.jpeg',
    'assets/images/10.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height - 000,
        margin: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: judul.length,
                  itemBuilder: (BuildContext context, int index) {
                    final title = judul[index].toString();
                    final subTitle = subJudul[index].toString();
                    final gambars = img[index].toString();

                    return Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: GestureDetector(
                              child: Stack(
                                children: <Widget>[
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(5.0),
                                      child: Image.asset(gambars,
                                          height: 120,
                                          width: 250,
                                          fit: BoxFit.cover)),
                                  Container(
                                    width: 120,
                                    height: 200,
                                    child: Text(title,
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white)),
                                  )
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                            itemJudul: title,
                                            itemSub: subTitle,
                                            itemImage: gambars)));
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                //vertikal
                height: MediaQuery.of(context).size.height - 000,
                margin: EdgeInsets.all(10.0),
                child: ListView.builder(
                    itemCount: text.length,
                    itemBuilder: (context, index) {
                      final motivationText = text[index].toString();
                      final motivationSub = subText[index].toString();
                      final gambar = pict[index].toString();
                      return Container(
                        child: GestureDetector(
                          child: Stack(
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  gambar,
                                  height: 140,
                                  width: 390,
                                  fit: BoxFit.cover,
                                ),
                                margin: EdgeInsets.only(bottom: 15.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                              Container(
                                child: topContent(
                                  motivationText,
                                  motivationSub,
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailVerti(
                                        itemText: motivationText,
                                        itemSub: motivationSub,
                                        itemGambar: gambar)));
                          },
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
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
              nama,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 2.0,
            width: 50.0,
            color: Colors.lightGreenAccent,
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
              style: TextStyle(color: Colors.black, fontSize: 10.0),
            ),
          )
        ],
      ),
    );
  }
}

//height: MediaQuery.of(context).size.height - 000,
//               margin: EdgeInsets.only(top: 16.0),
//               child: ListView.builder(
//                 scrollDirection: Axis.vertical,
//                 itemCount: text.length,
//                   itemBuilder: (context, int index){
//                   final motivationText = text[index].toString();
//                   final motivationSub  = subText[index].toString();
//                   final images = pict[index].toString();
//                   return Container(
//                     margin: EdgeInsets.symmetric(horizontal: 14.0),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20.0),
//                       image: DecorationImage(
//                         fit: BoxFit.fill,
//                           image: NetworkImage(images)
//                       )
//                     ),
//                     padding: EdgeInsets.only(top: 10.0, left: 10.0),
//                     child: GestureDetector(
//                       child: Stack(
//                         children: <Widget>[
//                           Padding(
//                               padding: const EdgeInsets.all(10.0),
//                             child: Stack(
//                               children: <Widget>[
//                                 Container(
//                                   child: textContent(motivationText, motivationSub),
//                                 )
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                       onTap: (){
//                         Navigator.push(context, MaterialPageRoute(
//                             builder: (context) => DetailVerti(itemText: motivationText,
//                             itemSub: motivationSub, itemGambar: images)
//                         ));
//                       },
//                     ),
//                   );
//                   }
//               ),
