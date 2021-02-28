import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:project/screens_Thalang/information_thalang/place/widget/tbuttonplace1.dart';


class ThalangPlace1 extends StatefulWidget {
  ThalangPlace1({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ThalangPlace1State createState() => _ThalangPlace1State();
}

class _ThalangPlace1State extends State<ThalangPlace1> {
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
                            AssetImage('assets/images_thalang/1.1.jpg'),
                            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
                            AssetImage('assets/images_thalang/1.2.jpg'),
                            // Photo from https://unsplash.com/photos/FqqiAvJejto
                            AssetImage('assets/images_thalang/1.3.jpeg'),
                            // Photo from https://unsplash.com/photos/_-JR5TxKNSo
                            AssetImage('assets/images_thalang/1.4.jpg'),
                            // Photo from https://unsplash.com/photos/K0rvMa1Y18A
                            AssetImage('assets/images_thalang/1.5.jpg'),
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
                              'วัดพระทอง (วัดพระผุด)',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,

                              ),
                              //style: TextStyle(fontFamily: 'ConcertOne-Regular'),
                            ),
                            Text('\หมู่ที่ 7 ตำบลเทพกระษัตรี อำเภอถลาง ' ,
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
            about_place('        วัดพระทอง หรือ วัดพระผุด เป็นวัดเก่าแก่ที่มีชื่อเสียงวัดหนึ่งในจังหวัดภูเก็ต ที่ตั้งของวัดพระทองอยู่ทางด้านทิศเหนือของเกาะภูเก็ต ใกล้ถนนเทพกระษัตรี เหมาะที่จะแวะหลังจากลงเครื่องที่สนามบินภูเก็ต หรือ ก่อนไปขึ้นเครื่อง เนื่องจากอยู่ห่างจากสนามบินภูเก็ตประมาณ 10 กิโลเมตรเท่านั้น'),
            about_place('        ที่มาของชื่อ “วัดพระผุด” มาจากที่วัดแห่งนี้มีพระพุทธรูปที่โผล่จากพื้นดินเพียงครึ่งองค์ ในปี พ.ศ. พระเจ้าปะดุง แม่ทัพพม่า ยกพลมาตีเมืองถลาง ทหารพม่าพยายามที่จะขุดพระผุดเอากลับไป แต่เมื่อลงมือขุดก็เจอกับฝูงแตนไล่ต่อย จนต้องล้มเลิกนวัดพระทอง นอกจากจะมีพระผุดเป็นสิ่งศักดิ์สิทธิ์ประจำวัดแล้วยังมี พิพิธภัณฑสถานวัดพระทอง เป็นที่เก็บรวบรวมโบราณวัตถุข้าวของเครื่องใช้ของชาวภูเก็ตในสมัยก่อน เช่นอุปกรณ์การทำเหมืองแร่ รองเท้าของชาวจีนในสมัยก่อน'),
            about_place2('เวลาเปิด-ปิด :'),
            about_place('        ทุกวัน ตั้งแต่เวลา 08.00 – 17.00 น.'),
            about_place2('โทรศัพท์ :'),
            about_place('        +66 7627 4126'),
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
            tButton_Place1(),
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