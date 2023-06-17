import 'package:fabrico_demo/data/models/category_model.dart';
import 'package:fabrico_demo/data/models/collection.dart';
import 'package:fabrico_demo/data/models/item_model.dart';

List<Category> categories = [
  Category(id: "1", title: "Family", image: ""),
  Category(id: "2", title: "Sweat Shirt", image: ""),
  Category(id: "3", title: "Polo Shirt", image: ""),
  Category(id: "4", title: "Swim Wear", image: ""),
  Category(id: "5", title: "Kids Wear", image: ""),
];

CollectionModel collection =
    CollectionModel(bannerTitle: "New Collection", banner: "", items: [
  ItemModel(
      id: "1",
      name: "Product 1",
      discount: "10",
      image: "",
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
      image: "",
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
      image: "",
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
      image: "",
      price: "123",
      desciption: "This is a description",
      sizes: ["S", "M", "L", "XL"],
      colors: ["RED", "BLUE", "GREEN", "YELLOW"],
      images: ["", "", "", ""],
      prices: ["123", "124", "125", "128"]),
]);
