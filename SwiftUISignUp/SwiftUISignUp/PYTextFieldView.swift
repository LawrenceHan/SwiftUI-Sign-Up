
import SwiftUI

struct PYTextFieldView: View {
    
    enum PYTextFieldType: String {
        case lastname = "SignUpUI.lastname"
        case firstname = "SignUpUI.firstname"
        case email = "SignUpUI.email"
        case pincode = "SignUpUI.pincode"
        
        var localizedString: LocalizedStringKey {
            return LocalizedStringKey(rawValue)
        }
    }
    
    var type: PYTextFieldType
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            if !text.isEmpty {
                Text(type.localizedString)
                    .font(.headline)
                    .transition(
                        .asymmetric(
                            insertion: AnyTransition.opacity.combined(with: .move(edge: .bottom)),
                            removal: AnyTransition.opacity.combined(with: .move(edge: .top))
                        )
                )
            }
            
            if type == .lastname || type == .firstname {
                TextField(type.localizedString, text: $text)
                    .foregroundColor(.orange)
            } else if type == .email {
                TextField(type.localizedString, text: $text)
                    .keyboardType(.emailAddress)
                    .foregroundColor(.orange)
            } else if type == .pincode {
                TextField(type.localizedString, text: $text)
                    .keyboardType(.numberPad)
                    .foregroundColor(.orange)
            }
            
            if type == .lastname || type == .firstname {
                Text(PinyinConverter.convert(with: text, separator: " "))
                    .foregroundColor(.orange)
            }
        }.padding()
    }
}

struct PYTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        return PYTextFieldView(type: .lastname, text: .constant(""))
    }
}
