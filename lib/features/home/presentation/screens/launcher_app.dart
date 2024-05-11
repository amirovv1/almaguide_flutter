import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/home/presentation/widgets/custom_nav_bar_item.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LauncherAppScreen extends StatefulWidget {
  const LauncherAppScreen({super.key});

  @override
  State<LauncherAppScreen> createState() => _LauncherAppScreenState();
}

class _LauncherAppScreenState extends State<LauncherAppScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      // extendBody: true,
      resizeToAvoidBottomInset: false,
      routes: const [
        HomeRoute(),
        CategoriesMainRoute(),
        FavoritesRoute(),
        ProfileRoute(),

        // FoodRoute(),
        // ChartsMainRoute(),
        // ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(color: AppColors.textGrey.withOpacity(0.3)))),
          child: BottomNavigationBar(
              selectedLabelStyle: ts(TS.s12w500),
              unselectedLabelStyle: ts(TS.s12w500),
              enableFeedback: true,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              onTap: tabsRouter.setActiveIndex,
              currentIndex: tabsRouter.activeIndex,
              items: [
                CustomNavBarItem(
                  label: S.of(context).home,
                  iconAsset: Assets.svg.homeGoods24,
                  activeColor: AppColors.mainGreen,
                ).build(),
                CustomNavBarItem(
                  label: S.of(context).categories,
                  iconAsset: Assets.svg.category24,
                  activeColor: AppColors.mainGreen,
                ).build(),
                
                CustomNavBarItem(
                  label: S.of(context).favorites,
                  iconAsset: Assets.svg.likeOutline24,
                  activeColor: AppColors.mainGreen,
                ).build(),
                CustomNavBarItem(
                  label: S.of(context).profile,
                  iconAsset: Assets.svg.user24,
                  activeColor: AppColors.mainGreen,
                ).build(),
             
              ]),
        );
      },
    );
  }
}
