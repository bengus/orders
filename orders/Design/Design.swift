//
//  Design.swift
//  orders
//
//  Created by Boris Bengus on 16.04.2021.
//

import Foundation
import UIKit

/// Facade for all global Design system related settings (Colors, Metrics, etc)
public enum Design {
    public enum Colors {
        // MARK: - Accents (positive, negative, error, etc...)
        public static var accent: UIColor {
            return Palette.blue
        }
        
        public static var positive: UIColor {
            return Palette.green
        }
        
        public static var negative: UIColor {
            return Palette.red
        }
        
        public static var attention: UIColor {
            return Palette.orange
        }
        
        public static var error: UIColor {
            return Palette.red
        }
        
        public static var info: UIColor {
            return Palette.grey
        }
        
        
        // MARK: - ViewControllers
        public static var screenBackround: UIColor {
            return Palette.white
        }
        
        public static var navBarText: UIColor {
            return Palette.black
        }
        
        public static var tabBarText: UIColor {
            return Palette.grey
        }
        
        public static var tabBarSelectedText: UIColor {
            return accent
        }
    }
    
    public enum Metrics {
        
    }
}

/// Palete with concrete colors can be used only inside DesignSystem.
/// In public code we should use only functional Colors.
extension Design.Colors {
    private enum Palette {
        // MARK: - Primary colors
        public static var black: UIColor {
            return UIColor(hexString: "#2D2928")
        }
        
        public static var grey: UIColor {
            return UIColor(hexString: "#969493")
        }
        
        public static var grey1: UIColor {
            return UIColor(hexString: "#D5D4D4")
        }
        
        public static var grey2: UIColor {
            return UIColor(hexString: "#E8E8E8")
        }
        
        public static var grey3: UIColor {
            return UIColor(hexString: "#F4F4F4")
        }
        
        public static var white: UIColor {
            return UIColor(hexString: "#FFFFFF")
        }
        
        public static var yellow: UIColor {
            return UIColor(hexString: "#FFC100")
        }
        
        public static var orange: UIColor {
            return UIColor(hexString: "#FF9800")
        }
        
        public static var red: UIColor {
            return UIColor(hexString: "#FF3800")
        }
        
        public static var redAccent: UIColor {
            return UIColor(hexString: "#F04240")
        }
        
        public static var pink: UIColor {
            return UIColor(hexString: "#FF3E80")
        }
        
        public static var pink1: UIColor {
            return UIColor(hexString: "#FFD8E6")
        }
        
        public static var green: UIColor {
            return UIColor(hexString: "#53BB01")
        }
        
        public static var blue: UIColor {
            return UIColor(hexString: "#0048FF")
        }
    }
}
