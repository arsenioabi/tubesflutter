class Kedai {
  String? image;
  String? nama;
  String? desc;
  String? location;
  String? price;
  String? jual;
  String? kurir;

  Kedai({
    this.image,
    this.nama,
    this.desc,
    this.location,
    this.price,
    this.jual,
    this.kurir
  });

  Kedai.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    nama = json['nama'];
    desc = json['desc'];
    location = json['location'];
    price = json['price'];
    jual = json['jual'];
    kurir = json['kurir'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['nama'] = nama;
    data['desc'] = desc;
    data['location'] = location;
    data['price'] = price;
    data['jual'] = jual;
    data['kurir'] = kurir;
    return data;
  }
}
