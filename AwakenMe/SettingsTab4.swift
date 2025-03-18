//
//  SettingsTab4.swift
//  AwakenMe
//
//  Created by ForTheImam on 3/7/25.
//

import UIKit
import UserNotifications

class SettingsTab4 : UIViewController {
    
    @IBOutlet weak var timePicker: UIDatePicker!
    
    @IBOutlet weak var ONOFFSWITCH: UISwitch!
    @IBOutlet weak var saveBtn: UIButton!
    var hourSet = 0
    var minuteSet = 0
    var randomInt = 0

    
    override func viewDidLoad() {
        saveBtn.isEnabled = false
        timePicker.isEnabled = false
    }
    
    @IBAction func switchSwitched(_ sender: UISwitch) {
        if(ONOFFSWITCH.isOn){
            checkForPermission()
            saveBtn.isEnabled = true
            timePicker.isEnabled = true
        }else{
            saveBtn.isEnabled = false
            timePicker.isEnabled = false
        }
    }
    func checkForPermission() {
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.getNotificationSettings { settings in
            DispatchQueue.main.async {
                switch settings.authorizationStatus {
                case .authorized:
                    self.timeNotification()
                case .denied:
                    return
                case .notDetermined:
                    notificationCenter.requestAuthorization(options: [.alert, .sound]) { didAllow, error in
                        DispatchQueue.main.async {
                            if didAllow {
                                self.timeNotification()
                            }
                        }
                    }
                default:
                    return
                }
            }
        }
    }
    
    @IBAction func saveBtnClicked(_ sender: UIButton) {
        
        let selectedDate = timePicker.date
        let calendar = Calendar.current
        let components = calendar.dateComponents([.hour, .minute], from: selectedDate)

        hourSet = components.hour ?? 12
        minuteSet = components.minute ?? 00
        print("Hour: \(hourSet), Minute: \(minuteSet)")
        
        // Schedule both notifications
        timeNotification()
        dispatchNotification()

    }
    
    func timeNotification() {
        // Get the current selected time from the date picker
        let selectedDate = timePicker.date
        let calendar = Calendar.current
        let components = calendar.dateComponents([.hour, .minute], from: selectedDate)
        
        let hour = components.hour ?? 12
        let minute = components.minute ?? 0
        
        randomInt = Int.random(in: 0...50)
        let title = quotesList[randomInt].author
        let body = quotesList[randomInt].quote
        
        let notificationCenter = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.sound = .default
        
        var dateComponents = DateComponents()
        dateComponents.hour = hour
        dateComponents.minute = minute
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        let request = UNNotificationRequest(identifier: "time_reminder", content: content, trigger: trigger)
        
        notificationCenter.add(request) { (error) in
            if error != nil {
                print("Error = \(error?.localizedDescription ?? "error in pushing notification")")
            } else {
                print("Time notification scheduled for \(hour):\(minute)")
            }
        }
    }
    
    
    func dispatchNotification() {


        let hour = hourSet
        let minute = minuteSet
        let title = "Notification Set"
        let body = "Notification set for \(hour) : \(minute)"
        print("Hour: \(hour), Minute: \(minute)")
        
        let notificationCenter = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.sound = .default
        
        let calendar = Calendar.current
        var dateComponents = DateComponents(calendar: calendar, timeZone: TimeZone.current)
        var testDate = Calendar.current.dateComponents([.day, .month, .year, .hour, .minute, .second], from: Date().addingTimeInterval(3))

        dateComponents.hour = hour
        dateComponents.minute = minute
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: testDate, repeats: false)
        let request = UNNotificationRequest(identifier: "reminder", content: content, trigger: trigger)
        notificationCenter.add(request) { (error) in
            if error != nil {
                print("Error = \(error?.localizedDescription ??  "error in pushing notification")" )
            }
        }
    }
    
}
