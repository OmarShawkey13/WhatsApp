import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentoracademy/features/home/presentation/views/cubit/cubit.dart';
import 'package:mentoracademy/features/home/presentation/views/cubit/states.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (BuildContext context, HomeStates state) {},
      builder: (BuildContext context, HomeStates state) {
        var cubit = HomeCubit.get(context);
        return Scaffold(
          backgroundColor: const Color(0xfff8fbf2),
          appBar: AppBar(
            backgroundColor: const Color(0xfff8fbf2),
            title: const Text('WhatsApp'),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: const Color(0xfff8fbf2),
            selectedItemColor: Colors.green,
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeBottomNav(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bubble_chart),
                label: 'Status',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: 'Status',
              ),
            ],
          ),
          floatingActionButton: cubit.currentIndex == 0
              ? FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: () {},
                  child: const Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                )
              : null,
        );
      },
    );
  }
}
