import Foundation

class NoticeViewModel: ObservableObject {
    
    @Published var badgeNumber = 10
    
    func setBadgeNum(count: Int) {
        self.badgeNumber = count
    }
    func getBadgeNum() -> Int {
        badgeNumber
    }
}

