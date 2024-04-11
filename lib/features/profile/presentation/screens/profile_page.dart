
import 'package:almaguide_flutter/core/gen/assets.gen.dart';
import 'package:almaguide_flutter/core/helpers/colors_helper.dart';
import 'package:almaguide_flutter/core/helpers/formatter.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/features/profile/bloc/language_cubit/language_cubit.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/profile_bottom_sheet.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/profile_item_card.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const ProfileBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10).r,
          child: Text(
            S.of(context).profile,
            style: ts(TS.s24w700).copyWith(color: Colors.black),
          ),
        ),
      ),
      body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 10.r),
          children: [
            //ProfileItemCard(title: S.of(context).push_notification),
            ProfileItemCard(
              title: S.of(context).app_language,
              onTap: () => showLanguageModal(context),
            ),
            ProfileItemCard(title: S.of(context).my_tours),
            ProfileItemCard(
              title: S.of(context).emerge_contacts,
              onTap: () => showContactsModal(context),
            ),
            ProfileItemCard(title: S.of(context).call_center),
            ProfileItemCard(title: S.of(context).privat_policy),
          ]),
    );
  }
}

void showContactsModal(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: const Radius.circular(16).r),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        final List<String> contacts = ['101', '102', '103', '104'];
        return Container(
          height: 1.sh / 1.8,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12).r),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16).r,
            child:
                SingleChildScrollView(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                SizedBox(
                  height: 10.r,
                                ),
                                Center(
                  child: Container(
                    width: 40.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                        color: AppColors.textGrey,
                        borderRadius: BorderRadius.circular(16.r)),
                  ),
                                ),
                                SizedBox(
                  height: 20.r,
                                ),
                                Text(
                  'Контакты в чрезвычайных ситуациях',
                  style: ts(TS.s24w700).copyWith(color: Colors.black),
                                ),
                                SizedBox(
                  height: 20.r,
                                ),
                                ...contacts
                    .map((e) => ListTile(
                          contentPadding: EdgeInsets.zero,
                          enableFeedback: true,
                          title: Text(
                            Formatter.getServiceName(e, context),
                            style: ts(TS.s12w400)
                                .copyWith(color: AppColors.textGrey),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5).r,
                            child: Text(
                              e,
                              style: ts(TS.s14w400).copyWith(color: Colors.black),
                            ),
                          ),
                          trailing: IconButton(
                              onPressed: () async{
                              await  _makePhoneCall(e);
                              },
                              icon: SvgPicture.asset(Assets.svg.phone24)),
                        ))
                    .toList(),
                    SizedBox(height: 50.r)
                              ]),
                ),
          ),
        );
      });

  
}

Future<void> _makePhoneCall(String phoneNumber) async {
  canLaunchUrl(Uri.parse('tel:$phoneNumber')).then((bool result) {
                if (result) {
                  launchUrl(Uri.parse('tel:$phoneNumber'), mode: LaunchMode.platformDefault);
                }
                else{

                }
              });
            }
          
    
  

void showLanguageModal(BuildContext context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: const Radius.circular(16).r),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return BlocBuilder<LanguageCubit, LanguageState>(
          builder: (context, state) {
            return Container(
              height: 1.sh / 2.5,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12).r),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16).r,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.r,
                      ),
                      Center(
                        child: Container(
                          width: 40.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                              color: AppColors.textGrey,
                              borderRadius: BorderRadius.circular(16.r)),
                        ),
                      ),
                      SizedBox(
                        height: 20.r,
                      ),
                      Text(
                        S.of(context).app_language,
                        style: ts(TS.s24w700).copyWith(color: Colors.black),
                      ),
                      SizedBox(
                        height: 20.r,
                      ),
                      ...S.delegate.supportedLocales
                          .map((e) => Container(
                                margin: const EdgeInsets.only(bottom: 30).r,
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        context
                                            .read<LanguageCubit>()
                                            .changeLang(e.languageCode);
                                      },
                                      child: Container(
                                        width: 24.r,
                                        height: 24.r,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors.selectGrey),
                                        child: state.langCode == e.languageCode
                                            ? Center(
                                                child: Container(
                                                  width: 14.r,
                                                  height: 14.r,
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: AppColors
                                                              .mainGreen),
                                                ),
                                              )
                                            : null,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.r,
                                    ),
                                    Text(
                                      Formatter.getLanguageName(e.languageCode),
                                      style: ts(TS.s14w400)
                                          .copyWith(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ))
                          .toList()
                    ]),
              ),
            );
          },
        );
      });
}
