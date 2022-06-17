import 'package:flutter/material.dart';
import 'package:tripkuy/core/util/util.dart';
import 'package:tripkuy/model/destination.dart';
import 'package:tripkuy/model/tourguide.dart';

enum ErrorPPOB {payed, unknow, failed}

class Constant {
  static const avenirRegular = "avenir_regular";

  static const String adminEmail = "admin@gmail.com";
  static const String adminPassword = "12345678";
  static const String adminName = "Super Admin!";

  static const fontSizeLargeExtra = 20.0;
  static const fontSizeLarge = 15.0;
  static const fontSizeMedium = 13.0;
  static const fontSizeSmall = 11.0;
  static const paddingScreen = EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  static const double paddingHorizontalScreen = 20.0;

  static final List<Kurir> listKurir = [
    Kurir(
      nama: "Salma",
      email: "salma@gmail.com",
      nopolkend: "D 5682 SM",
      phone: "081256720002"
    ),
    Kurir(
      nama: "Rizal",
      email: "rizal@gmail.com",
      nopolkend: "D 2108 NA",
      phone: "088721650192"
    ),
    Kurir(
      nama: "Arsenio",
      email: "arsenio@gmail.com",
      nopolkend: "D 2217 NI",
      phone: "089604542155"
    ),
    Kurir(
        nama: "Kemas",
        email: "kemas@gmail.com",
        nopolkend: "D 7721 RG",
        phone: "088267129451"
    ),
    Kurir(
        nama: "Farhan",
        email: "farhan@gmail.com",
        nopolkend: "D 5298 FB",
        phone: "081276219002"
    ),
  ];
  
  static final List<Kedai> listKedai = [
    Kedai(
      nama: "Warung BU Nunung",
      jual: "Makanan dan Minuman",
      desc: "⭐⭐⭐⭐⭐",
      image: "https://i.postimg.cc/764VmjJx/kedai-bu-nunung.jpg",
      location: "Sukapura",
      price: CoreFunction.moneyFormatter(15000),
      kurir: "Rizal"
    ),
    Kedai(
      nama: "Ayam Baghdad",
      jual: "Makanan",
      desc: "⭐⭐⭐⭐⭐",
      image: "https://i.postimg.cc/7ZTN3SYM/ayam-baghdad.jpg",
      location: "Sukabirus",
      price: CoreFunction.moneyFormatter(10000),
      kurir: "Arsenio"
    ),
    Kedai(
      nama: "Warteg Mulya",
      jual: "Makanan dan Minuman",
      desc: "⭐⭐⭐⭐",
      image: "https://i.postimg.cc/HsJMR58J/warteg-mulya.jpg",
      location: "Sukapura",
      price: CoreFunction.moneyFormatter(18000),
      kurir: "Kemas"
    ),
    Kedai(
        nama: "Mr. Mangkok",
        jual: "Makanan",
        desc: "⭐⭐⭐⭐",
        image: "https://ik.imagekit.io/tvlk/cul-asset/guys1L+Yyer9kzI3sp-pb0CG1j2bhflZGFUZOoIf1YOBAm37kEUOKR41ieUZm7ZJ/cul-assets-252301483284-b172d73b6c43cddb/culinary/asset/REST_769-720x720-FIT_AND_TRIM-aae047a1aa28e8d9975a4e5dbdc1f046.jpeg?tr=q-40,c-at_max,w-1080,h-1920&_src=imagekit",
        location: "Komplek Permata Buah Batu",
        price: CoreFunction.moneyFormatter(20000),
        kurir: "Salma"
    ),
    Kedai(
        nama: "Rumah Makan Podomoro",
        jual: "Makanan dan Minuman",
        desc: "⭐⭐⭐⭐⭐",
        image: "https://i.postimg.cc/zBDcw5X1/podomoro.png",
        location: "Sukapura",
        price: CoreFunction.moneyFormatter(15000),
        kurir: "Kemas"
    ),
  ];

}