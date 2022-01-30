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
      accountIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
    ),
    AccountClass(
      nameId: 'jfsljlsls',
      name: '船橋孝和',
      accountIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
    ),
    AccountClass(
      nameId: 'jfsljfslj',
      name: '小栗旬',
      accountIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
    ),
    AccountClass(
      nameId: 'kfowiwie',
      name: '阿部寛',
      accountIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
    ),
    AccountClass(
      nameId: 'pppsssffff',
      name: '向井理',
      accountIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
    ),
  ];

  List<RoomClass> roomlist = [
    RoomClass(
      roomId: 'ajsljflsjfls',
      roomName: '箱根旅行',
      lastMessage: 'おはよう',
      roomIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
    ),
    RoomClass(
      roomId: 'ajsljflsjfls',
      roomName: '鎌倉旅行',
      lastMessage: 'こんにちは',
      roomIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
    ),
    RoomClass(
      roomId: 'ajsljflsjfls',
      roomName: '暇',
      lastMessage: 'そんなわけない',
      roomIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
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
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        // backgroundImage: NetworkImage(friendlist[index].accountIcon),
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
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        // backgroundImage: NetworkImage(roomlist[index].roomIcon),
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