//
//  ViewController.swift
//  SpotifyPlayer_UIDemo
//
//  Created by Harish on 26/12/21.
//

import UIKit

class ViewController: UIViewController {

    let buttonHeight = 50.0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }

    func setupView(){
        let albumImage = makeImageVew(imageName: "90's_Song")
        let trackLabel = makeLabel(withText: "Ek aisi ladki thi jise")
        let albumLabel = makeAlbumLabel(withText: "90's Sad Song")
        let playButton = makePlayButton(withImage: "play")
        let previewStartLabel = makePreviewLabel(withText: "0:00")
        let previewEndLabel = makePreviewLabel(withText:"0:60")
        let progressView = makeProgressView()
        let spotifyButton = makeSpotifyButton(witText: "PLAY ON SPOTIFY")
        view.addSubview(albumImage)
        view.addSubview(trackLabel)
        view.addSubview(albumLabel)
        view.addSubview(playButton)
        view.addSubview(previewStartLabel)
        view.addSubview(progressView)
        view.addSubview(previewEndLabel)
        view.addSubview(spotifyButton)
        
        
        albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        albumImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor,multiplier:1).isActive = true
        albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width).isActive = true
        
        trackLabel.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: 8).isActive = true
        trackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        trackLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        albumLabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor, constant: 8).isActive = true
        albumLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        albumLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        playButton.topAnchor.constraint(equalTo: albumLabel.bottomAnchor, constant: 8).isActive = true
        playButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 8).isActive = true
//
        progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor,constant: 8).isActive = true

        previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        previewEndLabel.leadingAnchor.constraint(equalTo: progressView.trailingAnchor, constant: 8).isActive = true
        previewEndLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        spotifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        spotifyButton.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 32).isActive = true
        spotifyButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        spotifyButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        spotifyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        
        
        
    }
    func makeImageVew(imageName:String)->UIImageView{
        let img_View = UIImageView()
        img_View.translatesAutoresizingMaskIntoConstraints = false
        img_View.contentMode = .scaleToFill
        img_View.backgroundColor = .black
        img_View.image = UIImage(named: imageName)
        img_View.setContentHuggingPriority(UILayoutPriority(rawValue: 249), for: .vertical)
        img_View.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 749), for: .vertical)
        return img_View
    }
    func makeLabel(withText text:String)->UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30)
        
        return label
    }
    func makeAlbumLabel(withText text:String)->UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textAlignment = .center
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 25)
        
        return label
    }
    func makePlayButton(withImage text:String)->UIButton{
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage.init(named: text), for: .normal)
        
        return button
        
    }
    func makePreviewLabel(withText text:String)->UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        return label
    }
    func makeProgressView()->UIProgressView{
        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.tintColor = .gray
        return progressView
    }
    func makeSpotifyButton(witText title:String)->UIButton{
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.minimumScaleFactor = 0.5
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.backgroundColor = UIColor.init(red: 73/256, green: 163/256, blue: 98/256, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = buttonHeight / 2
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: buttonHeight, bottom: 10, right: buttonHeight)
        
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSMutableAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 16),NSMutableAttributedString.Key.foregroundColor:UIColor.white,NSAttributedString.Key.kern:1])
        button.setAttributedTitle(attributedText, for: .normal)
        
        return button
    }
}

