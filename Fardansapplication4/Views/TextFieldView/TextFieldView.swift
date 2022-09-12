import SwiftUI

struct TextFieldView: View {
    @StateObject var textFieldViewModel = TextFieldViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack {
                    VStack {
                        HStack {
                            HStack {
                                Image("img_icon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeHeight(18.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Image("img_password")
                                    .resizable()
                                    .frame(width: getRelativeWidth(80.0),
                                           height: getRelativeHeight(24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(112.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                            .padding(.leading, getRelativeWidth(4.0))
                            Spacer()
                            Image("img_icon_14X19")
                                .resizable()
                                .frame(width: getRelativeWidth(19.0),
                                       height: getRelativeHeight(14.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(5.0))
                        }
                        .frame(width: getRelativeWidth(324.0), height: getRelativeHeight(24.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(8.0))
                        Divider()
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(1.0),
                                   alignment: .leading)
                            .background(ColorConstants.Gray900)
                            .shadow(color: ColorConstants.Black90019, radius: 8, x: 0, y: 4)
                            .padding(.top, getRelativeHeight(16.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(41.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(41.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(344.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgPleaseEnterYo)
                        .font(FontScheme.kHelveticaNeue(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(148.0), height: getRelativeHeight(12.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(8.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(12.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(10.0))
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

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
