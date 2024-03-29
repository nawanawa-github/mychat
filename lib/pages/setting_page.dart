import 'package:flutter/material.dart';
import 'package:mychat/models/account_class.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SettingPage extends StatefulWidget {
  const SettingPage({ Key? key }) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  AccountClass myAccount = AccountClass(
    nameId: 'sjflsjls',
    name: '高橋一子',
    accountIcon: 'https://www.oshiri-tantei.com/assets/img/character/osiri/01_img.png',
  );
  File? image;
  final picker = ImagePicker();
  //アルバムから画像取得
  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if(pickedFile != null) {
        image = File(pickedFile.path);
      }
    });
  }
  


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                getImageFromGallery();
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(myAccount.accountIcon),
                radius: 50,
                child: const Text('写真を変更', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              ), 
            ),
          ),
          const SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('名前', style: TextStyle(fontWeight: FontWeight.bold)),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0,),
          SizedBox(
            width: size.height*0.3,
            child: ElevatedButton(
              onPressed: (){},
              child: const Text('変更 ')
            ),
          ),
          image == null ? const Text('画像が選択されていません') : Container(
            height: 200,
            width: 200,
            color: Colors.black,
            child: Image.file(image!, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}