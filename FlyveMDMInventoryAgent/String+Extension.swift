/*
 * Copyright © 2017 Teclib. All rights reserved.
 *
 * String+Extension.swift is part of FlyveMDMInventoryAgent
 *
 * FlyveMDMInventoryAgent is a subproject of Flyve MDM. Flyve MDM is a mobile
 * device management software.
 *
 * FlyveMDMInventoryAgent is free software: you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version.
 *
 * FlyveMDMInventoryAgent is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * ------------------------------------------------------------------------------
 * @author    Hector Rondon
 * @date      05/10/17
 * @copyright Copyright © 2017 Teclib. All rights reserved.
 * @license   LGPLv3 https://www.gnu.org/licenses/lgpl-3.0.html
 * @link      https://github.com/flyve-mdm/flyve-mdm-ios-inventory-agent.git
 * @link      https://flyve-mdm.com
 * ------------------------------------------------------------------------------
 */

import Foundation

extension String {
    
    func camelCaseToWords() -> String {
        
        return unicodeScalars.reduce("") {
            
            if CharacterSet.uppercaseLetters.contains($1) == true {

                return ($0.lowercased() + " " + String($1).lowercased())
            } else {
                
                return $0 + String($1)
            }
        }
    }
}