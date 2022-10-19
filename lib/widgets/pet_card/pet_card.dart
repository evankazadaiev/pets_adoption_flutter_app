import 'package:flutter/material.dart';
import 'package:pets_adoption/models/pet_model.dart';
import 'package:pets_adoption/screens/pet_screen/pet_screen.dart';

class PetCard extends StatelessWidget {
  final PetModel pet;
  const PetCard({Key? key, required this.pet}) : super(key: key);
  final String stubImage = "https://www.artistiqueacres.ca/images/cute-cat.jpg";

  void handleTap(context) {
    Navigator.of(context, rootNavigator: true)
        .pushNamed(PetScreen.routeName, arguments: pet.id);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
              strokeAlign: StrokeAlign.outside,
              color: Colors.transparent,
              width: 1),
          borderRadius: BorderRadius.circular(18),
          //set border radius more than 50% of height and width to make circle
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black54.withOpacity(0.5),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.1),
                      // Colors.transparent,
                      Colors.black26,
                      Colors.black87
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // stops: [0, 0.2, 0.6, 1],
                  ),
                ),
                child: Image.network(
                  pet.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pet.name,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.secondary),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    pet.breedName,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.secondary),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
            Positioned.fill(
                child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(18),
              child: InkWell(
                splashColor: Theme.of(context).primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(18),
                onTap: () {
                  handleTap(context);
                },
              ),
            ))
          ],
        ));

    // return Container(
    //   width: 200,
    //   height: 100,
    //   color: Theme.of(context).colorScheme.secondary,
    //   child: ClipRRect(
    //     borderRadius: BorderRadius.circular(40),
    //     child: Stack(
    //       alignment: Alignment.center,
    //       children: [
    //         Positioned(
    //           height: double.infinity,
    //           width: double.infinity,
    //           top: 0,
    //           left: 0,
    //           child: Container(
    //             width: double.infinity,
    //             decoration: BoxDecoration(
    //               boxShadow: [
    //                 BoxShadow(
    //                     color: Colors.white10,
    //                     spreadRadius: 0,
    //                     blurRadius: 20,
    //                     blurStyle: BlurStyle.inner)
    //               ],
    //               // gradient: LinearGradient(
    //               //     colors: [Colors.black26.withOpacity(0.7), Colors.white],
    //               //     begin: Alignment.topLeft,
    //               //     end: Alignment.bottomRight)
    //             ),
    //             margin: EdgeInsets.symmetric(horizontal: 15),
    //           ),
    //         ),
    //
    //       ],
    //     ),
    //   ),
    // );
  }
}
