

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shope_web/core/utils/app_image.dart';
import 'package:shope_web/features/home/presentation/view_model/image_follow_model.dart';

class ImageFollowUs extends StatelessWidget {
  const ImageFollowUs({super.key});

  static const items = [
    ImageFollowUsModel(image: Assets.imagesTwitter),
    ImageFollowUsModel(image: Assets.imagesFacebook),
    ImageFollowUsModel(image: Assets.imagesPinterest),
    ImageFollowUsModel(image: Assets.imagesReddit),
    ImageFollowUsModel(image: Assets.imagesYoutube),
    ImageFollowUsModel(image: Assets.imagesInstagram),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map((e) => Padding(
                padding: const EdgeInsets.only(left: 12),
                child: CustomFollowImage(imageFollowUsModel: e),
              ))
          .toList(),
    );
  }
}

class CustomFollowImage extends StatelessWidget {
  const CustomFollowImage({super.key, required this.imageFollowUsModel});

  final ImageFollowUsModel imageFollowUsModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        imageFollowUsModel.image,
      ),
    );
  }
}
