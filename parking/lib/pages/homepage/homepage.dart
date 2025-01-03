import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking/components/parking_slot.dart';
import 'package:parking/controller/PakingController.dart';
import '../../config/colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ParkingController parkingController = Get.put(ParkingController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: darkBlueColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
              const Text(
                "Smart Parking System",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Parking Slots",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("ENTRY"),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Obx(
                      () => ParkingSlot(
                        isBooked: parkingController.slot1.value.booked,
                        isParked: parkingController.slot1.value.isParked,
                        slotName: "A-1",
                        slotId: "1",
                        time: parkingController.slot1.value.parkingHours
                            .toString(),
                      ),
                    )),
                    const SizedBox(
                      width: 60,
                      height: 60,
                      child: VerticalDivider(
                        color: darkBlueColor,
                        thickness: 6,
                      ),
                    ),
                    Expanded(
                        child: Obx(
                      () => ParkingSlot(
                        isBooked: parkingController.slot2.value.booked,
                        isParked: parkingController.slot2.value.isParked,
                        slotName: "A-2",
                        slotId: "2",
                        time: parkingController.slot2.value.parkingHours
                            .toString(),
                      ),
                    ))
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Obx(() => ParkingSlot(
                              isBooked: parkingController.slot3.value.booked,
                              isParked: parkingController.slot3.value.isParked,
                              slotName: "A-3",
                              slotId: "3",
                              time: parkingController.slot3.value.parkingHours
                                  .toString(),
                            ))),
                    const SizedBox(
                      width: 60,
                      height: 60,
                      child: VerticalDivider(
                        color: darkBlueColor,
                        thickness: 6,
                      ),
                    ),
                    Expanded(
                        child: Obx(() => ParkingSlot(
                              isBooked: parkingController.slot4.value.booked,
                              isParked: parkingController.slot4.value.isParked,
                              slotName: "A-4",
                              slotId: "4",
                              time: parkingController.slot4.value.parkingHours
                                  .toString(),
                            )))
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Obx(() => ParkingSlot(
                              isBooked: parkingController.slot5.value.booked,
                              isParked: parkingController.slot5.value.isParked,
                              slotName: "A-5",
                              slotId: "5",
                              time: parkingController.slot5.value.parkingHours
                                  .toString(),
                            ))),
                    const SizedBox(
                      width: 60,
                      height: 60,
                      child: VerticalDivider(
                        color: darkBlueColor,
                        thickness: 6,
                      ),
                    ),
                    Expanded(
                        child: Obx(() => ParkingSlot(
                              isBooked: parkingController.slot6.value.booked,
                              isParked: parkingController.slot6.value.isParked,
                              slotName: "A-6",
                              slotId: "6",
                              time: parkingController.slot6.value.parkingHours
                                  .toString(),
                            )))
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Obx(() => ParkingSlot(
                              isBooked: parkingController.slot7.value.booked,
                              isParked: parkingController.slot7.value.isParked,
                              slotName: "A-7",
                              slotId: "7",
                              time: parkingController.slot7.value.parkingHours
                                  .toString(),
                            ))),
                    const SizedBox(
                      width: 60,
                      height: 60,
                      child: VerticalDivider(
                        color: darkBlueColor,
                        thickness: 6,
                      ),
                    ),
                    Expanded(
                        child: Obx(() => ParkingSlot(
                              isBooked: parkingController.slot8.value.booked,
                              isParked: parkingController.slot8.value.isParked,
                              slotName: "A-8",
                              slotId: "8",
                              time: parkingController.slot8.value.parkingHours
                                  .toString(),
                            )))
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Obx(
                      () => ParkingSlot(
                        isBooked: parkingController.slot9.value.booked,
                        isParked: parkingController.slot9.value.isParked,
                        slotName: "A-9",
                        slotId: "9",
                        time: parkingController.slot9.value.parkingHours
                            .toString(),
                      ),
                    )),
                    const SizedBox(
                      width: 60,
                      height: 60,
                      child: VerticalDivider(
                        color: darkBlueColor,
                        thickness: 6,
                      ),
                    ),
                    Expanded(
                        child: Obx(
                      () => ParkingSlot(
                        isBooked: parkingController.slot10.value.booked,
                        isParked: parkingController.slot10.value.isParked,
                        slotName: "A-10",
                        slotId: "10",
                        time: parkingController.slot10.value.parkingHours
                            .toString(),
                      ),
                    ))
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [Text("EXIT"), Icon(Icons.keyboard_arrow_down)],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ));
  }
}
