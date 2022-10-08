import 'package:bloc/bloc.dart';

class CustomBlocObserver extends BlocObserver{
  @override
  void onEvent(Bloc bloc, Object? event) {
    // print('${bloc.runtimeType} : $event');
    super.onEvent(bloc, event);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    // print(change);
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // print(transition);
    super.onTransition(bloc, transition);
  }
}