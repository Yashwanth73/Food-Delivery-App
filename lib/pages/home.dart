import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:food_delivery_app/Models/item_model.dart';
import 'package:food_delivery_app/components/category_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String itemCategory = "Burger";
  List<CategoryFood> category = [
    CategoryFood("assests/burger_icon.png", "Burger"),
    CategoryFood("assests/pizza_icon.png", "Pizza"),
    CategoryFood("assests/sandwich_icon.png", "Sandwich"),
  ];
  List<ItemModel> burger = [
    ItemModel(
        "Chese burger",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Burger/burger-1.png"),
    ItemModel(
        "Chese burger",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Burger/burger-2.png"),
    ItemModel(
        "Chese burger",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Burger/burger-3.png"),
    ItemModel(
        "Chese burger",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Burger/burger-4.png"),
    ItemModel(
        "Chese burger",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Burger/burger-5.png"),
    ItemModel(
        "Chese burger",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Burger/burger-6.png"),
  ];
  List<ItemModel> pizza = [
    ItemModel(
        "Chese pizza",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Pizza/pizza-1.png"),
    ItemModel(
        "Chese pizza",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Pizza/pizza-2.png"),
    ItemModel(
        "Chese pizza",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Pizza/pizza-3.png"),
    ItemModel(
        "Chese pizza",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Pizza/pizza-4.png"),
    ItemModel(
        "Chese pizza",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Pizza/pizza-5.png"),
    ItemModel(
        "Chese pizza",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Pizza/pizza-6.png"),
  ];
  List<ItemModel> sandwich = [
    ItemModel(
        "Chese sandwich",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Sandwich/sand-1.png"),
    ItemModel(
        "Chese sandwich",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Sandwich/sand-2.png"),
    ItemModel(
        "Chese sandwich",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Sandwich/sand-3.png"),
    ItemModel(
        "Chese sandwich",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Sandwich/sand-4.png"),
    ItemModel(
        "Chese sandwich",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Sandwich/sand-5.png"),
    ItemModel(
        "Chese sandwich",
        "20",
        "200gr meat + Lettuce cheese + onion + tomato",
        "4.2",
        "assests/Sandwich/sand-6.png"),
  ];

  Widget catergotyCard(String imagePath, String categoryName) {
    bool clicked = false;
    return GestureDetector(
      onTap: () {
        setState(() {
          clicked = true;
          itemCategory = categoryName;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: clicked ? Colors.orange : Colors.white,
            border: Border.all(color: Colors.orange, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                child: Image(image: AssetImage(imagePath)),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Text(
                categoryName,
                style: TextStyle(
                    color: clicked ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemGrid(String item) {
    return SizedBox(
      height: 550,
      child: GridView.builder(
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
            mainAxisExtent: 230,
          ),
          scrollDirection: Axis.vertical,
          itemBuilder: (_, index) {
            if (item == "Burger") {
              return itemCard(
                  burger[index].itemName,
                  burger[index].imagePath,
                  burger[index].rating,
                  burger[index].price,
                  burger[index].itemIngridients);
            } else if (item == "Pizza") {
              return itemCard(
                  pizza[index].itemName,
                  pizza[index].imagePath,
                  pizza[index].rating,
                  pizza[index].price,
                  pizza[index].itemIngridients);
            } else if (item == "Sandwich") {
              return itemCard(
                  sandwich[index].itemName,
                  sandwich[index].imagePath,
                  sandwich[index].rating,
                  sandwich[index].price,
                  sandwich[index].itemIngridients);
            }
            return const Text("No Content");
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            // Top of the Page
            Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.orangeAccent,
                ),
                Text(
                  " Nevada, US ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Entypo.chevron_thin_down,
                  color: Colors.orangeAccent,
                  size: 15,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Order Your Food \nFast and Free",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                    Image(
                      image: AssetImage('assests/delivery.png'),
                    )
                  ],
                ),
              ),
            ),
            // Search and Menu bar
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                        height: 60,
                        width: 280,
                        child: TextField(
                            decoration: InputDecoration(
                          hintText: 'Search...',
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          prefixIcon: Icon(AntDesign.search1),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                        ))),
                    Container(
                      width: 50,
                      height: 48,
                      // padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.orange),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: const Icon(
                        Ionicons.options_outline,
                        color: Colors.orange,
                        size: 30,
                      ),
                      // child: const Image(
                      //   image: AssetImage('filter.png'),
                      //   height: 5,
                      //   width: 5,
                      // ))
                    )
                  ],
                ),
              ),
            ),
            // Food Category Items Horizontal List View
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return catergotyCard(category[index].imagePath,
                        category[index].categoryName);
                  },
                  separatorBuilder: (_, index) {
                    return const SizedBox(
                      width: 12,
                    );
                  },
                  itemCount: category.length),
            ),
            const SizedBox(
              height: 5,
            ),
            // Grid of Food Items as per category
            itemGrid(itemCategory)
          ],
        ),
      )),
    );
  }
}
