part of 'package:com_buzzedtop/main.dart';

class ContentHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Post(context: context, title: 'Github Copilot Multifile Editong', description:' Experimenting with https://github.blog/changelog/2024-10-29-multi-file-editing-code-review-custom-instructions-and-more-for-github-copilot-in-vs-code-october-release-v0-22/ to edit multiple files in open-source games to implement more modern practices. The plan to to modernize the game and create a workflow to release on all available flutter supported platforms for free. Then implement a single ad on application launch to cover minor cost associated with development. Also, implemented some delay to commits that are unimportant to reduce extra GitHub Action builds.', author: 'Taylor @ Buzzed Top - 2025-04-15'), 
          Post(context: context, title: 'Updating homepage template', description: 'Working on reformatting the homepage template for future management and updates. This will allow for scalability and ease of use for future updates.', author: 'Author: Taylor @ Buzzed Top - 2025-04-15'),
          Post(context: context, title: 'Website Relaunch', description: 'This is to mark the relaunch of the website are being rewritten in flutter, as all primary development is transitioning to flutter for our projects. This is to maintain multi-platform distribution to pruducts. The star doesn\'t work yet.', author: 'Author: Taylor @ Buzzed Top - 2025-04-08'),
        ],
      ),
    );
  }
}
