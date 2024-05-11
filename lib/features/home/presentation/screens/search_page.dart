import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/features/home/bloc/home_cubit.dart';
import 'package:almaguide_flutter/features/home/presentation/widgets/home_page/home_list_item.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const TextFieldInAppBar(),
          leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
            onPressed: () {
              // Здесь вы можете добавить логику выхода из страницы
              Navigator.of(context).pop(); // Закрытие текущей страницы
            },
          ),
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return state.map(
              initialState: (initial) => const Center(
                child: Text('Here you can look for places'),
              ),
              loadingState: (loading) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorState: (error) => ScaffoldMessenger(child: Text(error.message)),
              sucess: (success) => Padding(
                padding: EdgeInsets.all(16.r),
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (ctx, index) {
                    return CustomCard(
                        index: index, attract: success.attractionsList[index]);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20.h,
                    );
                  },
                  itemCount: success.attractionsList.length,
                ),
              ),
            );
          },
        ));
  }
}

class TextFieldInAppBar extends StatelessWidget {
  const TextFieldInAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.r,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5).r,
      // Используйте TextFormField для текстового поля
      child: TextFormField(
        onChanged: (val) {
          context.read<HomeCubit>().search(val);
        },
        autofocus: true,

        // Установите начальное состояние enabled
        enabled:
            true, // Можете изменить это на false для проверки другого состояния

        decoration: const InputDecoration(
          isDense: true,
          hintText: 'Поиск...',
          // Настройте разные стили рамок в зависимости от состояния enabled
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey, // Серые рамки по умолчанию
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey, // Серые рамки, когда TextFormField неактивен
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: AppColors
                  .mainGreen, // Зеленые рамки, когда TextFormField активен
            ),
          ),
        ),
        // Добавьте дополнительную логику для TextFormField, если необходимо
      ),
    );
  }
}
