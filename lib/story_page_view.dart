import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems= [
      StoryItem.text("Hi", Colors.red),
      StoryItem.pageImage(NetworkImage(
          "https://cdn.pixabay.com/photo/2015/09/09/16/05/forest-931706__340.jpg")),
      StoryItem.pageGif(
           "https://techcrunch.com/wp-content/uploads/2015/08/safe_image.gif", 
          imageFit: BoxFit.contain)
    ];
    return Material(
          child: StoryView( 
        storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      
      ),
    );
  }
}
