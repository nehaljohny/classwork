class Shoe {
  final String? image;
  final String? name;
  final String? category;
  final String? description;
  final int? price;

  Shoe(this.image, this.name, this.category, this.price, this.description);
}

List<Shoe> shoelistt = [
  Shoe(
      "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/842700c8-51c8-4a4a-86fe-9f1ecb7b0984/air-force-1-low-evo-shoes-QcbnHZ.png",
      "Nike Air Force 1 Low EVO",
      "Men/Women",
      12795,
      "description"),
  Shoe(
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/b5676d82f73d4da1a49a03450448c6cc_9366/Superstar_XLG_Shoes_White_IF6144_01_standard.jpg",
      "SUPERSTAR XLG SHOES",
      "Men/Women",
      11999,
      "description"),
  Shoe(
      "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_500,h_500/global/308122/02/sv01/fnd/IND/fmt/png/Mercedes-AMG-Petronas-Formula-1%C2%AE-RS-Trck-Unisex-Shoes",
      "Mercedes AMG Petronas Formula ",
      "Men/Women",
      12999,
      "description"),
];
