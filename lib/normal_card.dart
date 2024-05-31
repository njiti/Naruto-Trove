import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String image;
  final String Name;
  final String Education;
  final String Qualifications;


  const MySquare({super.key, required this.image, required this.Name, required this.Education, required this.Qualifications});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade300,
              width: 3.0,
              style: BorderStyle.solid
            )
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          image,
                          height: 100,
                          width: 110,
                      ),
                  ),
                  Column(
                    children: [
                      Text(
                          Name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                      ),
                      Text(
                        Education,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                      Text(
                        Qualifications,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}

// Image.network(image),
// Text(Name),
// Text(Education),
// Text(Qualifications),
