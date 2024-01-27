//
//  ViewController.swift
//  MyStory
//
//  Created by Barsha Chaudhary on 1/22/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var coolStoryButton: UIButton!
    
   // @IBOutlet weak var FavFood: UIButton!
    //@IBOutlet weak var FunFact: UIButton!
    @IBOutlet weak var weaknessButton: UIButton!
    @IBOutlet weak var weightLiftButton: UIButton!
    
    // Assuming you have instances of ContextItem for each button
    let contextItem1 = ContextItem(subImage: UIImage(named: "uzumaki")!, description: "Growing up in the Hidden Leaf Village was no walk in the park for me, Naruto Uzumaki. From the very beginning, I carried the weight of being the container for the Nine-Tailed Fox, an existence that cast a long shadow over my childhood. As an orphan seeking acceptance, I often found myself on the fringes of society, the whispers of fear and mistrust following me like a haunting melody. Yet, amidst the loneliness, a fiery determination burned within me. I vowed to prove that I was more than the beast sealed within. The journey through the ninja academy was no less challenging, but with every setback, I clung to the hope of one day earning the respect of my fellow villagers. Little did I know that the path to becoming the Hokage, my cherished dream, would be marked by camaraderie, battles, and a self-discovery that went beyond the physical prowess of a ninja.")
    
    let contextItem2 = ContextItem(subImage: UIImage(named: "water")!, description: "Believe it or not, I've got this cool ninja trick up my sleeve – I can walk on water! Yeah, you heard it right. Forget about all those fancy jutsus and epic battles for a moment; I've mastered the art of strolling on water like it's a Sunday afternoon promenade.One day, my sensei dropped the bombshell that walking on water was a thing. At first, I thought he was pulling my leg. I mean, come on, water is supposed to be wet and all, right? But, nope, turns out, with the right chakra control and a bit of ninja finesse, you can make those ripples your own personal catwalk.")
    
    let contextItem3 = ContextItem(subImage: UIImage(named: "ramen")!, description: "Ramen, oh ramen – it's not just a dish for me; it's practically the essence of my existence. Naruto Uzumaki, the ninja with the dream of becoming Hokage, has a not-so-secret love affair with this steamy bowl of goodness. Ichiraku Ramen is like my second home; the aroma of simmering broth, the twirl of the noodles, it's a symphony of flavors that just hits the spot. Whether I'm celebrating a victorious mission or drowning my sorrows after a tough day, ramen is my go-to companion. The warmth of the bowl in my hands is like a comforting hug, and the slurping sounds are music to my ears. Sure, I might be battling powerful foes and saving the world, but a bowl of ramen – that's my ultimate source of strength and happiness. Believe it!")


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        roundCorners(for: coolStoryButton)
        roundCorners(for: weaknessButton)
        roundCorners(for: weightLiftButton)
    }
    
    func roundCorners(for button: UIButton) {
        button.layer.cornerRadius = 10 // Adjust the corner radius as needed
        button.layer.masksToBounds = true // Ensure the corners are rounded
    }
    
    @IBAction func coolStory(_ sender: Any) {
//        handleAction(with: contextItem1, action: "Cool Story")
    }


    @IBAction func weakness(_ sender: Any) {
//        handleAction(with: contextItem2, action: "fun fact")
    }


    @IBAction func weightLift(_ sender: Any) {
//        handleAction(with: contextItem3, action: "favfood")
    }
    
    func handleAction(with contextItem: ContextItem, action: String) {
        print("My \(action)!")
        performSegue(withIdentifier: "\(action)Detail", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier,
            let action = identifier.components(separatedBy: "Detail").first,
            let detailVC = segue.destination as? DetailViewController {
                switch identifier {
                case "Cool BackStoryDetail":
                    detailVC.contextItem = contextItem1
                case "Fun Fact Detail":
                    detailVC.contextItem = contextItem2
                case "Favorite Food Detail":
                    detailVC.contextItem = contextItem3
                default:
                    break
                }
            let backButton = UIBarButtonItem()
            backButton.title = "My " + action
            navigationItem.backBarButtonItem = backButton
            }
        }
    
}


