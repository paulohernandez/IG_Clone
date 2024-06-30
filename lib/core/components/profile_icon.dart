import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    required this.height,
    required this.width,
    required this.leftPadding,
    required this.isNameVisible,
    required this.storyState,
    super.key,
  });

  final double height;
  final double width;
  final double leftPadding;
  final bool isNameVisible;
  final String storyState;

  @override
  Widget build(BuildContext context) {
    late var isHasStory = true;
    late var deductNumber = 0;

    if(storyState == 'none'){
      isHasStory = false;
    }
    if (!isNameVisible){
      deductNumber = 5;
    }

    return Padding(
      padding: EdgeInsets.only(left: leftPadding),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Visibility(
                visible: isHasStory,
                child: Container(
                  height: height,
                  width: width,
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
              ),
              Container(
                height: height - 10 +deductNumber,
                width: width - 10 +deductNumber ,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/dummy/dummy_profile_photo.jpg',
                  height: height - 12 +deductNumber,
                  width: width - 12 +deductNumber,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Visibility(visible:isNameVisible ,child: const Text('UserName' )),
        ],
      ),
    );
  }
}
