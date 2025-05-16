import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_app/presentation/blocs/notifications/notifications_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select(
          (NotificationsBloc bloc) =>
              Text('${bloc.state.status}', style: TextStyle(fontSize: 15)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<NotificationsBloc>().requestPermission();
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Placeholder(),
    );
  }
}
