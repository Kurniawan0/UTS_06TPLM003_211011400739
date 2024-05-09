import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  final String title;
  final String info;
  final String price;
  final String image;
  final Color? color;
  const CardProduct(
      {super.key,
      required this.title,
      required this.info,
      required this.price,
      required this.image,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    info,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    price,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(image),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
