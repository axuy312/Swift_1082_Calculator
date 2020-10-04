//
//  ViewController.swift
//  Assignment_swift
//
//  Created by Apple on 2020/4/18.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var 顯示: UILabel!
    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var sub: UIButton!
    @IBOutlet weak var mul: UIButton!
    @IBOutlet weak var div: UIButton!
    
    var 數字 : Int = 0
    var 結果 : Int = 0
    var 運算 : Character = "\0"
    
    @IBAction func p1(_ sender: Any) {
        顏色清除()
        數字 = 數字 * 10 + 1
        顯示.text = String(數字)
    }
    @IBAction func p2(_ sender: Any) {
        顏色清除()
        數字 = 數字 * 10 + 2
        顯示.text = String(數字)
    }
    @IBAction func p3(_ sender: Any) {
        顏色清除()
        數字 = 數字 * 10 + 3
        顯示.text = String(數字)
    }
    @IBAction func p4(_ sender: Any) {
        顏色清除()
        數字 = 數字 * 10 + 4
        顯示.text = String(數字)
    }
    @IBAction func p5(_ sender: Any) {
        顏色清除()
        數字 = 數字 * 10 + 5
        顯示.text = String(數字)
    }
    @IBAction func p6(_ sender: Any) {
        顏色清除()
        數字 = 數字 * 10 + 6
        顯示.text = String(數字)
    }
    @IBAction func p7(_ sender: Any) {
        顏色清除()
        數字 = 數字 * 10 + 7
        顯示.text = String(數字)
    }
    @IBAction func p8(_ sender: Any) {
        顏色清除()
        數字 = 數字 * 10 + 8
        顯示.text = String(數字)
    }
    @IBAction func p9(_ sender: Any) {
        顏色清除()
        數字 = 數字 * 10 + 9
        顯示.text = String(數字)
    }
    @IBAction func p0(_ sender: Any) {
        顏色清除()
        數字 = 數字 * 10
        顯示.text = String(數字)
    }
    @IBAction func C(_ sender: Any) {
        顏色清除()
        數字 = 0
        結果 = 0
        顯示.text = "0"
    }
    
    func 顏色清除() {
        add.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        sub.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        mul.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        div.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

    }
    
    func 計算(){
        if 運算 != "\0" {
            switch 運算 {
                case "+":
                    結果 += 數字
                break
                case "-":
                    結果 -= 數字
                break
                case "x":
                    結果 *= 數字
                break
                case "/":
                    if 數字 != 0 {
                        結果 /= 數字
                    }
                break
            default:
                break
            }
            顯示.text = String(結果)
        }
        else{
            結果 += 數字
        }
    }
    
    @IBAction func 加(_ sender: Any) {
        顏色清除()
        add.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        if (數字 != 0){
            計算()
        }
        運算 = "+"
        數字 = 0;
    }
    @IBAction func 減(_ sender: Any) {
        顏色清除()
        sub.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        if (數字 != 0){
            計算()
        }
        運算 = "-"
        數字 = 0;
    }
    @IBAction func 乘(_ sender: Any) {
        顏色清除()
        mul.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        if (數字 != 0){
            計算()
        }
        運算 = "x"
        數字 = 0;
    }
    @IBAction func 除(_ sender: Any) {
        顏色清除()
        div.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        if (數字 != 0){
            計算()
        }
        運算 = "/"
        數字 = 0;
    }
    @IBAction func 等於(_ sender: Any) {
        顏色清除()
        計算()
        運算 = "\0"
        數字 = 0;
    }
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        
  }
}
