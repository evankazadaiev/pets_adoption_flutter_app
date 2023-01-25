import 'package:flutter/material.dart';
import 'package:pets_adoption/app/theme/cubit/app_theme_cubit.dart';

class SliverTemplate extends StatelessWidget {
  final Widget? spaceBarContent;
  final String? bodyTitle;
  final List<Widget>? bodyContent;

  const SliverTemplate(
      {this.spaceBarContent, this.bodyTitle, this.bodyContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.of(context).colorTheme.backgroundWindowBackground,
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            floating: true,
            stretch: true,
            actions: const [
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.notifications,
                  ))
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                constraints: const BoxConstraints.expand(),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: spaceBarContent ?? Container(),
                ),
              ),
            ),
            expandedHeight: 280,
          ),
          SliverToBoxAdapter(
            child: Container(
              color: AppTheme.of(context).colorTheme.backgroundSurface,
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                child: Container(
                  color: AppTheme.of(context)
                      .colorTheme
                      .backgroundWindowBackground,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  height: 50,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (bodyTitle != null)
                        Text(
                          bodyTitle!,
                          textAlign: TextAlign.left,
                          style: AppTheme.of(context).textTheme.h6Bold.copyWith(
                              color:
                                  AppTheme.of(context).colorTheme.textPrimary),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ...?bodyContent
          // SliverFillRemaining(
          //     hasScrollBody: false, child: Container()),
        ],
      ),
    );
  }
}
