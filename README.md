References
URL: https://www.youtube.com/watch?v=t_mypMqSXNw

Download From GitHub
1. Copy the HTTPS URL
2. Open a new terminal, use the command below to clone the repository to your local.
    git clone <URL>
3. Open this cloned file in Xcode.

Simulate In Xcode
1. Select Your Simulator:
    In the toolbar at the top of the Xcode window, you should see a scheme dropdown. Next to it is the destination dropdown where you can select your simulator.
2. Run the Project:
    Click the "Run" button (the play button) in the top left corner of Xcode. Xcode will compile the app and install it on your chosen simulator. If there are no build errors, the app should launch on the simulator.

Run It On iPhone
1. Connect Your iPhone to Your Mac:
    Use a USB cable to connect your iPhone to your Mac.
2. Open Your Project in Xcode:
    Launch Xcode and open your Swift project.
3. Configure Your Project's Signing & Capabilities:
    Select your project in the Project Navigator to view the project settings.
    Go to the "Signing & Capabilities" tab.
    Choose your Team. If you don't have a team, you'll need to add an Apple ID to Xcode by going to Xcode > Preferences > Accounts and signing in with your Apple ID. You might need to create a free Apple Developer account if you haven't already.
    Ensure that the "Automatically manage signing" option is checked. Xcode will attempt to resolve any issues related to provisioning profiles and signing certificates.
4. Select Your Device:
    In the toolbar at the top of the Xcode window, you should see a scheme dropdown. Next to it is the destination dropdown where you can select your device. If your iPhone is connected and recognized by Xcode, it should appear in this list. Select it.
5. Trust Developer App on Your iPhone:
    The first time you run an app on a device, you might need to trust yourself as a developer on the device. Go to Settings > General > Device Management on your iPhone, tap your Developer App certificate, and tap Trust.
6. Run the Project:
    Click the "Run" button (the play button) in the top left corner of Xcode. Xcode will compile the app and install it on your connected iPhone. If there are no build errors, the app should launch on your device.

