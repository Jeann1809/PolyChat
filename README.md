### README: PolyChat

---

## **PolyChat**  
**PolyChat** is a Flutter-based mobile application designed to bridge language barriers in real-time communication. By implementing an API, PolyChat translates all incoming messages to the user's native language, regardless of the language in which the message was originally written. The app aims to facilitate seamless multilingual conversations, offering a simple and intuitive interface for users worldwide.

---

### **Features**
- **Real-Time Translation**: Automatic message translation into the user's preferred language.  
- **Multilingual Support**: Supports multiple languages using API integration.  
- **User-Friendly Interface**: A clean and intuitive chat interface for ease of use.  
- **Cross-Platform Support**: Developed with Flutter, compatible with both Android and iOS.  

---

### **Prerequisites**
Before running the PolyChat application, ensure you have the following installed on your system:  
1. **Flutter SDK** ([Download Flutter](https://flutter.dev/docs/get-started/install))  
2. **Android Studio** or **Visual Studio Code** with Flutter and Dart plugins.  
3. **An Emulator** (Android Emulator, iOS Simulator, or a physical device).  
4. **API Key** for the translation service (ensure you have access to the required API).  

---

### **Step-by-Step Guide to Run the Code**

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/Jeann1809/PolyChat.git
   cd polychat
   ```

2. **Install Dependencies**  
   Run the following command to install all required Flutter packages:  
   ```bash
   flutter pub get
   ```

3. **Set Up an Emulator or Physical Device**  
   - **Android Emulator**:  
     Open Android Studio, go to **AVD Manager**, and create a virtual device. Start the emulator.  
   - **iOS Simulator**:  
     Open Xcode, go to **Simulator**, and select a device.  
   - **Physical Device**:  
     Connect your device via USB and enable developer options.  

4. **Configure the API Key**  
   - Locate the `lib/constants/api_keys.dart` file (or equivalent).  
   - Replace the placeholder `YOUR_API_KEY` with your actual API key.  

5. **Run the Application**  
   Start the app using the following command:  
   ```bash
   flutter run
   ```  
   Make sure your emulator or device is running and detected by Flutter.

6. **Debugging (Optional)**  
   To run the app in debug mode:  
   ```bash
   flutter run --debug
   ```

---

### **Project Structure**
- **lib/**  
  - **main.dart**: Entry point of the application.  
  - **screens/**: Contains UI screens for the app.  
  - **services/**: API integration and logic for message translation.  
  - **models/**: Data models for messages and users.  
  - **constants/**: Holds static values like API keys and configurations.  

- **assets/**  
  - Stores images, icons, and other assets.  

---

### **Contribution Guidelines**
We welcome contributions! Follow these steps to contribute:  
1. Fork the repository.  
2. Create a new branch for your feature or bug fix.  
3. Commit your changes and push them to your forked repository.  
4. Open a pull request detailing your changes.

---

### **License**
This project is licensed under the MIT License. See the `LICENSE` file for details.  

---

### **Contact**
For questions or feedback, feel free to reach out to us at:  
📧 Email: jalmario@ttu.edu
📱 GitHub: [PolyChat](https://github.com/Jeann1809/PolyChat.git)

--- 

Enjoy connecting with people across languages effortlessly with PolyChat! 🌍
