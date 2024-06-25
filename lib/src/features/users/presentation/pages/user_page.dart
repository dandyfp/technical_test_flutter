import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technical_test_flutter/src/features/users/presentation/bloc/user/user_bloc.dart';
import 'package:extended_image/extended_image.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  refresh() {
    context.read<UserBloc>().add(const UserEvent.getUsers(2));
  }

  Future<void> onRefresh() async {
    await refresh();
  }

  @override
  void initState() {
    refresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade600,
        title: const Text(
          'Users',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => Center(
              child: CircularProgressIndicator(
                color: Colors.blue.shade600,
              ),
            ),
            orElse: () => Center(
              child: CircularProgressIndicator(
                color: Colors.blue.shade600,
              ),
            ),
            loaded: (data) => RefreshIndicator.adaptive(
              onRefresh: () => onRefresh(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ListView(
                  children: data
                      .map(
                        (e) => Container(
                          margin: const EdgeInsets.only(bottom: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.grey.shade500,
                            ),
                          ),
                          child: ListTile(
                            leading: ExtendedImage.network(
                              height: 50,
                              width: 50,
                              e.avatar ?? '',
                              fit: BoxFit.cover,
                              shape: BoxShape.circle,
                            ),
                            title: Text('${e.firstName ?? ''} ${e.lastName ?? ''}'),
                            subtitle: Text(
                              e.email ?? '',
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
