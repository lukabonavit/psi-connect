<<<<<<< HEAD
import 'package:basic_landing_webpage/src/my_web_page.dart';
=======
import 'package:basic_landing_webpage/src/screens/my_web_page.dart';
import 'package:basic_landing_webpage/src/navigation_bar/nav_bar_button.dart';
import 'package:basic_landing_webpage/src/widgets/responsive_widget.dart';
>>>>>>> 6448cd0147b5e0f7206028a18fa6d8929af3e857
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'nav_bar_button.dart';

class NavBar extends HookConsumerWidget {
  final ItemScrollController itemScrollController;

  const NavBar({required this.itemScrollController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollTo = (GlobalKey key) {
      Scrollable.ensureVisible(key.currentContext!,
          duration: Duration(milliseconds: 500));
    };

<<<<<<< HEAD
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 40,
            ),
            Spacer(),
            Row(
              children: [
                NavBarButton(
                    text: 'Inicio',
                    onTap: () => scrollTo(ref
                        .read(currentPageProvider.notifier)
                        .state = homeKey)),
                SizedBox(width: 10),
                NavBarButton(
                    text: 'Sobre nosotros',
                    onTap: () => scrollTo(ref
                        .read(currentPageProvider.notifier)
                        .state = featureKey)),
                SizedBox(width: 10),
                NavBarButton(
                    text: 'Servicios',
                    onTap: () => scrollTo(ref
                        .read(currentPageProvider.notifier)
                        .state = screenshotKey)),
                SizedBox(width: 10),
                NavBarButton(
                    text: 'Contacto',
                    onTap: () => scrollTo(ref
                        .read(currentPageProvider.notifier)
                        .state = contactKey)),
                SizedBox(width: 10),
                NavBarButton(text: 'Inicio de sesión', onTap: () {}),
                SizedBox(width: 10),
                NavBarButton(text: 'Registrarse', onTap: () {}),
              ],
            ),
          ],
        ),
=======
  @override
  Widget buildMobile(BuildContext context) {
	return const MobileNavBar();
  }
}

class DesktopNavBar extends HookConsumerWidget {
  const DesktopNavBar({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context, WidgetRef ref) {
  final isScrolled = ref.watch(scrolledProvider);
  final navBarColor = isScrolled ? Colors.blue : Colors.white;

  return Container(
    color: navBarColor,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        children: [
          // Logo a la izquierda
          Image.asset(
            'assets/images/logo.png', // Ruta de la imagen del logo
            height: 40, // Altura del logo
          ),
          Spacer(), // Espacio flexible entre el logo y los botones
          // Botones alineados a la derecha
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavBarButton(text: 'Inicio', onTap: () {}),
              SizedBox(width: 10),
              NavBarButton(text: 'Sobre nosotros', onTap: () {}),
              SizedBox(width: 10),
              NavBarButton(text: 'Servicios', onTap: () {}),
              SizedBox(width: 10),
              NavBarButton(text: 'Contacto', onTap: () {}),
              SizedBox(width: 10),
              NavBarButton(text: 'Inicio de sesión', onTap: () {
                Navigator.pushNamed(context,'/login');
              }
            ),
              SizedBox(width: 10),
              NavBarButton(text: 'Registrarse', onTap: () {

                Navigator.pushNamed(context,'/register');
              }),
            ],
          ),
        ],
>>>>>>> 6448cd0147b5e0f7206028a18fa6d8929af3e857
      ),
    );
  }
}

class MobileNavBar extends HookConsumerWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Implementación para la barra de navegación móvil
    return Container(
        // Aquí puedes añadir la implementación para la versión móvil
        );
  }
}
