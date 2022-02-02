import 'package:flutter/material.dart';
import 'package:mychat/models/message_class.dart';
import 'package:mychat/models/room_class.dart';
import 'package:intl/intl.dart' as intl;

class TalkPage extends StatefulWidget {
  final RoomClass roomInfo;
  const TalkPage(this.roomInfo ,{ Key? key }) : super(key: key);
  @override
  _TalkPageState createState() => _TalkPageState();
}

class _TalkPageState extends State<TalkPage> {
  List<MessageClass> messageList = [
    MessageClass(
      message: 'おはhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhよう',
      accountIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
      isMe: false,
      sendTime: DateTime(2022,01,24,19,04),
    ),
    MessageClass(
      message: 'こんにちは',
      accountIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
      isMe: false,
      sendTime: DateTime(2022,01,24,19,04),
    ),
    MessageClass(
      message: 'こんにちは',
      accountIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
      isMe: false,
      sendTime: DateTime(2022,01,24,19,04),
    ),
    MessageClass(
      message: 'は？',
      accountIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
      isMe: true,
      sendTime: DateTime(2022,01,24,19,04),
    ),
    MessageClass(
      message: 'は？',
      accountIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
      isMe: true,
      sendTime: DateTime(2022,01,24,19,04),
    ),
    MessageClass(
      message: 'そんなことない',
      accountIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
      isMe: false,
      sendTime: DateTime(2022,01,24,19,04),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.roomInfo.roomName),
      ),
      body: Stack(
        children: [
          ListView.builder(
            physics: const RangeMaintainingScrollPhysics(),
            shrinkWrap: true,
            reverse: true,
            itemCount: messageList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 6, bottom: index == 0 ? 6 : 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: messageList[index].isMe == true ? TextDirection.rtl : TextDirection.ltr,
                  children: [
                    messageList[index].isMe == false ? const Padding(
                      padding: EdgeInsets.only(left: 6.0),
                      child: CircleAvatar(
                        // backgroundImage: NetworkImage(messageList[index].accountIcon),
                        radius: 15,
                      ),
                    ) : Container(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      textDirection: messageList[index].isMe == true ? TextDirection.rtl : TextDirection.ltr,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Container(
                            constraints: BoxConstraints(maxWidth: size.width*0.6),
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                            child: Text(messageList[index].message,),
                            decoration: BoxDecoration(
                              color: messageList[index].isMe == true ? Colors.blue : Colors.grey[350],
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Text(intl.DateFormat('HH:mm').format(messageList[index].sendTime), style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              );
            }
          ),
          InkWell(
            onTap: (){},
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: size.width,
                height: size.height*0.08,
                color: Colors.brown[50],
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('高橋が', style: TextStyle(fontSize: 20)),
                      Text('+500円', style: TextStyle(fontSize: 20, color: Colors.pink)),
                      Text('支払い済み', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: size.width,
              height: size.height*0.08,
              color: Colors.brown[50],
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.photo),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                        )
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.send)
                    ),
                  ],
                ),
              ),
            ),
          )
        ]
      ),
      
    );
  }
}