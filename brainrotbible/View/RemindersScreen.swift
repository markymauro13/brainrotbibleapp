import SwiftUI

struct RemindersScreen: View {
    @State private var reminderCount = 3
    @State private var startTime = 10
    @State private var endTime = 16
    
    var body: some View {
        VStack {
            Text("Set notification reminders")
                .font(.title)
                .bold()
                .padding(.bottom, 30)
                .padding(.top, 40)
            
            VStack(spacing: 20) {
                HStack {
                    Text("How many")
                    Spacer()
                    HStack {
                        Button(action: {
                            if reminderCount > 1 {
                                reminderCount -= 1
                            }
                        }) {
                            Image(systemName: "minus.square.fill")
                                .foregroundColor(.orange)
                        }
                        Text("\(reminderCount)x")
                            .padding(.horizontal)
                        Button(action: {
                            reminderCount += 1
                        }) {
                            Image(systemName: "plus.square.fill")
                                .foregroundColor(.orange)
                        }
                    }
                }
                
                HStack {
                    Text("Start at")
                    Spacer()
                    HStack {
                        Button(action: {
                            if startTime > 1 {
                                startTime -= 1
                            }
                        }) {
                            Image(systemName: "minus.square.fill")
                                .foregroundColor(.orange)
                        }
                        Text("\(startTime) am")
                            .padding(.horizontal)
                        Button(action: {
                            if startTime < 12 {
                                startTime += 1
                            }
                        }) {
                            Image(systemName: "plus.square.fill")
                                .foregroundColor(.orange)
                        }
                    }
                }
                
                HStack {
                    Text("End at")
                    Spacer()
                    HStack {
                        Button(action: {
                            if endTime > 1 {
                                endTime -= 1
                            }
                        }) {
                            Image(systemName: "minus.square.fill")
                                .foregroundColor(.orange)
                        }
                        Text("\(endTime % 12 == 0 ? 12 : endTime % 12) \(endTime >= 12 ? "pm" : "am")")
                            .padding(.horizontal)
                        Button(action: {
                            if endTime < 24 {
                                endTime += 1
                            }
                        }) {
                            Image(systemName: "plus.square.fill")
                                .foregroundColor(.orange)
                        }
                    }
                }
            }
            .padding()
            
            Spacer()
            
            NavigationLink(destination: WidgetScreen()) {
                Text("Continue")
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
        }
        .padding()
    }
}

struct RemindersScreen_Previews: PreviewProvider {
    static var previews: some View {
        RemindersScreen()
    }
}
