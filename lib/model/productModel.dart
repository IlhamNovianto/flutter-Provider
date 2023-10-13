import 'package:tugas_akhir/model/product.dart';

class MyMenu {
  static List<Menu> allMenu = [
    Menu(
        id: 1,
        name: "Hot Cappucino",
        description:
            "Cappuccino is a cup of milk coffee that originated in Italy and began to be present in Europe and America since the 1980s. A cup of cappuccino coffee has the same ratio of espresso, steamed milk and foam. The taste of cappuccino coffee is generally very rich, even though it has been mixed with milk, the taste of coffee is still strong.",
        price: 10.50,
        imageAssets: "images/hotdrink/hot cappucino.png",
        category: "hot drink",
        quantity: 1),
    Menu(
        id: 2,
        name: "Black Forest",
        description:
            "the most recognizable type of German cake in the world. The cake is made from chocolate sponges covered in fresh cream, chocolate shavings and cherries soaked in Kirschwasser, clear cherry schnapps typical of the Schwarzwälder (Black Forest) region.",
        price: 14.00,
        imageAssets: "images/food/blackforest.png",
        category: "food",
        quantity: 1),
    Menu(
        id: 3,
        name: "Breakfast Meal",
        description:
            "American breakfast or American-style breakfast which is also known as full breakfast is a breakfast menu that is fairly heavy because it is accompanied by various menus that certainly add a lot of calories.",
        price: 18.00,
        imageAssets: "images/food/breakfast meal.png",
        category: "food",
        quantity: 1),
    Menu(
        id: 4,
        name: "Brownis",
        description:
            "Brownies is taken from (The Deep Brown Color of Cookies). Brownies have a characteristic dark blackish brown color. Brownies are a kind of common cake but use melted chocolate bars and have a sweet taste and a dense texture.",
        price: 10.55,
        imageAssets: "images/food/brownis.png",
        category: "food",
        quantity: 1),
    Menu(
        id: 5,
        name: "Croissant",
        description:
            "Croissant is one of the pastry products derived from folded dough that is almost the same as puff pastry with the characteristic of layers and shaped like a crescent (French), which in Indonesian means crescent, but there are also horn-shaped (horn).",
        price: 12.00,
        imageAssets: "images/food/croissant.jpg",
        category: "food",
        quantity: 1),
    Menu(
        id: 6,
        name: "Donut",
        description:
            "Donuts are foods made from flour through a fermentation process with baker's yeast and fried. Donuts have a very distinctive shape with a hole in the middle like a ring and round when filled with a material (filling).",
        price: 4.00,
        imageAssets: "images/food/donut.png",
        category: "food",
        quantity: 1),
    Menu(
        id: 7,
        name: "Hot Black Coffe",
        description:
            "Hot Black Coffee is a classic and straightforward coffee beverage, known for its simplicity and bold, robust flavor.",
        price: 10.55,
        imageAssets: "images/hotdrink/hot black coffe.png",
        category: "hot drink",
        quantity: 1),
    Menu(
        id: 8,
        name: "Hot Chocolate",
        description:
            "Hot Chocolate, also known as hot cocoa, is a comforting and decadent beverage enjoyed for its rich and sweet chocolate flavor.",
        price: 7.00,
        imageAssets: "images/hotdrink/hot chocolate.png",
        category: "hot drink",
        quantity: 1),
    Menu(
        id: 9,
        name: "Hot Latte",
        description:
            "A Hot Latte is a popular coffee-based beverage that combines espresso with steamed milk, resulting in a creamy and mildly caffeinated drink.",
        price: 8.00,
        imageAssets: "images/hotdrink/hot latte.png",
        category: "hot drink",
        quantity: 1),
    Menu(
        id: 10,
        name: "Hot Lemon Tea",
        description:
            "Hot Lemon Tea is a soothing and invigorating beverage made by steeping tea leaves (usually black tea or herbal tea) and adding freshly squeezed lemon juice. It's known for its refreshing and slightly tangy flavor.",
        price: 9.55,
        imageAssets: "images/hotdrink/hot lemon tea.png",
        category: "hot drink",
        quantity: 1),
    Menu(
        id: 11,
        name: "Hot Matcha",
        description:
            "Hot Matcha is a comforting and earthy beverage made from finely ground green tea leaves, resulting in a vibrant green color and a unique flavor.",
        price: 10.00,
        imageAssets: "images/hotdrink/hot matcha.png",
        category: "hot drink",
        quantity: 1),
    Menu(
        id: 11,
        name: "Iced Coffe BrownSugar",
        description:
            "Iced coffee brown sugar, also known as (Brown Sugar Iced Coffee), is a refreshing and sweetened iced coffee beverage. It's typically made by combining freshly brewed coffee with brown sugar syrup or simple syrup and serving it over ice.",
        price: 14.55,
        imageAssets: "images/icedrink/iced coffe browsugar.png",
        category: "iced drink",
        quantity: 1),
    Menu(
        id: 12,
        name: "Iced Coffe Caramel",
        description:
            "Iced Coffee Caramel is a delightful and refreshing coffee-based beverage known for its rich and sweet flavor profile.",
        price: 12.55,
        imageAssets: "images/icedrink/iced coffe caramel.jpg",
        category: "iced drink",
        quantity: 1),
    Menu(
        id: 13,
        name: "Iced Coffe Latte",
        description:
            "Iced Coffee Latte is a popular and refreshing coffee beverage enjoyed worldwide. It's known for its smooth and creamy flavor with a hint of coffee bitterness.",
        price: 11.00,
        imageAssets: "images/icedrink/iced coffe latte.png",
        category: "iced drink",
        quantity: 1),
    Menu(
        id: 14,
        name: "Iced Lemon Tea",
        description:
            "Lemon iced tea is black tea that is brewed hot then cooled down and served over ice. Fresh lemon juice is added to flavor the tea. ",
        price: 10.55,
        imageAssets: "images/icedrink/iced lemon tea.png",
        category: "iced drink",
        quantity: 1),
    Menu(
        id: 15,
        name: "Iced Matcha",
        description:
            "A vibrant and refreshing iced green tea with pure Japanese Matcha and a touch of sweetness.",
        price: 11.55,
        imageAssets: "images/icedrink/iced matcha.png",
        category: "iced drink",
        quantity: 1),
    Menu(
        id: 16,
        name: "Muffin",
        description:
            "Muffin is a type of cake made in personal size the texture is dense, slightly lumpy in the filling, and the shape is similar to cake. Usually muffins are served for breakfast, or friends to drink coffee and tea.",
        price: 5.00,
        imageAssets: "images/food/muffin.png",
        category: "food",
        quantity: 1),
    Menu(
        id: 17,
        name: "Sandwich",
        description:
            "Sandwich is a food made from a variety of bread (bread) that is crushed (is a thin hemisphere) and filled with various fillings.",
        price: 10.55,
        imageAssets: "images/food/sandwich.jpg",
        category: "food",
        quantity: 1),
  ];

