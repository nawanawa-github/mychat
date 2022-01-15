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
        title: const Text('トークルーム', style: TextStyle(fontWeight: FontWeight.bold),),
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