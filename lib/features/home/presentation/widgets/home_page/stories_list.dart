import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoriesList extends StatefulWidget {
  const StoriesList({super.key, required this.url});
  final String url;

  @override
  State<StoriesList> createState() => _StoriesListState();
}

class _StoriesListState extends State<StoriesList> {

  final _controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return StoryView(
      controller: _controller,
      storyItems: [
        StoryItem.inlineImage(
          url: widget.url,
          controller: _controller,
          caption: const Text(
            "Omotuo & Nkatekwan; You will love this meal if taken as supper.",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black54,
              fontSize: 17,
            ),
          ),
        ),

      ],
      onStoryShow: (storyItem, index) {
        print("Showing a story");
      },
      onComplete: () {
          Navigator.of(context).pop();
      },
      progressPosition: ProgressPosition.bottom,
      repeat: false,
      inline: true,
    );
  }
}
