import 'package:flutter/material.dart';
import 'package:foodfast/screens/userside/providers/cart_provider.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';

import '../../../userside/models/product.dart';

class ProductGridItem extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final index;

  const ProductGridItem(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //  color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 2,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Card(
          color: Colors.white,
          //  elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: Colors.grey.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // -------------------------------- Title in product card -------------------------------- //

                        Text(
                          product.title,
                          style: const TextStyle(
                              color: Color(0xFF333333), fontSize: 16),
                        ),
                        // -------------------------------- Category in product card -------------------------------- //

                        Text(
                          product.category,
                          style: const TextStyle(
                              color: Color(0xFF707070), fontSize: 11),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        // -------------------------------- Price in product card -------------------------------- //

                        Text(
                          product.price.toString(),
                          style: const TextStyle(
                              color: Color(0xFFE67F1F), fontSize: 16),
                        )
                      ],
                    )),
                const Spacer(),
                // -------------------------------- FOOTER(COUNTER WIDGET PART OF THE PRODUCT CARD) -------------------------------- //
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}