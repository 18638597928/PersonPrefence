//
//  Target_PersonPrefenceViewController.swift
//  PersonPrefence
//
//  Created by zhx on 2020/5/26.
//

import UIKit

class Target_PersonPrefenceViewController: NSObject {

    open func Action_PersonPrefenceViewController(param: [String:Any]) -> UIViewController {

        let per = PersonPrefenceViewController()
        if let remind = param["remind"] as? String {
            per.remind = remind
        }
        if let block = param["block"] as? ResultBlock {
            per.block = block
        }
        return per
    }

}
