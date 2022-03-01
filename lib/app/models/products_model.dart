class Products {
  String? productName;
  String? productDescription;
  int? price;

  Products({this.productName, this.productDescription, this.price});

  Products.fromJson(Map<String, dynamic> json) {
    productName = json['product_name'];
    productDescription = json['product_description'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['product_name'] = productName;
    data['product_description'] = productDescription;
    data['price'] = price;
    return data;
  }
}
