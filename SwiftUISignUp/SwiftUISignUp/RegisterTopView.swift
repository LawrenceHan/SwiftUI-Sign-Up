

import SwiftUI

struct RegisterTopView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("SignUpUI.TopView.Title").font(.title)
            
            VStack(spacing: 4) {
                HStack() {
                    Text("SignUpUI.TopView.Headline").font(.headline)
                    Spacer()
                }
                HStack() {
                    Text("SignUpUI.TopView.Bullet1")
                    Spacer()
                }
                HStack() {
                    Text("SignUpUI.TopView.Bullet2")
                    Spacer()
                }
                HStack() {
                    // https://stackoverflow.com/questions/56593120/how-do-you-create-a-multi-line-text-inside-a-scrollview-in-swiftui
                    Text("SignUpUI.TopView.Bullet3")
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
            }.padding()
            
            Spacer()
        }
    }
}

struct RegisterTopView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterTopView()
    }
}
