class Kurir {
  String? nama;
  String? phone;
  String? email;
  String? nopolkend;

  Kurir({this.nama, this.phone, this.email, this.nopolkend});

  Kurir.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    phone = json['phone'];
    email = json['email'];
    nopolkend = json['nopolkend'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nama'] = nama;
    data['phone'] = phone;
    data['email'] = email;
    data['nopolkend'] = nopolkend;
    return data;
  }
}
