// import 'package:flutter/material.dart';

// void main() {
//   runApp(AppGrid());
// }

// class AppGrid extends StatelessWidget {
//   const AppGrid({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('App Icons'),
//           centerTitle: true,
//         ),
//         body: Stack(
//           fit: StackFit.expand, // Make the stack expand to fill the screen
//           children: [
//             // Background image from the network
//             Positioned.fill(
//               child: Image.network(
//                 'https://plus.unsplash.com/premium_photo-1673306778968-5aab577a7365?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmFja2dyb3VuZCUyMGltYWdlfGVufDB8fDB8fHww',
//                 fit: BoxFit.cover, // Adjust the image to cover the entire screen
//                 loadingBuilder: (context, child, loadingProgress) {
//                   if (loadingProgress == null) {
//                     return child;
//                   } else {
//                     return Center(
//                       child: CircularProgressIndicator(
//                         value: loadingProgress.expectedTotalBytes != null
//                             ? loadingProgress.cumulativeBytesLoaded /
//                                 (loadingProgress.expectedTotalBytes ?? 1)
//                             : null,
//                       ),
//                     );
//                   }
//                 },
//               ),
//             ),
//             // The grid view is now on top of the background image
//             Positioned.fill(
//               child: Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3, // Number of icons in a row
//                     mainAxisSpacing: 10, // Vertical spacing between rows
//                     crossAxisSpacing: 10, // Horizontal spacing between columns
//                     childAspectRatio: 0.9, // Adjust this for icon size vs text balance
//                   ),
//                   itemCount: apps.length,
//                   itemBuilder: (context, index) {
//                     final app = apps[index];
//                     return Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           width: 60,
//                           height: 60,
//                           decoration: BoxDecoration(
//                             color: Colors.grey.shade300.withOpacity(0.7), // Semi-transparent icon background
//                             shape: BoxShape.circle,
//                           ),
//                           child: Icon(
//                             app.icon,
//                             size: 30,
//                             color: Colors.blueAccent,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           app.name,
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(
//                             fontSize: 14,
//                             color: Colors.white, // Ensure text is visible on the background
//                           ),
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // App data class
// class App {
//   final String name;
//   final IconData icon;

//   App({required this.name, required this.icon});
// }

// // Sample app data
// final List<App> apps = [

//   App(name: 'Calendar', icon: Icons.calendar_today),
//   App(name: 'Email', icon: Icons.email),
//   App(name: 'Maps', icon: Icons.map),
//   App(name: 'Facebook', icon: Icons.facebook),
//   App(name: 'Pinterest', icon: Icons.interests),
//   App(name: 'Youtube Music', icon: Icons.music_note),
//   App(name: 'Video Library', icon: Icons.video_library),
//   App(name: 'Gallery', icon: Icons.photo),
//   App(name: 'chaseApp', icon: Icons.wallet),
//   App(name: 'Alarm', icon: Icons.access_alarm),
//   App(name: 'Phone', icon: Icons.phone),
//   App(name: 'Messages', icon: Icons.message),
//   App(name: 'Settings', icon: Icons.settings),
//   App(name: 'Youtube', icon: Icons.youtube_searched_for),
//   App(name: 'Camera', icon: Icons.camera_alt),

// ];

import 'package:flutter/material.dart';
import 'package:screen/widgets/signup_screen.dart';
import 'package:screen/widgets/login_screen.dart';

void main() {
  runApp(AppGrid());
}

class AppGrid extends StatelessWidget {
  const AppGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Icons'),
          centerTitle: true,
        ),
        body: Stack(
          fit: StackFit.expand, // Make the stack expand to fill the screen
          children: [
            // Background image from the network
            Positioned.fill(
              child: Image.network(
                'https://plus.unsplash.com/premium_photo-1673306778968-5aab577a7365?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmFja2dyb3VuZCUyMGltYWdlfGVufDB8fDB8fHww',
                fit: BoxFit.cover, // Adjust the image to cover the entire screen
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                (loadingProgress.expectedTotalBytes ?? 1)
                            : null,
                      ),
                    );
                  }
                },
              ),
            ),
            // The grid view is now on top of the background image
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of icons in a row
                    mainAxisSpacing: 10, // Vertical spacing between rows
                    crossAxisSpacing: 10, // Horizontal spacing between columns
                    childAspectRatio: 0.9, // Adjust this for icon size vs text balance
                  ),
                  itemCount: apps.length,
                  itemBuilder: (context, index) {
                    final app = apps[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300.withOpacity(0.7), // Semi-transparent icon background
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            app.icon,
                            size: 30,
                            color: Colors.blueAccent,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          app.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white, // Ensure text is visible on the background
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            // Add buttons to navigate to Login or Sign Up screens
            Positioned(
              bottom: 5,
              left: 50,
              right: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the Login screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text('Go to Login'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      backgroundColor: Colors.blueAccent, // Button color
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the SignUp screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Text('Go to Sign Up'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      backgroundColor: Colors.greenAccent, // Button color
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// App data class
class App {
  final String name;
  final IconData icon;

  App({required this.name, required this.icon});
}

// Sample app data
final List<App> apps = [
  App(name: 'Calendar', icon: Icons.calendar_today),
  App(name: 'Email', icon: Icons.email),
  App(name: 'Maps', icon: Icons.map),
  App(name: 'Facebook', icon: Icons.facebook),
  App(name: 'Pinterest', icon: Icons.interests),
  App(name: 'Youtube Music', icon: Icons.music_note),
  App(name: 'Video Library', icon: Icons.video_library),
  App(name: 'Gallery', icon: Icons.photo),
  App(name: 'ChaseApp', icon: Icons.wallet),
  App(name: 'Alarm', icon: Icons.access_alarm),
  App(name: 'Phone', icon: Icons.phone),
  App(name: 'Messages', icon: Icons.message),
  App(name: 'Settings', icon: Icons.settings),
  App(name: 'Youtube', icon: Icons.youtube_searched_for),
  App(name: 'Camera', icon: Icons.camera_alt),
];
