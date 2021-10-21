
import 'package:provider/provider.dart';
 import 'package:flutter/foundation.dart';


 /// Provider main function

class Favorites extends ChangeNotifier{

  String _fruit = 'unknown';

  String getFruitName() => _fruit;

  void changeFruit(String newFruit){
    /// Function to Store value in Provider

    // setState(() { _fruit = newFruit; });
    _fruit = newFruit;
    notifyListeners();
  }
}