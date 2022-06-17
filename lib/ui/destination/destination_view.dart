import 'package:flutter/material.dart';
import 'package:tripkuy/core/app/app.dart';
import 'package:tripkuy/core/util/util.dart';
import 'package:tripkuy/ui/component.dart';

class DestinationView extends StatelessWidget {
  const DestinationView ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Component.appBar("Tempat Kuliner Rekomendasi"),
      backgroundColor: ColorPalette.black,
      body: ListView.builder(
        itemCount: Constant.listKedai.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                  ),
                  child: Image.network(
                    Constant.listKedai[index].image!,
                    height: SizeConfig.blockSizeHorizontal * 40,
                    width: SizeConfig.blockSizeHorizontal * 100,
                    fit: BoxFit.cover,
                  )
                ),
                const SizedBox(height: 10 ,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Component.textDefault(
                        "${Constant.listKedai[index].nama ?? ""}, ${Constant.listKedai[index].location}",
                        fontSize: 20, 
                        colors: ColorPalette.black
                      ),
                      const SizedBox(height: 6,),
                      Component.textDefault(
                        Constant.listKedai[index].desc ?? "",
                        maxLines: 10
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Component.textDefault(
                                "Kurir : ${Constant.listKedai[index].kurir}"
                              ),
                              const SizedBox(height: 6,),
                              Component.textDefault(
                                "Jual : ${Constant.listKedai[index].jual}"
                              ),
                            ],
                          ),
                          const Spacer(),
                          Component.textBold(
                            Constant.listKedai[index].price!,
                            colors: ColorPalette.red,
                            fontSize: 20
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}