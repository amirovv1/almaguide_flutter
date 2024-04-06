import 'package:flutter/material.dart';
import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';

class ProfileItemCard extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;

  const ProfileItemCard({
    Key? key,
    this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Передача функции при нажатии
      child: ListTile(
        leading: Text(
          title,
          style: ts(TS.s14w400).copyWith(color: Colors.black),
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
