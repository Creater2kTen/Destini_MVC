

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    
    var storyBrain = StoryBrain()

    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        updateUI(storyBrain.storyNumber)
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(sender.title(for: .normal)!)
        updateUI(storyBrain.storyNumber)
    }
        
    
    func updateUI(_ storyVal : Int){
        
        storyLabel.text = storyBrain.story[storyBrain.storyNumber].title
        choice1Button.setTitle(storyBrain.story[storyBrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.story[storyBrain.storyNumber].choice2, for: .normal)
    }
    
}

