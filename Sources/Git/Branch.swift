//
//  Branch.swift
//  Git
//
//  Created by devedbox on 2019/3/13.
//

import Foundation

public protocol BranchRepresentable {
  /// Returns the name of the branch.
  var name: String { get }
}

public final class Branch {
  private let _name: String
  
  public init(name: String) {
    _name = name
  }
}

extension Branch: BranchRepresentable {
  public var name: String {
    return _name
  }
}
