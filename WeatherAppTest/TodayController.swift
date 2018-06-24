//
//  ViewController.swift
//  WeatherAppTest
//
//  Created by Андрей Гончаров on 20/06/2018.
//  Copyright © 2018 Goncharov Andrei. All rights reserved.
//

import UIKit

class TodayController: UIViewController, UISearchBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        view.addSubview(searchBar)
        view.addSubview(temperatureConditionImage)
        view.addSubview(cityLabel)
        view.addSubview(temperatureConditionTextLabel)
        view.addSubview(temperatureLabel)
        view.addSubview(humidityImage)
        view.addSubview(precipitationImage)
        view.addSubview(pressureImage)
        view.addSubview(humidityLabel)
        view.addSubview(precipitationLabel)
        view.addSubview(pressureLabel)
        view.addSubview(windImage)
        view.addSubview(windDirectionImage)
        view.addSubview(windLabel)
        view.addSubview(windDirectionLabel)
        view.addSubview(separatorImagesView)
        view.addSubview(separatorTemperatureView)
        view.addSubview(separatorTemperatureTextView)
        view.addSubview(separatorSearchBar)
        view.addSubview(resetButton)
        setupSearchBar()
        setupTemperatureConditionImage()
        setupCityLabel()
        setupTemperatureLabel()
        setupTemperatureConditionTextLabel()
        setupHumidityImage()
        setupPrecipitationImage()
        setupPressureImage()
        setupHumidityLabel()
        setupPrecipitationLabel()
        setupPressureLabel()
        setupWindImage()
        setupWindDirectionImage()
        setupWindLabel()
        setupWindDirectionLabel()
        setupSeparatorTemperatureView()
        setupSeparatorImagesView()
        setupSeparatorTemperatureTextView()
        setupSeparatorSearchBar()
        setupResetButton()
    }
        
    let searchBar: UISearchBar = {
        let searchB = UISearchBar()
        searchB.translatesAutoresizingMaskIntoConstraints = false
        searchB.searchBarStyle = .minimal
        searchB.clearsContextBeforeDrawing = true
        searchB.placeholder = "Enter city..."
        searchB.sizeToFit()
        return searchB
    }()
    
    let separatorSearchBar: UIImageView = {
        let separatorS = UIImageView()
        separatorS.image = UIImage(named: "2px Line")
        separatorS.translatesAutoresizingMaskIntoConstraints = false
        return separatorS
    }()
    
    let resetButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 47/255, green: 145/255, blue: 255/255, alpha: 1)
        button.tintColor = UIColor.white
        button.setTitle("clear", for: .normal)
        button.addTarget(self, action: #selector(handleResetButton), for: .touchUpInside)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isHidden = true
        return button
    }()

    @objc func handleResetButton() {
        searchBar.text = ""
        cityLabel.isHidden = true
        temperatureConditionImage.isHidden = true
        temperatureLabel.isHidden = true
        temperatureConditionTextLabel.isHidden = true
        windLabel.isHidden = true
        windDirectionLabel.isHidden = true
        humidityLabel.isHidden = true
        pressureLabel.isHidden = true
        precipitationLabel.isHidden = true
        separatorTemperatureTextView.isHidden = true
    }
    
    let temperatureConditionImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.isHidden = false
        return image
    }()
        
    let cityLabel: UILabel = {
        let city = UILabel()
        city.textAlignment = .center
        city.adjustsFontSizeToFitWidth = true
        city.textColor = UIColor.black
        city.font = UIFont.systemFont(ofSize: 28)
        city.translatesAutoresizingMaskIntoConstraints = false
        city.isHidden = true
        return city
    }()
        
    let temperatureLabel: UILabel = {
        let temperature = UILabel()
        temperature.textAlignment = .center
        temperature.textColor = UIColor(red: 47/255, green: 145/255, blue: 255/255, alpha: 1)
        temperature.adjustsFontSizeToFitWidth = true
        temperature.font = UIFont(name: "ProximaNova-Semibold", size: 24)
        temperature.translatesAutoresizingMaskIntoConstraints = false
        temperature.isHidden = true
        return temperature
    }()
    let temperatureConditionTextLabel: UILabel = {
        let condition = UILabel()
        condition.adjustsFontSizeToFitWidth = true
        condition.textColor = UIColor.black
        condition.textAlignment = .center
        condition.textColor = UIColor(red: 47/255, green: 145/255, blue: 255/255, alpha: 1)
        condition.font = UIFont(name: "ProximaNova-Semibold", size: 24)
        condition.adjustsFontSizeToFitWidth = true
        condition.translatesAutoresizingMaskIntoConstraints = false
        condition.isHidden = true
        return condition
    }()
    
    let humidityLabel: UILabel = {
        let humidity = UILabel()
        humidity.textAlignment = .center
        humidity.font = UIFont(name: "ProximaNova-Semibold", size: 16)
        humidity.translatesAutoresizingMaskIntoConstraints = false
        humidity.isHidden = true
        return humidity
    }()
    
    let humidityImage: UIImageView = {
        let humidityI = UIImageView()
        humidityI.image = UIImage(named: "30x30 Humidity (Other)")
        humidityI.translatesAutoresizingMaskIntoConstraints = false
        return humidityI
    }()
    
    let precipitationLabel: UILabel = {
        let precipitation = UILabel()
        precipitation.textAlignment = .center
        precipitation.font = UIFont(name: "ProximaNova-Semibold", size: 16)
        precipitation.translatesAutoresizingMaskIntoConstraints = false
        precipitation.isHidden = true
        return precipitation
    }()
    
    let precipitationImage: UIImageView = {
        let precipitationI = UIImageView()
        precipitationI.image = UIImage(named: "30x30 Precipitation (Other)")
        precipitationI.translatesAutoresizingMaskIntoConstraints = false
        return precipitationI
    }()
    
    let pressureLabel: UILabel = {
        let pressure = UILabel()
        pressure.textAlignment = .center
        pressure.font = UIFont(name: "ProximaNova-Semibold", size: 16)
        pressure.translatesAutoresizingMaskIntoConstraints = false
        pressure.isHidden = true
        return pressure
    }()
    
    let pressureImage: UIImageView = {
        let pressureI = UIImageView()
        pressureI.image = UIImage(named: "30x30 Pressure (Other)")
        pressureI.translatesAutoresizingMaskIntoConstraints = false
        return pressureI
    }()
    
    let windLabel: UILabel = {
        let wind = UILabel()
        wind.textAlignment = .center
        wind.font = UIFont(name: "ProximaNova-Semibold", size: 16)
        wind.translatesAutoresizingMaskIntoConstraints = false
        wind.isHidden = true
        return wind
    }()
    
    let windImage: UIImageView = {
        let windI = UIImageView()
        windI.image = UIImage(named: "30x30 Wind (Other)")
        windI.translatesAutoresizingMaskIntoConstraints = false
        return windI
    }()
    
    let windDirectionLabel: UILabel = {
        let windDirection = UILabel()
        windDirection.textAlignment = .center
        windDirection.font = UIFont(name: "ProximaNova-Semibold", size: 16)
        windDirection.translatesAutoresizingMaskIntoConstraints = false
        windDirection.isHidden = true
        return windDirection
    }()
    
    let windDirectionImage: UIImageView = {
        let windDirectionI = UIImageView()
        windDirectionI.image = UIImage(named: "30x30 Wind Direction (Other)")
        windDirectionI.translatesAutoresizingMaskIntoConstraints = false
        return windDirectionI
    }()
    // two gray lines
    let separatorTemperatureView: UIView = {
        let separatorV = UIView()
        separatorV.backgroundColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1)
        separatorV.translatesAutoresizingMaskIntoConstraints = false
        return separatorV
    }()
    
    let separatorImagesView: UIView = {
        let separatorI = UIView()
        separatorI.backgroundColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1)
        separatorI.translatesAutoresizingMaskIntoConstraints = false
        return separatorI
    }()
    // blue line
    let separatorTemperatureTextView: UIView = {
        let separatorT = UIView()
        separatorT.backgroundColor = UIColor(red: 47/255, green: 145/255, blue: 255/255, alpha: 1)
        separatorT.translatesAutoresizingMaskIntoConstraints = false
        separatorT.isHidden = true
        return separatorT
    }()
    
    func setupSearchBar() {
        searchBar.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        searchBar.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 22).isActive = true
        searchBar.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        searchBar.heightAnchor.constraint(equalToConstant: 47).isActive = true
    }
    
    func setupTemperatureConditionImage() {
        temperatureConditionImage.centerXAnchor.constraint(equalTo: searchBar.centerXAnchor).isActive = true
        temperatureConditionImage.centerYAnchor.constraint(equalTo: searchBar.centerYAnchor, constant: 80).isActive = true
        temperatureConditionImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        temperatureConditionImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func setupCityLabel() {
        cityLabel.centerXAnchor.constraint(equalTo: temperatureConditionImage.centerXAnchor).isActive = true
        cityLabel.centerYAnchor.constraint(equalTo: temperatureConditionImage.centerYAnchor, constant: 80).isActive = true
        cityLabel.widthAnchor.constraint(equalToConstant: 140).isActive = true
        cityLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func setupTemperatureLabel() {
        temperatureLabel.centerXAnchor.constraint(equalTo: cityLabel.centerXAnchor, constant: -40).isActive = true
        temperatureLabel.centerYAnchor.constraint(equalTo: cityLabel.centerYAnchor, constant: 60).isActive = true
        temperatureLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        temperatureLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func setupTemperatureConditionTextLabel() {
        temperatureConditionTextLabel.centerXAnchor.constraint(equalTo: separatorTemperatureTextView.centerXAnchor, constant: 70).isActive = true
        temperatureConditionTextLabel.centerYAnchor.constraint(equalTo: cityLabel.centerYAnchor, constant: 60).isActive = true
        temperatureConditionTextLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        temperatureConditionTextLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func setupHumidityImage() {
        humidityImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        humidityImage.centerYAnchor.constraint(equalTo: temperatureConditionTextLabel.centerYAnchor, constant: 120).isActive = true
        humidityImage.widthAnchor.constraint(equalToConstant: 45).isActive = true
        humidityImage.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    func setupPrecipitationImage() {
        precipitationImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -120).isActive = true
        precipitationImage.centerYAnchor.constraint(equalTo: temperatureConditionTextLabel.centerYAnchor, constant: 120).isActive = true
        precipitationImage.widthAnchor.constraint(equalToConstant: 45).isActive = true
        precipitationImage.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    func setupPressureImage() {
        pressureImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 120).isActive = true
        pressureImage.centerYAnchor.constraint(equalTo: self.temperatureConditionTextLabel.centerYAnchor, constant: 120).isActive = true
        pressureImage.widthAnchor.constraint(equalToConstant: 45).isActive = true
        pressureImage.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    func setupHumidityLabel() {
        humidityLabel.centerXAnchor.constraint(equalTo: humidityImage.centerXAnchor).isActive = true
        humidityLabel.centerYAnchor.constraint(equalTo: humidityImage.centerYAnchor, constant: 35).isActive = true
        humidityLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        humidityLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    func setupPrecipitationLabel() {
        precipitationLabel.centerXAnchor.constraint(equalTo: precipitationImage.centerXAnchor).isActive = true
        precipitationLabel.centerYAnchor.constraint(equalTo: pressureImage.centerYAnchor, constant: 35).isActive = true
        precipitationLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        precipitationLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    func setupPressureLabel() {
        pressureLabel.centerXAnchor.constraint(equalTo: pressureImage.centerXAnchor).isActive = true
        pressureLabel.centerYAnchor.constraint(equalTo: pressureImage.centerYAnchor, constant: 35).isActive = true
        pressureLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        pressureLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    func setupWindImage() {
        windImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 70).isActive = true
        windImage.centerYAnchor.constraint(equalTo: self.temperatureConditionTextLabel.centerYAnchor, constant: 220).isActive = true
        windImage.widthAnchor.constraint(equalToConstant: 45).isActive = true
        windImage.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    func setupWindDirectionImage() {
        windDirectionImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -70).isActive = true
        windDirectionImage.centerYAnchor.constraint(equalTo: self.temperatureConditionTextLabel.centerYAnchor, constant: 220).isActive = true
        windDirectionImage.widthAnchor.constraint(equalToConstant: 45).isActive = true
        windDirectionImage.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    func setupWindLabel() {
        windLabel.centerXAnchor.constraint(equalTo: windImage.centerXAnchor).isActive = true
        windLabel.centerYAnchor.constraint(equalTo: windImage.centerYAnchor, constant: 35).isActive = true
        windLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        windLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    func setupWindDirectionLabel() {
        windDirectionLabel.centerXAnchor.constraint(equalTo: windDirectionImage.centerXAnchor).isActive = true
        windDirectionLabel.centerYAnchor.constraint(equalTo: windDirectionImage.centerYAnchor, constant: 35).isActive = true
        windDirectionLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        windDirectionLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    func setupSeparatorTemperatureView() {
        separatorTemperatureView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        separatorTemperatureView.centerYAnchor.constraint(equalTo: cityLabel.centerYAnchor, constant: 120).isActive = true
        separatorTemperatureView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        separatorTemperatureView.heightAnchor.constraint(equalToConstant: 2).isActive = true
    }

    func setupSeparatorImagesView() {
        separatorImagesView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        separatorImagesView.centerYAnchor.constraint(equalTo: cityLabel.centerYAnchor, constant: 360).isActive = true
        separatorImagesView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        separatorImagesView.heightAnchor.constraint(equalToConstant: 2).isActive = true
    }
    
    func setupSeparatorTemperatureTextView() {
        separatorTemperatureTextView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        separatorTemperatureTextView.centerYAnchor.constraint(equalTo: self.cityLabel.centerYAnchor, constant: 60).isActive = true
        separatorTemperatureTextView.widthAnchor.constraint(equalToConstant: 2).isActive = true
        separatorTemperatureTextView.heightAnchor.constraint(equalToConstant: 21).isActive = true
    }
    
    func setupSeparatorSearchBar() {
        separatorSearchBar.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        separatorSearchBar.centerYAnchor.constraint(equalTo: self.searchBar.centerYAnchor, constant: 18).isActive = true
        separatorSearchBar.widthAnchor.constraint(equalToConstant: 386).isActive = true
        separatorSearchBar.heightAnchor.constraint(equalToConstant: 2).isActive = true
    }


    func setupResetButton() {
        resetButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        resetButton.centerYAnchor.constraint(equalTo: self.separatorImagesView.centerYAnchor, constant: 50).isActive = true
        resetButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        resetButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        cityLabel.isHidden = false
        temperatureLabel.isHidden = false
        temperatureConditionTextLabel.isHidden = false
        humidityLabel.isHidden = false
        humidityImage.isHidden = false
        precipitationLabel.isHidden = false
        precipitationImage.isHidden = false
        pressureLabel.isHidden = false
        pressureImage.isHidden = false
        windLabel.isHidden = false
        windImage.isHidden = false
        windDirectionLabel.isHidden = false
        windDirectionImage.isHidden = false
        separatorImagesView.isHidden = false
        separatorTemperatureView.isHidden = false
        separatorTemperatureTextView.isHidden = false
        resetButton.isHidden = false
        temperatureConditionImage.isHidden = false
        separatorTemperatureTextView.isHidden = false
        
        var cityLabelText: String?
        var temperatureLabelText: Double?
        var temperatureConditionText: String?
        var pressureText: Double?
        var humidityText: Double?
        var precipitationText: Double?
        var windText: Double?
        var windDirectionText: Double?
        var countryLabelText: String?
        var errorOccured: Bool = false
        
        let urlString = "http://api.openweathermap.org/data/2.5/weather?q=\(searchBar.text!)&appid=ca009f18119ab7014ef153be26ca940b&units=metric"
        let url = URL(string: urlString)
        let task = URLSession.shared.dataTask(with: url!) {[weak self] (data, response, error) in
                do {
                    let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! [String: AnyObject]
                    
                    if let _ = json["error"] {
                        errorOccured = true
                    } else {
                    if let name = json["name"] as? String  {
                        cityLabelText = name
                    }
                        
                    if let weather = json["weather"] as? [[String:Any]]   {
                        if let description = weather[0]["description"] as? String {
                            temperatureConditionText = description
                        }
                    }
                        
                    if let main = json["main"] as? [String: AnyObject]   {
                        if let temp = main["temp"] as? Double {
                            temperatureLabelText = temp
                        }
                    }
                        
                    if let main = json["main"] as? [String: AnyObject] {
                        if let pressure = main["pressure"] as? Double {
                            pressureText = pressure
                        }
                    }
                        
                    if let main = json["main"] as? [String: AnyObject] {
                        if let humidity = main["humidity"] as? Double {
                            humidityText = humidity
                        }
                    }
                        
                    if let main = json["clouds"] as? [String: AnyObject] {
                        if let precipitation = main["all"] as? Double {
                            precipitationText = precipitation
                        }
                    }
                        
                    if let wind = json["wind"] as? [String: AnyObject] {
                        if let speed = wind["speed"] as? Double {
                            windText = speed
                        }
                    }
                        
                    if let windD = json["wind"] as? [String: AnyObject] {
                        if let windDirection = windD["deg"] as? Double {
                            windDirectionText = windDirection
                        }
                    }
                        
                    if let sys = json["sys"] as? [String: AnyObject]   {
                        if let country = sys["country"] as? String {
                            countryLabelText = country
                        }
                    }
                        
                }
            DispatchQueue.main.async {
                if errorOccured == true {
                    print(error!)
                } else {
                    self?.cityLabel.text = "\(cityLabelText!)" + ", " + "\(countryLabelText!)"
                    self?.temperatureLabel.text = "\(temperatureLabelText!) ˚"
                    self?.temperatureConditionTextLabel.text = temperatureConditionText
                    self?.pressureLabel.text = "\(pressureText!) hPa"
                    self?.humidityLabel.text = "\(humidityText!) %"
                    self?.precipitationLabel.text = "\(precipitationText!) mm"
                    self?.windLabel.text = "\(windText!) km/h"
                    self?.windDirectionLabel.text = "\(windDirectionText!) d"
                    
                    switch temperatureConditionText! {
                    case "clear sky":
                        self?.temperatureConditionImage.image = UIImage(named: "60x60 Clear Sky (Day)")
                    case "broken clouds":
                        self?.temperatureConditionImage.image = UIImage(named: "60x60 Broken Clouds (Day)")
                    case "clear sky":
                        self?.temperatureConditionImage.image = UIImage(named: "60x60 Clear Sky (Day)")
                    case "few clouds":
                        self?.temperatureConditionImage.image = UIImage(named: "60x60 Few Clouds (Day)")
                    case "mist":
                        self?.temperatureConditionImage.image = UIImage(named: "60x60 Mist (Day)")
                    case "rain":
                        self?.temperatureConditionImage.image = UIImage(named: "60x60 Rain (Day)")
                    case "scattered clouds":
                        self?.temperatureConditionImage.image = UIImage(named: "60x60 Scattered Clouds (Day)")
                    case "shower rain":
                        self?.temperatureConditionImage.image = UIImage(named: "60x60 Shower Rain (Day)")
                    case "snow":
                        self?.temperatureConditionImage.image = UIImage(named: "60x60 Snow (Day)")
                    case "thunderstorm":
                        self?.temperatureConditionImage.image = UIImage(named: "60x60 Thunderstorm (Day)")
                        
                    default:
                        self?.temperatureConditionImage.image = UIImage(named: "100x100 Clear Sky (Day)")
                    }
                }
            }
        }
        catch let error {
            print(error)
        }
    }
    task.resume()
}
    
}


