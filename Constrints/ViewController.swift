import UIKit

class ViewController: UIViewController {

    @IBOutlet var trafficLightRedView: UIView!
    @IBOutlet var trafficLightYellowView: UIView!
    @IBOutlet var trafficLightGreenView: UIView!
    @IBOutlet var trafficLightSwitchButton: UIButton!
    
    let colorOfLight: ColorLight = .green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightRedView.layer.cornerRadius = trafficLightRedView.frame.height / 2
        trafficLightYellowView.layer.cornerRadius = trafficLightYellowView.frame.height / 2
        trafficLightGreenView.layer.cornerRadius = trafficLightGreenView.frame.height / 2
    }
    
    @IBAction func LightSwith(_ sender: UIButton) {
        
    }
}

extension ViewController {
    enum ColorLight {
        case red
        case yellow
        case green
    }
}
