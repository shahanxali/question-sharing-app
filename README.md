# Question Sharing App 📚📲

Question Sharing App is a Flutter-based mobile application designed to streamline the process of sharing and answering questions through QR codes. Developed as an individual project in my 3rd semester, this app enables teachers to create and distribute questions effortlessly while allowing students to scan and respond directly on their devices.

## 📘 Project Overview

The Question Sharing App offers a simple, user-friendly interface with two distinct modes:

Teacher Mode: Teachers can create questions and instantly generate QR codes for multiple questions if they want.
Student Mode: Students can scan the generated QR codes using their device’s camera to view and answer the questions.

This project demonstrates the use of Flutter for mobile development and incorporates QR code generation and scanning features, making it an efficient tool for both in-class and remote learning activities.

## 🔑 Key Features

Two User Modes: Teachers and students have different functionalities within the app, optimized for their respective roles.
Question Creation and QR Generation: Teachers can create questions in the app and generate unique QR codes for easy sharing.
QR Code Scanning: Students can grant camera access to scan QR codes and retrieve questions.
Answer Submission: Students view questions in real-time and can submit their answers within the app.

## 🖥️ How It Works

Teacher Mode:
    Open the app and select Teacher mode.
    Create a question in the designated section.
    Generate a QR code for the question, which can be shared with students for scanning.

Student Mode:
    Open the app and select Student mode.
    Allow the app to access the device camera. 
    Scan the QR code provided by the teacher to access the question.
    Submit your answer directly within the app.

## 📂 Repository Contents

lib/: Contains all the main code for Flutter UI, QR code generation, and camera integration.
assets/: Stores images and icons used in the app interface.
macos/ and windows/: Are for the desktop support of the application for respective OS.

## 🚀 Getting Started

Clone the Repository:

git clone https://github.com/shahanxali/question-sharing-app

Run the App:

Download android studio and set up flutter on your system.
Use the following command to start the app:

  flutter run lib/main.dart

## 🤝 Contributing

If you’d like to contribute, feel free to fork the project and add new features! Enhancements could include additional question types or real-time answer validation.

## 🏆 Future Enhancements

Answer Review: Teachers could view and review answers submitted by students.
Question Bank: Enable teachers to save frequently used questions for quick access.
Scoring System: Implement an automated scoring system for student answers.
