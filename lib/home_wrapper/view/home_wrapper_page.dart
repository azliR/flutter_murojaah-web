import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:murojaah_web/app/core/app_router.dart';
import 'package:murojaah_web/auth/cubit/auth_cubit.dart';
import 'package:pwa_update_listener/pwa_update_listener.dart';

enum HomeSection { recite, listen, about }

enum NavigationType { bottom, rail, drawer }

class AdaptiveScaffoldDestination {
  const AdaptiveScaffoldDestination({
    required this.label,
    required this.icon,
    required this.selectedIcon,
  });
  final String label;
  final IconData icon;
  final IconData selectedIcon;
}

@RoutePage()
class HomeWrapperPage extends StatelessWidget {
  const HomeWrapperPage({super.key});

  List<AdaptiveScaffoldDestination> _getDestinations(
    BuildContext context,
    bool isSignedIn,
  ) {
    final sections = [...HomeSection.values];
    if (!isSignedIn) {
      sections.remove(HomeSection.listen);
    }
    return sections.map((section) {
      switch (section) {
        case HomeSection.recite:
          return const AdaptiveScaffoldDestination(
            icon: Icons.mic_none_rounded,
            selectedIcon: Icons.mic_rounded,
            label: 'Membaca',
          );
        case HomeSection.listen:
          return const AdaptiveScaffoldDestination(
            icon: Icons.play_arrow_outlined,
            selectedIcon: Icons.play_arrow_rounded,
            label: 'Dengarkan',
          );
        case HomeSection.about:
          return const AdaptiveScaffoldDestination(
            icon: Icons.help_outline_rounded,
            selectedIcon: Icons.help_rounded,
            label: 'Tentang',
          );
      }
    }).toList();
  }

  void _onNavigationChanged(BuildContext context, int index) {
    final tabsRouter = AutoTabsRouter.of(context);
    if (index != tabsRouter.activeIndex) {
      tabsRouter.setActiveIndex(index);
    } else {
      tabsRouter.stackRouterOfIndex(index)?.popUntilRoot();
    }
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    final NavigationType navigationType;
    if (data.size.width < 600) {
      if (data.orientation == Orientation.portrait) {
        navigationType = NavigationType.bottom;
      } else {
        navigationType = NavigationType.rail;
      }
    } else if (data.size.width < 1024) {
      navigationType = NavigationType.rail;
    } else {
      navigationType = NavigationType.drawer;
    }

    return BlocSelector<AuthCubit, AuthState, bool>(
      selector: (state) => state.user != null && !state.user!.isAnonymous,
      builder: (context, isSignedIn) {
        return AutoTabsRouter(
          duration: const Duration(milliseconds: 300),
          lazyLoad: true,
          curve: Curves.easeIn,
          routes: [
            const ReciteRoute(),
            if (isSignedIn) const ListenRoute(),
            const AboutRoute(),
          ],
          transitionBuilder: (context, child, animation) {
            return FadeThroughTransition(
              animation: animation,
              secondaryAnimation: ReverseAnimation(animation),
              child: child,
            );
          },
          builder: (context, child) {
            final tabsRouter = AutoTabsRouter.of(context);
            final destinations = _getDestinations(context, isSignedIn);

            return WillPopScope(
              onWillPop: () async {
                if (tabsRouter.activeIndex != 0) {
                  tabsRouter.setActiveIndex(0);
                  return false;
                } else {
                  return true;
                }
              },
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                bottomNavigationBar: navigationType == NavigationType.bottom
                    ? NavigationBar(
                        height: 64,
                        selectedIndex: tabsRouter.activeIndex,
                        onDestinationSelected: (index) =>
                            _onNavigationChanged(context, index),
                        destinations: destinations
                            .map(
                              (destination) => NavigationDestination(
                                label: destination.label,
                                icon: Icon(destination.icon),
                                selectedIcon: Icon(destination.selectedIcon),
                              ),
                            )
                            .toList(),
                      )
                    : null,
                body: PwaUpdateListener(
                  onReady: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        action: SnackBarAction(
                          label: 'Perbarui',
                          onPressed: reloadPwa,
                        ),
                        content: Expanded(child: Text('Versi baru tersedia')),
                        duration: Duration(seconds: 10),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      if (navigationType != NavigationType.bottom)
                        _HomeNavigationRail(
                          extended: false,
                          destinations: destinations,
                          selectedIndex: tabsRouter.activeIndex,
                          onDestinationSelected: (index) =>
                              _onNavigationChanged(context, index),
                        ),
                      Expanded(
                        child: child,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _HomeNavigationRail extends StatelessWidget {
  const _HomeNavigationRail({
    required this.extended,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.destinations,
  });

  final bool extended;
  final int selectedIndex;
  final void Function(int index) onDestinationSelected;
  final List<AdaptiveScaffoldDestination> destinations;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return NavigationRail(
      extended: extended,
      selectedIndex: selectedIndex,
      backgroundColor: ElevationOverlay.applySurfaceTint(
        colorScheme.surface,
        colorScheme.surfaceTint,
        3,
      ),
      leading: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
        ],
      ),
      labelType:
          extended ? NavigationRailLabelType.none : NavigationRailLabelType.all,
      onDestinationSelected: onDestinationSelected,
      groupAlignment: extended ? -1 : 0,
      destinations: destinations
          .map(
            (destination) => NavigationRailDestination(
              label: Text(destination.label),
              icon: Icon(destination.icon),
              selectedIcon: Icon(destination.selectedIcon),
            ),
          )
          .toList(),
    );
  }
}
