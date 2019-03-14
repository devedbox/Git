//
//  Repository.swift
//  Git
//
//  Created by devedbox on 2019/3/13.
//

import Foundation
import Files

// MARK: - Repository.

public protocol RepositoryRepresentable {
  
}

// MARK: - LocalRepository.

internal final class LocalRepository: RepositoryRepresentable {
  private let folder: Folder
  
  /// Creates a local repository instance of `LocalRepository` with the given local
  /// path.
  ///
  /// - Parameter path: The local path where the repository locate at.
  internal init(
    path: String) throws
  {
    self.folder = try Folder(path: path)
  }
}

extension LocalRepository {
  /// Returns a local repository instance of `LocalRepository` with the given local
  /// path.
  ///
  /// - Parameter path: The local path where the repository locate at.
  public static func at(_ path: String) throws -> Self {
    return try self.init(path: path)
  }
}

// MARK: - RemoteRepository.

internal final class RemoteRepository: RepositoryRepresentable {
  
}
