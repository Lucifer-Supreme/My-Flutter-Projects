import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../models/case.dart';

class CaseItem extends StatelessWidget {
  CaseItem({super.key,required this.cases});

  Case cases;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: (Card(
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: NetworkImage(cases.imageURL),
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(color: Colors.black38),
                  child: Text(cases.title),
                                ),
                ),]
            ),
          ),
        )),
      ),
    );
  }
}
