//
//  ViewController.swift
//  Pokedex
//
//  Created by Dicka Reynaldi on 10/09/24.
//

import UIKit

class ViewController: UIViewController {

    private var pokemonListButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Pokemon List", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(pokemonListButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private var myPokemonListButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("My Pokemon List", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(myPokemonListButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }

    private func setupUI() {
        view.backgroundColor = .white
        
        view.addSubview(pokemonListButton)
        NSLayoutConstraint.activate([
            pokemonListButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 48),
            pokemonListButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            pokemonListButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            pokemonListButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(myPokemonListButton)
        NSLayoutConstraint.activate([
            myPokemonListButton.topAnchor.constraint(equalTo: pokemonListButton.bottomAnchor, constant: 32),
            myPokemonListButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            myPokemonListButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            myPokemonListButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }

    @objc private func pokemonListButtonTapped() {
        print("Pokemon List button tapped")
        // Navigate to Pokemon List Page or perform other actions
    }

    // Action for My Pokemon List Button
    @objc private func myPokemonListButtonTapped() {
        print("My Pokemon List button tapped")
        // Navigate to My Pokemon List Page or perform other actions
    }
}

