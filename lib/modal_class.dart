import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User {
  final int id;
  final String name;
  final String massage;
  final String time;
  final String image;

  User({
    required this.id,
    required this.name,
    required this.massage,
    required this.time,
    required this.image,
  });
}

bool isIos = false;
List call = <User>[
  User(
    id: 1,
    name: "Tony Stark Lokhand Wala",
    massage: "Mai Garib hu",
    time: "12:18 pm",
    image:
        "https://static.wikia.nocookie.net/marvelcinematicuniverse/images/3/35/IronMan-EndgameProfile.jpg/revision/latest/top-crop/width/360/height/360?cb=20190423175213",
  ),
  User(
      id: 2,
      name: "Sena Pati",
      massage: "Flutter is great",
      time: "12:18 pm",
      image:
          "https://cf-images.us-east-1.prod.boltdns.net/v1/static/5359769168001/0a823cb0-01a9-4835-a348-c64187783ccb/d37cb96c-805c-4aa2-9f2f-e62d9eb814c7/1280x720/match/image.jpg"),
  User(
      id: 3,
      name: "Thor Hathoda Walo",
      massage: "Done",
      time: "12:18 pm",
      image:
          "https://cdn.vox-cdn.com/thumbor/3lk4qIW7fmpR2pqGDYTsyq5k2fM=/0x0:1920x803/1200x800/filters:focal(876x155:1182x461)/cdn.vox-cdn.com/uploads/chorus_image/image/70762584/vlcsnap_2022_04_18_10h46m50s579.0.jpg"),
  User(
      id: 4,
      name: "Thanos Chapti Walo",
      massage: "Ready For Fight",
      time: "12:18 pm",
      image:
          "https://upload.wikimedia.org/wikipedia/en/thumb/7/7b/Josh_Brolin_as_Thanos.jpeg/220px-Josh_Brolin_as_Thanos.jpeg"),
  User(
      id: 5,
      name: "Hulk Ghabhru Javan",
      massage: "I throw my phone...",
      time: "12:18 pm",
      image:
          "https://cdn.vox-cdn.com/thumbor/OFBPH8zh9H2NEaaD7NynTS-7zvY=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/21883423/experience_avengers_day.jpg"),
  User(
      id: 6,
      name: "Dr Strange Magic dada",
      massage: "Its magic",
      time: "12:18 pm",
      image:
          "https://images.immediate.co.uk/production/volatile/sites/3/2022/02/Doctor-Strange-016c415.jpg"),
  User(
      id: 7,
      name: "Vir jala Walo",
      massage: "Tum Mere Dost ho",
      time: "12:18 pm",
      image:
          "https://images.unsplash.com/photo-1534809027769-b00d750a6bac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3BpZGVyJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
  User(
      id: 6,
      name: "Kidi man",
      massage: "Tirandaz juth bol rha he",
      time: "12:18 pm",
      image:
          "https://images.unsplash.com/photo-1613276017067-ef618366152a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YW50JTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
  User(
      id: 6,
      name: "Tirandaz",
      massage: "Bhai mera arrow kidi man le gya",
      time: "12:18 pm",
      image:
          "https://images.hdqwalls.com/download/avengers-hawkeye-1366x768.jpg"),
];

Map drawericon = <Icon, String>{
  const Icon(
    Icons.supervisor_account,
    size: 20,
  ): "New Group",
  const Icon(Icons.account_circle_outlined): "Contacts",
  const Icon(Icons.phone): "calls",
  const Icon(Icons.bookmark_border): "calls",
  const Icon(Icons.settings): "Settings",
};
