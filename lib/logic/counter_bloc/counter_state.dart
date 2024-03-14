part of 'counter_cubit.dart';



class CounterState extends Equatable {
  int counterValue;
  bool valueChanged=false;
  CounterState( {required this.counterValue, required this.valueChanged});

  @override
  // TODO: implement props
  List<Object?> get props =>[this.counterValue, this.valueChanged];
}
