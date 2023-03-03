import 'package:flutter/material.dart';
import 'package:hello_flutter/products.dart';

import 'appbar_nav.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({super.key});

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBarNav(title: 'Farmacia'),
        ),
        body: ListView.separated(
          itemCount: products.length,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Container(
                  width: 90,
                  height: 90,                  
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(products[index].imageUrl!))
                  ),
                ),
              ],
            );           
          },
        ));
  }
}
