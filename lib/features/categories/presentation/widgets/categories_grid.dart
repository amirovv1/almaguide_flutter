import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesGridView extends StatelessWidget {
  final List<String> icons;
  final List<String> titles;

  const CategoriesGridView({
    Key? key,
    required this.icons,
    required this.titles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      crossAxisSpacing: 0,
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(
        icons.length,
        (index) => _buildGridItem(icons[index], titles[index]),
      ),
    );
  }

  Widget _buildGridItem(String icon, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // ignore: deprecated_member_use
        SvgPicture.asset(icon,  color: Colors.white),
        SizedBox(height: 8.r),
        Text(
          title,
          style: ts(TS.s11w500).copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
