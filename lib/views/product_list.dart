import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  final bool currentThemeMode;
  final dynamic onThemeChanged;

  const ProductList({
    super.key,
    required this.currentThemeMode,
    required this.onThemeChanged,
  });

  @override
  State<StatefulWidget> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<Map<String, String>> products = [
    {
      'nome': 'Acer Aspire 14',
      'prezzo': '820€',
      'immagine': 'https://picsum.photos/200',
    },
    {
      'nome': 'Motorola 7',
      'prezzo': '500€',
      'immagine': 'https://picsum.photos/200',
    },
    {
      'nome': 'Huawei p70',
      'prezzo': '660€',
      'immagine': 'https://picsum.photos/200',
    },
    {
      'nome': 'Oppo Reno12 Pro5g',
      'prezzo': '650€',
      'immagine': 'https://picsum.photos/200',
    },
    {
      'nome': 'Samsung Galaxy S26',
      'prezzo': '1110€',
      'immagine': 'https://picsum.photos/200',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Card.filled(
              child: InkWell(
                onTap: () {
                  print('Hai premuto ${products[index]['nome']}');
                },
                child: Column(
                  children: [
                    Image.network(products[index]['immagine']!),
                    Text(products[index]['nome']!),
                    Text(products[index]['prezzo']!),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.onThemeChanged();
        },
        child: Icon(
          widget.currentThemeMode ? Icons.light_mode : Icons.dark_mode,
        ),
      ),
    );
  }
}
