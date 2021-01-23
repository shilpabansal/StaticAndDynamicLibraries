//
//  FeedCoodinator.swift
//  LibraryAndFrameworks
//
//  Created by Shilpa Bansal on 23/01/21.
//

import Foundation
import UIKit
import FeedContent

/*
 This is behaving like composing component, which is aware if FeedContent,
 Feed UI Module doesnt have to know anything about FeedContent module
 */

class FeedCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let vc = storyboard.instantiateViewController(withIdentifier: "FeedListViewController") as? FeedListViewController {
            vc.feedViewModel = FeedListViewModel(feedContent: RemoteFeedContent())
            navigationController.pushViewController(vc, animated: false)
        }
    }
}
