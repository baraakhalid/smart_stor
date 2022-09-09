class Cart {
  late int id;
  late double total;
  late int count;
  late double price;
  late int userId;
  late int productId;
  late String productName;
  late String productImage;
  static const tableName='cart';


  Cart();
  Cart.fromMap(Map<String,dynamic> rowMap){
    id=rowMap['id'];
    total=rowMap['total'];
    count=rowMap['count'];
    price=rowMap['price'];
    userId=rowMap['user_id'];
    productId=rowMap['product_id'];
    productName=rowMap['product_name'];
    productImage=rowMap['product_image'];

  }
  Map<String,dynamic> toMap(){
    Map<String,dynamic>map=<String,dynamic>{};
    map['total']=total;
    map['count']=count;
    map['price']=price;
    map['user_id']=userId;
    map['product_id']=productId;
    map['product_name']=productName;
    map['product_image']=productImage;
    return map;
  }
  Map<String,dynamic> toMapForApi(){
    Map<String,dynamic>map=<String,dynamic>{};
    map['product_id']=productId;
    map['quantity']=count;
    return map;
  }






}
/////mee
// class Cart {
//   late int id;
//   late double total;
//   late double price;
//   late int count;
//   late int userId;
//   late int productId;
//   late String productNameEn;
//   late String productNameAr;
//   late String productImage;
//
//   static const String tableName = 'cart';
//
//   Cart();
//
//   Cart.fromMap(Map<String, dynamic> rowMap) {
//     id = rowMap['id'];
//     total = rowMap['total'];
//     price = rowMap['price'];
//     count = rowMap['count'];
//     userId = rowMap['user_id'];
//     productId = rowMap['product_id'];
//     productNameEn = rowMap['product_name_En'];
//     productNameAr = rowMap['product_name_Ar'];
//     productImage = rowMap['product_image'];
//   }
//
//   Map<String, dynamic> toMap() {
//     Map<String, dynamic> map = <String, dynamic>{};
//     map['total'] = total;
//     map['price'] = price;
//     map['count'] = count;
//     map['user_id'] = userId;
//     map['product_id'] = productId;
//     map['product_name_En'] = productNameEn;
//     map['product_name_Ar'] = productNameAr;
//     map['product_image'] = productImage;
//     return map;
//   }
//   Map<String,dynamic> toMapForApi(){
//     Map<String,dynamic>map=<String,dynamic>{};
//     map['product_id']=productId;
//     map['quantity']=count;
//     return map;
//   }
// }