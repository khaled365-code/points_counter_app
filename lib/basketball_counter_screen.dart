import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class Busketballcounter extends StatefulWidget {
  @override
  State<Busketballcounter> createState() => _BusketballcounterState();
}

class _BusketballcounterState extends State<Busketballcounter>
{

  var team1Result=0;
  var team2Result=0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,

     appBar: AppBar(
       systemOverlayStyle: SystemUiOverlayStyle(
         statusBarColor: Colors.white, // <-- SEE HERE
       ),
       elevation: 0,
       backgroundColor: Colors.purple,
       title: Text('Points Counter',style: TextStyle(fontSize: 23,color:Colors.black,fontFamily: 'Lugr',fontWeight: FontWeight.bold ),),
     ),
     body: Column(
       children: [
         Spacer(flex: 2,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Column(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Text('Team 1',style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                 Text('$team1Result',style: TextStyle(fontSize: 100,color:Colors.black,fontWeight: FontWeight.bold ),),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                     fixedSize: Size(160,50),

                   ),
                     onPressed: (){
                     setState(() {
                       team1Result++;
                     });

                     },
                     child:Text('Add 1 point ',style: TextStyle(fontSize: 20,color:Colors.black ),),
                 ),
                 SizedBox(height: 20,),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     primary: Colors.purple,
                     fixedSize: Size(160,50),
                   ),
                     onPressed: (){
                       setState(() {
                         team1Result+=2;
                       });
                     },
                     child: Text('Add 2 point ',style: TextStyle(fontSize: 20,color:Colors.black ),)),
                 SizedBox(height: 20,),
                 ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.purple,
                       fixedSize: Size(160,50),
                     ),
                     onPressed: (){
                       setState(() {
                         team1Result+=3;
                       });
                     },
                     child: Text('Add 3 point ',style: TextStyle(fontSize: 20,color:Colors.black ),)),








               ],

             ),
             SizedBox(
               height: 350,
               child: VerticalDivider(
                 color: Colors.purple,
                 thickness: 3,


               ),
             ),
             Column(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Text('Team 2',style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                 Text('${team2Result}',style: TextStyle(fontSize: 100,color:Colors.black,fontWeight: FontWeight.bold ),),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     primary: Colors.purple,
                     fixedSize: Size(160,50),

                   ),
                   onPressed: (){
                     setState(() {
                       team2Result++;
                     });
                   },
                   child:Text('Add 1 point ',style: TextStyle(fontSize: 20,color:Colors.black ),),
                 ),
                 SizedBox(height: 20,),
                 ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.purple,
                       fixedSize: Size(160,50),
                     ),
                     onPressed: (){
                       setState(() {
                         team2Result+=2;
                       });
                     },
                     child: Text('Add 2 point ',style: TextStyle(fontSize: 20,color:Colors.black ),)),
                 SizedBox(height: 20,),
                 ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.purple,
                       fixedSize: Size(160,50),
                     ),
                     onPressed: (){
                       setState(() {
                         team2Result+=3;
                       });
                     },
                     child: Text('Add 3 point ',style: TextStyle(fontSize: 20,color:Colors.black ),)),








               ],

             ),

           ],
         ),
         Spacer(flex: 2,),

         ElevatedButton(
             style: ElevatedButton.styleFrom(
               primary: Colors.purple,
               fixedSize: Size(160,50),
             ),
             onPressed: (){
              setState(() {
                team1Result=0;
                team2Result=0;
              });
             },
             child: Text('Reset ',style: TextStyle(fontSize: 20,color:Colors.black ),)),
         Spacer(flex: 2,)
       ],


     ),


   );

  }
}
