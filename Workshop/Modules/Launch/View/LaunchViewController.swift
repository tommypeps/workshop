//
//  LaunchViewController.swift
//  Workshop
//
//  Created by JOSE ROLDAN JIMENEZ on 01/10/2019.
//  Copyright © 2019 JOSE ROLDAN JIMENEZ. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var model = [LaunchModel]()
    var alertController: UIAlertController?

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInformation()
        configureTableView()
    }
}

extension LaunchViewController {
    
    private func configureTableView() {
        let nib = UINib(nibName: Launch.LaunchCell.launchCell.rawValue, bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: Launch.LaunchCell.launchCell.rawValue)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    private func loadInformation() {
        LaunchService.getLaunchs(success: { [weak self] launchModels in
            self?.model = launchModels
            self?.tableView.reloadData()
        }) { [weak self] error in
            self?.showError()
        }
    }
    
    private func showError() {
        let alertAction = UIAlertAction(title: Launch.Constant.confirmationButton, style: .default) { _ in
            self.alertController?.dismiss(animated: true, completion: nil)
        }
        alertController = UIAlertController(title: Launch.Constant.alertTitle, message: Launch.Constant.alertBody, preferredStyle: .alert)
        alertController?.addAction(alertAction)
        guard let alertController = alertController else { return }
        present(alertController, animated: true)
    }
}

extension LaunchViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: Launch.LaunchCell.launchCell.rawValue, for: indexPath) as? LaunchCell {
            cell.configureCell(model: model[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}

extension LaunchViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let modelSelected = model[indexPath.row]
        //TODO: Navigate to Next View
    }
}
