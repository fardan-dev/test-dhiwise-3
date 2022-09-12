import SwiftUI

struct ButtonSosmedView: View {
    @StateObject var buttonSosmedViewModel = ButtonSosmedViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image("img_vector")
                        .resizable()
                        .frame(width: getRelativeWidth(14.0), height: getRelativeWidth(14.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(11.0))
                        .padding(.leading, getRelativeWidth(17.0))
                    Text(StringConstants.kMsgContinueWithF)
                        .font(FontScheme.kHelveticaNeueMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(156.0), height: getRelativeHeight(14.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(11.0))
                        .padding(.bottom, getRelativeHeight(10.0))
                        .padding(.leading, getRelativeWidth(74.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(36.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                        bottomRight: 8.0)
                        .stroke(ColorConstants.Gray900,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0)
                        .fill(ColorConstants.WhiteA700))
                .padding(.bottom, getRelativeHeight(416.0))
                .padding(.horizontal, getRelativeWidth(16.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct ButtonSosmedView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSosmedView()
    }
}
