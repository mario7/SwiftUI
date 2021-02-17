import SwiftUI

struct SheetView: View {
    @State var isShare = false
    @State var isShowIndicator = false
    var body: some View {
        if isShowIndicator {
            IndicatorView()
        }
        Button("Share") {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
                self.isShare = true
            }
            self.isShowIndicator = true
        }
        .sheet(isPresented: $isShare) {
            ShareViewController(activityItems: ["http://windows8.a-windows.com/images/PDF_sample.pdf"],
                                isShowIndicator: $isShowIndicator)
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
