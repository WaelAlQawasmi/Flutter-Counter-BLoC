import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  //define default value
  CounterCubit() : super(CounterState(counterValue: 0, valueChanged: false));
  // methode to increment status
  void increment()=>{
  emit(CounterState(counterValue: state.counterValue+1,valueChanged: true )),
    print(state.counterValue)
  };
  // methode to decrement status
  void decrement()=> emit(CounterState(counterValue: state.counterValue-1,valueChanged: true));
}
