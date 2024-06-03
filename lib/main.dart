import 'package:exame_flutter/Homepage.dart';
import 'package:exame_flutter/core/config/get_it_config.dart';
import 'package:exame_flutter/thirdpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:exame_flutter/styles/colors.dart';
import 'package:exame_flutter/secondpage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';


String usernew=core.get<SharedPreferences>().getString('name').toString();
String name=core.get<SharedPreferences>().getString('name').toString();

void main() {
   setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
 

  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
         
       home:
          core.get<SharedPreferences>().getString('name')==null
            ?
             HomePage()
            : SecondpageWithFutureApi()
      );
    
  }
}