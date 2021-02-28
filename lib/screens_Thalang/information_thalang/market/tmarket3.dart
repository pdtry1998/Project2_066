import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:project/screens_Thalang/information_thalang/market/widget/tbuttonmarket3.dart';


class ThalangMarket3 extends StatefulWidget {
  ThalangMarket3({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ThalangMarket3State createState() => _ThalangMarket3State();
}

class _ThalangMarket3State extends State<ThalangMarket3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                    height: 300.0,
                    child: Stack(
                      children: <Widget>[
                        Carousel(
                          images: [
                            AssetImage('assets/images_thalang/3.3.1.jpg'),
                            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
                            AssetImage('assets/images_thalang/3.3.2.jpg'),
                            // Photo from https://unsplash.com/photos/FqqiAvJejto
                            AssetImage('assets/images_thalang/3.3.3.jpg'),
                            // Photo from https://unsplash.com/photos/_-JR5TxKNSo
                            AssetImage('assets/images_thalang/3.3.4.jpg'),
                            // Photo from https://unsplash.com/photos/K0rvMa1Y18A
                            AssetImage('assets/images_thalang/3.3.5.jpg'),
                            // Photo from https://unsplash.com/photos/I_QC1JICzA0
                          ],
                          dotSize: 4.0,
                          dotSpacing: 15.0,
                          autoplay: false,
                          dotColor: Colors.white,
                          indicatorBgPadding: 50.0,
                          dotBgColor: Colors.transparent,
                          borderRadius: false,
                          moveIndicatorFromBottom: 200.0,
                          noRadiusForIndicator: true,
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 270, left: 20, right: 20),
                  child: Container(
                      height: 90.0,
                      width: MediaQuery.of(context).size.width - 24.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2.0,
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2.0)
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'ศาลหลักเมืองภูเก็ต',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,

                              ),
                              //style: TextStyle(fontFamily: 'ConcertOne-Regular'),
                            ),
                            Text('\ที่อยู่: ถลาง อำเภอถลาง ภูเก็ต 83110  ' ,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 13.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 13.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 13.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 13.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 13.0,
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15, left: 14),
              // child: Text(
              //   'เกี่ยวกับ',
              //   style: TextStyle(
              //       fontSize: 15.0,
              //       fontWeight: FontWeight.bold,
              //       fontFamily: 'ConcertOne-Regular'),
              // ),
            ),
            amenities('assets/images_mueange/heart.png', 'assets/images_mueange/call.png', 'assets/images_mueange/wifi.png','assets/images_mueange/car.png',
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 14),
              child: Text(
                'เกี่ยวกับ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ConcertOne-Regular'),
              ),
            ),
            about_place('        ศาลหลักเมือง หมายถึงที่สิงสถิตของวิญญาณที่ปกป้องบ้านเมืองให้ปลอดภัย ป้องกันบ้านเมืองจากอริราชศัตรูทั้งหลาย และช่วยปกป้องประชาชน ซึ่งในจังหวัดภูเก็ตมีศาลหลักเมืองทั้งหมด 4 แห่ง วิญญาณที่สิงสถิตเป็นผู้หญิงทั้งหมด และสร้างขึ้นจากไม้ตำเสาซึ่งเป็นไม้ที่แข็งแกร่งที่สุด'),
            about_place('ศาลหลักเมืองภูเก็ตมี 4 แห่ง ประกอบด้วย '),
            about_place('        ศาลหลักเมืองภูเก็ตมี 4 แห่ง ประกอบด้วย '),
            about_place('        1. ศาลหลักเมืองเมืองใหม่ ตั้งอยู่ที่บ้านเมืองใหม่ ตรงหลัก ริมถนนเทพกระษัตรี เดิมที่แห่งนี้เป็นบริเวณท่าเรือ  '),
            about_place('        2.ศาลหลักเมืองท่าเรือ ตั้งอยู่ที่บ้านท่าเรือ ต.ศรีสุนทร เป็นศาลา 2 ชั้น ยอดหลังคาประดับด้วยช่อฟ้า ใบระกา ที่หน้าบันเป็นประติมากรรมรูปเทพพนม'),
            about_place('        3.ศาลหลักเมืองวัดร้าง ตั้งอยู่ที่วัดร้างป่าสัก (วัดพระขาว) เส้นทางถนนสาย เชิงทะเล- บ้านดอน เข้าไปในบริเวณปากทางวัดก็จะพบศาลที่ตั้งเสา'),
            about_place('        4.ศาลหลักเมืองเลพัง ตั้งอยู่ที่ หมู่ 4 ต.เชิงทะล บริเวณหาดเลพัง ข้างโรงแรมบันยันทรี ศาลหลักเมืองที่นี่รอบๆประดับไปด้วยดอกไม้ และต้นไม้สวยๆ แม่หลักเมืองที่นี่มีชื่อันเพราะพริ้งว่า “เจ้าแม่เกษิณี”'),
            about_place2('เวลาเปิด-ปิด :'),
            about_place('        ทุกวัน เวลา 07.00 - 18.00'),
            about_place2('โทรศัพท์ :'),
            about_place('        098 696 8819'),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 5, left: 14),
              child: Text(
                'เส้นทางและรีวิว',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ConcertOne-Regular'),
              ),
            ),
            tButton_Market3(),
          ],
        ));
  }



  Widget amenities(
      String url1,
      String url2,
      String url3,
      String url4,
      ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
            width: 55,
            height: 55,
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 1.0),
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 0.2)
                ]),
            child: Column(
              children: <Widget>[
                Image.asset(
                  url1,
                  fit: BoxFit.contain,
                  height: 40.0,
                  width: 50.0,
                ),
              ],
            )),
        Container(
            width: 55,
            height: 55,
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 1.0),
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 0.2)
                ]),
            child: Column(
              children: <Widget>[
                Image.asset(
                  url2,
                  fit: BoxFit.contain,
                  height: 30.0,
                  width: 40.0,
                ),
              ],
            )),
        Container(
            width: 55,
            height: 55,
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 1.0),
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 0.2)
                ]),
            child: Column(
              children: <Widget>[
                Image.asset(
                  url3,
                  fit: BoxFit.contain,
                  height: 30.0,
                  width: 40.0,
                ),
              ],
            )),
        Container(
            width: 55,
            height: 55,
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 1.0),
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 0.2)
                ]),
            child: Column(
              children: <Widget>[
                Image.asset(
                  url4,
                  fit: BoxFit.contain,
                  height: 35.0,
                  width: 40.0,
                ),
              ],
            )),
      ],
    );
  }

  Widget about_place(
      String description,
      ) {
    return Padding(
        padding: EdgeInsets.only(left: 14, right: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              description,
              style: TextStyle(fontSize: 18,
                //fontFamily: 'ConcertOne-Regular'
              ),
            ),
          ],
        ));
  }

  Widget about_place2(
      String description,
      ) {
    return Padding(
        padding: EdgeInsets.only(top: 10,left: 14, right: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              description,
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                //fontFamily: 'ConcertOne-Regular'
              ),
            ),
          ],
        ));
  }

}