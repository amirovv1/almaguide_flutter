// ignore_for_file: deprecated_member_use

import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/profile/bloc/profile_cubit/profile_cubit.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/call_center_modal.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/emerge_contacts_modal.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/language_modal.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/profile_bottom_sheet.dart';
import 'package:almaguide_flutter/features/profile/presentation/widgets/profile_item_card.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

bool isAuth = true;

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    context.read<ProfileCubit>().initProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: isAuth ? null : const ProfileBottomSheet(),
      floatingActionButtonLocation:
          isAuth ? null : FloatingActionButtonLocation.centerDocked,
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
      body: BlocConsumer<ProfileCubit, ProfileState>(
        builder: (context, state) {
          return state.maybeWhen(initialState: ((isAuthorized, user) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isAuthorized)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 27.r),
                          child: Text(
                            S.of(context).your_info,
                            style: ts(TS.s16w700).copyWith(color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 27.r),
                          child: Column(
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  S.of(context).name,
                                  style: ts(TS.s12w400),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    user?.fullName ?? '',
                                    style: ts(TS.s14w400)
                                        .copyWith(color: Colors.black),
                                  ),
                                ),
                              ),
                              if (user?.phone != null)
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Text(
                                    S.of(context).number,
                                    style: ts(TS.s12w400),
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      user?.phone ?? '',
                                      style: ts(TS.s14w400)
                                          .copyWith(color: Colors.black),
                                    ),
                                  ),
                                ),
                              if (user?.email != null)
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Text(
                                    S.of(context).mail,
                                    style: ts(TS.s12w400),
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      user?.email ?? '',
                                      style: ts(TS.s14w400)
                                          .copyWith(color: Colors.black),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                                  horizontal: 27, vertical: 15)
                              .r,
                          child: Text(
                            S.of(context).addit_info,
                            style: ts(TS.s16w700).copyWith(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 10.r),
                      children: [
                        //ProfileItemCard(title: S.of(context).push_notification),
                        ProfileItemCard(
                          title: S.of(context).app_language,
                          onTap: () => showLanguageModal(context),
                        ),
                        ProfileItemCard(title: S.of(context).my_tours, onTap: () => context.router.push(MyTourListRoute())),
                        ProfileItemCard(
                          title: S.of(context).emerge_contacts,
                          onTap: () => showContactsModal(context),
                        ),
                        ProfileItemCard(
                          title: S.of(context).call_center,
                          onTap: () => showCallCentersModal(context),
                        ),
                        ProfileItemCard(title: S.of(context).privat_policy, 
                        
                       onTap: () => context.router.push(const PrivatPolicyRoute())),
                      ]),
                  if (isAuthorized)
                    InkWell(
                      onTap: () {
                        showAdaptiveDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog.adaptive(
                                title: Center(
                                  child: Text(S.of(context).exit_from_app),
                                ),
                                actions: <Widget>[
                                  // Cancel button
                                  TextButton(
                                    onPressed: () {
                                      context.router.pop();
                                    },
                                    child: Text(S.of(context).cancel),
                                  ),
                                  // Exit button
                                  TextButton(
                                    onPressed: () async {
                                      context
                                          .read<ProfileCubit>()
                                          .exit()
                                          .whenComplete(() {
                                        context.router.pop();
                                      });
                                    },
                                    child: Text(
                                      S.of(context).exit,
                                      style: ts(TS.s14w400)
                                          .copyWith(color: Colors.red),
                                    ),
                                  ),
                                ],
                              );
                            });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.r, vertical: 20.r),
                        child: Text(
                          S.of(context).exit,
                          style: ts(TS.s14w400).copyWith(color: Colors.red),
                        ),
                      ),
                    )
                ],
              ),
            );
          }), orElse: () {
            return const Center(child: CircularProgressIndicator.adaptive());
          });
        },
        listener: (BuildContext context, ProfileState state) {
          state.maybeWhen(
            orElse: () {},
            initialState: (isAuthorized, user) {
              isAuth = isAuthorized;
              setState(() {});
            },
          );
        },
      ),
    );
  }
}
