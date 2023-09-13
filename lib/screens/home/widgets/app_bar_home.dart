import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: const Icon(
        Icons.sort,
        size: 24.0,
      ),
      title: const Text("Mul Shop"),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Badge(
            backgroundColor: Colors.red,
            label: const Text("3"),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 24.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}
