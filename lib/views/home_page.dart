import 'package:dark_mode/views/toggle_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/darkModeController.dart';

class HomePage extends StatelessWidget {
 HomePage({Key? key}) : super(key: key);
   DarkModeController darkModeController = Get.put(DarkModeController()); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkModeController.darkMode.value == false ? Colors.white : Colors.black,
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: darkModeController.darkMode.value == false ? Colors.black : Colors.white),),
        backgroundColor:  darkModeController.darkMode.value == false ? Colors.white : Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(
        child: Text(
          'Welcome to the Home Page!',
          style: TextStyle(fontSize: 24, color:  darkModeController.darkMode.value == false ? Colors.black : Colors.white),
        ),
      ),  
      ElevatedButton(onPressed: (){Get.to(Toggle()); }, child: Text("toggle"))  
      ],)
    );
  }
}