// ignore_for_file: use_build_context_synchronously

import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> checkAuthorizationAndExecute(BuildContext context, Function function) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? isAuthenticated = prefs.getString('access') ;

  if (isAuthenticated != null) {
    function();
  } else {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:  Text(S.of(context).auth_need),
          content:  Text(S.of(context).auth_need_description),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}