import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/product.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<Menu> _favorites = [];
  List<Menu> get favorites => _favorites;

  void toggleFavorite(Menu menu) {
    if (_favorites.contains(menu)) {
      _favorites.remove(menu);
    } else {
      _favorites.add(menu);
    }
    notifyListeners();
  }

  bool isExist(Menu menu) {
    final isExist = _favorites.contains(menu);
    return isExist;
  }

  static FavoriteProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}
