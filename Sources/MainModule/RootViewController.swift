//
//  RootViewController.swift
//  
//
//  Created by Toshiharu Imaeda on 2023/06/04.
//

import UIKit

public class RootViewController: UIViewController {
    @IBOutlet weak var button: UIButton!

    public override func viewDidLoad() {
        super.viewDidLoad()
//        setup()
        setupTransformer()
    }

    public static func instantiate() -> RootViewController {
        RootViewController(nibName: String(describing: RootViewController.self), bundle: Bundle.module)
    }

    private func setup() {
        button.setTitle("ボタン", for: .normal)

        var config = UIButton.Configuration.filled()
        config.imagePadding = 8
        config.image = UIImage(systemName: "pencil.slash")
        config.imagePlacement = .leading
        config.contentInsets = .init(top: 8, leading: 32, bottom: 8, trailing: 32)
        config.baseBackgroundColor = .lightGray

        var backgroundConfig = UIBackgroundConfiguration.clear()
        backgroundConfig.strokeColor = .black
        backgroundConfig.strokeWidth = 1.0
        backgroundConfig.cornerRadius = 5

        config.background = backgroundConfig

        button.configuration = config
    }

    private func setupTransformer() {
        button.setTitle("ボタン", for: .normal)

        var config = UIButton.Configuration.filled()
        config.imagePadding = 8
        config.image = UIImage(systemName: "pencil.slash")
        config.imagePlacement = .leading
        config.contentInsets = .init(top: 8, leading: 32, bottom: 8, trailing: 32)
        config.baseBackgroundColor = .lightGray

        config.imageColorTransformer = .init({ [weak self] _ in
            guard let self else { return .clear }
            switch button.state {
            case .highlighted: return .yellow
            default: return .tintColor
            }
        })

        var backgroundConfig = UIBackgroundConfiguration.clear()
        backgroundConfig.strokeColor = .black
        backgroundConfig.strokeWidth = 1.0
        backgroundConfig.cornerRadius = 5

        config.background = backgroundConfig

        button.configuration = config

    }

}
