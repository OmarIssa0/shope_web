import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/core/utils/app_style.dart';
import 'package:shope_web/core/utils/size_config.dart';
import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
import 'package:shope_web/features/home/presentation/view/widgets/text_filed_search_home.dart';
import 'package:shope_web/features/search/presentation/view/widgets/item_product_search.dart';
import 'package:shope_web/features/search/presentation/view_model/model/model_product.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

class CustomGridViewSearchView extends StatefulWidget {
  const CustomGridViewSearchView({super.key});

  @override
  State<CustomGridViewSearchView> createState() =>
      _CustomGridViewSearchViewState();
}

class _CustomGridViewSearchViewState extends State<CustomGridViewSearchView> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  List<ProductModel> listSearchProduct = [];

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    String? passedCategory =
        ModalRoute.of(context)!.settings.arguments as String?;

    final List<ProductModel> productList = passedCategory == null
        ? productProvider.getProduct
        : productProvider.findByCategory(catName: passedCategory);

    if (MediaQuery.sizeOf(context).width < SizeConfig.tablet) {
      return productList.isEmpty
          ? Expanded(
              child: Center(
                child: Text(
                  'No product found',
                  style: AppStyles.styleMedium20(context,
                      color: AppColor.kGray900),
                ),
              ),
            )
          : Column(
              children: [
                SearchTextFiled(
                  child: TextField(
                    controller: _textEditingController,
                    scrollPadding: const EdgeInsets.all(0),
                    cursorColor: AppColor.kSecondary700,
                    decoration: InputDecoration(
                      hintText: 'Search for anything...',
                      hintStyle: AppStyles.styleRegular16(context,
                          color: AppColor.kGray500),
                      contentPadding: const EdgeInsets.all(0),
                      prefixIcon: const Icon(
                        IconlyLight.search,
                        color: AppColor.kGray600,
                      ),
                      border: buildBorder(),
                      enabledBorder: buildBorder(),
                      focusedBorder: buildBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        listSearchProduct = productProvider.searchQuery(
                            searchText: _textEditingController.text,
                            passedList: productList);
                      });
                    },
                    onSubmitted: (value) {
                      setState(() {
                        listSearchProduct = productProvider.searchQuery(
                            searchText: _textEditingController.text,
                            passedList: productList);
                      });
                    },
                  ),
                ),
                if (_textEditingController.text.isNotEmpty &&
                    listSearchProduct.isEmpty) ...[
                  Expanded(
                    child: Center(
                      child: Text(
                        "No results found",
                        style: AppStyles.styleMedium20(context,
                            color: AppColor.kGray900),
                      ),
                    ),
                  )
                ],
                Expanded(
                  child: DynamicHeightGridView(
                    itemCount: _textEditingController.text.isNotEmpty
                        ? listSearchProduct.length
                        : productList.length,
                    crossAxisCount:
                        // MediaQuery.sizeOf(context).width < SizeConfig.tablet ? 1 : 2,
                        1,
                    mainAxisSpacing: 0,
                    builder: (context, index) {
                      return ItemProductSearch(
                        productId: _textEditingController.text.isNotEmpty
                            ? listSearchProduct[index].productId
                            : productList[index].productId,
                        productModel: _textEditingController.text.isNotEmpty
                            ? listSearchProduct[index]
                            : productList[index],
                      );
                    },
                  ),
                ),
              ],
            );
    } else if (MediaQuery.sizeOf(context).width >= SizeConfig.desktop ||
        MediaQuery.sizeOf(context).width < SizeConfig.desktop) {
      return productList.isEmpty
          ? Column(
              children: [
                const HederSection(),
                Expanded(
                  child: Center(
                    child: Text(
                      'no product found',
                      style: AppStyles.styleMedium16(context,
                          color: AppColor.kGray900),
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                const HederSection(),
                // const SearchTextFiled(),
                SearchTextFiled(
                  child: TextField(
                    controller: _textEditingController,
                    scrollPadding: const EdgeInsets.all(0),
                    cursorColor: AppColor.kSecondary700,
                    decoration: InputDecoration(
                      hintText: 'Search for anything...',
                      hintStyle: AppStyles.styleRegular16(context,
                          color: AppColor.kGray500),
                      contentPadding: const EdgeInsets.all(0),
                      prefixIcon: const Icon(
                        IconlyLight.search,
                        color: AppColor.kGray600,
                      ),
                      border: buildBorder(),
                      enabledBorder: buildBorder(),
                      focusedBorder: buildBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        listSearchProduct = productProvider.searchQuery(
                            searchText: _textEditingController.text,
                            passedList: productList);
                      });
                    },
                    onSubmitted: (value) {
                      setState(() {
                        listSearchProduct = productProvider.searchQuery(
                            searchText: _textEditingController.text,
                            passedList: productList);
                      });
                    },
                  ),
                ),
                if (_textEditingController.text.isNotEmpty &&
                    listSearchProduct.isEmpty) ...[
                  Expanded(
                    child: Center(
                      child: Text(
                        "No results found",
                        style: AppStyles.styleMedium20(context,
                            color: AppColor.kGray900),
                      ),
                    ),
                  ),
                ],

                Expanded(
                  child: DynamicHeightGridView(
                    itemCount: _textEditingController.text.isNotEmpty
                        ? listSearchProduct.length
                        : productList.length,
                    crossAxisCount:
                        MediaQuery.sizeOf(context).width >= SizeConfig.desktop
                            ? 3
                            : 2,
                    // 2,
                    mainAxisSpacing: 0,
                    builder: (context, index) {
                      return ItemProductSearch(
                        productId: _textEditingController.text.isNotEmpty
                            ? listSearchProduct[index].productId
                            : productList[index].productId,
                        productModel: _textEditingController.text.isNotEmpty
                            ? listSearchProduct[index]
                            : productList[index],
                      );
                    },
                  ),
                ),
              ],
            );
    } else {
      return const SizedBox();
    }
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(14),
    borderSide: const BorderSide(
      color: AppColor.kGray300,
    ),
  );
}
