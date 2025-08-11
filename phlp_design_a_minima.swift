// phlp_design_a_minima.swift

/*
  Project: Design a Minimalist IoT Device Notifier
  Description: This project aims to create a simple IoT device notifier that sends notifications to a user's mobile device when a specific event occurs.
  Language: Swift
  Hardware: ESP32 (or any other IoT device with internet connectivity)
  Software: iOS (or any other mobile platform)

  Functionalities:
  1. IoT device sends a signal to the server when an event occurs (e.g., temperature threshold exceeded).
  2. Server processed the signal and sends a notification to the user's mobile device.
  3. Mobile app receives the notification and alerts the user.
*/

import Foundation
import UIKit

// MARK: - IoT Device Signal Model
struct IoTDeviceSignal {
    let deviceId: String
    let eventType: String
    let eventData: String
}

// MARK: - Server API
class ServerAPI {
    let baseURL = "https://example.com/api"
    
    func sendSignal(_ signal: IoTDeviceSignal) -> Bool {
        // Implement API call to send signal to server
        return true
    }
}

// MARK: - Notifier Service
class NotifierService {
    let serverAPI = ServerAPI()
    
    func notifyUser(_ signal: IoTDeviceSignal) {
        // Implement notification logic here
        // For example, send a push notification using a push notification service
    }
}

// MARK: - IoT Device Notifier
class IoTDeviceNotifier {
    let serverAPI = ServerAPI()
    let notifierService = NotifierService()
    
    func processSignal(_ signal: IoTDeviceSignal) {
        if serverAPI.sendSignal(signal) {
            notifierService.notifyUser(signal)
        }
    }
}

// MARK: - Main
let IoTDevice = IoTDeviceNotifier()

// Example usage:
let signal = IoTDeviceSignal(deviceId: "dev-123", eventType: "temperature-exceeded", eventData: "25°C")
IoTDevice.processSignal(signal)