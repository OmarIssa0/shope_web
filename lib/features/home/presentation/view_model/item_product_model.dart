class ItemProductModel {
  final bool isActive, isDiscount, isSold , isHot;
  final String title, amount, discount, image , ofDiscount;

  const ItemProductModel({
    required this.ofDiscount,
    required this.isHot,
    required this.isDiscount,
    required this.isSold,
    required this.isActive,
    required this.title,
    required this.amount,
    required this.discount,
    required this.image,
  });
}
