//
//  twoViewController.swift
//  展開一品
//
//  Created by cl_umeda_018 on 2021/09/16.
//

import UIKit



class twoViewController: UIViewController {

    var number: Int = 0
   
    // 前後判定
    var count :Int = 0
    var XY :Int = 0
    @IBOutlet var answer1:UILabel!
    @IBOutlet var answer2:UILabel!
    @IBOutlet var taruki:UIImageView!
    @IBOutlet var tarukibatu:UIImageView!
    @IBOutlet var tarukilast:UIImageView!
    @IBOutlet var white:UIImageView!
    @IBOutlet var byoulabel:UILabel!
    
    @IBOutlet var questionX:UILabel!
    
    var  numberQ: Int!
    var  questionIndex: Int!
    
    @IBOutlet var question1:UILabel!
    @IBOutlet var question2:UILabel!
    
    @IBOutlet var monndaicount:UILabel!
    var monndaicounter: Int = 0
    
    @IBOutlet var timerlabel: UILabel!
    @IBOutlet var lasttimerLabel: UILabel!

    var counter: Float = 0.00
    
    var timer: Timer = Timer()
    
    let question1Array:[String] = ["+2","+6","+8","+25","+10","+9","+44","+22","+18","+24"]
    let question2Array:[String] = ["+4","+6","+8","+5","+3","+9","+7","+2","+1","-24"]
    let answer1Array:[String] =   ["+6","+12","+16","+30","13","+18","+51","+24","+19","+0"]
    let answer2Array:[String] =   ["+8","+36","+64","+125","+30","+81","+308","+44","+18","-576"]
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
     // Do any additional setup after loading the view.
        
      monndai()
        
        start()
        
        byoulabel.text = "秒"
        byoulabel.isHidden = true
        
        
     
        
        
//        count0()
    
    }
    
    
