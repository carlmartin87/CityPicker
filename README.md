![](http://livectlab.com/git/CityPicker/head.png)

[![Language](https://img.shields.io/badge/Language-%20Swift%202.0%20-orange.svg)](http://cocoapods.org/pods/CityPicker)
[![CI Status](http://img.shields.io/travis/salvonos/CityPicker.svg?style=flat)](https://travis-ci.org/salvonos/CityPicker)
[![Version](https://img.shields.io/cocoapods/v/CityPicker.svg?style=flat)](http://cocoapods.org/pods/CityPicker)
[![Mit License](https://img.shields.io/github/license/mashape/apistatus.svg)](http://cocoapods.org/pods/CityPicker)
[![Platform](https://img.shields.io/cocoapods/p/CityPicker.svg?style=flat)](http://cocoapods.org/pods/CityPicker)

## Requirements
```
Swift 2.0
iOS 8.0 +
```

# Installation with CocoaPods

[CocoaPods](https://cocoapods.org/) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like CityPicker in your projects. See the [Get Started section](https://cocoapods.org/#get_started) for more details.

## Podfile

```
use_frameworks!

pod "CityPicker"
```

If you like to live on the bleeding edge, you can use the `master` branch with:

```
pod 'CityPicker', :git => 'https://github.com/salvonos/CityPicker'
```

### Manually

1. Clone, add as a submodule or download
2. Add all the files under `Classes` to your project.
3. Enjoy.

# Usage

#### Copy the [``` countriesToCities.json ```](https://github.com/David-Haim/CountriesToCitiesJSON) file into the CityPicker Pods Bundle Resources.

1) Select Pods from the Project Navigator

2) Select Target CityPicker 

3) Select tab `` Build Phases `` 

4) In ` Copy Bundle Resources ` import the json file ``` countriesToCities.json ``` from resorces folder

> ###### !!You must repeat these steps every time a pod is installed or updated
![](http://livectlab.com/git/CityPicker/bundle.png)
---

#### Import CityPicker in proper place.

```
import CityPicker
```

**CityPicker** is designed to be extremely easy to use. First create an instance of class `CityPickerViewController`, and then call it whenever you need it.

```
let cityPicker = CityPickerViewController()
```

```
@IBAction func showCityPicker(sender: AnyObject) {
        
        self.cityPicker.showCityPicker(self, backgroundColor: UIColor.clearColor(), blurView_hidden: false)
}
```

### Delegate ###

The Delegate has 3 required functions. First add the `CityPickerViewControllerDelegate` in your class and you are ready to receive the selected values in your own class.

##### CityPickerDidSelectRow:

```
func CityPickerDidSelectRow(nation: String, city: String) {
        print("\(nation), \(city)")
    }
```

##### CityPickerDidPressedCancelButton:

```
func CityPickerDidPressedCancelButton() {
        print("canceled")
    }
```

##### CityPickerDidPressedSelectButton

```
func CityPickerDidPressedSelectButton(CityPicker: CityPickerViewController, nation: String, city: String) {
        cityLabel.text = "\(city), \(nation)"
    }
```

## Author

Salvo Nostrato, info@salvonostrato.com

## License

CityPicker is available under the MIT license. See the LICENSE file for more info.

