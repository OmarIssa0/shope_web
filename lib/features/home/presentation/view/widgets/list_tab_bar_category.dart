import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/widgets/active_and_inactive.dart';
import 'package:shope_web/features/home/presentation/view_model/list_tab_bar_category_mode.dart';

class ListTabBarCategory extends StatefulWidget {
  const ListTabBarCategory({super.key});

  static const item = [
    ListTabBarCategoryModel(titleTabBar: 'All Product'),
    ListTabBarCategoryModel(titleTabBar: 'Smart Phone'),
    ListTabBarCategoryModel(titleTabBar: 'Laptop'),
    ListTabBarCategoryModel(titleTabBar: 'Headphone'),
    ListTabBarCategoryModel(titleTabBar: 'TV'),
  ];

  @override
  State<ListTabBarCategory> createState() => _ListTabBarCategoryState();
}

class _ListTabBarCategoryState extends State<ListTabBarCategory> {
  int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        ListTabBarCategory.item.length,
        (index) => GestureDetector(
          onTap: () {
            if (isActive != index) {
              setState(() {
                isActive = index;
              });
            }
          },
          child: ActiveTabBar(
              listTabBarCategoryModel: ListTabBarCategory.item[index],
              isActive: isActive == index),
        ),
      ),
    );
  }
}
