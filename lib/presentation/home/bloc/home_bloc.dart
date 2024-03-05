import 'package:b_coin/presentation/home/bloc/bitcoin_rate_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<ChoiceInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChoiceInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      print("hi");
      Dio dio = Dio();
      Response response =
          await dio.get('https://api.coindesk.com/v1/bpi/currentprice.json');

      BitcoinRateModel bitcoinRate = BitcoinRateModel.fromJson(response.data);
      print("hi");
      emit(state.copyWith(bitCoinRate: bitcoinRate));
    } catch (error) {
      print('Error: $error');
    }
  }
}
