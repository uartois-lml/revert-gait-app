import UIKit
import WebKit

class WebViewVC: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = Bundle.main.url(forResource: "test", withExtension: "html")
        let myRequest = NSURLRequest(url: url!)
        webView.load(myRequest as URLRequest)
        
    }

    @IBAction func leaveButtonPressed(){
        let menuVC = self.storyboard?.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
        menuVC.modalPresentationStyle = .fullScreen
        self.present(menuVC, animated: true, completion: nil)

    }
    


}