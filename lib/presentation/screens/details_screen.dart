import 'package:fabrico_demo/constants.dart';
import 'package:fabrico_demo/data/models/cart_item_model.dart';
import 'package:fabrico_demo/data/models/item_model.dart';
import 'package:fabrico_demo/presentation/widgets/buttons/add_to_cart_button.dart';
import 'package:fabrico_demo/presentation/widgets/container/item_size_container.dart';
import 'package:fabrico_demo/provider/cart_provider.dart';
import 'package:fabrico_demo/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.item});
  final ItemModel item;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.teal,
              image: DecorationImage(
                  image: AssetImage("assets/images/clothes_hanged.jpg"),
                  fit: BoxFit.cover),
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Stack(
            children: [
              // ------------------- Overlay Gradient -------------------
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.transparent, appThemeColor],
                        stops: [0.5, 0.7],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),

              // ------------------- Content -------------------
              Column(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.item.name,
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const SizedBox(width: 40, child: Text("Color")),
                            const SizedBox(width: 20),
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: ListView(
                                  shrinkWrap: false,
                                  scrollDirection: Axis.horizontal,
                                  children: widget.item.colors
                                      .map((e) => Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor: colorMapper(e),
                                          )))
                                      .toList(),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const SizedBox(width: 40, child: Text("Size")),
                            const SizedBox(width: 20),
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: ListView(
                                  shrinkWrap: false,
                                  scrollDirection: Axis.horizontal,
                                  children: widget.item.sizes
                                      .map((e) => Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: ItemSizeContainer(title: e),
                                          ))
                                      .toList(),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: appThemeColor.withOpacity(0.7)),
                          child: const ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            leading: Icon(
                              Icons.local_shipping,
                              color: Colors.black,
                            ),
                            dense: true,
                            title: Text("Fast Delivery"),
                            subtitle: Text("Deliver from 2 Feb"),
                            trailing: Text(
                              "Learn more",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text(
                          "\$${widget.item.price}",
                          style: const TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "\$${(int.parse(widget.item.price) * (100 - int.parse(widget.item.discount))) / 100}",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Expanded(child: Container()),
                        AddToCartButton(onPressed: () {
                          CartProvider cartProvider =
                              Provider.of<CartProvider>(context, listen: false);

                          CartItemModel cartItem =
                              CartItemModel.cartItemModelFromItem(
                                  widget.item, "1");
                          cartProvider.addItemToCart(cartItem);
                        })
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
