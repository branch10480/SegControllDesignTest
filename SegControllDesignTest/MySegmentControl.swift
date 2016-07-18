//
//  MySegmentControl.swift
//  SegControllDesignTest
//
//  Created by ImaedaToshiharu on 2016/07/11.
//  Copyright © 2016年 ImaedaToshiharu All rights reserved.
//

import UIKit

class MySegmentControl: UISegmentedControl {
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // 背景
        self.setBackgroundImage(UIImage.init(named: "29.png"), forState: .Normal, barMetrics: .Default)
        self.setBackgroundImage(UIImage.init(named: "28.png"), forState: .Selected, barMetrics: .Default)
        
        // 境界線
        self.setDividerImage(UIImage.init(named: "33.png"), forLeftSegmentState: .Normal, rightSegmentState: .Normal, barMetrics: .Default)
        self.setDividerImage(UIImage.init(named: "31.png"), forLeftSegmentState: .Normal, rightSegmentState: .Selected, barMetrics: .Default)
        self.setDividerImage(UIImage.init(named: "30.png"), forLeftSegmentState: .Selected, rightSegmentState: .Normal, barMetrics: .Default)
        self.setDividerImage(UIImage.init(named: "32.png"), forLeftSegmentState: .Selected, rightSegmentState: .Selected, barMetrics: .Default)
        
        /** フォント **/
        var font:UIFont!
        if self.tag == 0 {
            // 通常ボード
            font = UIFont.systemFontOfSize(30, weight: UIFontWeightBold)
        } else {
            // リースキンモード
            font = UIFont.systemFontOfSize(18, weight: UIFontWeightBold)
        }
        
        let normalDic:Dictionary = [
            NSFontAttributeName: font,
            NSForegroundColorAttributeName:UIColor.darkGrayColor()
        ]
        let selectedDic:Dictionary = [
            NSFontAttributeName: font,
            NSForegroundColorAttributeName:UIColor.whiteColor()
        ]
        self.setTitleTextAttributes(normalDic, forState: .Normal)
        self.setTitleTextAttributes(selectedDic, forState: .Selected)
    }

}
