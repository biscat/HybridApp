//
//  FMScreenOrientationDelegate.swift
//  FMHybridApp
//
//  Created by William Wong on 17/11/2015.
//  Copyright © 2015 Fleetmatics. All rights reserved.
//

import Foundation
import UIKit

protocol FMScreenOrientationDelegate {
    func supoortedInterfaceOrientation()
    func shouldAutorotateToInterfaceOrientation(interfaceOrientation : UIInterfaceOrientation) -> Bool
    func shouldAutorotate() -> Bool
}