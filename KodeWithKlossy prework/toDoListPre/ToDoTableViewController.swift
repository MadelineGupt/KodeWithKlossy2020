//
//  ToDoPreViewController.swift
//  toDoListPre
//
//  Created by MADELINE on 5/28/20.
//  Copyright © 2020 MADELINE. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {

    
    var toDos : [ToDoCD] = []
    
   func saveToDos() {
      if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

        if let coreDataToDos = try? context.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
                toDos = coreDataToDos
                tableView.reloadData()
        }
      }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      // this gives us a single ToDo
      let toDo = toDos[indexPath.row]

      performSegue(withIdentifier: "moveToComplete", sender: toDo)
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        
        if let name = toDo.name {
          if toDo.important {
              cell.textLabel?.text = "❗️" + name
          } else {
              cell.textLabel?.text = toDo.name
          }
        }


        return cell
    }



    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let addVC = segue.destination as? AddToDoViewController {
        addVC.previousVC = self
      }
      if let completeVC = segue.destination as? CompleteToDoViewController {
        if let toDo = sender as? ToDoCD {
            completeVC.selectedToDo = toDo
            completeVC.previousVC = self
          }
      }
    }
    
    override func viewWillAppear(_ animated: Bool) {
      saveToDos()
    }

}
