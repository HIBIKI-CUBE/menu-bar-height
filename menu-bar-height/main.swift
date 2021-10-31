//
//  main.swift
//  menu-bar-height
//
//  Created by HIBIKI CUBE on 2021/10/31.
//

import AppKit

let screenHeight = NSScreen.main?.frame.height ?? 0
let screenHeightNative = (CGDisplayCopyAllDisplayModes(CGMainDisplayID(), nil) as? [CGDisplayMode] ?? [])[0].height

print(Int((NSStatusBar.system.thickness * CGFloat(screenHeightNative) / screenHeight).rounded()))
