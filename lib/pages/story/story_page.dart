import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_api_dicoding/models/models.dart';
import 'package:flutter_bloc_api_dicoding/shared/shared.dart';

import 'bloc/story.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  StoryBloc? bloc;
  AuthenticationBloc? authBloc;
  AllStoryResponseModel? model;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<StoryBloc>(context);
    authBloc = BlocProvider.of<AuthenticationBloc>(context);
    bloc!.add(GetAllStoryEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  _onAddStory() {}

  _onClose() {
    authBloc!.add(LoggedOut());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoryBloc, StoryState>(
      listener: ((context, state) {
        if (state is GetAllStorySuccessState) {
          model = state.model;
        }
      }),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            leading: Container(),
            title: const Text(
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
                  itemCount: model?.listStory.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 225,
                            child: ClipRect(
                              child: Image.network(
                                model!.listStory[index].photoUrl!,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
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
            child: const Icon(
              Icons.add_a_photo_rounded,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
