// ignore_for_file: prefer_const_constructors

import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/injection/get_it.dart';
import 'package:almaguide_flutter/features/categories/bloc/exchanges_cubit.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ExchangeDetailScreen extends StatefulWidget {
  const ExchangeDetailScreen({super.key});

  @override
  State<ExchangeDetailScreen> createState() => _ExchangeDetailScreenState();
}

class _ExchangeDetailScreenState extends State<ExchangeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.router.popForced();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          S.of(context).exchanges,
          style: ts(TS.s18w600).copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: BlocProvider<ExchangesCubit>(
        create: (context) => getIt<ExchangesCubit>()..initExchanges(),
        child: BlocBuilder<ExchangesCubit, ExchangesState>(
            builder: (context, state) {
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: state.maybeWhen(
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              },
              sucess: (exchanges) {
                final list = exchanges;
                return RefreshIndicator.adaptive(
                  onRefresh: () async {
                    context.read<ExchangesCubit>().initExchanges();
                  },
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(list[index].currency),
                          subtitle: Text(
                              '1${list[index].currency} = ${list[index].rate} ₸'),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 8.r,
                        );
                      },
                      itemCount: list.length),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
