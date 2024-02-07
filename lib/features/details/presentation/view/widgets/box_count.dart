import 'package:flutter/material.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';

class BoxCount extends StatefulWidget {
  const BoxCount({super.key});

  @override
  State<BoxCount> createState() => _BoxCountState();
}

class _BoxCountState extends State<BoxCount> {
  int count = 01;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.kGray100, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  if (count == 1) {
                    return;
                  } else {
                    count--;
                  }
                  setState(() {});
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColor.kGray900,
                  size: 16,
                ),
              ),
              const SizedBox(width: 24),
              Text(
                count.toString(),
                style:
                    AppStyles.styleRegular16(context, color: AppColor.kGray700),
              ),
              const SizedBox(width: 24),
              GestureDetector(
                onTap: () {
                  count++;
                  setState(() {});
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.kGray900,
                  size: 16,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
