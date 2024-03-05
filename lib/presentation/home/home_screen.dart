import 'dart:io';

import 'package:b_coin/core/app_export.dart';
import 'package:b_coin/presentation/home/bloc/bitcoin_rate_model.dart';
import 'package:b_coin/presentation/home/bloc/home_bloc.dart';
import 'package:b_coin/widget/app_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState())..add(ChoiceInitialEvent()),
        child: HomeScreen());
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {
        exit(0);
      },
      child: Scaffold(
          endDrawer: AppDrawer(),
          body: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Container(
                height: SizeUtils.height,
                decoration: BoxDecoration(color: appTheme.blueA40001),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            "B-coin",
                            style: CustomTextStyles.bodySmallPoppinsWhiteA70001,
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              border: Border.all(
                                  color: appTheme.whiteA700,
                                  width:
                                      1.0), // Adjust color and width as needed
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40)),
                            ),
                            child: _buildBitcoinRatesList(state.bitCoinRate)))
                  ],
                ),
              );
            },
          )),
    );
  }
}

Widget _buildBitcoinRatesList(BitcoinRateModel? bitcoinRate) {
  return ListView(
    children: [
      _buildCurrencyItem('USD', bitcoinRate?.bpi['USD']),
      Divider(),
      _buildCurrencyItem('GBP', bitcoinRate?.bpi['GBP']!),
      Divider(),
      _buildCurrencyItem('EUR', bitcoinRate?.bpi['EUR']!),
    ],
  );
}

Widget _buildCurrencyItem(String currencyCode, CurrencyInfo? currencyInfo) {
  return ListTile(
    title: Text(
      '$currencyCode',
      style: CustomTextStyles.bodyLargeBlack900,
    ),
    subtitle: Text('${currencyInfo?.description}'),
    trailing: Text(
      '${currencyInfo?.rate}',
      style: CustomTextStyles.bodyMediumPoppinsBlack900_1,
    ),
  );
}
