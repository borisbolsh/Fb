import UIKit

final class NewsFeedViewController: UIViewController, NewsFeedViewProtocol {

		var presenter: NewsFeedPresenterProtocol?

		override func viewDidLoad() {
				super.viewDidLoad()
				presenter?.viewDidLoad()
		}

		func showBgColor(color: UIColor) {
				view.backgroundColor = color
		}
}

