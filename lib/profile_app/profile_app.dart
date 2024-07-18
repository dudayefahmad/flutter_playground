import 'package:flutter/material.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: const ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/66577?v=4'),
          ),
          const SizedBox(height: 20),
          Text('Ahmad Dudayef',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(
              'Mobile Developer',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 20),
          Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.cake),
                  title: Text('Birth Date'),
                  subtitle: Text('1995-06-10'),
                ),
                ListTile(
                    leading: const Icon(Icons.web),
                    title: const Text('Website'),
                    subtitle: const Text('ahmaddudayef.com'),
                    onTap: () {}),
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text('ahmaddudayef@gmail.com'),
                ),
                const ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Address'),
                  subtitle: Text('Jakarta'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.facebook),
                onPressed: () {},
                color: Colors.blue,
                tooltip: 'Facebook',
              ),
              IconButton(
                icon: const Icon(Icons.link),
                onPressed: () {},
                color: Colors.blue,
                tooltip: 'LinkedIn',
              ),
              IconButton(
                icon: const Icon(Icons.code),
                onPressed: () {},
                color: Colors.black,
                tooltip: 'GitHub',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
