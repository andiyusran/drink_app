import 'dart:convert';

class Drink {
  String drinkId;
  String drinkName;
  String drinkCategory;
  String drinkPrice;
  String drinkImage;

  Drink({
    this.drinkId,
    this.drinkName,
    this.drinkCategory,
    this.drinkPrice,
    this.drinkImage,
  });

  factory Drink.fromJson(Map<String, dynamic> map) {
    return Drink(
      drinkId: map['id_minuman'],
      drinkName: map['nama_minuman'],
      drinkCategory: map['kategori_minuman'],
      drinkPrice: map['harga_minuman'],
      drinkImage: map['gambar_minuman'],
    );
  }
  // @override
  // String toString() {
  //   return '[ ${this.drinkId} ]';
  // }
}

List<Drink> drinkFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Drink>.from(data.map((item) => Drink.fromJson(item)));
}
