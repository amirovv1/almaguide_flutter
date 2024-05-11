import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoriesList extends StatefulWidget {
  const StoriesList({super.key, required this.url, required this.description});
  final String url;
  final String description;

  @override
  State<StoriesList> createState() => _StoriesListState();
}

class _StoriesListState extends State<StoriesList> {

  final _controller = StoryController();

  @override
  Widget build(BuildContext context) {
    print(widget.url);
    return StoryView(
      controller: _controller,
      storyItems: [
        StoryItem.inlineImage(
          errorWidget: Container(color: Colors.grey, child: Text("Image is not available"),),
          url: widget.url,
          controller: _controller,
          caption: Text(
          widget.description,
            style: ts(TS.s30w600).copyWith(color: Colors.white,fontStyle: FontStyle.normal
            )
          ),
        ),

      ],
      onStoryShow: (storyItem, index) {
        print("Showing a story");
      },
      onComplete: () {
          Navigator.of(context).pop();
      },
      repeat: false,
      inline: false,
    );
  }
}
