import SwiftUI

import Foundation

struct appti: View {

struct Message {

let id = UUID()

let content: String

}

u/State private var selection1: Set<UUID> = []

u/State private var messages1: [Message] = [

Message(content: "Hello"),

Message(content: "World")

]

u/State private var selection2: Set<UUID> = []

u/State private var messages2: [Message] = [

Message(content: "Hello"),

Message(content: "World")

]

var body: some View {

NavigationView {

Form {

Section("messages1") {

List(selection: $selection1) {

ForEach(messages1, id: \.id) { item in

Text(item.content)

}

}

}

Section("messages2") {

List(selection: $selection2) {

ForEach(messages2, id: \.id) { item in

Text(item.content)

}

}

}

}

.toolbar { EditButton() }

.navigationTitle("List")

}

}

}

struct ContentView_Previews: PreviewProvider {

static var previews: some View {

ContentView()

}

}
