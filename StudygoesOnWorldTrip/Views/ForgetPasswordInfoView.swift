import SwiftUI

struct ForgetPasswordInfoView: View {
    
    @Environment(\.presentationMode) var presentationMode

    @State private var reiseInfo = ""
    @State private var reiseInfos = ""

    @State private var newReiseInfos = ""


    
    var body: some View {
        VStack {
            Text("Infos")
                .font(.system(size: 30))
                .foregroundColor(Color.orange)
                .padding()

            Text("Sie erhalten in Kürze \n eine Email \n folgen Sie bitte den Anweisungen")
                .font(.system(size: 15))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)

            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("OK")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.orange)
            .cornerRadius(25)
            .padding()
        }
        .background(Color.gray)
        .frame(width: 400, height: 200)
        .cornerRadius(25)
    }
}

struct ForgetPasswordInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ForgetPasswordInfoView()
    }
}
