import UIKit

final class NewsFeedAssembly {
	func configure() -> UIViewController {
		let viewController = NewsFeedViewController()
		let presenter = NewsFeedPresenter(view: viewController)
		let interactor = NewsFeedInteractor(presenter: presenter)
		let router = NewsFeedRouter()
		
		viewController.presenter = presenter
		presenter.interactor = interactor
		presenter.router = router

		return viewController
	}
}
