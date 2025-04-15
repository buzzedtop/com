part of 'package:com_buzzedtop/main.dart';

class ContentHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                'Website Relaunch',
                style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 8),
                Text(
                'This is to mark the relaunch of the website are being rewritten in flutter, as all primary development is transitioning to flutter for our projects. This is to maintain multi-platform distribution to pruducts. The star doesn\'t work yet.',
                style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 16),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Author: Taylor @ Buzzed Top - 2025-04-15',
                  style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Row(
                  children: [
                    IconButton(
                    icon: Icon(Icons.star),
                    color: Colors.amber,
                    onPressed: () {
                      // Increment star count logic
                    },
                    ),
                    Text(
                    '0', // Replace with the actual star count
                    style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                  ),
                ],
                ),
              ],
              ),
            ),
            ),
            Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                'Website Relaunch',
                style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 8),
                Text(
                'This is to mark the relaunch of the website are being rewritten in flutter, as all primary development is transitioning to flutter for our projects. This is to maintain multi-platform distribution to pruducts. The star doesn\'t work yet.',
                style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 16),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Author: Taylor @ Buzzed Top - 2025-04-08',
                  style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Row(
                  children: [
                    IconButton(
                    icon: Icon(Icons.star),
                    color: Colors.amber,
                    onPressed: () {
                      // Increment star count logic
                    },
                    ),
                    Text(
                    '0', // Replace with the actual star count
                    style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                  ),
                ],
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
