import 'package:flutter/material.dart';

class NavigationMethodPage extends StatelessWidget {
  const NavigationMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Using named routes for simplicity, but the same can be achieved with onGenerateRoute for more complex scenarios
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/home': (context) => const HomeScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
      initialRoute: '/welcome', // Starting point of the application
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the HomeScreen
            Navigator.pushNamed(context, '/home');
          },
          child: const Text('Login / Register'),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the SettingsScreen
            Navigator.pushNamed(context, '/settings');
          },
          child: const Text('Go to Settings'),
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Logout and remove all screens until WelcomeScreen
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                  (Route<dynamic> route) => false,
            );
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
