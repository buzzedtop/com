part of 'package:com_buzzedtop/main.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
    required this.context,
    required this.title,
    required this.description,
    required this.author,
  });

  final BuildContext context;
  final String title;
  final String description;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor, // Background color is determined here
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Added vertical padding
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  author,
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
    );
  }
}