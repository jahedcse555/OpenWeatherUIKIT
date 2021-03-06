//
//  CitiesViewController&TableView.swift
//  OpenWeatherUIKIT
//
//  Created by Jahed Ahmed on 25/10/21.
//


import UIKit

// MARK: - tableView delegate & datasource
extension CitiesViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(of: CityTableViewCell.self, for: indexPath)
        cell.city = cities[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let model = cities[indexPath.row]
        let destination = CityDetailViewController(model: model, currentIndex: indexPath.row)
        destination.delegate = self
        navigationController?.pushViewController(destination, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

