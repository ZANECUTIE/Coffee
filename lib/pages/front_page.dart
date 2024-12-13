import 'package:flutter/material.dart';
import 'home_page.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // Background color matching the app
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[800],
        title: const Text(
          'Welcome to Coffee Shop',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Welcome Text
              Text(
                "Experience the aroma of freshly brewed coffee!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 50),

              // Beautiful Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown[600], // Coffee-inspired color
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 5, // Slight shadow for 3D effect
                ),
                onPressed: () {
                  // Navigate to HomePage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Text(
                  'Enter Coffee Shop',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[200], // Light text for contrast
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Decorative Image or Icon
              Center(
                child: Icon(
                  Icons.coffee_rounded,
                  size: 100,
                  color: Colors.brown[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
