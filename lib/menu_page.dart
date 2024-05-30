import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.close, color: Colors.white,)),
      ),
      body: Center(
        child: Text("Explore\nProfile\nSetting", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 40), textAlign: TextAlign.center,),
      ),
    );
  }
}
