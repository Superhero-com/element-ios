// 
// Copyright 2024 New Vector Ltd
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

class TrustedBoatView: UIView {
    
    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var lblTrustedBoat: UILabel!
    
    let kCONTENT_XIB_NAME = "TrustedBoatView"
    let kCONTENT_TRUSTED_BOAT = "Trusted Bot"
    
    private var theme: Theme {
        ThemeService.shared().theme
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed(kCONTENT_XIB_NAME, owner: self, options: nil)
        viewContent.fixInView(self)
        updateUI()
    }
    
    func updateUI() {
        viewContent.backgroundColor = UIColor.clear
        view1.backgroundColor = theme.colors.cGreen.withAlphaComponent(0.2)
        view1.layer.cornerRadius = 15
        lblTrustedBoat.text = kCONTENT_TRUSTED_BOAT
        lblTrustedBoat.textColor = theme.colors.cGreen
        lblTrustedBoat.font = theme.fonts.subheadline
    }
}
