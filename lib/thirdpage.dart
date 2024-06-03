import 'package:flutter/material.dart';
import 'package:exame_flutter/styles/colors.dart';
import 'package:exame_flutter/secondpage.dart';

import 'package:flutter/material.dart';



class thirdPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    
    backgroundColor: Colors.black,
    appBar: AppBar(
       backgroundColor: Colors.black,
       title: Text("Invite Friends", style: textStyle1 ,), 
    ),
    body:
    Container(
    
      child:Column(
     
        
        children: [

Expanded(
  flex:4,
  
 child: 
  Container(
           
            alignment: Alignment.center,
            width: 376,
            height: 200,
            margin: const EdgeInsets.only(left: 1,top: 20),
            decoration: BoxDecoration(
            image:const DecorationImage(image:AssetImage("assets/images/Artwork.jpg"),),

             
            ),
            
           
          ),
),

          Center(
            child: Text("Invite Friends",style: textStyle1,)),
        

          SizedBox(height:20,),
          Center(
            child: Text("Sign up a friend with your referral ",style: textStyle3,)),
        
        // SizedBox(height:,),
          Center(
            child: Text("code and earn RIIDE and/or free rides. ",style: textStyle3,)),
        
          SizedBox(height: 20,),

          Container(
            
            alignment: Alignment.center,
            width: 340,
            height: 47,
            margin: const EdgeInsets.only(left: 15.0,right: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color:grey,
            
            ),
      

              child: Text("Share your invite code",style:textButtonDown ),
         
          ),
            SizedBox(height: 20,),
  Container(
            
            alignment: Alignment.center,
            width: 340,
            height: 47,
            margin: const EdgeInsets.only(left: 15.0,right: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color:green,
            
            ),
      

              child: Text("Invite Friends",style:textButtonDown),
         
          ),

        ],
      ),
      ),
      
        
      
    );
    
   
  }
}
