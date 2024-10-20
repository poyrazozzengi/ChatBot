struct ConversationDelegate {
    /// Creates a String in response to another String.
    func responseTo(question: String) -> String {
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion.hasPrefix("hello") {
            return "Why, hello there!"
        } else if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerQuestion.hasPrefix("where") {
            return "To the North!"
        } else if lowerQuestion.hasPrefix("who") {
            return "Not me."
        } else if lowerQuestion == "What is your name?"{
            return "I can't answer this question it is goverment secret."
        } else if lowerQuestion.hasPrefix("why") {
            return "I don't know why, maybe Allah knows."
        } else {
            let defaultNumber = question.count % 3
            
            if defaultNumber == 0 {
                return "That really depends"
            } else if defaultNumber == 1 {
                return "I think so, yes"
            } else {
                return "Ask me again tomorrow"
            }
        }
    }
}
