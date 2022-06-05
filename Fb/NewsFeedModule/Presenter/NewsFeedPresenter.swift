import UIKit

final class NewsFeedPresenter: NewsFeedPresenterProtocol, NewsFeedInteractorOutputProtocol {
	weak var view: NewsFeedViewProtocol?
	var interactor: NewsFeedInteractorInputProtocol?
	var router: NewsFeedRouterProtocol?
	
	init(view: NewsFeedViewProtocol) {
		self.view = view
	}
	
	func viewDidLoad() {
		view?.showBgColor(color: .green)
	}
}
