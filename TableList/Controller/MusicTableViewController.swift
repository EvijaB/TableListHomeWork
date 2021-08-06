//
//  MusicTableViewController.swift
//  TableList
//
//  Created by Arkadijs Makarenko on 02/08/2021.
//
import UIKit

class MusicTableViewController: UITableViewController {
    
//    var trackList = [
//        "Carly Rae Japsen - Dedicated",
//        "Dj Khaled - father of",
//        "Injury Reserve - Jailbrake",
//        "Jonas Brothers - Happiness Begins ",
//        "Joyner Lucas - adhd",
//        "Maluma - 11-11",
//        "Never Young - LOSER",
//        "Rammstein - rammstein",
//        "Skepta - Ignorance Is Bliss",
//        "Skillet - Victory",
//        "Tylor the Creator - IGOR",
//        "YG - Stop Snitching",
//    ]
    
    var songs = Song.createSong()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath)
        
//        cell.textLabel?.text = trackList[indexPath.row]
//        cell.detailTextLabel?.text = trackList[indexPath.row]
//        cell.imageView?.image = UIImage(named: trackList[indexPath.row])
        // Configure the cell...
        
        let song = songs[indexPath.row]
        cell.textLabel?.text = song.track
        cell.detailTextLabel?.text = song.album
        cell.imageView?.image = UIImage(named: song.cover)
        return cell
    }
    
    
    //MARK: - Table View delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currenttrack = songs.remove(at: fromIndexPath.row)
        songs.insert(currenttrack, at: to.row)
     }

    
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }

    
     // MARK: - Navigation
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
     // Get the new view controller using segue.destination.
            print(indexPath)
            let detailVC = segue.destination as! DetailMusicViewController
     // Pass the selected object to the new view controller.
            detailVC.song = songs[indexPath.row]
        }
     }
    
    
}
