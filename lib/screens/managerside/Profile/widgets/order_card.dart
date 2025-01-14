import 'package:flutter/material.dart';
import 'package:foodfast/screens/userside/models/cart_item.dart';

class OrderCard extends StatelessWidget {
  final String userid;
  final Map<String, CartItem> cart;
  final DateTime datetime;
  final String type;
  final double total;

  const OrderCard({
    Key? key,
    required this.userid,
    required this.cart,
    required this.datetime,
    required this.type,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: const Offset(0, 2),
          ), //BoxShadow
          //BoxShadow
        ],
      ),
      // alignment: Alignment.topLeft,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
          padding: const EdgeInsets.all(2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
                
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        String key = cart.keys.elementAt(index);
                        CartItem item = cart[key] as CartItem;
                        return (Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 55,
                                child: Text(
                                  item.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                "₹${item.price}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${item.quantity}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ));
                      }),
                ),
              ),
              Text(type.toString()),
              const Divider(
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 70, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "₹$total",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
