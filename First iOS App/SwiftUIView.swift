
import SwiftUI

struct SwiftUIView: View {
	var body: some View {
		VStack {
			Circle()
				.fill(.red)
				.padding(10)
			
			Circle()
				.fill(.blue)
				.padding(10)
				.padding(20)
			Text("Test")
				
		}
	}
}

struct SwiftUIView_Previews: PreviewProvider {
	static var previews: some View {
		SwiftUIView()
	}
}
