import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nft_forge/screens/account_page.dart';
import 'package:nft_forge/screens/gallery.dart';
import 'package:nft_forge/screens/wallet_page.dart';
import 'package:nft_forge/screens/Instruction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  },
  child: Image.asset(
    'assets/images/logo.jpeg',
    height: 150,
    width: 200,
  ),
),
                    const SizedBox(width: 120),
                    GestureDetector(
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
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
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
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Add a container with curved edges and a black margin
          Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16.0, // Adjust the value for the desired curvature
              ),
              color: Colors.black,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                16.0, // Match the container's borderRadius
              ),
              child: Image(
  image: NetworkImage(
    'https://storage.googleapis.com/download/storage/v1/b/forge-backend-8b8e6.appspot.com/o/images%2Fbusiness%20model.png?generation=1699934215533526&alt=media',
  ),
  height: 300,
  width: double.infinity,
  fit: BoxFit.cover,
),
            ),
          ),

          // Add a row with two curved buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color.fromARGB(255, 32, 36, 37),
                ),
                child: TextButton(
                  onPressed: () {
                    // Add your button 1 functionality here
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.only(
                        top: 20, right: 40, bottom: 30, left: 40),
                  ),
                  child: Text(
                    'Popular',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: const Color.fromARGB(255, 32, 36, 37),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Gallery(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.only(
                        top: 20, right: 40, bottom: 30, left: 40),
                  ),
                  child: Text(
                    'Gallery',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color.fromARGB(255, 32, 36, 37),
                ),
                child: TextButton(
                  onPressed: () {
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Instruction(),
                          ),
                        );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.only(
                        top: 20, right: 90, bottom: 30, left: 90),
                  ),
                  child: Text(
                    'Generate',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
