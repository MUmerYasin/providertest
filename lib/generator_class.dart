import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertest/custom_provider.dart';
import 'hero_user.dart';

class UserProfileVerticalListViews extends StatefulWidget {
  final List<String> firstName;
  final List<String> fatherName;

  // final List<String> images;

  const UserProfileVerticalListViews({
    Key? key,
    required this.firstName,
    required this.fatherName,
    // required this.images,
  }) : super(key: key);

  @override
  State<UserProfileVerticalListViews> createState() =>
      _UserProfileVerticalListViewsState();
}

class _UserProfileVerticalListViewsState
    extends State<UserProfileVerticalListViews> {

  @override
  initset(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: widget.firstName.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Provider.of<ProviderModel>(context, listen: false)
                                .changeValue(
                                    userId: index,
                                    fatherName: widget.fatherName[index],
                                    name: widget.firstName[index],
                                    userImage:
                                        "https://picsum.photos/200/200?random=$index");
                          });

                          // print("ii");

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  HeroForUser(userID: "user_" + index.toString(),)),
                          );
                        },
                        child: Hero(
                          tag: "user_" + index.toString(),
                          child: ListTile(
                            minVerticalPadding: 0.0,
                            dense: false,
                            leading: Image.network(
                                "https://picsum.photos/200/200?random=$index"),
                            title: Text(
                              widget.firstName[index],
                            ),
                            trailing: const Icon(Icons.more_vert),
                          ),
                        ),
                      ),

                      // Provider.of<ProviderModel>(context, listen: false)
                      //     .changeValue(
                      //         fatherName: widget.fatherName[index],
                      //         name: widget.firstName[index],
                      //         userImage: "https://picsum.photos/200/200?random=$index"),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}

/////Pass value to provide // using change Fruit function
//         ///call /// custom_provider => Favorites => changeFruit()
//         ///
//         // Provider.of<Favorites>(context, listen: false)
//         //     .changeFruit(widget.fruit);
//
//         Provider.of<ProviderModel>(context, listen: false)
//             .changeValue(widget.fruit);
