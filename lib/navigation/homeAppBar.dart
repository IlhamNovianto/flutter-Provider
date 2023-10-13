import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';
import '../pages/cartPage/cartDetails.dart';
import '../provider/cartProvider.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.sort, size: 30, color: Colors.black),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Coffe Shop",
              style: GoogleFonts.pacifico(fontSize: 20, color: Colors.black),
            ),
          ),
          const Spacer(),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
                badgeColor: Colors.red, padding: EdgeInsets.all(7)),
            badgeContent: Text(
              finalList.length.toString(),
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CartDetailPage();
                }));
              },
              child: Icon(
                Icons.add_shopping_cart,
                size: 30,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
//Bottom Navigation

