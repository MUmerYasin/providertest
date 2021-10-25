
import 'package:provider/provider.dart';
 import 'package:flutter/foundation.dart';

 ///// Provider main function
//
// class Favorites extends ChangeNotifier{
//
//   String _fruit = 'unknown';
//
//   String getFruitName() => _fruit;
//
//   void changeFruit(String newFruit){
//     /// Function to Store value in Provider
//
//     // setState(() { _fruit = newFruit; });
//     _fruit = newFruit;
//     notifyListeners();
//   }
// }


 /// Provider main function

class ProviderModel extends ChangeNotifier{

  int _idOfUser = 0 ;
  String _nameOfUser = 'unknown';
  String _fatherNameOfUser = 'unknown';
  String _imagesOfUser = 'unknown';

  int getIdValue() => _idOfUser;
  String getNameValue() => _nameOfUser;
  String getFatherNameValue() => _fatherNameOfUser;
  String getProfileImagesUserValue() => _imagesOfUser;

   changeValue({ int? userId, String? name,String? fatherName, String? userImage }){
    /// Function to Store value in Provider

    // setState(() { _fruit = newFruit; });
     _idOfUser = userId!;
    _nameOfUser = name!;
    _fatherNameOfUser = fatherName!;
    _imagesOfUser = userImage!;
    notifyListeners();
  }
}


/// Provider main Cart

class ProviderCartModel extends ChangeNotifier{

  static int _idOfUser = 0 ;
//static

  int getIdValue() => _idOfUser;

  changeValue({ required int userId, }){
    /// Function to Store value in Provider

    // setState(() { _fruit = newFruit; });
    _idOfUser = userId;
    notifyListeners();
  }

  incrementValue(){
    // if(_idOfUser >= 0){
      _idOfUser++;
    // }
      notifyListeners();
  }

  decrementValue(){
    if(_idOfUser >= 1){
      _idOfUser--;

    }
    notifyListeners();
  }


}