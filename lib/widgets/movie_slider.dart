import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.red,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Populares',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => _MovieSlider(),
              itemCount: 20,
            ),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}

class _MovieSlider extends StatelessWidget {
  const _MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      color: Colors.green,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}
