import 'package:flutter/material.dart';
import 'package:nft_forge/screens/welcome_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                alignment: const Alignment(-0.0, 0.7),
                child: const Text('Profile',
                    style: TextStyle(fontSize: 20.0, fontFamily: 'Poppins')),
              ),
              centerTitle: true,
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: const Color(0xFF40444D),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage("assets/images/nft.png"),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add edit profile functionality
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF40444D),
                    onPrimary: Colors.white,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: const Text('Edit Profile',
                      style: TextStyle(fontFamily: 'Poppins')),
                ),
                const SizedBox(height: 10.0), // Reduced space after the button
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == 0) {
                  return Container(
                    color: Colors.grey[300],
                    height: 30.0,
                    alignment: Alignment.topCenter,
                    child: const ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
                      title: Text(
                        'Headlines',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  );
                } else if (index == 1) {
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
                    title: Text('Trending',
                        style: TextStyle(fontFamily: 'Poppins')),
                    trailing: const Icon(Icons.arrow_right),
                    onTap: () {
                      // Handle item tap
                    },
                  );
                } else if (index == 2) {
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
                    title:
                        Text('Today', style: TextStyle(fontFamily: 'Poppins')),
                    trailing: const Icon(Icons.arrow_right),
                    onTap: () {
                      // Handle item tap
                    },
                  );
                } else if (index == 3) {
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
                    title: Text('Popular',
                        style: TextStyle(fontFamily: 'Poppins')),
                    trailing: const Icon(Icons.arrow_right),
                    onTap: () {
                      // Handle item tap
                    },
                  );
                } else if (index == 4) {
                  return Container(
                    color: Colors.grey[300],
                    height: 30.0,
                    alignment: Alignment.topCenter,
                    child: const ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
                      title: Text(
                        'Content',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  );
                } else if (index == 5) {
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
                    title: Text('Favourite',
                        style: TextStyle(fontFamily: 'Poppins')),
                    trailing: const Icon(Icons.arrow_right),
                    onTap: () {
                      // Handle item tap
                    },
                  );
                } else if (index == 6) {
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
                    title: Text('Download Report',
                        style: TextStyle(fontFamily: 'Poppins')),
                    trailing: const Icon(Icons.arrow_right),
                    onTap: () {
                      // Handle item tap
                    },
                  );
                } else if (index == 7) {
                  return Container(
                    color: Colors.grey[300],
                    height: 30.0,
                    alignment: Alignment.topCenter,
                    child: const ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
                      title: Text(
                        'Preferences',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  );
                } else if (index == 8) {
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
                    title: Text('Language',
                        style: TextStyle(fontFamily: 'Poppins')),
                    trailing: const Icon(Icons.arrow_right),
                    onTap: () {
                      // Handle item tap
                    },
                  );
                } else if (index == 9) {
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
                    title: Text('DarkMode',
                        style: TextStyle(fontFamily: 'Poppins')),
                    trailing: const Icon(Icons.arrow_right),
                    onTap: () {
                      // Handle item tap
                    },
                  );
                } else if (index == 10) {
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.only(left: 16.0, right: 16.0),
                    title: Text('Download Only via Wifi',
                        style: TextStyle(fontFamily: 'Poppins')),
                    trailing: const Icon(Icons.arrow_right),
                    onTap: () {
                      // Handle item tap
                    },
                  );
                }
              },
              childCount: 12,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ... your other widgets
                  ElevatedButton(
                    onPressed: () {
                        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelcomePage()),
            );

                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF40444D),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const Text('Logout',
                        style: TextStyle(fontFamily: 'Poppins')),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
