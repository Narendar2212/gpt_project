import 'dart:async';

import 'package:bloc_project/bloc/internet_event.dart';
import 'package:bloc_project/bloc/internet_state.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  Connectivity connectivity = Connectivity();
  StreamSubscription? streamSubscription;
  InternetBloc() : super(InternetInitialState()) {
    on<InternetOFFEvent>((event, emit) => emit(InternetOFFState()));
    on<InternetONEvent>((event, emit) => emit(InternetONState()));

    streamSubscription = connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        add(InternetONEvent());
      } else {
        add(InternetOFFEvent());
      }
    });
  }
  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
