import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/features/home/presentation/widgets/home_page/stories_list.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoriesThumbnail extends StatefulWidget {
  const StoriesThumbnail(
      {super.key, required this.url, required this.description});
  final String url;
  final String description;

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
            description: widget.description,
            url: widget.url,
          );
        }),
      ),
      child: Stack(
        children: [
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
            height: 140.h,
            width: 100.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12).r,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                errorWidget: (ctx, str, obj) {
                  return Container(
                    width: 100.w,
                    height: 140.h,
                    color: Colors.grey,
                  );
                },
                imageUrl: widget.url,
              ),
            ),
          ),
          Positioned(
              bottom: 25,
              left: 10,
              child: Container(
                width: 80.w,
                child: Text(
                  maxLines: 2,
                  widget.description,
                  style: ts(TS.s12w600).copyWith(color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}
