import Foundation


struct MockData{
    let name: String
    let imageContent : String
    let avatar : String
    let content : String
    let now : Date
    
    static func getData() -> [MockData]{
        [
            MockData(name: "Ivan Ivanov1", imageContent: "ContentImage", avatar: "AvatarImage", content: "text", now: Date()),
            MockData(name: "Ivan Ivanov2", imageContent: "ContentImage", avatar: "AvatarImage", content: "text", now: Date()),
            MockData(name: "Ivan Ivanov3", imageContent: "ContentImage", avatar: "AvatarImage", content: "text", now: Date()),
            MockData(name: "Ivan Ivanov4", imageContent: "ContentImage", avatar: "AvatarImage", content: "text", now: Date()),
            MockData(name: "Ivan Ivanov5", imageContent: "ContentImage", avatar: "AvatarImage", content: "text", now: Date()),
        ]
    }
    
    
}
