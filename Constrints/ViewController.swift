import UIKit

class ViewController: UIViewController {

    @IBOutlet var trafficLightRedView: UIView!
    @IBOutlet var trafficLightYellowView: UIView!
    @IBOutlet var trafficLightGreenView: UIView!
    @IBOutlet var trafficLightSwitchButton: UIButton!
    
    var colorOfLight: ColorLight = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightSwitchButton.setTitle("START", for: .normal)
        
        trafficLightSwitchButton = setupButton(for: trafficLightSwitchButton, title: "START")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        trafficLightRedView = setupView(for: trafficLightRedView, color: .red)
        trafficLightYellowView = setupView(for: trafficLightYellowView, color: .yellow)
        trafficLightGreenView = setupView(for: trafficLightGreenView, color: .green)
    }
    
    @IBAction func LightSwith(_ sender: UIButton) {
        trafficLightSwitchButton.setTitle("NEXT", for: .normal)
        
        switch colorOfLight {
        case .red:
            trafficLightRedView.alpha = 1
            trafficLightGreenView.alpha = 0.3
            colorOfLight = .yellow
        case .yellow:
            trafficLightYellowView.alpha = 1
            trafficLightRedView.alpha = 0.3
            colorOfLight = .green
        case .green:
            trafficLightGreenView.alpha = 1
            trafficLightYellowView.alpha = 0.3
            colorOfLight = .red
        }
    }
    
    private func setupView(for view: UIView, color: UIColor) -> UIView {
        view.backgroundColor = color
        view.alpha = 0.3
        view.layer.cornerRadius = view.frame.height / 2
        return view
    }
    
    private func setupButton(for button: UIButton, title: String) -> UIButton {
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.setTitle("START", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 25)
        return button
    }
}

extension ViewController {
    enum ColorLight {
        case red
        case yellow
        case green
    }
}
