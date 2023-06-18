import 'package:fabrico_demo/data/models/category_model.dart';
import 'package:fabrico_demo/data/models/collection.dart';
import 'package:fabrico_demo/data/models/discount_model.dart';
import 'package:fabrico_demo/data/models/item_model.dart';



List<Category> categories = [
  Category(id: "1", title: "Family", image: "https://images.unsplash.com/photo-1643818657367-491080baeece?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"),
  Category(id: "2", title: "Sweat Shirt", image: "https://images.unsplash.com/photo-1550344071-13ecada2a91d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
  Category(id: "3", title: "Polo Shirt", image: "https://images.unsplash.com/photo-1625910513520-bed0389ce32f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"),
  Category(id: "4", title: "Swim Wear", image: "https://images.pexels.com/photos/6012015/pexels-photo-6012015.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
  Category(id: "5", title: "Kids Wear", image: "https://images.unsplash.com/photo-1503944583220-79d8926ad5e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80"),
];

DiscountModel discount = DiscountModel(title: "Discount of autumn collection 10% off", discountLastDate: DateTime(2023, 06, 21 , 0, 0));

CollectionModel collection =
    CollectionModel(bannerTitle: "New Collection", banner: "https://unsplash.com/photos/hanged-top-on-brown-and-white-clothes-horse-TS--uNw-JqE", items: [
  ItemModel(
      id: "1",
      name: "Product 1",
      discount: "10",
      image: "https://images.unsplash.com/photo-1492447166138-50c3889fccb1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80",
      price: "123",
      desciption: "This is a description",
      sizes: ["S", "M", "L", "XL"],
      colors: ["RED", "BLUE", "GREEN", "YELLOW"],
      images: ["", "", "", ""],
      prices: ["123", "124", "125", "128"]),
  ItemModel(
      id: "2",
      name: "Product 2",
      discount: "10",
      image: "https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=627&q=80",
      price: "123",
      desciption: "This is a description",
      sizes: ["S", "M", "L", "XL"],
      colors: ["RED", "BLUE", "GREEN", "YELLOW"],
      images: ["", "", "", ""],
      prices: ["123", "124", "125", "128"]),
  ItemModel(
      id: "3",
      name: "Product 3",
      discount: "10",
      image: "https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
      price: "123",
      desciption: "This is a description",
      sizes: ["S", "M", "L", "XL"],
      colors: ["RED", "BLUE", "GREEN", "YELLOW"],
      images: ["", "", "", ""],
      prices: ["123", "124", "125", "128"]),
  ItemModel(
      id: "4",
      name: "Product 4",
      discount: "10",
      image: "https://images.unsplash.com/photo-1588731247530-4076fc99173e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
      price: "123",
      desciption: "This is a description",
      sizes: ["S", "M", "L", "XL"],
      colors: ["RED", "BLUE", "GREEN", "YELLOW"],
      images: ["", "", "", ""],
      prices: ["123", "124", "125", "128"]),
]);
