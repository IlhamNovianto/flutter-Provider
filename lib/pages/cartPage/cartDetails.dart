import 'package:flutter/material.dart';
import 'package:tugas_akhir/provider/cartProvider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../navigation/bottom_nav.dart';

// ignore: must_be_immutable
class CartDetailPage extends StatefulWidget {
  const CartDetailPage({super.key});

  @override
  State<CartDetailPage> createState() => _CartDetailPageState();
}

class _CartDetailPageState extends State<CartDetailPage> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;

    _buildProductQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            icon == Icons.add
                ? provider.incrementQuantity(index)
                : provider.decrementQuantity(index);
          });
        },
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.grey.shade100),
          child: Icon(icon, size: 20),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: const Color.fromARGB(255, 255, 255, 255)),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomNav(),
                ));
          },
        ),
        title: const Text("My Cart"),
        backgroundColor: const Color.fromARGB(255, 101, 40, 0),
        centerTitle: true,
      ),
      body: Column(children: [
        ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: finalList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Slidable(
                  endActionPane:
                      ActionPane(motion: const ScrollMotion(), children: [
                    SlidableAction(
                      onPressed: (context) {
                        finalList.removeAt(index);
                        setState(() {});
                      },
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete Item',
                    )
                  ]),
                  child: ListTile(
                    tileColor: Colors.white,
                    visualDensity: VisualDensity(vertical: 3),
                    title: Text(
                      finalList[index].name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "\$ ${finalList[index].price}",
                      //overflow: TextOverflow.ellipsis,
                    ),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(finalList[index].imageAssets),
                      backgroundColor: Colors.grey.shade100,
                    ),
                    trailing: Column(
                      children: [
                        _buildProductQuantity(Icons.add, index),
                        Text(
                          finalList[index].quantity.toString(),
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        _buildProductQuantity(Icons.remove, index)
                      ],
                    ),
                  ),
                ),
              );
            }),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          width: double.infinity,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total : \$' '${provider.getTotalPrice()}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
