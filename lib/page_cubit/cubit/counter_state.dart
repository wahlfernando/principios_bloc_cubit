part of 'counter_cubit.dart';

abstract class CounterState{

  final int counter;

  const CounterState(this.counter);


}

class CounterStateInitial extends CounterState{
  CounterStateInitial() : super(0); //contrutor iniciando com 0
}

//classe responsavel pela criação do novo valor - é uam nova instancia
class CounterStateData extends CounterState{
  CounterStateData(int counter) :super(counter);
}