//
//  menuTable.swift
//  restaurantDataPass
//
//  Created by 林祐辰 on 2020/8/1.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class menuTable: UITableViewController{

    
    var datas :RestaurantMenu!
    var menu = [
    RestaurantMenu(pictures: UIImage(named: "0.jpg"), mealTitle: "香烤半雞配馬鈴薯", mealText: "選用國產土雞，以奶油、鹽及胡椒等佐料，香烤至呈現金黃色澤，肉質鮮嫩多汁，外皮薄脆爽口，每口都回味無窮，適合與朋友一起分享。"),
    RestaurantMenu(pictures: UIImage(named: "1.jpg"), mealTitle: "義式烤鮮魚", mealText: "選用當日供應的各式新鮮魚類，以羅勒、橄欖、番茄、茴香頭等主廚特調香料現烤，魚肉鮮嫩，香氣撲鼻，喜歡品嚐魚料理的人千萬不可錯失"),
    RestaurantMenu(pictures: UIImage(named: "2.jpg"), mealTitle: "低脂牛肉千層麵", mealText: "上等低脂牛絞肉與洋蔥、紅蘿蔔、蕃茄醬汁等慢火熬煮五個小時煮成的紅醬，再與香Q彈牙的麵皮及細緻的法式白醬層層堆疊，灑上起司進爐烘烤，是TAKE FIVE的招牌美食之一。"),
    RestaurantMenu(pictures: UIImage(named: "3.jpg"), mealTitle: "透抽小卷墨魚燉飯", mealText: "以自製番茄紅酒醬汁小火慢燉18個小時，牛腩肉質軟嫩入味，搭配細緻滑順薯泥與烤過的時蔬，簡單卻豐富的好味道。"),
    RestaurantMenu(pictures: UIImage(named: "4.jpg"), mealTitle: "紅酒蕃茄燉牛腩", mealText: "以自製番茄紅酒醬汁小火慢燉18個小時，牛腩肉質軟嫩入味，搭配細緻滑順薯泥與烤過的時蔬，簡單卻豐富的好味道。"),
    RestaurantMenu(pictures: UIImage(named: "5.jpg"), mealTitle: "拜雍生火腿芝麻菜披薩", mealText: "輕薄餅皮脆口香酥，以蕃茄醬汁、風乾蕃茄、羅勒、瑪芝瑞拉起司等組合而成的瑪格麗特披薩堪稱最單純、最經典的口味，在烘烤出爐的瑪格麗特上撒上拜雍火腿與芝麻菜，就成了華麗感與美味度雙雙升級的拜雍火腿芝麻菜披薩。"),
    RestaurantMenu(pictures: UIImage(named: "6.jpg"), mealTitle: "招牌西班牙烘蛋", mealText: "西班牙平民美食，用料豐富、口感紮實，主廚依據當日菜色變換各種不同口味，惟一不變的是濃濃的蛋香。"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 0
//    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return menu.count
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let renderController = segue.destination as! menuDisplay
        
        if let row = tableView.indexPathForSelectedRow?.row {
            renderController.foodTitle = menu[row].mealTitle
            renderController.imageName = menu[row].pictures
            renderController.explain = menu[row].mealText
        }
}
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        performSegue(withIdentifier: "passMenuValue", sender: nil)
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowShowedData = menu[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath)
        cell.imageView?.image = rowShowedData.pictures
        cell.textLabel?.text = rowShowedData.mealTitle
        cell.textLabel?.font = UIFont(name:"Optima", size:27)
        return cell
     }

    
    
    
    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


}
