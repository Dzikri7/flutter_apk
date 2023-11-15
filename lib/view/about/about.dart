import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'WELCOME TO THE ABOUT PAGE!!\n\n\n\n'
              'Welcome to our innovative and immersive English language book application!\n\nWe take pride in presenting a cutting-edge platform that caters to language enthusiasts, learners, and avid readers alike.\n\nOur application is more than just a collection of pages; it\'s a dynamic gateway to the world of English literature and language mastery.\n\nWith a carefully curated selection of books spanning various genres and proficiency levels, we aim to foster a rich reading experience that transcends language barriers.\n\nWhether you\'re a beginner looking to enhance your vocabulary or an advanced learner seeking literary challenges, our app offers a diverse range of content to suit your preferences.\n\nJoin us on a literary journey where words come to life, sentences unfold like works of art, and the English language becomes a vibrant tapestry of expression.\n\nDiscover, learn, and immerse yourself in the beauty of English literature through our user-friendly and feature-rich application.\n\nWelcome to a world where every page turns into a new opportunity for language exploration and cultural enrichment.',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add more widgets or content as needed
          ],
        ),
      ),
    );
  }
}
