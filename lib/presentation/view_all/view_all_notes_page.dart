import 'package:create_rostr/presentation/home/home_controller.dart';
import 'package:create_rostr/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ViewAllNotesPage extends GetView<HomeController> {
  const ViewAllNotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          "All Notes",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: GetBuilder<HomeController>(
        builder: ((ctrl) {
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ctrl.notesList!.length,
            itemBuilder: ((context, index) {
              final note = ctrl.notesList![index];
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      note.name ?? '',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      note.description ?? '',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}
