// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/detail_story.dart';

class DetailStoryPage extends StatefulWidget {
  const DetailStoryPage({super.key});

  @override
  State<DetailStoryPage> createState() => _DetailStoryPageState();
}

class _DetailStoryPageState extends State<DetailStoryPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetailStoryBloc, DetailStoryState>(
      listener: ((context, state) {}),
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [Text('DetailStory Page')],
            ),
          ),
        );
      },
    );
  }
}
