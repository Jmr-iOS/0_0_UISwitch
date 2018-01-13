/************************************************************************************************************************************/
/** @file       ViewController.swift
 *  @project    0_0 - UISwitch
 *  @brief      x
 *  @details    x
 *
 *  @author     Justin Reina, Firmware Engineer, Jaostech
 *  @created    11/12/15
 *  @last rev   1/13/18
 *
 *
 *     @notes        x
 *
 *     @section    Opens
 *             none current
 *
 *     @section    Legal Disclaimer
 *             All contents of this source file and/or any other Jaostech related source files are the explicit property of Jaostech
 *             Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit


class ViewController: UIViewController {

    /********************************************************************************************************************************/
    /** @fcn        override func viewDidLoad()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;
        
        self.addSwitch(self.view);
        
        print("ViewController.viewDidLoad():       viewDidLoad() complete");
        
        return;
    }

    
    /********************************************************************************************************************************/
    /** @fcn        addSwitch(_ view:UIView)
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    @objc func addSwitch(_ view:UIView) {
        
        let uiSwitch:UISwitch = UISwitch();
        
        uiSwitch.frame.origin = CGPoint(x: 50, y: 200);
        
        uiSwitch.addTarget(self, action: #selector(ViewController.toggle(_:)), for: UIControlEvents.valueChanged);
        
        view.addSubview(uiSwitch);
        
        return;
    }

    
    /********************************************************************************************************************************/
    /** @fcn        toggle(_ uiSwitch:UISwitch)
     *  @brief      x
     *  @details    x
     *
     *  @note       switch.on represents the current state and the toggle 'action' is called AFTER the toggle, so it's the POST here
     */
    /********************************************************************************************************************************/
    @objc func toggle(_ uiSwitch:UISwitch) {
        
        if(uiSwitch.isOn) {
            print("toggling on");
        } else {
            print("toggling off");
        }
        
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        didReceiveMemoryWarning()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        return;
    }
}

