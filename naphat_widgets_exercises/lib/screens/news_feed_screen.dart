/// News Feed Screen
///
/// This widget displays the news feed screen and supports responsive layouts
/// for mobile, tablet, and desktop.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// This widget displays the news feed screen. It supports mobile, tablet,
/// and desktop layouts. It uses a ListView for mobile layouts through
/// the _buildListView method, and a GridView for tablet and desktop layouts
/// through the _buildGridView method. I used the LayoutBuilder to consider
/// which layout for the current screen. The _buildArticleCard method is
/// used to build the article card for displays the information about
/// each article.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-02-02
library;

import 'package:flutter/material.dart';
import '../models/article_model.dart';
import '../utils/news_responsive.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  final List<Article> articles = const [
    Article(
      title: 'Introduction to Flutter',
      description: 'Learn the basics of Flutter development...',
      date: '2024-01-05',
      readingTimeMinutes: 5,
    ),
    Article(
      title: 'Advanced Widget Patterns',
      description: 'Discover advanced patterns in Flutter...',
      date: '2024-01-04',
      readingTimeMinutes: 8,
    ),
    Article(
      title: 'State Management in Flutter',
      description: 'Explore different state management approaches...',
      date: '2024-01-03',
      readingTimeMinutes: 12,
    ),
    Article(
      title: 'Building Responsive UIs',
      description: 'Create apps that work on any screen size...',
      date: '2024-01-02',
      readingTimeMinutes: 10,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;
        final int columnCount = Responsive.getColumnCount(width);

        if (Responsive.isMobile(width)) {
          return _buildListView(context);
        } else {
          return _buildGridView(context, columnCount);
        }
      },
    );
  }

  Widget _buildListView(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return _buildArticleCard(context, articles[index]);
      },
    );
  }

  Widget _buildGridView(BuildContext context, int columnCount) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: articles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columnCount,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.6,
      ),
      itemBuilder: (context, index) {
        return _buildArticleCard(context, articles[index]);
      },
    );
  }

  Widget _buildArticleCard(BuildContext context, Article article) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),

            Text(
              article.description,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                Text(
                  article.date,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                const Spacer(),
                Text(
                  '${article.readingTimeMinutes} min read',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
