import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/categories/bloc/payment_cubit.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/app_form_field.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/profile_bottom_sheet.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key, required this.tourId});
  final int tourId;

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

final TextEditingController cardNumber = TextEditingController();
final TextEditingController limit = TextEditingController();
final TextEditingController cvv = TextEditingController();
bool isActive = false; // Переменная для состояния активности кнопки

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  void initState() {
    super.initState();
    // Добавляем прослушивателей изменений в текстовые поля
    cardNumber.addListener(updateButtonState);
    limit.addListener(updateButtonState);
    cvv.addListener(updateButtonState);
  }

  // Функция для обновления состояния кнопки
  void updateButtonState() {
    setState(() {
      // Проверяем, заполнены ли все поля
      isActive = cardNumber.text.isNotEmpty &&
          limit.text.isNotEmpty &&
          cvv.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.all(20).r,
        width: 1.sw,
        height: 48,
        child: CustomButton(
            onPressed: () {
              context.read<PaymentCubit>().pay(id: widget.tourId);
            },
            buttonText: S.of(context).pay,
            isActive: isActive),
      ),
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
          S.of(context).payment,
          style: ts(TS.s18w600).copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: BlocListener<PaymentCubit, PaymentState>(
        listener: (context, state) {
          state.whenOrNull(
            sucess: () {
              context.router.popAndPush(const PaymentSuccessRoute());
            },
          );
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20).r,
            child: Column(
              children: [
                AppFormField(
                  controller: cardNumber,
                  hintText: S.of(context).card_number,
                  mask: '',
                  maxLength: 16,
                  inputType: TextInputType.number,
                ),
                SizedBox(height: 30.r),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: AppFormField(
                        controller: limit,
                        hintText: S.of(context).card_limit,
                        mask: '00/00',
                        maxLength: 4,
                        inputType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      width: 10.r,
                    ),
                    Expanded(
                      flex: 2,
                      child: AppFormField(
                        controller: cvv,
                        hintText: 'CVV',
                        mask: '',
                        maxLength: 3,
                        inputType: TextInputType.number,
                        isPassword: true,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
