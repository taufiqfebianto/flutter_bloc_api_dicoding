import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/story.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  StoryBloc? bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<StoryBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  _onAddStory() {}

  _onClose() {}

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoryBloc, StoryState>(
      listener: ((context, state) {}),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            leading: Container(),
            title: Text(
              'Story API dicoding',
              style:
                  TextStyle(color: Colors.black38, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: _onClose,
                icon: const Icon(
                  Icons.exit_to_app_rounded,
                  color: Colors.black38,
                ),
              ),
            ],
          ),
          body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Container(
                            height: 225,
                            child: ClipRect(
                              
                              child: Image.network(
                                'https://petlog-media-cdn-live.azureedge.net/cache/e/7/c/3/f/5/e7c3f52d0124d14996a2e3b4bb99b9dbff4d237c.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.thumb_up_alt_rounded),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.save_alt_rounded),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.share_rounded),
                            ],
                          )
                        ],
                      ),
                    );
                  }))),
          floatingActionButton: FloatingActionButton(
            onPressed: _onAddStory,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.add_a_photo_rounded,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
