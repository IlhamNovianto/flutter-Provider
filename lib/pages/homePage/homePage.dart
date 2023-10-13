import 'package:flutter/material.dart';
import 'package:tugas_akhir/navigation/homeAppBar.dart';
import 'package:tugas_akhir/widget/foodGrid.dart';
import 'package:tugas_akhir/widget/hotDrinkGrid.dart';
import 'package:tugas_akhir/widget/iceDrinkGrid.dart';
import '../../widget/allMenuGrid.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //AppBar
          const HomeAppBar(),
          //Background
          Container(
            //height: 500,
            padding: EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(90, 158, 158, 158),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                //Text Category
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: const Text(
                    "Category",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),

                //List category
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _productCategory(index: 0, name: "All Menu"),
                        _productCategory(index: 1, name: "Hot Drink"),
                        _productCategory(index: 2, name: "Iced Drink"),
                        _productCategory(index: 3, name: "Food"),
                      ],
                    ),
                  ),
                ),
                //Text Our Menu
                Container(
                  alignment: Alignment.centerLeft,
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: const Text(
                    "Our Menu",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: isSelected == 0
                      ? AllMenu()
                      : isSelected == 1
                          ? HotDrink()
                          : isSelected == 2
                              ? IceDrink()
                              : Food(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _productCategory({required int index, required String name}) =>
      GestureDetector(
        onTap: () => setState(() => isSelected = index),
        child: Container(
          width: 100,
          height: 40,
          margin: EdgeInsets.only(top: 10, right: 10),
          alignment: Alignment.center,
          //padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          decoration: BoxDecoration(
            color: isSelected == index
                ? const Color.fromARGB(255, 75, 47, 37)
                : Colors.brown,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      );
}
