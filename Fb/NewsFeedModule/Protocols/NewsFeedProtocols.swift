import UIKit

protocol NewsFeedViewProtocol: AnyObject {
	var presenter: NewsFeedPresenterProtocol? { get set }
	
	// PRESENTER -> VIEW
	func showBgColor(color: UIColor)
}

protocol NewsFeedPresenterProtocol: AnyObject {
	var view: NewsFeedViewProtocol? { get set }
	var interactor: NewsFeedInteractorInputProtocol? { get set }
	var router: NewsFeedRouterProtocol? { get set }
	
	// VIEW -> PRESENTER
	func viewDidLoad()
}

protocol NewsFeedInteractorInputProtocol: AnyObject {
	var presenter: NewsFeedInteractorOutputProtocol? { get set }
	
	// PRESENTER -> INTERACTOR
}

protocol NewsFeedInteractorOutputProtocol: AnyObject {
	// INTERACTOR -> PRESENTER
}

protocol NewsFeedRouterProtocol: AnyObject {
	// PRESENTER -> ROUTER
}
