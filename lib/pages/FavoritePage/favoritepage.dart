import 'package:flutter/material.dart';
import 'package:tugas_akhir/provider/favoriteProvider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePage();
}

class _FavoritePage extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList = provider.favorites;
    return Scaffold(
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: Row(
            children: [
              Text(
                "Favorites",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: finalList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8),
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
                    title: Text(
                      finalList[index].name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      finalList[index].description,
                      overflow: TextOverflow.ellipsis,
                    ),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(finalList[index].imageAssets),
                      backgroundColor: Colors.grey.shade100,
                    ),
                    trailing: Text(
                      "\$ ${finalList[index].price}",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            })
      ]),
    );
  }
}
