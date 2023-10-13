import 'package:flutter/material.dart';
import 'package:tugas_akhir/model/product.dart';
import 'package:tugas_akhir/navigation/bottom_nav.dart';
import 'package:tugas_akhir/provider/cartProvider.dart';

class DetailPage extends StatelessWidget {
  final Menu menu;
  const DetailPage({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 40, 0),
        title: Text('Detail'),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(height: 36),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey.shade100),
              child: Image.asset(
                menu.imageAssets,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 36,
        ),
        Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          //height: 400,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    menu.name.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$ ${menu.price}',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                menu.description,
                textAlign: TextAlign.justify,
                style:
                    const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        )
      ]),
      bottomSheet: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 10,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 101, 40, 0),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ ' '${menu.price}',
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  provider.toggleMenu(menu);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNav(),
                      ));
                },
                icon: const Icon(Icons.send),
                label: const Text('Add to Cart'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 240, 96, 0)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
