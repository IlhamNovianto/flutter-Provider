// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tugas_akhir/model/productModel.dart';
import 'package:tugas_akhir/model/product.dart';
import 'package:tugas_akhir/pages/detailPage/detailPage.dart';
import 'package:tugas_akhir/provider/favoriteProvider.dart';

//Grid Item Menu
class AllMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.65,
      ),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: MyMenu.allMenu.length,
      itemBuilder: (context, index) {
        final Menu item = MyMenu.allMenu[index];

        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage(menu: item)),
          ),
          child: Builder(
            builder: (BuildContext context) {
              return Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 192, 0, 0),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text(
                            "-10%",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        //FavoriteIcon()
                        GestureDetector(
                          onTap: () => provider.toggleFavorite(item),
                          child: Icon(
                            provider.isExist(item)
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Image.asset(
                          item.imageAssets,
                          height: 125,
                          width: 125,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 8),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        item.name,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        item.description,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 66, 66, 66)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$ ' '${item.price}',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Icon(
                            Icons.shopping_cart_checkout,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
