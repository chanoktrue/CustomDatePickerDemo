//
//  Task.swift
//  CustomDatePickerDemo
//
//  Created by Thongchai Subsaidee on 30/9/21.
//

import Foundation

struct Task: Identifiable {
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}


struct TaskMetaData: Identifiable {
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}


func getSampleDate(offset: Int) -> Date {
    let calendar = Calendar.current
    
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    
    return date ?? Date()
}


var tasks: [TaskMetaData] = [

    TaskMetaData(task: [
        Task(title: "Talk to iJustine"),
        Task(title: "iPhone 14 Great Design Change😀"),
        Task(title: "Nothing Much Workout !!!")
    ], taskDate:   getSampleDate(offset: 1)),
    
    TaskMetaData(task: [
    Task(title: "Task to Jen Wzarik")
    ], taskDate: getSampleDate(offset: -3)),
    
    TaskMetaData(task: [
    Task(title: "Metting with tim cook")
    ], taskDate: getSampleDate(offset: -8)),
    
    TaskMetaData(task: [
    Task(title: "Next Verion of SwiftUI")
    ], taskDate: getSampleDate(offset: 10)),
    
    
    TaskMetaData(task: [
    Task(title: "Task to Jen Wzarik 222")
    ], taskDate: getSampleDate(offset: -22)),
    
    TaskMetaData(task: [
    Task(title: "Metting with tim cook 222 ")
    ], taskDate: getSampleDate(offset: 15)),
    
    TaskMetaData(task: [
    Task(title: "Next Verion of SwiftUI222 ")
    ], taskDate: getSampleDate(offset: -20)),
    
    TaskMetaData(task: [
    Task(title: "Metting with tim cook 333 ")
    ], taskDate: getSampleDate(offset: 15)),
    
    TaskMetaData(task: [
    Task(title: "Next Verion of SwiftUI 333 ")
    ], taskDate: getSampleDate(offset: -20)),

]
