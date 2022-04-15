import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class FoodItemDetails extends StatefulWidget {
  String name;
  String imagePath;
  String rating;
  String price;
  FoodItemDetails(this.name, this.imagePath, this.price, this.rating,
      {Key? key})
      : super(key: key);

  @override
  State<FoodItemDetails> createState() => _FoodItemDetailsState();
}

class _FoodItemDetailsState extends State<FoodItemDetails> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 244, 219, 196),
                height: MediaQuery.of(context).size.height * .4,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              child: IconButton(
                                icon: const Icon(Ionicons.chevron_back),
                                onPressed: () => Get.back(),
                              )),
                          Container(
                              height: 50,
                              width: 50,
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              child:
                                  const Icon(MaterialIcons.favorite_outline)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Image(
                          image: AssetImage(widget.imagePath),
                          height: 300,
                          width: 300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromRGBO(255, 224, 189, 1),
                child: Container(
                  height: height * .56,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                widget.name,
                                style: const TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.w600),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    MaterialIcons.star,
                                    color: Colors.yellow,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    widget.rating,
                                    style: const TextStyle(fontSize: 19),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text("(41 Reviews)")
                                ],
                              )
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  " \$ ",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  widget.price,
                                  style: const TextStyle(
                                      color: Colors.orange,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  ".oo",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 100,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 244, 219, 196),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Entypo.circle_with_minus,
                                    size: 40,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    "  1  ",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  Icon(
                                    MaterialIcons.add_circle,
                                    size: 40,
                                    color: Colors.orange,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 75,
                            width: 110,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.orange),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Size",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.orange)),
                                        Icon(
                                          Entypo.chevron_thin_down,
                                          color: Colors.orangeAccent,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "Medium",
                                          style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    )
                                  ]),
                            ),
                          ),
                          Container(
                            height: 75,
                            width: 110,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.orange),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Energy",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.orange)),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "554 KCal",
                                          style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    )
                                  ]),
                            ),
                          ),
                          Container(
                            height: 75,
                            width: 110,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.orange),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Delivery",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.orange)),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "45 min",
                                          style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    )
                                  ]),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 27),
                        child: Text(
                          "About",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 27, right: 27),
                        child: Text(
                          "Crispy seasoned chicken breast, topped with mandatory melted cheese and piled onto soft rolls with onion, avocado, lettuce, tomato and garlic mayo (if ordered).",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: MaterialButton(
                            padding: const EdgeInsets.all(10),
                            onPressed: () => {},
                            child: const Text(
                              "Add to Cart",
                              style:
                                  TextStyle(fontSize: 23, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
