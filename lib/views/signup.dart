

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  String countryCode = "+216"; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.center,
  
        children: [
          CountryCodePicker(
         onChanged: (value){
           setState(() {
            countryCode = value.toString() ; 
              
              });
         },
         // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
         initialSelection: 'TN',
         favorite: ['+216','TN'],
         // optional. Shows only country name and flag
         showCountryOnly: true,
         // optional. Shows only country name and flag when popup is closed.
         showOnlyCountryWhenClosed: false,
         // optional. aligns the flag and the Text left
         alignLeft: false,
       ),

       Text("${countryCode}")
        ]
     ),
  
          
  
  
  
      
  
      ),

    );
  }
}