import 'package:flutter/material.dart';
import 'package:ig_clone/core/components/feed_post.dart';
import 'package:ig_clone/features/home/components/home_app_bar.dart';
import 'package:ig_clone/features/home/components/home_bottom_navbar.dart';
import 'package:ig_clone/features/home/components/story_carousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Scaffold(
        appBar: const HomeAppbar(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: const SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  StoryCarousel(),
                  FeedPost(),
                  FeedPost(),
                  FeedPost(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const HomeBottomNavBar(),
      ),
    );
  }
}