  static List<Menu> hotDrink = [
    Menu(
        id: 1,
        name: "Hot Cappucino",
        description:
            "Cappuccino is a cup of milk coffee that originated in Italy and began to be present in Europe and America since the 1980s. A cup of cappuccino coffee has the same ratio of espresso, steamed milk and foam. The taste of cappuccino coffee is generally very rich, even though it has been mixed with milk, the taste of coffee is still strong.",
        price: 10.50,
        imageAssets: "images/hotdrink/hot cappucino.png",
        category: "hot drink",
        quantity: 1),
    Menu(
        id: 7,
        name: "Hot Black Coffe",
        description:
            "Hot Black Coffee is a classic and straightforward coffee beverage, known for its simplicity and bold, robust flavor.",
        price: 10.55,
        imageAssets: "images/hotdrink/hot black coffe.png",
        category: "hot drink",
        quantity: 1),
    Menu(
        id: 8,
        name: "Hot Chocolate",
        description:
            "Hot Chocolate, also known as hot cocoa, is a comforting and decadent beverage enjoyed for its rich and sweet chocolate flavor.",
        price: 7.00,
        imageAssets: "images/hotdrink/hot chocolate.png",
        category: "hot drink",
        quantity: 1),
    Menu(
        id: 9,
        name: "Hot Latte",
        description:
            "A Hot Latte is a popular coffee-based beverage that combines espresso with steamed milk, resulting in a creamy and mildly caffeinated drink.",
        price: 8.00,
        imageAssets: "images/hotdrink/hot latte.png",
        category: "hot drink",
        quantity: 1),
    Menu(
        id: 10,
        name: "Hot Lemon Tea",
        description:
            "Hot Lemon Tea is a soothing and invigorating beverage made by steeping tea leaves (usually black tea or herbal tea) and adding freshly squeezed lemon juice. It's known for its refreshing and slightly tangy flavor.",
        price: 9.55,
        imageAssets: "images/hotdrink/hot lemon tea.png",
        category: "hot drink",
        quantity: 1),
    Menu(
        id: 11,
        name: "Hot Matcha",
        description:
            "Hot Matcha is a comforting and earthy beverage made from finely ground green tea leaves, resulting in a vibrant green color and a unique flavor.",
        price: 10.00,
        imageAssets: "images/hotdrink/hot matcha.png",
        category: "hot drink",
        quantity: 1),
  ];

