import 'package:flutter/material.dart';

class StoryCarousel extends StatelessWidget {
  const StoryCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (_, index) {
          return const StoryProfileIcon();
        },
      ),
    );
  }
}

class StoryProfileIcon extends StatelessWidget {
  const StoryProfileIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFFE02B7),
                      Color(0xFFFC2278),
                      Color(0xFFFF2160),
                      Color(0xFFFF5234),
                      Color(0xFFFFD702),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),
          const Text('UserName'),
        ],
      ),
    );
  }
}
