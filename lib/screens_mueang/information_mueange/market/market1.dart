import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:project/screens_mueang/information_mueange/market/widget/buttonmarket1.dart';

class Market1 extends StatefulWidget {
  Market1({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Market1State createState() => _Market1State();
}

class _Market1State extends State<Market1> {
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
                            AssetImage('assets/images_mueange/3.1.1.jpg'),
                            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
                            AssetImage('assets/images_mueange/3.1.2.jpg'),
                            // Photo from https://unsplash.com/photos/FqqiAvJejto
                            AssetImage('assets/images_mueange/3.1.3.jpg'),
                            // Photo from https://unsplash.com/photos/_-JR5TxKNSo
                            AssetImage('assets/images_mueange/3.1.4.jpg'),
                            // Photo from https://unsplash.com/photos/K0rvMa1Y18A
                            AssetImage('assets/images_mueange/3.1.5.jpg'),
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
                              'ถนนคนเดินหลาดใหญ่',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,

                              ),
                              //style: TextStyle(fontFamily: 'ConcertOne-Regular'),
                            ),
                            Text('\ถนนถลาง ตำบลตลาดใหญ่ อำเภอเมือง ' ,
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
            about_place('        ถนนคนเดินภูเก็ต หลาดใหญ่ หรือ Phuket Walking Street ที่จัดขึ้นบนถนนถลางรอบๆ จะล้อมไปด้วยอาคารสถาปัตยกรรมแบบ ชิโนโปรตุกีส ที่ผสมความเป็นศิลปะตะวันออกและตะวันตกเข้าไว้ด้วยกันอย่างสวยงามและลงตัว ถือว่าเป็นอีกเสน่ห์ของจังหวัดภูเก็ตเลยค่ะ ส่วนสินค้าที่มีมาขายนั้น ก็จะหลากหลายมาก ไม่ว่าจะเป็น อาหารพื้นเมือง เครื่องดื่ม ของทานเล่น ของคาว ของหวาน อาหารไทย อาหารฝรั่ง แม้กระทั่ง ของที่ระลึก และแน่นอนว่ามีการจัดดนตรีสดและการแสดงต่างๆ ตรงทางเดินให้นักท่องเที่ยวได้ชมกันอีกด้วย    โดยในทุกๆ ปีที่ หลาดใหญ่ จะมีการจัดถนนสายวัฒนธรรมขึ้น เพื่อดึงดูดให้นักท่องเที่ยวมาชมวิถีชีวิตของชาวภูเก็ต และเป็นการย้อนอดีตไปยังสมัยก่อน ให้ได้สัมผัสกันด้วยค่ะ นอกจากจะได้เดินซื้อของกินของใช้กันชิลๆ แล้ว ที่นี่ก็ยังมีมุมถ่ายรูปเยอะแยะมากมายเลยค่ะ ถ้าอยากได้รูปแนวสตรีทๆ แนะนำว่าต้องมาที่นี่เลย ยิ่งไปช่วงที่ตลาดเพิ่งเริ่มยิ่งดีเลย แสงกำลังสวย และคนจะไม่เยอะมาก '),
            about_place2('เวลาเปิด-ปิด :'),
            about_place('        วันอาทิตย์ 16.00-22.00 น. '),
            about_place2('โทรศัพท์ :'),
            about_place('         -'),
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
            ButtonMarket1(),
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