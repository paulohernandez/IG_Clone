import 'package:flutter/cupertino.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
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
          height: 300,
          width: double.infinity,
          color: Colors.black,
        ),
        const FeedPostButtons(),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('100 likes'),
              Text.rich(
                textAlign: TextAlign.justify,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                TextSpan(
                  text: 'USERNAME',
                  children: [
                    TextSpan(
                      text:
                          ' is simply dummy text of the printing and typesetting industry. '
                          'Lorem Ipsum has been the industrys standard dummy text ever '
                          'since the 1500s, when an unknown printer took a galley of type '
                          'and scrambled it to make a type specimen book. It has survived '
                          'not only five centuries, but also the leap into electronic ',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FeedPostButtons extends StatelessWidget {
  const FeedPostButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: const Icon(FontAwesomeIcons.heart),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: Transform.scale(
                  scaleX: -1,
                  child: const Icon(FontAwesomeIcons.comment),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(FontAwesomeIcons.paperPlane),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(FontAwesomeIcons.bookmark),
          ),
        ],
      ),
    );
  }
}
