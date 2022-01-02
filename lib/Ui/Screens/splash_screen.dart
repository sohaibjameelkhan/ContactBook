import 'package:contact_book/Utils/constants.dart';
import 'package:contact_book/Utils/images_path.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _getUI(context),

    );
  }

  Widget _getUI(BuildContext context){
    return Scaffold(
      backgroundColor: MyAppColors.background_color,
      body: Column(
        children: [

          Image.asset("Assets/Images/1.png",width: MediaQuery.of(context).size.width,)
          
        ],
      ),
     
    );
  }
}
