//
//  Traits.swift
//  AccessibilityTraits
//
//  Created by Mikhail Rubanov on 24.06.2021.
//

import UIKit

let traits: [UIAccessibilityTraits: String] = [
    .none: "none",
    .button: "button",
    .link: "link",
    .image: "image",
    .selected: "selected",
    .playsSound: "plays sound",
    .keyboardKey: "keyboard key",
    .staticText: "static text",
    .summaryElement: "summary element",
    .notEnabled: "not enabled",
    .updatesFrequently: "updates frequently",
    .searchField: "search field",
    .startsMediaSession: "starts media session",
    .adjustable: "adjustable",
    .allowsDirectInteraction: "allows direct interaction",
    .causesPageTurn: "causes page turn",
    .tabBar: "tabBar",
    .header: "header"
]

let privateAPI = [
    19: "pickeritem",
    20: "radio button",
    23: "status bar item",
    25: "inactive",
    26: "footer",
    28: "tab",
    32: "visited",
    35: "tap and hold, then move up and down to select index",
    38: "draggable",
    39: "learning",
    40: "pop-up button",
    42: "maths",
    45: "hide from focus",
    50: "folder",
    52: "menu item",
    53: "double tap to toggle settings",
    59: "video playback",
    60: "icon",
]

//    let privateAPI = [
//        19: инструмент выбора
//        20: кнопка-переключатель
//        23: объект меню статуса
//        25: неактивный
//        26: нижнки колонтитул
//        28: вкладка
//        32: посещены
//        35: tap and hold, then move up and down to select index
//        38: draggable
//        39: learning
//        40: всплывающая кнопка. Коснитесь дважды для активации инструмента выбора
//        42: Математика
//        45: hide from focus
//        50: Папка
//        52: Пункт меню
//        53: double tap to toggle settings
//        59: video playback
//        60: Значок
//    ]
