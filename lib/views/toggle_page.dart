

import 'package:dark_mode/controllers/darkModeController.dart';
import 'package:dark_mode/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Toggle extends StatefulWidget {
   Toggle({Key? key}) : super(key: key);

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {


 DarkModeController darkModeController = Get.put(DarkModeController()); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkModeController.darkMode.value == false ? Colors.white : Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
  
        Center(
        child:  // ToggleButtons with icons only.
        
     
               Switch(
      // This bool value toggles the switch.
      value: darkModeController.darkMode.value,
      activeColor: Colors.red,
      onChanged: (value) {
              setState(() {
               darkModeController.changeDarkMode(value); 
              });
               darkModeController.changeDarkMode(value); 
  })
            
          ),

          ElevatedButton(onPressed: (){Get.to(()=>HomePage()); }, child: Text("Home"))
      ],)
        
      
    ); 
  }
}