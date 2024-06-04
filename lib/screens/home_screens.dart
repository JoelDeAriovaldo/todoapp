import 'package:flutter/material.dart';
import 'package:todoapp/utils/utils.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DisplayWhiteText(
                        text: 'Jun 4, 2024',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                      Gap(10),
                      DisplayWhiteText(
                        text: 'My Todo List',
                        fontSize: 40,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: deviceSize.width,
                  color: colors.secondary,
                  child: Positioned(
                    top: 170,
                    left: 0,
                    right: 0,
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Move this to the Column
                        children: [
                          Container(
                            width: deviceSize.width,
                            height: deviceSize.height * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: colors.primaryContainer,
                            ),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 8,
                              padding: EdgeInsets.zero,
                              itemBuilder: (ctx, index) {
                                return const Text('home');
                              },
                            ),
                          ),
                          const Gap(20),
                          Text(
                            'Completed',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const Gap(20),
                          Container(
                            width: deviceSize.width,
                            height: deviceSize.height * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: colors.primaryContainer,
                            ),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 8,
                              padding: EdgeInsets.zero,
                              itemBuilder: (ctx, index) {
                                return const Text('home');
                              },
                            ),
                          ),
                          const Gap(20),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
