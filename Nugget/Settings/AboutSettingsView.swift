//
//  AboutSettingsView.swift
//  Nugget
//
//  Created by 686udjie on 26/08/2026.
//

import SwiftUI

struct AboutSettingsView: View {
    var body: some View {
        List {
            Section {
                if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text(version)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            
            Section {
                Link(destination: URL(string: "https://instagram.com/kiwiisflyine")!) {
                    Text("Instagram")
                }
                Link(destination: URL(string: "https://discord.gg/VBS3F6ygg")!) {
                    Text("Discord")
                }
            } header: {
                Text("Links")
            }
        }
        .navigationTitle("About")
        .navigationBarTitleDisplayMode(.inline)
        .miniPlayerTracksScroll()
    }
}
