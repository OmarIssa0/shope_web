// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shope_web/features/home/presentation/view/widgets/custom_expanded_widgets.dart';
// import 'package:shope_web/features/home/presentation/view/widgets/heder_section.dart';
// import 'package:shope_web/features/home/presentation/view/widgets/text_filed_search_home.dart';
// import 'package:shope_web/features/search/presentation/view/widgets/grid_view_search_mobile_layout.dart';
// import 'package:shope_web/features/search/presentation/view_model/model/model_product.dart';
// import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';

// class TabletLayoutSearchView extends StatelessWidget {
//   const TabletLayoutSearchView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final productProvider = Provider.of<ProductProvider>(context);
//     String? passedCategory =
//         ModalRoute.of(context)!.settings.arguments as String?;

//     final List<ProductModel> productList = passedCategory == null
//         ? productProvider.getProduct
//         : productProvider.findByCategory(catName: passedCategory);
//     return Column(
//       children: [
       
//         productList.isEmpty
//             ? const SizedBox()
//             : const CustomExpandedWidgets(child: SearchTextFiled()),
//         const CustomGridViewSearchView(),
//         // SizedBox(height: 72),
//         // FooterWidgets(),
//         // InfoDevFooter(),
//       ],
//     );
//   }
// }
