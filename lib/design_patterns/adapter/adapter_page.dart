import 'package:design_patterns/design_patterns/adapter/view/user_view_model.dart';
import 'package:flutter/material.dart';

class AdapterPage extends StatelessWidget {
  static const route = 'adapter-page';
  const AdapterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final user = UserViewModel(
      'Walter white',
      'https://i.insider.com/5d8c07f36f24eb2382796212?width=750&format=jpeg&auto=webp',
      '3828 Piermont Drive, Albuquerque',
      'Chemistry teacher',
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Adapter'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: theme.primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageProfile(
                      imageUrl: user.userPhotoUrl,
                    ),
                    const SizedBox(
                      height: 32,
                      width: double.infinity,
                    ),
                    Text(
                      user.userName,
                      style: theme.textTheme.titleLarge!.copyWith(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: theme.canvasColor,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.location_on_outlined),
                      title: const Text('Location'),
                      subtitle: Text(user.address),
                    ),
                    ListTile(
                      leading: const Icon(Icons.work),
                      title: const Text('Career'),
                      subtitle: Text(user.career),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class ImageProfile extends StatelessWidget {
  final String imageUrl;
  const ImageProfile({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(4),
      child: CircleAvatar(
        radius: 100.0,
        backgroundImage: NetworkImage(imageUrl),
        backgroundColor: Colors.white,
      ),
    );
  }
}
