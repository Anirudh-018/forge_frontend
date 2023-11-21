import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nft_forge/screens/homescreen.dart';
import 'package:nft_forge/screens/Instruction.dart';
import 'package:nft_forge/screens/wallet_page.dart';
import 'package:nft_forge/screens/account_page.dart';

import 'gen_display.dart';

class Generate extends StatefulWidget {
  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  dynamic _selectedImage;
  TextEditingController _textInputController = TextEditingController();

  Future<void> _getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = pickedFile.path;
      });
    }
  }

  void _generateImage() {
    // Add functionality for generating image
    // You can use _textInputController.text for entered text
    // and _selectedImage for the selected image path
    print(_selectedImage+" "+_textInputController.text);
  }

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
                      'assets/images/logo.jpeg'), // Replace with your image path
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
            top: 140.0,
            left: 20.0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Instruction(),
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
          // Image Upload Box with Placeholder
          Center(
            child: InkWell(
              onTap: _getImage,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: _selectedImage != null
                    ? Image.file(
                        _selectedImage,
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        'assets/images/sketch-mountains-input.jpg', // Replace with your placeholder image path
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
          // Input Box
          Positioned(
            bottom: 140,
            left: 40,
            right: 40,
            child: Container(
              height: 70,
              child: Theme(
                data: Theme.of(context).copyWith(
                  primaryColor:
                      Colors.grey, // Set the text field border color to grey
                ),
                child: TextField(
                  controller: _textInputController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Enter your prompt here',
                  ),
                ),
              ),
            ),
          ),
          // Generate Button
          Positioned(
            bottom: 80,
            left: 80,
            right: 80,
            child: Container(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the ImageListScreen page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GenerateDisp()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Set button color to black
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Text(
                  'Generate',
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
