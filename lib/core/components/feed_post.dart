import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ig_clone/core/components/profile_icon.dart';

class FeedPost extends StatelessWidget {
  const FeedPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  ProfileIcon(
                    height: 45,
                    width: 45,
                    leftPadding: 0,
                    storyState: 'none',
                    isNameVisible: false,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Elon Musk'),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(FontAwesomeIcons.ellipsisVertical),
              ),
            ],
          ),
        ),
        Container(
          height: 500,
          width: double.infinity,
          color: Colors.black,
        ),
      ],
    );
  }
}
