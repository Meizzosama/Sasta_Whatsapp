import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: (const Text('MoXi WHATSAPP')),
          centerTitle: false,
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('Chats'),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Calls'),
            ),
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    const [
                      PopupMenuItem(
                        value: 1,
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text('Settings'),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text('Web'),
                      ),
                      PopupMenuItem(
                        value: 4,
                        child: Text('Logout'),
                      ),
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(children: [
          const Text('Camera'),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://scontent.fkhi17-1.fna.fbcdn.net/v/t39.30808-6/240506526_1253723948384448_420265174795030211_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=fHxRN-m_mBAAX8WfuVR&tn=TN3K7Mz4UAvRltez&_nc_ht=scontent.fkhi17-1.fna&oh=00_AT8zU98gm4ZTkLHsXkWSw3rOzuwjGpN7t6IjhPB7xN9WMg&oe=633C6D4A'),
                  ),
                  title: Text('Osama'),
                  subtitle: Text('Hello!! Kese ho yar..'),
                  trailing: Text('6:00 Pm'),
                );
              }),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('New Updates'),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3,
                                  color: Colors.blue,
                                )),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://scontent.fkhi17-1.fna.fbcdn.net/v/t39.30808-6/249492456_1296502300773279_5210408469618733166_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=sI4bdLk2L1wAX9C7FyB&_nc_ht=scontent.fkhi17-1.fna&oh=00_AT_bZ5IY1w863rWVIrDZTPNxNUc82_C9BKWMD65V5cTL9Q&oe=633B9347'),
                            ),
                          ),
                          title: const Text('Osama'),
                          subtitle: const Text('2 minutes ago'),
                        ),
                      ],
                    ),
                  );
                } else {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 3,
                            color: Colors.blue,
                          )),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fkhi17-1.fna.fbcdn.net/v/t39.30808-6/240506526_1253723948384448_420265174795030211_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=fHxRN-m_mBAAX8WfuVR&tn=TN3K7Mz4UAvRltez&_nc_ht=scontent.fkhi17-1.fna&oh=00_AT8zU98gm4ZTkLHsXkWSw3rOzuwjGpN7t6IjhPB7xN9WMg&oe=633C6D4A'),
                      ),
                    ),
                    title: const Text('Osama'),
                    subtitle: const Text('2 minutes ago'),
                  );
                }
              }),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://scontent.fkhi17-1.fna.fbcdn.net/v/t39.30808-6/240506526_1253723948384448_420265174795030211_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=fHxRN-m_mBAAX8WfuVR&tn=TN3K7Mz4UAvRltez&_nc_ht=scontent.fkhi17-1.fna&oh=00_AT8zU98gm4ZTkLHsXkWSw3rOzuwjGpN7t6IjhPB7xN9WMg&oe=633C6D4A'),
                  ),
                  title: const Text('Osama'),
                  subtitle: Text(index / 2 == 0
                      ? 'You missed a voice call'
                      : 'Call time is 12:12'),
                  trailing:
                      Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                );
              }),
        ]),
      ),
    );
  }
}
