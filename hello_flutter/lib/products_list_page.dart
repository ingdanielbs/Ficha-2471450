import 'package:flutter/material.dart';
import 'package:hello_flutter/cart_page.dart';
import 'package:hello_flutter/product.dart';
import 'package:hello_flutter/products.dart';

import 'appbar_nav.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({super.key});

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  List<Product> cart = [];

  void addCart(Product product) {
    setState(() {
      cart.add(product);
    });
  }

  void aumentar(var i) {
    setState(() {
      i.quantity++;
    });
  }

  void disminuir(var i) {
    setState(() {
      if (i.quantity > 0) {
        i.quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBarNav(title: 'Farmacia'),
      ),
      body: ListView.separated(
        itemCount: products.length,
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
                        image: NetworkImage(products[index].imageUrl!))),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    products[index].name!,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text('\$ ${products[index].price}'),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.all(color: Colors.grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              disminuir(products[index]);
                            },
                            icon: Icon(Icons.remove)),
                        Text('${products[index].quantity}'),
                        IconButton(
                            onPressed: () {
                              aumentar(products[index]);
                            },
                            icon: Icon(Icons.add))
                      ],
                    ),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {
                    addCart(products[index]);
                  },
                  icon: Icon(Icons.add_shopping_cart))
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CartPage(cart: cart)));
        },
        child: Icon(Icons.shopping_cart),
        backgroundColor: Colors.red,
      ),
    );
  }
}
