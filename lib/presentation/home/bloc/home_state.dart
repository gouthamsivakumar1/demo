part of 'home_bloc.dart';

class HomeState extends Equatable {
  HomeState({this.bitCoinRate});

  final BitcoinRateModel? bitCoinRate;

  @override
  List<Object?> get props => [bitCoinRate];

  HomeState copyWith({
    BitcoinRateModel? bitCoinRate,
  }) {
    return HomeState(
      bitCoinRate: bitCoinRate ?? this.bitCoinRate,
    );
  }
}
