//
//  HomeViewController.swift
//  TodoList
//
//  Created by GiaBao on 28/03/2023.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    let taskService = TaskService()
    var tasks:[TaskModel] = []
    override func viewDidAppear(_ animated: Bool) {
        setupTableView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        
        do {
            tasks = try taskService.getTask()
            tableView.reloadData()
        } catch let error {
            print(error)
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TaskViewCell
        let task = tasks[indexPath.row]
        cell.taskNameLabel.text = task.taskName
        cell.taskDescriptionLabel.text = task.taskDescription
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

