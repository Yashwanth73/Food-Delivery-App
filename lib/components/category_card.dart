import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../pages/fooditem_page.dart';

Widget itemCard(String name, String imagePath, String rating, String price,
    String ingridents) {
  return GestureDetector(
    onTap: () {
      Get.to(() => FoodItemDetails(name, imagePath, price, rating));
    },
    child: SizedBox(
      height: 200,
      child: Card(
        elevation: 2,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    MaterialIcons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    rating,
                    style: const TextStyle(fontSize: 11),
                  ),
                ],
              ),
              Container(
                  height: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imagePath), fit: BoxFit.contain))),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                ingridents,
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        "\$",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        price,
                        style: const TextStyle(
                            color: Colors.orange,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ".oo",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    MaterialIcons.add_circle,
                    size: 30,
                    color: Colors.orange,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
