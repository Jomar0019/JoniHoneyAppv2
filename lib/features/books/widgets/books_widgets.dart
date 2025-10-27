import 'package:flutter/material.dart';

class BooksWidgets extends StatefulWidget {
  const BooksWidgets({super.key});

  @override
  State<BooksWidgets> createState() => _BooksWidgetsState();
}

class _BooksWidgetsState extends State<BooksWidgets> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: 5,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: .6,
      ),

      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/TCD.png', fit: BoxFit.cover),
          ),
        );
      },
    );
  }
}
