// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ReusableTourCard extends StatelessWidget {
  final image;
  final String nameOfEvent;
  final dateOfEvent;
  final onTap;

  const ReusableTourCard(this.image, this.nameOfEvent, this.dateOfEvent,this.onTap, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,

              border: Border.all(color: Colors.grey,),
              borderRadius:  const BorderRadius.all(Radius.circular(10))
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
                  child: Image.asset(image,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(nameOfEvent,
                      style: const TextStyle(
                        fontSize: 17,
                      ),),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(dateOfEvent),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
