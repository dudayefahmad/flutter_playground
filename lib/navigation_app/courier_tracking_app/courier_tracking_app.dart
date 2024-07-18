import 'package:flutter/material.dart';

class MyCourierTrackingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Courier Tracking'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car), text: 'In Transit'),
                Tab(icon: Icon(Icons.check), text: 'Delivered'),
                Tab(icon: Icon(Icons.access_time), text: 'Pending'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // In Transit Parcels
              Center(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.local_shipping),
                      title: Text('Parcel 21'),
                      subtitle: Text('Expected Delivery: Tomorrow'),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      leading: Icon(Icons.local_shipping),
                      title: Text('Parcel 22'),
                      subtitle: Text('Expected Delivery: In 2 days'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ),
              // Delivered Parcels
              Center(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.check_circle_outline),
                      title: Text('Parcel 23'),
                      subtitle: Text('Delivered: Yesterday'),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle_outline),
                      title: Text('Parcel 24'),
                      subtitle: Text('Delivered: Last week'),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle_outline),
                      title: Text('Parcel 25'),
                      subtitle: Text('Delivered: Two weeks ago'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ),
              // Pending Parcels
              Center(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.hourglass_empty),
                      title: Text('Parcel 26'),
                      subtitle: Text('Status: Pending'),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      leading: Icon(Icons.hourglass_empty),
                      title: Text('Parcel 27'),
                      subtitle: Text('Status: Pending'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
