import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({ Key? key }) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        color: Colors.red,
        height: 79,
        child: const Text('aaaa'),
        
      ),
    );
  }
}