import 'package:basketball_points_counter_app/cubits/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Busketballcounter extends StatelessWidget {




  @override
  Widget build(BuildContext context) {

    var cubitA= BlocProvider.of<CounterCubit>(context);
    var cubitB= BlocProvider.of<CounterCubit>(context);
   return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white, // <-- SEE HERE
          ),
          elevation: 0,
          backgroundColor: Colors.purple,
          title: Text('Points Counter', style: TextStyle(fontSize: 23,
              color: Colors.black,
              fontFamily: 'Lugr',
              fontWeight: FontWeight.bold),),
        ),
        body: Column(
          children: [
            Spacer(flex: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BlocBuilder<CounterCubit, CounterState>(
                  builder: (context, state) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Team 1', style: TextStyle(fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Text('${cubitA.teamAPoints}', style: TextStyle(fontSize: 100,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            fixedSize: Size(160, 50),

                          ),
                          onPressed: () {
                            cubitA.incrementA(btnAPressed: 1);
                          },
                          child: Text('Add 1 point ',
                            style: TextStyle(
                                fontSize: 20, color: Colors.black),),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                              fixedSize: Size(160, 50),
                            ),
                            onPressed: () {
                              cubitA.incrementA(btnAPressed: 2);
                            },
                            child: Text('Add 2 point ', style: TextStyle(
                                fontSize: 20, color: Colors.black),)),
                        SizedBox(height: 20,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                              fixedSize: Size(160, 50),
                            ),
                            onPressed: () {
                              cubitA.incrementA(btnAPressed: 3);
                            },
                            child: Text('Add 3 point ', style: TextStyle(
                                fontSize: 20, color: Colors.black),)),


                      ],

                    );
                  },
                ),
                SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    color: Colors.purple,
                    thickness: 3,


                  ),
                ),
                BlocBuilder<CounterCubit, CounterState>(
                  builder: (context, state) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Team 2', style: TextStyle(fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Text('${cubitB.teamBPoints}', style: TextStyle(fontSize: 100,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            fixedSize: Size(160, 50),

                          ),
                          onPressed: () {
                            cubitB.incrementB(btnBPressed: 1);
                          },
                          child: Text('Add 1 point ',
                            style: TextStyle(
                                fontSize: 20, color: Colors.black),),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                              fixedSize: Size(160, 50),
                            ),
                            onPressed: () {
                              cubitB.incrementB(btnBPressed: 2);

                            },
                            child: Text('Add 2 point ', style: TextStyle(
                                fontSize: 20, color: Colors.black),)),
                        SizedBox(height: 20,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                              fixedSize: Size(160, 50),
                            ),
                            onPressed: () {
                              cubitB.incrementB(btnBPressed: 3);
                            },
                            child: Text('Add 3 point ', style: TextStyle(
                                fontSize: 20, color: Colors.black),)),


                      ],

                    );
                  },
                ),

              ],
            ),
            Spacer(flex: 2,),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  fixedSize: Size(160, 50),
                ),
                onPressed: () {
                 cubitA.incrementA(btnAPressed: 0);
                 cubitB.incrementB(btnBPressed: 0);
                },
                child: Text('Reset ',
                  style: TextStyle(fontSize: 20, color: Colors.black),)),
            Spacer(flex: 2,)
          ],


        ),


      );
  }


}
