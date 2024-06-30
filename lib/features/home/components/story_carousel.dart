import 'package:flutter/material.dart';
import 'package:ig_clone/core/components/profile_icon.dart';

class StoryCarousel extends StatelessWidget {
  const StoryCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (_, index) {
            return const ProfileIcon(
              height: 90,
              width: 90,
              leftPadding: 10,
              storyState: 'none',
              isNameVisible: true,
            );
          },
        ),
      ),
    );
  }
}
