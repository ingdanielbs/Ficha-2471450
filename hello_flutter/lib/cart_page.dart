import 'package:flutter/material.dart';
import 'package:hello_flutter/product.dart';

import 'appbar_nav.dart';

class CartPage extends StatefulWidget {
  final List<Product> cart;
  const CartPage({super.key, required this.cart});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double total =
        widget.cart.fold(0, (sum, item) => sum + (item.price! * item.quantity));
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBarNav(title: 'Farmacia'),
      ),
      body: ListView.separated(
        itemCount: widget.cart.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.cart[index].imageUrl!))),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.cart[index].name!,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text('\$ ${widget.cart[index].price}'),
                ],
              ),
              Text('${widget.cart[index].quantity}'),
              IconButton(
                  onPressed: () {
                    setState(() {
                      widget.cart.removeAt(index);
                    });
                  },
                  icon: const Icon(Icons.remove_shopping_cart))
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              if (widget.cart.isNotEmpty) {
                widget.cart.clear();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Compra exitosa'),
                    backgroundColor: Color.fromARGB(255, 85, 143, 86),
                  ),
                );
              }
            });
          },
          label: Text('Total \$$total')),
    );
  }
}
