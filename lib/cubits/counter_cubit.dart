import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamAPoints=0;
  int teamBPoints=0;


   incrementA({required int btnAPressed})
  {
    if(btnAPressed==1)
      {
        teamAPoints+=1;
      }
    else if(btnAPressed==2)
    {
      teamAPoints+=2;
    }
    else if(btnAPressed==3)
      {
        teamAPoints+=3;

      }
    else
      {
        teamAPoints=0;
      }

    emit(TeamAIncrementState());

  }

   incrementB({required int btnBPressed})
  {
    if(btnBPressed==1)
    {
      teamBPoints+=1;
    }
    else if(btnBPressed==2)
    {
      teamBPoints+=2;
    }
    else if(btnBPressed==3)
    {
      teamBPoints+=3;

    }
    else
      {
        teamBPoints=0;
      }

    emit(TeamBIncrementState());

  }

}
