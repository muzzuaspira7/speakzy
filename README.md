🎧 Speakzy — Real-Time 1-on-1 English Speaking App (Audio Only)

Speakzy is a lightweight audio-only English speaking app built using Flutter, Firebase, and WebRTC.
The goal is simple — connect two people instantly for a real English conversation without using paid SDKs like Agora or Zego.

Everything runs on free, open technologies and is optimized for clarity, stability, and low latency.

/// ⭐ Why Speakzy?

Many learners want someone to practice speaking with, but don’t always find a partner.
Speakzy makes it easy with:

🔊 Instant 1-on-1 audio calls
⚡ Low latency and clear audio quality
🎯 Simple and beginner-friendly UI
🟢 Real-time online status
🔔 Smooth call invite → accept → connect flow

The audio-only approach keeps the app fast and battery-efficient.

/// 🎧 Features
🎙 WebRTC-based audio calling
🔄 Firebase signaling (offer, answer, ICE candidates)
🟢 Online / In-call / Offline presence
🔔 FCM push notifications for incoming calls
📞 Call invitation screen
⏱ Auto timeout for missed calls
🧩 Feature-based architecture using BLoC
🆓 Fully built without paid calling SDKs


/// 🛠 Tech Stack
🐦 Flutter
🎧 WebRTC (flutter_webrtc) — audio only
🔐 Firebase Authentication
☁️ Firebase Firestore
🔔 Firebase Cloud Messaging
⚙️ Cloud Functions (optional backend logic)

/// 🔁 How Speakzy Works
User opens the app → marked Online
They select a user and send an audio call invite
The other user receives an FCM incoming call notification
If accepted → WebRTC negotiation begins
Offer, Answer, and ICE candidates are exchanged
Audio call connects and users speak in real-time
Call ends → cleanup + status reset
Simple, smooth, and reliable.


/// 🗺 Roadmap
 Authentication flow
 Online users list
 Call invite screen
 Incoming call popup
 WebRTC audio setup
 Mute / speaker / end call UI
 Call history
 Stability improvements


/// 🚧 Current Status

The app is in active development.
Architecture, signaling flow, and UI screens are being built to ensure a clean and reliable calling experience.

/// 🎯 Vision
Speakzy aims to become the simplest and most accessible platform where anyone can confidently practice spoken English with real people —
pure audio conversation, no distractions.

/// 👤 Author
Created by: @muzzuaspira7
Email: mohammedmuzzu4@gmail.com


Feel free to reach out or contribute!
/// 📄 License
MIT License — open for everyone to use and contribute.