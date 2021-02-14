import 'package:project/screens/home_screen/first/active_model.dart';

class Destination3 {
  String imageUrl;
  String place;
  String nplace;
  String district;
  String description;
  List<Active> actives;

  Destination3({
    this.imageUrl,
    this.place,
    this.nplace,
    this.district,
    this.description,
    this.actives,
  });
}

List<Active> actives = [
  Active(
    imageUrl: 'assets/images_destination/1.jpg',
    name: 'หาดป่าตอง',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Active(
    imageUrl: 'assets/images_destination/2.jpg',
    name: 'ถนนบางลา',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 5,
    price: 210,
  ),
  Active(
    imageUrl: 'assets/images_destination/4.jpg',
    name: 'แหลมพรหมเทพ',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 5,
    price: 125,
  ),
  Active(
    imageUrl: 'assets/images_destination/4.jpg',
    name: 'หลาดใหญ่',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 5,
    price: 125,
  ),
];

List<Destination3> destinations3 = [
  Destination3(
    imageUrl: 'assets/images_home/a1.png',
    place: 'Patong',
    nplace: 'หาดป่าตอง',
    district: 'Kathu',
    description: 'ห่างจากตัวเมืองภูเก็ตไปทางตะวันตกเฉียงเหนือประมาณ 15 กิโลเมตร',
    actives: actives,
  ),
  Destination3(
    imageUrl: 'assets/images_home/a2.png',
    place: 'Patong',
    nplace: 'หาดป่าตอง',
    district: 'Kathu',
    description: 'ห่างจากตัวเมืองภูเก็ตไปทางตะวันตกเฉียงเหนือประมาณ 15 กิโลเมตร',
    actives: actives,
  ),
  Destination3(
    imageUrl: 'assets/images_home/a3.png',
    place: 'Patong',
    nplace: 'หาดป่าตอง',
    district: 'Kathu',
    description: 'ห่างจากตัวเมืองภูเก็ตไปทางตะวันตกเฉียงเหนือประมาณ 15 กิโลเมตร',
    actives: actives,
  ),
  Destination3(
    imageUrl: 'assets/images_home/a4.png',
    place: 'Patong',
    nplace: 'หาดป่าตอง',
    district: 'Kathu',
    description: 'ห่างจากตัวเมืองภูเก็ตไปทางตะวันตกเฉียงเหนือประมาณ 15 กิโลเมตร',
    actives: actives,
  ),
  Destination3(
    imageUrl: 'assets/images_home/a5.png',
    place: 'Patong',
    nplace: 'หาดป่าตอง',
    district: 'Kathu',
    description: 'ห่างจากตัวเมืองภูเก็ตไปทางตะวันตกเฉียงเหนือประมาณ 15 กิโลเมตร',
    actives: actives,
  ),

];