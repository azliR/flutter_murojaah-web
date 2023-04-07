import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' hide AuthState;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:murojaah_web/auth/cubit/auth_cubit.dart';
import 'package:murojaah_web/injection.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return CustomScrollView(
      slivers: [
        SliverAppBar.large(
          title: const Text('Murojaah-ml'),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverToBoxAdapter(
            child: Text(
              '''
Murojaah-ml adalah sebuah proyek untuk mengembangkan model Machine Learning yang dapat mengidentifikasi pembacaan al-Qur'an. Model ini akan sangat berguna dalam implementasi seperti aplikasi pembantu menghafal al-Qur'an. Tujuan dari adanya proyek ini adalah untuk membuat masyarakat semakin lekat dengan al-Qur'an dan membantu para hafidz dalam menjaga hafalan al-Qur'an-nya.
              
Kontribusi Anda pada proyek murojaah ini akan sangat membantu dalam mewujudkan proyek Murojaah-ml. Kontribusi Anda HANYA akan digunakan untuk proyek ini dan akan dikirim secara ANONIM (nama, lokasi, dan sebagainya yang bersifat pribadi TIDAK akan dikirimkan).

Terimakasih atas semuanya. Semoga Allah membalas dengan sesuatu yang lebih baik. Aamiin.''',
              style: textTheme.bodyMedium,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Privasi',
              style: textTheme.titleLarge,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Daftar data yang dikirimkan:',
              style: textTheme.titleMedium,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          sliver: SliverToBoxAdapter(
            child: Text(
              '''
1. Nomor Surah
2. Nomor Ayat
3. Rekaman suara saat membacakan ayat
4. Waktu dikirim''',
              style: textTheme.bodyMedium,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 16),
          sliver: SliverToBoxAdapter(
            child: Center(
              child: Text(
                'Version: 0.1.1',
                style: textTheme.labelMedium,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8),
          sliver: SliverToBoxAdapter(
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton.icon(
                    onPressed: () => launchUrl(
                      Uri.parse(
                        'https://github.com/azliR/flutter_murojaah-web',
                      ),
                    ),
                    icon: const Icon(Ionicons.logo_github),
                    label: const Text('Murojaah-web'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton.icon(
                    onPressed: () => launchUrl(
                      Uri.parse('https://github.com/azliR/murojaah-ml'),
                    ),
                    icon: const Icon(Ionicons.logo_github),
                    label: const Text('Murojaah-ml'),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Center(
            child: BlocSelector<AuthCubit, AuthState, bool>(
              selector: (state) =>
                  state.user != null && !state.user!.isAnonymous,
              builder: (context, isSignedIn) {
                if (isSignedIn) {
                  return SignOutButton(
                    auth: getIt<FirebaseAuth>(),
                  );
                }
                return const SizedBox();
              },
            ),
          ),
        ),
        const SliverFillRemaining(),
      ],
    );
  }
}
