import 'package:flutter/material.dart';
import 'package:geolocation/screens.dart/single_city.dart';

class PlcaesScreen extends StatelessWidget {
  const PlcaesScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> clityList = const [
    {
      "address": "Multan the saint city",
      "id": "Multan_01",
      "image":
      "http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQtHPo5Yv1aOa7I6P5pj3hdFhtIIZxImjqDDKEZlrBeNrEX35Dej1wfpHuzQaGcIkfC",
      "lat": 30.1575,
      "lng": 71.5249,
      "name": "Multan",
      "region": "South Asia"
    },
    {
      "address": "Islamabad capital of Pakistan",
      "id": "slamabad_02",
      "image":
      "http://t0.gstatic.com/licensed-image?q=tbn:ANd9GcTdAT87ejzWsCSxaavMj83TzQt-aH2UotHg6dLfm3nCERX3fJQi_6kyVcb6LeoxWmfN",
      "lat": 33.6844,
      "lng": 73.0479,
      "name": "Islamabad",
      "region": "South Asia"
    },
    {
      "address": "Lahore City",
      "id": "Lahore_03",
      "image":
      "http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQoA3kOyQMWeDBMD0xcH9CjgAXZIfvG7yxiLeIIaV9jIZ9n_kFUCGZwo3ED6-oK7tPH",
      "lat": 31.5204,
      "lng": 74.3587,
      "name": "Lahore",
      "region": "South Asia"
    },
    {
      "address": "Karachi City",
      "id": "Karachi_04",
      "image":
      "http://t2.gstatic.com/licensed-image?q=tbn:ANd9GcSccqDW-CoFyBGnYAmhskI5D3wA-JVm5rXNxj6gqMQB_g6K3qwmQ6Om8wmKWCRc3sMq",
      "lat": 24.8607,
      "lng": 67.0011,
      "name": "Karachi",
      "region": "South Asia"
    }
  ];

  getDetails(Map singleCityData, BuildContext context) {
    print(singleCityData);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SingleCity(
          cityData: singleCityData,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("City List of Pakistan"),
      ),
      body: ListView.builder(
        itemCount: clityList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Column(
              children: [
                Image.network(
                  clityList[index]['image'],
                  height: 200,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        clityList[index]['name'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        getDetails(clityList[index], context);
                      },
                      child: const Text("View Details"),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
