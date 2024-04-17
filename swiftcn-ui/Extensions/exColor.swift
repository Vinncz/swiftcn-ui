import SwiftUI

extension Color {
    
    static func adaptiveBackground (for colorScheme: ColorScheme) -> Color {
        colorScheme == .dark ? Color.white : Color.primary
    }
    
    static func adaptiveForeground ( for colorScheme: ColorScheme ) -> Color {
        colorScheme == .dark ? Color.black : Color.white
    }
}
