part of 'package:com_buzzedtop/main.dart';

class ContentInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Buzzed Top, LLC',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          SizedBox(height: 16),
          Text(
            'Buzzed Top, LLC is a forward-thinking software development and research company targeting the consumer market. We specialize in creating high-quality applications and offering sophisticated large data analysis capabilities.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 32),
          Text(
            'Our Expertise & Capabilities',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 16),
          _buildCapabilitySection(
            context,
            icon: Icons.analytics,
            title: 'Large Data Analysis',
            description: 'Extensive experience in analyzing complex datasets, identifying trends, and leveraging artificial intelligence. Our expertise spans deep learning implementations using TensorFlow, Artificial Neural Networks, and creating intelligent, data-driven automation pipelines.',
          ),
          _buildCapabilitySection(
            context,
            icon: Icons.memory,
            title: 'Systems & Electrical Engineering',
            description: 'Our foundation lies in deep hardware and software integration. From designing state-of-the-art testing environments and physical hardware lab layouts to engineering embedded electronics, we possess a comprehensive understanding of complex system architectures.',
          ),
          _buildCapabilitySection(
            context,
            icon: Icons.precision_manufacturing,
            title: 'Automated Testing & Prototyping',
            description: 'We excel at automating repetitive tasking, developing custom testing software, and integrating systems for efficiency. Our team has built test benches using Python and MATLAB, and has extensive experience with prototype validation, RF test plans, and predictive maintenance modeling.',
          ),
          SizedBox(height: 32),
          Text(
            'Built on Experience',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 12),
          Text(
            'The core expertise of Buzzed Top is built on a foundation of rigorous engineering roles across the aerospace, defense, and manufacturing sectors. With a deep background originating from roles at industry leaders such as MTSI, KBR, Northrop Grumman, and 3D Systems, we bring a highly disciplined, analytical approach to software development and consumer applications.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 24),
          Divider(),
          SizedBox(height: 16),
          Row(
            children: [
              Icon(Icons.school, color: Theme.of(context).colorScheme.secondary),
              SizedBox(width: 8),
              Text(
                'Education: MS Electrical Engineering (University of Dayton)',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCapabilitySection(BuildContext context, {required IconData icon, required String title, required String description}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 32, color: Theme.of(context).colorScheme.secondary),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
