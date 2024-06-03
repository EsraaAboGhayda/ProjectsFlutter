import 'package:exame_flutter/thirdpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:exame_flutter/styles/colors.dart';
import 'package:exame_flutter/secondpage.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.black,
    body:
    Container(
      
      padding: EdgeInsets.all(50),
      height: 852,
      width: 400,
      // decoration:BoxDecoration(
        
      //  image: DecorationImage(image:AssetImage(coffeImage),),),
     
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        
        
        children: [
          SizedBox(height: 10,),
          Center(
            child: Text("riide",style:textStyle1,),
          ),
            Center(
           
            child: Text("welcome to RIIDE",style:textStyle1,),
          ),
          SizedBox(height: 3,),
            
        
         Padding(
            padding: const EdgeInsets.only(left:1.0,top:10.0),
            child: Text("username",style:textStyle1,),
          ),
          SizedBox(height: 3,),

          TextField(
            style:TextStyle(color: Colors.white) ,
            decoration: InputDecoration(
            border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          
          hintText: 'Enter your Email or username',
          // hintStyle: TextStyle(color: Colors.green),
          ),
          
          ),
          
         Padding(
            padding: const EdgeInsets.only(left:1.0,top:10.0),
            child: Text("password",style:textStyle1,),
          ),
          SizedBox(height: 3,),

    
          TextField(
           style:TextStyle(color: Colors.white) ,
            decoration:InputDecoration(border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(3)
            
          ),
        hintText: 'Enter your password',
          
          ),
          ),
          
          SizedBox(height: 20,),

          Container(
            alignment: Alignment.center,
            width: 333,
            height: 47,
            margin: const EdgeInsets.only(left: 15.0,right: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:green
            ),

            child: InkWell(
              onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SecondpageWithFutureApi()));
              },
              child: Text("Login",style:textButtonDown ))  
          
          ),


   

          SizedBox(height: 10,),
     Center(child: Text("Don't have an account? signup",style:TextStyle(fontSize:14,fontWeight: FontWeight.w100,color:white,))),

      //    Center(child: Text("Don't have an account? signup",style:TextStyle(fontSize:14,fontWeight: FontWeight.w600,color:white,))),
        
        ],
      )
      ),
      
    );
    
   
  }
}
