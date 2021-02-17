import Foundation
import SwiftUI

struct IndicatorView: UIViewRepresentable {
    typealias UIViewType = UIActivityIndicatorView
    @State var isAnimating = false
    let style: UIActivityIndicatorView.Style = .large
    
    func makeUIView(context: UIViewRepresentableContext<IndicatorView>) -> IndicatorView.UIViewType {
        UIActivityIndicatorView(style: style)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView,
                      context: UIViewRepresentableContext<IndicatorView>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }

}
