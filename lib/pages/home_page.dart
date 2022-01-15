import 'package:flutter/material.dart';
import 'package:mychat/models/account_class.dart';
import 'package:mychat/models/room_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AccountClass myAccount = AccountClass(
    nameId: 'sjflsjls',
    name: '高橋一子',
    accountIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
  );

  List<AccountClass> friendlist = [
    AccountClass(
      nameId: 'jfsjfls',
      name: '田中圭',
      accountIcon: 'https://www.ntv.co.jp/funaanime/images/second/character/funassy.png',
    ),
    AccountClass(
      nameId: 'jfsljlsls',
      name: '船橋孝和',
      accountIcon: 'https://www.pref.saitama.lg.jp/images/54239/tokorochan_1.jpg',
    ),
    AccountClass(
      nameId: 'jfsljfslj',
      name: '小栗旬',
      accountIcon: 'https://www.pref.saitama.lg.jp/images/54239/shoumen.jpg',
    ),
    AccountClass(
      nameId: 'kfowiwie',
      name: '阿部寛',
      accountIcon: 'https://www.tokyoeki-1bangai.co.jp/tokyocharacterstreet/assets/images/mv_logo/logo23.png',
    ),
    AccountClass(
      nameId: 'pppsssffff',
      name: '向井理',
      accountIcon: 'https://tk.ismcdn.jp/mwimgs/a/d/600/img_ada3ea10c68cbedaf3a8846ade8f002056286.jpg',
    ),
  ];

  List<RoomClass> roomlist = [
    RoomClass(
      roomId: 'ajsljflsjfls',
      roomName: '箱根旅行',
      lastMessage: 'おはよう',
      roomIcon: 'https://assets.st-note.com/production/uploads/images/33258191/26e72cd1c817d16409230ea54273d3f2.png?width=330&height=240&fit=bounds',
    ),
    RoomClass(
      roomId: 'ajsljflsjfls',
      roomName: '鎌倉旅行',
      lastMessage: 'こんにちは',
      roomIcon: 'https://s3-ap-northeast-1.amazonaws.com/qiita-organization-image/108c90d24f6f2f4de278dc60682eb5b232a88a87/original.jpg?1591627628',
    ),
    RoomClass(
      roomId: 'ajsljflsjfls',
      roomName: '暇',
      lastMessage: 'そんなわけない',
      roomIcon: 'https://dzpp79ucibp5a.cloudfront.net/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBMEdtQWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--8a747ba98649732d33659c38a1991056c4c93e40/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQXBBQmFRS1FBUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--49a8a5ef923f0a7f7a07128d1a56556ebf080be7/open-uri20181215-1-expd4f',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.person_add)),
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(myAccount.accountIcon),
                  radius: 40,
                ),
              ),
              Text(myAccount.name, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, top: 8.0),
            child: Text('友達リスト', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
          ),
          ListView.builder(
            physics: const RangeMaintainingScrollPhysics(),
            shrinkWrap: true,
            itemCount: friendlist.length,
            itemBuilder: (context,index){
              return Container(
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(friendlist[index].accountIcon),
                        radius: 30,
                      ),
                    ),
                    Text(friendlist[index].name, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                  ],
                ),
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text('ルームリスト', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
          ),
          ListView.builder(
            physics: const RangeMaintainingScrollPhysics(),
            shrinkWrap: true,
            itemCount: roomlist.length,
            itemBuilder: (context,index){
              return Container(
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(roomlist[index].roomIcon),
                        radius: 30,
                      ),
                    ),
                    Text(roomlist[index].roomName, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}