  static List<Menu> icedDrink = [
    Menu(
        id: 11,
        name: "Iced Coffe BrownSugar",
        description:
            "Iced coffee brown sugar, also known as (Brown Sugar Iced Coffee), is a refreshing and sweetened iced coffee beverage. It's typically made by combining freshly brewed coffee with brown sugar syrup or simple syrup and serving it over ice.",
        price: 14.55,
        imageAssets: "images/icedrink/iced coffe browsugar.png",
        category: "iced drink",
        quantity: 1),
    Menu(
        id: 12,
        name: "Iced Coffe Caramel",
        description:
            "Iced Coffee Caramel is a delightful and refreshing coffee-based beverage known for its rich and sweet flavor profile.",
        price: 12.55,
        imageAssets: "images/icedrink/iced coffe caramel.jpg",
        category: "iced drink",
        quantity: 1),
    Menu(
        id: 13,
        name: "Iced Coffe Latte",
        description:
            "Iced Coffee Latte is a popular and refreshing coffee beverage enjoyed worldwide. It's known for its smooth and creamy flavor with a hint of coffee bitterness.",
        price: 11.00,
        imageAssets: "images/icedrink/iced coffe latte.png",
        category: "iced drink",
        quantity: 1),
    Menu(
        id: 14,
        name: "Iced Lemon Tea",
        description:
            "Lemon iced tea is black tea that is brewed hot then cooled down and served over ice. Fresh lemon juice is added to flavor the tea.",
        price: 10.55,
        imageAssets: "images/icedrink/iced lemon tea.png",
        category: "iced drink",
        quantity: 1),
    Menu(
        id: 15,
        name: "Iced Matcha",
        description:
            "A vibrant and refreshing iced green tea with pure Japanese Matcha and a touch of sweetness.",
        price: 11.55,
        imageAssets: "images/icedrink/iced matcha.png",
        category: "iced drink",
        quantity: 1),
  ];

  static List<Menu> food = [
    Menu(
        id: 2,
        name: "Black Forest",
        description:
            "the most recognizable type of German cake in the world. The cake is made from chocolate sponges covered in fresh cream, chocolate shavings and cherries soaked in Kirschwasser, clear cherry schnapps typical of the Schwarzwälder (Black Forest) region.",
        price: 14.00,
        imageAssets: "images/food/blackforest.png",
        category: "food",
        quantity: 1),
    Menu(
        id: 3,
        name: "Breakfast Meal",
        description:
            "American breakfast or American-style breakfast which is also known as full breakfast is a breakfast menu that is fairly heavy because it is accompanied by various menus that certainly add a lot of calories.",
        price: 18.00,
        imageAssets: "images/food/breakfast meal.png",
        category: "food",
        quantity: 1),
    Menu(
        id: 4,
        name: "Brownis",
        description:
            "Brownies is taken from (The Deep Brown Color of Cookies). Brownies have a characteristic dark blackish brown color. Brownies are a kind of common cake but use melted chocolate bars and have a sweet taste and a dense texture.",
        price: 10.55,
        imageAssets: "images/food/brownis.png",
        category: "food",
        quantity: 1),
    Menu(
        id: 5,
        name: "Croissant",
        description:
            "Croissant is one of the pastry products derived from folded dough that is almost the same as puff pastry with the characteristic of layers and shaped like a crescent (French), which in Indonesian means crescent, but there are also horn-shaped (horn).",
        price: 12.00,
        imageAssets: "images/food/croissant.jpg",
        category: "food",
        quantity: 1),
    Menu(
        id: 6,
        name: "Donut",
        description:
            "Donuts are foods made from flour through a fermentation process with baker's yeast and fried. Donuts have a very distinctive shape with a hole in the middle like a ring and round when filled with a material (filling).",
        price: 4.00,
        imageAssets: "images/food/donut.png",
        category: "food",
        quantity: 1),
    Menu(
        id: 16,
        name: "Muffin",
        description:
            "Muffin is a type of cake made in personal size the texture is dense, slightly lumpy in the filling, and the shape is similar to cake. Usually muffins are served for breakfast, or friends to drink coffee and tea.",
        price: 5.00,
        imageAssets: "images/food/muffin.png",
        category: "food",
        quantity: 1),
    Menu(
        id: 17,
        name: "Sandwich",
        description:
            "Sandwich is a food made from a variety of bread (bread) that is crushed (is a thin hemisphere) and filled with various fillings.",
        price: 10.55,
        imageAssets: "images/food/sandwich.jpg",
        category: "food",
        quantity: 1)
  ];
}
