import 'package:exame_flutter/styles/colors.dart';
import 'package:exame_flutter/thirdpage.dart';
import 'package:flutter/material.dart';
import 'package:exame_flutter/model/people_model.dart';
import 'package:exame_flutter/service/people_service.dart';


class SecondpageWithFutureApi extends StatelessWidget {
   SecondpageWithFutureApi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.black,
         appBar: AppBar(
         actions: [
            InkWell(
           onTap: (){
             Navigator.push(
               context,
              MaterialPageRoute(builder: (context) => thirdPage()),
              );
                  },
            child: Icon(Icons.next_plan),
             ),
            ]

          
      ),
      body:    
       FutureBuilder<List<PeopleModel>>(
        future: getPeopleData(),
        
        builder: (context, snapshot) {
          if (snapshot.hasData) {
             return ListView.builder(


              
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                

              return ListTile(

                
              leading: CircleAvatar(
                backgroundImage: NetworkImage(snapshot.data![index].image),
            
              ),
              
              title: Row(
                  children: [
                  Text(snapshot.data![index].name, style:textStyle3 ,), 
                    SizedBox(width: 20), 
                          
               Expanded(
                 child: 
                   Text(snapshot.data![index].unread_message_count.toString(),
                        style: textStyle2,
                        ),
                 
                 
                       ),
    ],
  ),  
              subtitle: Text(snapshot.data![index].message, style:textStyle3),
              
               trailing: Text(snapshot.data![index].date.toString(), style:textStyle3),
               
    
               
               );
             
             
              });
              
          } else if(snapshot.hasError){
            return Text("No data");
          }
          
          else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
