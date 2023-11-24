import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nft_forge/screens/wallet_page.dart';

import 'Instruction.dart';
import 'account_page.dart';
import 'homescreen.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List<String> imageUrls = [];
  bool isLoading = false;

  Future<void> fetchImages() async {
    setState(() {
      isLoading = true;
    });

    final apiUrl = 'http://10.100.5.63:3000/generate/getAllGallery/ani'; // Replace with your API endpoint

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        setState(() {
          imageUrls = data.cast<String>().toList();
        });
      } else {
        throw Exception('Failed to load image URLs');
      }
    } catch (error) {
      print('Error fetching image URLs: $error');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  void _showMintingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevents dismissing the dialog by tapping outside
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Adding to Gallery...'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Please wait while minting image.'),
                SizedBox(height: 20),
                CircularProgressIndicator(), // Display a loading indicator
              ],
            ),
          ),
        );
      },
    );

    // Simulate adding to gallery process with a delay
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pop(); // Close the dialog after a delay
      // Perform adding to gallery logic or navigate to the next screen after completion
    });
  }

  @override
  void initState() {
    super.initState();
    fetchImages();
  }

  void handleMintButtonTap(int mainGridIndex) {
    print('Mint button tapped for main grid item $mainGridIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Row(
                  children: [
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                SizedBox(width: 140),
                Text(
                  'Gallery',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                isLoading
                    ? Center(child: CircularProgressIndicator())
                    : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: imageUrls.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(imageUrls[index]),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _showMintingDialog(context);
                          },
                          child: Text('Mint'),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Gallery(),
  ));
}