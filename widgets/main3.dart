import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Shopping(),
  ));
}

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Order Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

              ),
              const SizedBox(height: 8.0),
                const ListTile(
                  leading: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 50,
                  ),
                  title:
                      Text('Compeleted', style: TextStyle(color: Colors.green)),
                  subtitle: Text("Order Competed 24 July 2024"),
                  trailing: Icon(Icons.chevron_right, size: 30),
                ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order ID:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('#524120'),
                ],
              ),
              const SizedBox(height: 8.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Date:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('20 July 2024, 05:00 PM'),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Purchased Items:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/dragon.jpg',
                          width: 80.0,
                          height: 80.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 8.0),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Blue t-shirt',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Text(
                                    'Size: L  Color: Yellow',
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$50.00',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),

                                  Text('Qty: 1'),
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
              const SizedBox(height: 16.0),
              const Text(
                'Shipping Information:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Name:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Jacob Jones')
                  ],
              ),
              const SizedBox(height: 4.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Phone Number:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('+1 (555) 555-5555'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Address:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('123 Main St, Anytown, CA 12345'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipment:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Economy'),
                ],
              ),
              const SizedBox(height: 4.0),
              const SizedBox(height: 16.0),
              const Text(
                'Payment Information:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment Method:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Cash on Delivery')
                  ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
