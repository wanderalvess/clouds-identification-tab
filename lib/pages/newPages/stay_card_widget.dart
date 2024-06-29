import 'package:explorando_clima_app/model/stay.dart';
import 'package:explorando_clima_app/pages/newPages/model_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StayCardWidget extends StatelessWidget {
  const StayCardWidget({required this.stay, required this.onTap, Key? key})
      : super(key: key);
  final Stay stay;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: SizedBox(
        height: 350,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.network(stay.place.imageUrls.first,
                    fit: BoxFit.cover),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kHorizontalPadding, vertical: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        stay.durationText,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        stay.place.city,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 42,
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              stay.place.imageUrls.first,
                            ),
                          ),
                          title: Text(
                            stay.place.title,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          trailing:
                          const Icon(Icons.arrow_forward_ios, size: 14),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
