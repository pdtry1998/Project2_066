import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:project/screens_kathu/information_kathu/food/widget/kbuttonfood3.dart';


class KathuFood3 extends StatefulWidget {
  KathuFood3({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _KathuFood3State createState() => _KathuFood3State();
}

class _KathuFood3State extends State<KathuFood3> {
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
                            AssetImage('assets/images_kathu/2.2.3.1.jpg'),
                            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
                            AssetImage('assets/images_kathu/2.2.3.2.jpg'),
                            // Photo from https://unsplash.com/photos/FqqiAvJejto
                            AssetImage('assets/images_kathu/2.2.3.3.jpg'),
                            // Photo from https://unsplash.com/photos/_-JR5TxKNSo
                            AssetImage('assets/images_kathu/2.2.3.4.jpg'),
                            // Photo from https://unsplash.com/photos/K0rvMa1Y18A
                            AssetImage('assets/images_kathu/2.2.3.5.jpg'),
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
                              'เดอะ คาเฟ่ หมูกระทะ',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,

                              ),
                              //style: TextStyle(fontFamily: 'ConcertOne-Regular'),
                            ),
                            Text('\93, ตำบล กะทู้ อำเภอกะทู้ ภูเก็ต 83120 ' ,
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
            about_place('        ร้านเดอะคาเฟ่หมูกะทะนี่อยู่โซนกะทู้ จากวัดกะทู้เลี้ยวขวาตรงปากซอยแฟมิลี่มาร์ทเข้ามาทางหมู่บ้านนิดนึงก็เจอร้าน เปิดทุกวัน ตั้งแต่ 16:00-23:00น. ขายหมูกะทะแบบเป็นเซ็ท ไม่ใช่บุฟเฟ่ต์ ราคาเริ่มต้นชุดละ 139 – 499 บ. ก็ลองไปดูนะมีหลายชุดให้เลือกทาน ทั้งชุดหมู ชุดเนื้อ ชุดซีฟู๊ด รสชาติดีที่เดียว บรรยากาศดีมากๆ '),
            about_place('        บรรยากาศภายในร้านตกแต่งสไตล์ทรอปิคอล ในสวน บรรยากาศดี โล่งสบาย เหมาะกับการมาปิ้งย่างเม้าส์ ตามหาร้านหมูกะทะ ที่เป็นสไตล์แบบนี้อยู่นานมาก จนมาเจอร้านนี้ ถูกใจมาก เป็นเตาถ่าน มีให้เลือกหลายชุด เนื้อหมูนุ่มๆ สามชั้นย่างหอมๆ รับรองว่าอร่อยคุ้มแน่นอน ไม่ได้มีแค่ดีแค่หมูนะ ซีฟู้ด กุ้ง หมึก ปลา มีครบ สั่งได้เลย น้ำจิ้มมี 2 แบบ น้ำจิ้มซีฟู้ดและน้ำจิ้มหมูสุกี้ ทั้งรสชาติและบรรยากาศ ทางร้านยังแถมฟรีไอศครีมรสชาติดีสุดๆให้ด้วย '),
            about_place2('เวลาเปิด-ปิด :'),
            about_place('        เปิดทุกวัน ตั้งแต่ 16:00 - 23:00น'),
            about_place2('โทรศัพท์ :'),
            about_place('        076-624182  '),
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
            kButton_Food3(),
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