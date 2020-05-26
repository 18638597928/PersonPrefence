//
//  PersonPrefenceViewController.swift
//  PersonPrefence
//
//  Created by zhx on 2020/5/26.
//

import UIKit

typealias ResultBlock = (Bool) -> Void

class PersonPrefenceViewController: UIViewController {

    open var remind: String = ""
    open var block: ResultBlock?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        self.view.addSubview(remindLabel)
        self.view.addSubview(lickBtn)
        remindLabel.text = remind + "谢谢"
    }

    @objc func clickAction() {
        if block != nil {
            block!(true)
            self.navigationController?.popViewController(animated: true)
        }
    }

    lazy var remindLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 100, width: 320, height: 60))
        label.textColor = .black
        label.textAlignment = .center
        label.backgroundColor = .brown
        return label
    }()

    lazy var lickBtn: UIButton = {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 100, y: 300, width: 60, height: 30)
        button.setTitleColor(.cyan, for: .normal)
        button.setTitle("喜欢", for: .normal)
        button.addTarget(self, action: #selector(clickAction), for: .touchUpInside)
        return button
    }()

}

