
import SwiftUI

struct ContentView: View {
	@State private var name = ""
    var body: some View {
        VStack {
			TextField("Name", text: $name)
				.textFieldStyle(.roundedBorder)
				.overlay {
					HStack {
						Spacer()
						
						Button {
							name = ""
						} label: {
							Image(systemName: "x.circle.fill")
								.padding(.trailing, 10)
						}
						.buttonStyle(.plain)
						.foregroundColor(.gray)
					}
					.opacity(name.count > 0 ? 1 : 0)
				}
			
			Text(name)
			
			Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
