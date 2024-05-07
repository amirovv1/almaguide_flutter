import 'package:almaguide_flutter/features/home/presentation/widgets/home_page/stories_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoriesThumbnail extends StatefulWidget {
  const StoriesThumbnail({super.key, required this.url});
  final String url;

  @override
  State<StoriesThumbnail> createState() => _StoriesThumbnailState();
}

class _StoriesThumbnailState extends State<StoriesThumbnail> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) {
          return StoriesList(
            url: widget.url,
          );
        }),
      ),
      child: Container(
        height: 140.h,
        width: 100.w,
        child: FittedBox(fit: BoxFit.fill, child: Image.network(widget.url)),
      ),
    );
  }
}
