part of 'counter_bloc.dart';

abstract class CounterState{

  final int counter;

  const CounterState(this.counter);


}

class CounterStateInitial extends CounterState{
  CounterStateInitial() : super(0); //contrutor iniciando com 0

}

//classe responsavel pela criação do novo valor
class CounterStateData extends CounterState{
  CounterStateData(int counter) :super(counter);
}