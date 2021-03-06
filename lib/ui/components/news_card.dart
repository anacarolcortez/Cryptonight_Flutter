import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String source;
  final String date;
  final String urlImg;

  const NewsCard({
    Key? key,
    required this.title,
    required this.source,
    required this.date,
    required this.urlImg,
  }) : super(key: key);

  static const noImage =
      'https://cdn.neemo.com.br/uploads/settings_webdelivery/logo/1630/no-image.png';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
          elevation: 8.0,
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(
                      width: 120,
                      height: 120,
                      child: urlImg.isNotEmpty
                          ? Image.network(
                              urlImg,
                              fit: BoxFit.cover,
                            )
                          : Image.network(noImage)),
                ],
              ),
              const SizedBox(
                width: 8,
              ),
              SizedBox(
                width: 240,
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          source,
                          style: const TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                              fontSize: 12, fontStyle: FontStyle.italic),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
