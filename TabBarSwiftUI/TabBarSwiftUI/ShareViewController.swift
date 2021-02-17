import Foundation
import SwiftUI

struct ShareViewController: UIViewControllerRepresentable {
    
    var activityItems = [Any]()
    var applicationAcitities = [UIActivity]()
    @Environment(\.presentationMode) var presentationMode
    @Binding var isShowIndicator: Bool
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ShareViewController>) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems,
                                                  applicationActivities: applicationAcitities)
        controller.completionWithItemsHandler = { (_, _, _, _) in
            self.presentationMode.wrappedValue.dismiss()
        }
        isShowIndicator = false
        return controller
    }
    func updateUIViewController(_ uiViewController: UIActivityViewController,
                                context: Context) {}
}
