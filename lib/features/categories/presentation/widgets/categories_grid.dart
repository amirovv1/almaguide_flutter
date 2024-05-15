import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/home/domain/models/category_dto.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesGridView extends StatelessWidget {
  final List<CategoryDto> categories;

  const CategoriesGridView({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: EdgeInsets.zero,
        crossAxisSpacing: 0,
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: categories
            .map((e) =>
                InkWell(
                  onTap: () => context.router.push( CategoryDetailRoute(title: e.name ?? '', categoryId: e.id)),
                  child: _buildGridItem(e.icon ?? '', e.name ?? '')))
            .toList());
  }

  Widget _buildGridItem(String icon, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // ignore: deprecated_member_use
        Image.network(icon, color: Colors.white, errorBuilder: (cont, obj, trace){
          return Container(color: Colors.black,);
        },),
        SizedBox(height: 8.r),
        Text(
          title,
          maxLines: 1,
          style: ts(TS.s11w500).copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
