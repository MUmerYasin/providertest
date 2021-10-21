import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertest/custom_provider.dart';

class FruitButton extends StatefulWidget {
  final String fruit;

  const FruitButton({Key? key, required this.fruit}) : super(key: key);

  @override
  State<FruitButton> createState() => _FruitButtonState();
}

class _FruitButtonState extends State<FruitButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ///Pass value to provide // using change Fruit function
        ///call /// custom_provider => Favorites => changeFruit()
        ///
        Provider.of<Favorites>(context, listen: false)
            .changeFruit(widget.fruit);

      },
      child: Text(widget.fruit),
    );
  }
}
