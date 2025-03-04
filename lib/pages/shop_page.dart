import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/cart.dart';

import '../components/shoe_title.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: <Widget>[
        // Search bar
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8.0)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        //   message
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'everyone files... some fly longer than others',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        //   hot picks
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Hot Picks🔥',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                'See all',
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0),

        //  List of Shoe for sale
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
                // get a shoe from shop list
              Shoe shoe = value.getShoeList()[index];
              // return the shoe
              return ShoeTitle(
                  shoe: shoe

              );
            },
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 25.0, top: 25.0, right: 25.0),
            child: Divider(
              color: Colors.white,
            )
        ),
      ],
    ),);
  }
}
