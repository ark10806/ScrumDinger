import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMunutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Kakao old",
                   attendees: ["jace.beleren", "chacha.roni"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "Kakao post-modern",
                   attendees: ["jace.beleren", "chacha.roni", "eigen.vector"],
                   lengthInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Kakao current",
                   attendees: ["jace.beleren", "chacha.roni", "eigen.vector", "lio.zero", "kaylee.ee"],
                   lengthInMinutes: 5,
                   theme: .poppy),
    ]
}
