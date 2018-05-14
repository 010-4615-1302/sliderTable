//
//  ViewController.swift
//  sliderTable
//
//  Created by D7703_29 on 2018. 5. 14..
//  Copyright © 2018년 D7703_29. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet var mySlider: UISlider!
    
    @IBOutlet var myTableView: UITableView!
     @IBOutlet weak var text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
    }

    @IBAction func sliderMoved(_ sender: Any) {
        text.text = String(Int(mySlider.value))
        let a = IndexPath(row: Int(mySlider.value), section:0)
        //row 값을 현재 slider의 값으로 변경
        myTableView.scrollToRow(at: a, at: UITableViewScrollPosition.top, animated: true)
        //tableview의 row값을 현재 a 값이랑 같은 위치로 이동
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 101;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = String(indexPath.row)
        return  cell
    }
    
}

