

import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBlolc extends Bloc<CounterEvent, CounterState>{
  CounterBlolc() :super(CounterStateInitial()){
    on<CounterIncrement>(_incremet);
    on<CounterDecrement>(_decrement);
  }


  void _incremet(CounterIncrement event, Emitter<CounterState> emit){
    emit(CounterStateData(state.counter + 1));

  }

  void _decrement(CounterDecrement event, Emitter<CounterState> emit){
    emit(CounterStateData(state.counter - 1));
  }


}