//    func count0(){
//        count = 0
//    }
    
    
    @objc func up(){
        counter = counter + 1.0
        timerlabel.text = String(format:"%.0f",counter) + "秒"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
     func start(){
        if !timer.isValid{
            
            timer = Timer.scheduledTimer(timeInterval: 1.0,
                                         target: self,
                                         selector: #selector(self.up),
                                         userInfo: nil,
                                         repeats: true
            )
        }
         
    }
    
    func lasttimer(){
        lasttimerLabel.text = timerlabel.text
        
    }
    
    func byou(){
        byoulabel.isHidden = false
    }
    
    
    
    func monndai(){
    numberQ = Int.random(in: 1...3)

        
//    if(numberQ == 1){
//        question1.text = "+10"
//        question2.text = "+5"
//    }
//
//    if(numberQ == 2){
//        question1.text = "-10"
//        question2.text = "-5"
//    }
//
//    if(numberQ == 3){
//        question1.text = "+10"
//        question2.text = "-5"
//    }
        
        questionIndex = Int.random(in: 0...3)
//        let question2Index = Int.random(in: 0...3)
//        let answer1Index = Int.random(in: 0...3)
//        let answer2Index = Int.random(in: 0...3)
        
       
        questionX.text = "(X　" + question1Array[questionIndex] + "　)(X　" + question2Array[questionIndex] + "　)　"
        
//        question1.text = question1Array[questionIndex]
//        question2.text = question2Array[questionIndex]
        
        
    }
   
    
    @IBAction func plus1(){
      
        if(count == 1){
            number =  number * 0 + 1
            answer1.text! += String(number)
            count = count + 1
//          first_or_not = false
        }else if (count == 2){
            number =  number * 0 + 1
            answer1.text! += String(number)
        }else if (count == -1){
            number =  number * 0 + 1
            answer1.text! += String(number)
            count = count - 1
        }else if (count == -2){
            number =  number * 0 + 1
            answer1.text! += String(number)
        }else if (count == 3){
            number =  number * 0 + 1
            answer2.text! += String(number)
            count = count + 1
        }else if (count == 4){
            number =  number * 0 + 1
            answer2.text! += String(number)
        }else if (count == -3){
            number =  number * 0 + 1
            answer2.text! += String(number)
            count = count - 1
        }else if (count == -4){
            number =  number * 0 + 1
            answer2.text! += String(number)
        }else if (count == 10){
            number =  number * 0 + 1
            answer2.text! += String(number)
            count = count + 1
        }else if (count == -10){
            number =  number * 0 + 1
            answer2.text! += String(number)
            count = count - 1
        }else if (count == 11){
            number =  number * 0 + 1
            answer2.text! += String(number)
        }else if (count == -11){
            number =  number * 0 + 1
            answer2.text! += String(number)
        }
    }
    
    @IBAction func plus2(){
        if(count == 1){
            number =  number * 0 + 2
            answer1.text! += String(number)
            count = count + 1
//          first_or_not = false
        }else if (count == 2){
            number =  number * 0 + 2
            answer1.text! += String(number)
        }else if (count == -1){
            number =  number * 0 + 2
            answer1.text! += String(number)
            count = count - 1
        }else if (count == -2){
            number =  number * 0 + 2
            answer1.text! += String(number)
            
        }else if (count == 3){
            number =  number * 0 + 2
            answer2.text! += String(number)
            count = count + 1
        }else if (count == 4){
            number =  number * 0 + 2
            answer2.text! += String(number)
        }else if (count == -3){
            number =  number * 0 + 2
            answer2.text! += String(number)
            count = count - 1
        }else if (count == -4){
            number =  number * 0 + 2
            answer2.text! += String(number)
        }else if (count == 10){
            number =  number * 0 + 2
            answer2.text! += String(number)
            count = count + 1
        }else if (count == -10){
            number =  number * 0 + 2
            answer2.text! += String(number)
            count = count - 1
        }else if (count == 11){
            number =  number * 0 + 2
            answer2.text! += String(number)
        }else if (count == -11){
            number =  number * 0 + 2
            answer2.text! += String(number)
        }
    }
    
    @IBAction func plus3(){
        if(count == 1){
            number =  number * 0 + 3
            answer1.text! += String(number)
            count = count + 1
//          first_or_not = false
        }else if (count == 2){
            number =  number * 0 + 3
            answer1.text! += String(number)
        }else if (count == -1){
            number =  number * 0 + 3
            answer1.text! += String(number)
            count = count - 1
        }else if (count == -2){
            number =  number * 0 + 3
            answer1.text! += String(number)
        }else if (count == 3){
            number =  number * 0 + 3
            answer2.text! += String(number)
            count = count + 1
        }else if (count == 4){
            number =  number * 0 + 3
            answer2.text! += String(number)
        }else if (count == -3){
            number =  number * 0 + 3
            answer2.text! += String(number)
            count = count - 1
        }else if (count == -4){
            number =  number * 0 + 3
            answer2.text! += String(number)
        }else if (count == 10){
            number =  number * 0 + 3
            answer2.text! += String(number)
            count = count + 1
        }else if (count == -10){
            number =  number * 0 + 3
            answer2.text! += String(number)
            count = count - 1
        }else if (count == 11){
            number =  number * 0 + 3
            answer2.text! += String(number)
        }else if (count == -11){
            number =  number * 0 + 3
            answer2.text! += String(number)
        }
    }
    
    @IBAction func plus4(){
        if(count == 1){
            number =  number * 0 + 4
            answer1.text! += String(number)
            count = count + 1
//          first_or_not = false
        }else if (count == 2){
            number =  number * 0 + 4
            answer1.text! += String(number)
        }else if (count == -1){
            number =  number * 0 + 4
            answer1.text! += String(number)
            count = count - 1
        }else if (count == -2){
            number =  number * 0 + 4
            answer1.text! += String(number)
        }else if (count == 3){
            number =  number * 0 + 4
            answer2.text! += String(number)
            count = count + 1
        }else if (count == 4){
            number =  number * 0 + 4
            answer2.text! += String(number)
        }else if (count == -3){
            number =  number * 0 + 4
            answer2.text! += String(number)
            count = count - 1
        }else if (count == -4){
            number =  number * 0 + 4
            answer2.text! += String(number)
        }else if (count == 10){
            number =  number * 0 + 4
            answer2.text! += String(number)
            count = count + 1
        }else if (count == -10){
            number =  number * 0 + 4
            answer2.text! += String(number)
            count = count - 1
        }else if (count == 11){
            number =  number * 0 + 4
            answer2.text! += String(number)
        }else if (count == -11){
            number =  number * 0 + 4
            answer2.text! += String(number)
        }
    }
    
    @IBAction func plus5(){
        if(count == 1){
            number =  number * 0 + 5
            answer1.text! += String(number)
            count = count + 1
//          first_or_not = false
        }else if (count == 2){
            number =  number * 0 + 5
            answer1.text! += String(number)
        }else if (count == -1){
            number =  number * 0 + 5
            answer1.text! += String(number)
            count = count - 1
        }else if (count == -2){
            number =  number * 0 + 5
            answer1.text! += String(number)
        }else if (count == 3){
            number =  number * 0 + 5
            answer2.text! += String(number)
            count = count + 1
        }else if (count == 4){
            number =  number * 0 + 5
            answer2.text! += String(number)
        }else if (count == -3){
            number =  number * 0 + 5
            answer2.text! += String(number)
            count = count - 1
        }else if (count == -4){
            number =  number * 0 + 5
            answer2.text! += String(number)
        }else if (count == 10){
            number =  number * 0 + 5
            answer2.text! += String(number)
            count = count + 1
        }else if (count == -10){
            number =  number * 0 + 5
            answer2.text! += String(number)
            count = count - 1
        }else if (count == 11){
            number =  number * 0 + 5
            answer2.text! += String(number)
        }else if (count == -11){
            number =  number * 0 + 5
            answer2.text! += String(number)
        }
    }
    
    @IBAction func plus6(){
        if(count == 1){
            number =  number * 0 + 6
            answer1.text! += String(number)
            count = count + 1
//          first_or_not = false
        }else if (count == 2){
            number =  number * 0 + 6
            answer1.text! += String(number)
        }else if (count == -1){
            number =  number * 0 + 6
            answer1.text! += String(number)
            count = count - 1
        }else if (count == -2){
            number =  number * 0 + 6
            answer1.text! += String(number)
        }else if (count == 3){
            number =  number * 0 + 6
            answer2.text! += String(number)
            count = count + 1
        }else if (count == 4){
            number =  number * 0 + 6
            answer2.text! += String(number)
        }else if (count == -3){
            number =  number * 0 + 6
            answer2.text! += String(number)
            count = count - 1
        }else if (count == -4){
            number =  number * 0 + 6
            answer2.text! += String(number)
        }else if (count == 10){
            number =  number * 0 + 6
            answer2.text! += String(number)
            count = count + 1
        }else if (count == -10){
            number =  number * 0 + 6
            answer2.text! += String(number)
            count = count - 1
        }else if (count == 11){
            number =  number * 0 + 6
            answer2.text! += String(number)
        }else if (count == -11){
            number =  number * 0 + 6
            answer2.text! += String(number)
        }
    }

    @IBAction func plus7(){
        if(count == 1){
            number =  number * 0 + 7
            answer1.text! += String(number)
            count = count + 1
//          first_or_not = false
        }else if (count == 2){
            number =  number * 0 + 7
            answer1.text! += String(number)
        }else if (count == -1){
            number =  number * 0 + 7
            answer1.text! += String(number)
            count = count - 1
        }else if (count == -2){
            number =  number * 0 + 7
            answer1.text! += String(number)
        }else if (count == 3){
            number =  number * 0 + 7
            answer2.text! += String(number)
            count = count + 1
        }else if (count == 4){
            number =  number * 0 + 7
            answer2.text! += String(number)
        }else if (count == -3){
            number =  number * 0 + 7
            answer2.text! += String(number)
            count = count - 1
        }else if (count == -4){
            number =  number * 0 + 7
            answer2.text! += String(number)
        }else if (count == 10){
            number =  number * 0 + 7
            answer2.text! += String(number)
            count = count + 1
        }else if (count == -10){
            number =  number * 0 + 7
            answer2.text! += String(number)
            count = count - 1
        }else if (count == 11){
            number =  number * 0 + 7
            answer2.text! += String(number)
        }else if (count == -11){
            number =  number * 0 + 7
            answer2.text! += String(number)
        }
    }

    @IBAction func plus8(){
        if(count == 1){
            number =  number * 0 + 8
            answer1.text! += String(number)
            count = count + 1
//          first_or_not = false
        }else if (count == 2){
            number =  number * 0 + 8
            answer1.text! += String(number)
        }else if (count == -1){
            number =  number * 0 + 8
            answer1.text! += String(number)
            count = count - 1
        }else if (count == -2){
            number =  number * 0 + 8
            answer1.text! += String(number)
        }else if (count == 3){
            number =  number * 0 + 8
            answer2.text! += String(number)
            count = count + 1
        }else if (count == 4){
            number =  number * 0 + 8
            answer2.text! += String(number)
        }else if (count == -3){
            number =  number * 0 + 8
            answer2.text! += String(number)
            count = count - 1
        }else if (count == -4){
            number =  number * 0 + 8
            answer2.text! += String(number)
        }else if (count == 10){
            number =  number * 0 + 8
            answer2.text! += String(number)
            count = count + 1
        }else if (count == -10){
            number =  number * 0 + 8
            answer2.text! += String(number)
            count = count - 1
        }else if (count == 11){
            number =  number * 0 + 8
            answer2.text! += String(number)
        }else if (count == -11){
            number =  number * 0 + 8
            answer2.text! += String(number)
        }
    }

    @IBAction func plus9(){
        if(count == 1){
            number =  number * 0 + 9
            answer1.text! += String(number)
            count = count + 1
//          first_or_not = false
        }else if (count == 2){
            number =  number * 0 + 9
            answer1.text! += String(number)
        }else if (count == -1){
            number =  number * 0 + 9
            answer1.text! += String(number)
            count = count - 1
        }else if (count == -2){
            number =  number * 0 + 9
            answer1.text! += String(number)
        }else if (count == 3){
            number =  number * 0 + 9
            answer2.text! += String(number)
            count = count + 1
        }else if (count == 4){
            number =  number * 0 + 9
            answer2.text! += String(number)
        }else if (count == -3){
            number =  number * 0 + 9
            answer2.text! += String(number)
            count = count - 1
        }else if (count == -4){
            number =  number * 0 + 9
            answer2.text! += String(number)
        }else if (count == 10){
            number =  number * 0 + 9
            answer2.text! += String(number)
            count = count + 1
        }else if (count == -10){
            number =  number * 0 + 9
            answer2.text! += String(number)
            count = count - 1
        }else if (count == 11){
            number =  number * 0 + 9
            answer2.text! += String(number)
        }else if (count == -11){
            number =  number * 0 + 9
            answer2.text! += String(number)
        }
    }

    @IBAction func plus0(){
        if(count == 1){
            number =  number * 0 + 0
            answer1.text! += String(number)
            count = count + 1
//          first_or_not = false
        }else if (count == 2){
            number =  number * 0 + 0
            answer1.text! += String(number)
        }else if (count == -1){
            number =  number * 0 + 0
            answer1.text! += String(number)
            count = count - 1
        }else if (count == -2){
            number =  number * 0 + 0
            answer1.text! += String(number)
        }else if (count == 3){
            number =  number * 0 + 0
            answer2.text! += String(number)
            count = count + 1
        }else if (count == 4){
            number =  number * 0 + 0
            answer2.text! += String(number)
        }else if (count == -3){
            number =  number * 0 + 0
            answer2.text! += String(number)
            count = count - 1
        }else if (count == -4){
            number =  number * 0 + 0
            answer2.text! += String(number)
        }else if (count == 10){
            number =  number * 0 + 0
            answer2.text! += String(number)
            count = count + 1
        }else if (count == -10){
            number =  number * 0 + 0
            answer2.text! += String(number)
            count = count - 1
        }else if (count == 11){
            number =  number * 0 + 0
            answer2.text! += String(number)
        }else if (count == -11){
            number =  number * 0 + 0
            answer2.text! += String(number)
        }
    }
    
    @IBAction func torikesi(){
        
    if(count == 1){
        number = number * 0
//      answer1.text! = String(number)
        answer1.text = ""
        count = count - 1
    }else if(count == 2){
        number =  number * 0
//      answer1.text! = String(number)
        answer1.text = "+"
        count = count - 1
    }else if(count == 3){
        number =  number * 0
//      answer2.text! = String(number)
        answer2.text = ""
        count = count - 1
    }else if (count == 4){
        number =  number * 0
//      answer2.text! = String(number)
        answer2.text = "+"
        count = count - 1
    }else if(count == -1){
        number = number * 0
//      answer1.text! = String(number)
        answer1.text = ""
        count = count + 1
    }else if(count == -2){
        number =  number * 0
//      answer1.text! = String(number)
        answer1.text = "-"
        count = count + 1
    }else if(count == -3){
        number =  number * 0
//      answer2.text! = String(number)
        answer2.text = ""
        count = count + 1
    }else if (count == -4){
        number =  number * 0
//      answer2.text! = String(number)
        answer2.text = "-"
        count = count + 1
    }else if (count == 10){
        number =  number * 0
//      answer2.text! = String(number)
        answer2.text = ""
        count = count - 8
    }else if (count == 11){
        number =  number * 0
//      answer2.text! = String(number)
        answer2.text = "-"
        count = count - 1
    }else if (count == -10){
        number =  number * 0
//      answer2.text! = String(number)
        answer2.text = ""
        count = count + 8
    }else if (count == -11){
        number =  number * 0
//      answer2.text! = String(number)
        answer2.text = "+"
        count = count + 1
    }
//
        
    }
    

    
    
    
    
    
    @IBAction func chuumonn(){
        
        print(questionIndex!)
        if(answer1.text == answer1Array[questionIndex] && answer2.text == answer2Array[questionIndex]){
           
            self.taruki.isHidden = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.taruki.isHidden = true
            }
           
            monndai()
            
            monndaicounter = monndaicounter + 1

//            UIView.animate(withDuration: 1.7, delay: 0.0, options: .curveEaseIn, animations: {
//                self.taruki.alpha = 1.0
//                self.taruki.isHidden = true
//            }, completion: nil)
            
        }else if(answer1.text != answer1Array[questionIndex] && answer2.text == answer2Array[questionIndex]){
            
            self.tarukibatu.isHidden = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.tarukibatu.isHidden = true
            }
            
        }else if(answer1.text != answer1Array[questionIndex] && answer2.text != answer2Array[questionIndex]){
            
            self.tarukibatu.isHidden = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.tarukibatu.isHidden = true
            }
            
        }else if(answer1.text == answer1Array[questionIndex] && answer2.text != answer2Array[questionIndex]){
            
            self.tarukibatu.isHidden = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.tarukibatu.isHidden = true
            }
            
        }
        
        
        
       
        if(monndaicounter == 1){
            monndaicount.text = "1問"
//            taruki.image = UIImage(named: "taruki")
//            taruki.image = UIImage(named: "")
//             DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){}
        }
        
        if(monndaicounter == 2){
            monndaicount.text = "2問"
        }
        if(monndaicounter == 3){
            monndaicount.text = "3問"
        }
        if(monndaicounter == 4){
            monndaicount.text = "4問"
        }
        if(monndaicounter == 5){
            monndaicount.text = "5問"
        }
        if(monndaicounter == 6){
            monndaicount.text = "6問"
        }
        if(monndaicounter == 7){
            monndaicount.text = "7問"
        }
        if(monndaicounter == 8){
            monndaicount.text = "8問"
        }
        if(monndaicounter == 9){
            monndaicount.text = "9問"
        }
        if(monndaicounter == 10){
            
            self.lasttimer()
            self.byou()
            self.taruki.isHidden = true
            self.white.isHidden = false
            self.tarukilast.isHidden = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
//                self.tarukilast.isHidden = false
            self.dismiss(animated: true , completion:nil)
            }
        }
        
        if(count == 1){
            number =  number * 0
            answer1.text! = String(number)
            answer1.text = ""
            answer2.text! = String(number)
            answer2.text = ""
            count = count * 0
//            first_or_not = false
        }else if (count == 2){
            number =  number * 0
            answer1.text! = String(number)
            answer1.text = ""
            answer2.text! = String(number)
            answer2.text = ""
            count = count * 0
        }else if (count == 3){
            number =  number * 0
            answer1.text! = String(number)
            answer1.text = ""
            answer2.text! = String(number)
            answer2.text = ""
            count = count * 0
        }else if (count == 4){
            number =  number * 0
            answer1.text! = String(number)
            answer1.text = ""
            answer2.text! = String(number)
            answer2.text = ""
            count = count * 0
        }else if(count == -1){
            number =  number * 0
            answer1.text! = String(number)
            answer1.text = ""
            answer2.text! = String(number)
            answer2.text = ""
            count = count * 0
//            first_or_not = false
        }else if (count == -2){
            number =  number * 0
            answer1.text! = String(number)
            answer1.text = ""
            answer2.text! = String(number)
            answer2.text = ""
            count = count * 0
        }else if (count == -3){
            number =  number * 0
            answer1.text! = String(number)
            answer1.text = ""
            answer2.text! = String(number)
            answer2.text = ""
            count = count * 0
        }else if (count == -4){
            number =  number * 0
            answer1.text! = String(number)
            answer1.text = ""
            answer2.text! = String(number)
            answer2.text = ""
            count = count * 0
        }
        

    }
    
    @IBAction func plus(){
        
      if( count == 0){
            answer1.text! += "+"
            count = count + 1
        }else if( count == 2){
            answer2.text! +=  "+"
            number = 1
            count = count + 1
        }else if( count == -2){
            answer2.text! +=  "+"
            number = 1
            count = count - 8
        }
    }
        
        @IBAction func mainasu(){
            
           if( count == 0){
                answer1.text! += "-"
                count = count - 1
            }else if( count == 2){
                answer2.text! += "-"
                number = 1
                count = count + 8
            }else if( count == -2){
                answer2.text! += "-"
                number = 1
                count = count - 1
                }
            
            
        }
//    @IBAction func plus(){
//        if( count == 0){
//            answer1.text = "+"
//            count = count + 1
//        }else if( count == 2){
//            answer2.text =  "+"
//            number = 1
//            count = count + 1
//        }else if( count == -2){
//            answer2.text =  "+"
//            number = 1
//            count = count + 5
//        }
//    }
//
//        @IBAction func mainasu(){
//            if( count == 0){
//                answer1.text = "-"
//                count = count - 1
//            }else if( count == 2){
//                answer2.text =  "-"
//                number = 1
//                count = count + 1
//            }else if( count == -2){
//                answer2.text =  "-"
//                number = 1
//                count = count - 1
//                }
//
//
//        }
    
    

    @IBAction func back(){
        self.dismiss(animated: true , completion:nil)
    }


    
    
}
