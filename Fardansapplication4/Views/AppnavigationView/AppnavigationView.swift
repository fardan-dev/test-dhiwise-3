import SwiftUI

struct AppnavigationView: View {
    @StateObject var appnavigationViewModel = AppnavigationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Text(StringConstants.kLblAppNavigation)
                            .font(Font.system(size: getRelativeHeight(20.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(23.0),
                                   alignment: .leading)
                            .padding(.vertical, getRelativeHeight(10.0))
                            .padding(.horizontal, getRelativeWidth(20.0))
                        Text(StringConstants.kMsgCheckYourApp)
                            .font(Font.system(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(19.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(20.0))
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(1.0), alignment: .center)
                            .background(ColorConstants.Black900)
                            .padding(.top, getRelativeHeight(5.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(67.0))
                    .background(ColorConstants.WhiteA700)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            VStack {
                                Text(StringConstants.kLblButtonview)
                                    .font(Font.system(size: getRelativeHeight(20.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(343.0),
                                           height: getRelativeHeight(23.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                Divider()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Bluegray400)
                                    .padding(.top, getRelativeHeight(5.0))
                            }
                            .onTapGesture {
                                appnavigationViewModel.nextScreen = "ButtonView"
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(48.0))
                            .background(ColorConstants.WhiteA700)
                            VStack {
                                Text(StringConstants.kLblTextfieldview)
                                    .font(Font.system(size: getRelativeHeight(20.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(343.0),
                                           height: getRelativeHeight(23.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                Divider()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Bluegray400)
                                    .padding(.top, getRelativeHeight(5.0))
                            }
                            .onTapGesture {
                                appnavigationViewModel.nextScreen = "TextFieldView"
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(48.0))
                            .background(ColorConstants.WhiteA700)
                            VStack {
                                Text(StringConstants.kMsgButtonsosmedvie)
                                    .font(Font.system(size: getRelativeHeight(20.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(343.0),
                                           height: getRelativeHeight(23.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                Divider()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Bluegray400)
                                    .padding(.top, getRelativeHeight(5.0))
                            }
                            .onTapGesture {
                                appnavigationViewModel.nextScreen = "ButtonSosmedView"
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(48.0))
                            .background(ColorConstants.WhiteA700)
                        }
                        .frame(width: UIScreen.main.bounds.width)
                        .background(ColorConstants.WhiteA700)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ButtonView(),
                                   tag: "ButtonView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: TextFieldView(),
                                   tag: "TextFieldView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ButtonSosmedView(),
                                   tag: "ButtonSosmedView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct AppnavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AppnavigationView()
    }
}
