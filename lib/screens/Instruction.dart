import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nft_forge/screens/generate.dart';
import 'package:nft_forge/screens/homescreen.dart';
import 'package:nft_forge/screens/wallet_page.dart';
import 'package:nft_forge/screens/account_page.dart';

class Instruction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Image on the top left
          Positioned(
            top: 13.0,
            left: 10.0,
            child: Container(
              width: 200.0,
              height: 100.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/NFThome.png'), // Replace with your image path
                ),
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.transparent,
              ),
            ),
          ),
          // Wallet icon
          Positioned(
            top: 50,
            right: 60,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WalletPage(),
                  ),
                );
              },
              child: Icon(
                MdiIcons.wallet,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          // Profile icon
          Positioned(
            top: 50,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountPage(),
                  ),
                );
              },
              child: Icon(
                MdiIcons.account,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
           Positioned(
            top: 110.0,
            left: 20.0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          // Title 'Instructions' with Poppins font and italic style
          Positioned(
            top: 140,
            left: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Instructions',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(height: 10), // Add a line space of 10 pixels
              ],
            ),
          ),
          // Instructions paragraph
          Positioned(
            top: 210, // Adjusted top position to accommodate the line space
            left:
                20, // Adjusted left position to move the paragraph to the left
            child: Container(
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      size: 30,
                    ),
                    title: Text(
                      'Give a prompt text or an image for generating an image.',
                      style: TextStyle(
                        fontSize: 21,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      size: 30,
                    ),
                    title: Text(
                      'Once generated, click on the + button to add the image to the gallery.',
                      style: TextStyle(
                        fontSize: 21,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      size: 30,
                    ),
                    title: Text(
                      'We can provide both an image and text if needed or either one to generate images.',
                      style: TextStyle(
                        fontSize: 21,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      size: 30,
                    ),
                    title: Text(
                      'Up to 20 images can be generated without limiting them.',
                      style: TextStyle(
                        fontSize: 21,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Button 'Proceed'
          Positioned(
            bottom: 160,
            left: 40,
            right: 40,
            child: Container(
              height: 50,
              width: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Generate(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Set button color to black
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Text(
                  'Proceed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
