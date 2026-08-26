//
//  MChannel.swift
//  pusher_client
//
//  Created by Romario Chinloy on 10/26/20.
//

import Foundation
import Flutter

protocol MChannel {
    func register(messenger: FlutterBinaryMessenger) -> Void
}
