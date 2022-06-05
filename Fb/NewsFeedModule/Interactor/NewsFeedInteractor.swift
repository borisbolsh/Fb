import Foundation

final class NewsFeedInteractor: NewsFeedInteractorInputProtocol {
		weak var presenter: NewsFeedInteractorOutputProtocol?

		init(presenter: NewsFeedInteractorOutputProtocol) {
				self.presenter = presenter
		}
}
