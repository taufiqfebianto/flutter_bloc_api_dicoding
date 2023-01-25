import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_api_dicoding/shared/shared.dart';

import '../pages/login/bloc/login.dart';
import '../pages/register/bloc/register.dart';
import '../pages/story/add_story/bloc/add_story.dart';
import '../pages/story/bloc/story.dart';
import '../pages/story/detail_story/bloc/detail_story.dart';

class Routers {
  
  static const String register = '/register';
  static const String login = '/login';
  static const String addtory = '/addStory';
  static const String allStory = '/allStory';
  static const String detailStory = '/detailStory';

  final route = <String, WidgetBuilder>{
    Routers.allStory: (BuildContext context) {
      return BlocBuilder<AuthenticationBloc, AuthenticationState>(
          bloc: BlocProvider.of<AuthenticationBloc>(context),
          builder: (BuildContext context, AuthenticationState state) {
            if (state is AuthenticationAuthenticated) {
              return MultiBlocProvider(
                providers: [
                  BlocProvider<StoryBloc>(
                    create: (BuildContext context) => StoryBloc(),
                  ),
                  BlocProvider<AddStoryBloc>(
                    create: (BuildContext context) => AddStoryBloc(),
                  ),
                  BlocProvider<DetailStoryBloc>(
                    create: (BuildContext context) => DetailStoryBloc(),
                  ),
                ],
                child: const StoryPage(),
              );
            }

            if (state is AuthenticationUnauthenticated) {
              return MultiBlocProvider(providers: [
                BlocProvider<LoginBloc>(
                  create: (BuildContext context) => LoginBloc(),
                ),
                BlocProvider<RegisterBloc>(
                  create: (BuildContext context) => RegisterBloc(),
                ),
              ], child: const LoginPage());
            }

            // return const SplashPage();
            return  Container();
          });
    },
    Routers.register: (BuildContext context) {
      return BlocProvider<RegisterBloc>(
        create: (BuildContext context) => RegisterBloc(),
        child: const RegisterPage(),
      );
    },
    // Routers.receiptTransfer: (BuildContext context) {
    //   return BlocProvider<ReceiptTransferBloc>(
    //     create: (BuildContext context) => ReceiptTransferBloc(),
    //     child: const ReceiptTransferPage(),
    //   );
    // },
  };
}
