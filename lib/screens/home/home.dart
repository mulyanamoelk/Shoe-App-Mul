import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'widgets/app_bar_home.dart';
import 'widgets/best_selling.dart';
import 'widgets/categories_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const AppBarHome(),
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                // height: 500.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      margin: const EdgeInsets.only(
                        top: 15.0,
                      ),
                      height: 50.0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 5.0),
                            width: MediaQuery.of(context).size.width * .7,
                            child: const TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search here"),
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.camera_alt,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20.0),
                      child: const Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const CategoriesHome(),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15.0),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Best Selling",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const BestSelling()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 56.0,
        onTap: (index) {},
        backgroundColor: Colors.grey.shade300,
        color: Colors.blue,
        items: const [
          Icon(
            Icons.home,
            size: 24.0,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart,
            size: 24.0,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 24.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
