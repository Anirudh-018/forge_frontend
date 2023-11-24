import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = [
      'https://via.placeholder.com/300',
      'https://via.placeholder.com/300',
      'https://via.placeholder.com/300',
      'https://via.placeholder.com/300',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 20, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push to HomeScreen
                    },
                    child: Image.asset(
                      'assets/images/logo.jpeg',
                      width: 200,
                      height: 100,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigator.push to WalletPage
                        },
                        child: Icon(
                          MdiIcons.wallet,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push to AccountPage
                        },
                        child: Icon(
                          MdiIcons.account,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push to HomeScreen
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Popular',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(imageUrls[index]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Tag ${index + 1}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Popular(),
  ));
}




