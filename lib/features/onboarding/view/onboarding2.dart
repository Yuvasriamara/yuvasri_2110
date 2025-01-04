import 'package:flutter/material.dart';

class Onboarding2View extends StatelessWidget {
  const Onboarding2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentPageIndex = 1;  // For the second screen

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Image for Onboarding Screen 2
              Padding(
                padding: const EdgeInsets.only(top: 72.0, bottom: 24.0),
                child: Image.asset(
                  'assets/onboarding2.jpg', // Ensure the path is correct
                  width: 346.0,
                  height: 367.0,
                  fit: BoxFit.cover,
                ),
              ),
              // Title Text for Screen 2
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Text(
                  'Explore Various Cuisines',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              // Description Text for Screen 2
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Text(
                  'Enjoy a wide variety of dishes from different cuisines and cultures. It\'s time to indulge in your favorite food!',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              // Dot Indicators for screen navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: currentPageIndex == index
                          ? Colors.blue  // Highlight current dot
                          : Colors.grey,  // Default color for other dots
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
              SizedBox(height: 24),
              // Row with Skip and Next Buttons
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Skip Button on the left
                    TextButton(
                      onPressed: () {
                        // Navigate to the Home screen
                        Navigator.pushReplacementNamed(context, '/home'); // Replace '/home' with your actual route
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                        ),
                        backgroundColor: MaterialStateProperty.all(Colors.transparent),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomLeft: Radius.circular(18),
                            ),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Skip',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                    // Next Button on the right with red color
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to Onboarding Screen 3
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Onboarding3View()), // Navigate to Onboarding3View
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(183, 58), // Button size
                        backgroundColor: Color(0xFFE47070), // Button color (red)
                        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: const Text('Next'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Onboarding3View extends StatelessWidget {
  const Onboarding3View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Onboarding Screen 3"),
      ),
    );
  }
}
