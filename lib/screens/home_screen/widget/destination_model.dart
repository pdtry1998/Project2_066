import 'package:project/screens/home_screen/widget/activity_model.dart';

class Destination {
  String imageUrl;
  String place;
  String nplace;
  String district;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.place,
    this.nplace,
    this.district,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images_destination/1.jpg',
    name: 'หาดป่าตอง',
    type: 'หาดป่าตอง ตำบลป่าตอง อำเภอกระทู้ จังหวัดภูเก็ต',
    startTimes: ['All day', '24 ชั่วโมง'],
    rating: 5,
    road: 'กระทู้',
  ),
  Activity(
    imageUrl: 'assets/images_destination/2.jpg',
    name: 'ถนนบางลา',
    type: 'ซอยบางลา ตำบลป่าตอง อำเภอกะทู้ จังหวัดภูเก็ต   ',
    startTimes: ['16.00 น.', '05.00 น.'],
    rating: 5,
    road: 'กระทู้',
  ),
  Activity(
    imageUrl: 'assets/images_destination/3.jpg',
    name: 'แหลมพรหมเทพ',
    type: 'ตำบล ราไวย์ อำเภอเมือง จังหวัดภูเก็ต',
    startTimes: ['All day', '24 ชั่วโมง'],
    rating: 5,
    road: 'เมือง',
  ),
  Activity(
    imageUrl: 'assets/images_destination/4.jpg',
    name: 'หลาดใหญ่',
    type: 'ถนนถลาง ตำบลตลาดใหญ่ อำเภอเมือง จังหวัดภูเก็ต',
    startTimes: ['16.00', '22.00'],
    rating: 5,
    road: 'เมือง',
  ),
  Activity(
    imageUrl: 'assets/images_destination/8.jpg',
    name: 'แหลมกระทิง',
    type: 'ตำบล กะรน อำเภอเมือง จังหวัดภูเก็ต',
    startTimes: ['All day', '24 ชั่วโมง'],
    rating: 5,
    road: 'เมือง',
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images_destination/1.jpg',
    place: 'Patong',
    nplace: 'หาดป่าตอง',
    district: 'Kathu',
    description: 'ห่างจากตัวเมืองภูเก็ตไปทางตะวันตกเฉียงเหนือประมาณ 15 กิโลเมตร',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images_destination/2.jpg',
    place: 'Bangla road',
    nplace: 'ถนนบางลา',
    district: 'Kathu',
    description: 'ถนนคนเดินป่าตองเป็นย่านท่องเที่ยวยามราตรีชื่อดังของจังหวัดภูเก็ต',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images_destination/3.jpg',
    place: 'Laem Phrom Thep',
    nplace: 'แหลมพรหมเทพ',
    district: 'Mueang',
    description: 'มีทัศนียภาพที่สวยงาม และเป็นจุดชมพระอาทิตย์ตกดินที่ได้รับความนิยม  ',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images_destination/4.jpg',
    place: 'Lard-Yai',
    nplace: 'หลาดใหญ่',
    district: 'Mueang',
    description: 'ถนนคนเดินในย่านเมืองเก่าภูเก็ต บรรยากาศดี ของกินเพียบ แถมยังน่าถ่ายรูปสุดๆ ',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images_destination/8.jpg',
    place: 'Krating Cape',
    nplace: 'แหลมกระทิง',
    district: 'Mueang',
    description: ' จุดชมวิวทะเลอันดามันได้กว้างไกล 360 องศา และบรรยากาศพระอาทิตย์ดินที่สวยงามมาก ',
    activities: activities,
  ),
];