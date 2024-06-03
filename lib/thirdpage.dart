import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:exame_flutter/styles/colors.dart';

main(){
  runApp( thirdPage());
}


class thirdPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body:
    Container(
      padding: EdgeInsets.all(50),
      height: 852,
      width: 400,
      decoration:BoxDecoration(
        
       image: DecorationImage(image:AssetImage("assets/images/Artwork.jpg"),),),
     
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        
        
        children: [
  
   SizedBox(height: 50,),
          Container(
            alignment: Alignment.center,
            width: 333,
            height: 47,
            margin: const EdgeInsets.only(left: 15.0,right: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:grey
            ),
            child: Text("shared you invite code",style:textStyle1 ,),
          ),
          SizedBox(height: 15,),
          Container(
            alignment: Alignment.center,
            width: 333,
            height: 47,
            margin: const EdgeInsets.only(left: 15.0,right: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2),
              color:green
            ),
            child: Text("invite friends",style:textStyle1 ,),
          ),SizedBox(height: 10,),
        //  Center(child: Text("Forget Your Password?",style:TextStyle(fontSize:14,fontWeight: FontWeight.w600,color:green,))),
        
        ],
      )
      ),
      
    );
    
   
  }
}
