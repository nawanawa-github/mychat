import 'package:flutter/material.dart';
import 'package:mychat/models/room_class.dart';

class TalkroomPage extends StatefulWidget {
  const TalkroomPage({ Key? key }) : super(key: key);
  @override
  _TalkroomPageState createState() => _TalkroomPageState();
}

class _TalkroomPageState extends State<TalkroomPage> {

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
        title: const Text('トーク', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(
        itemCount: roomlist.length,
        itemBuilder: (context, index) {
          return Container(
            height: 70,
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CircleAvatar(
                    backgroundImage:  NetworkImage(roomlist[index].roomIcon),
                    radius: 30,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(roomlist[index].roomName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                    Text(roomlist[index].lastMessage),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}