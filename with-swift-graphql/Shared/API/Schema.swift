// This file was auto-generated using maticzav/swift-graphql. DO NOT EDIT MANUALLY!

import SwiftGraphQL

// MARK: - Operations

enum Operations {}
extension Objects.Query: GraphQLHttpOperation {
    static var operation: String { "query" }
}

extension Objects.Mutation: GraphQLHttpOperation {
    static var operation: String { "mutation" }
}

// MARK: - Objects

enum Objects {}
extension Objects {
    struct Aggregate {
        let __typename: TypeName = .aggregate
        let count: [String: Int]

        enum TypeName: String, Codable {
            case aggregate = "Aggregate"
        }
    }
}

extension Objects.Aggregate: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "count":
                if let value = try container.decode(Int?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        count = map["count"]
    }
}

extension Fields where TypeLock == Objects.Aggregate {
    func count() throws -> Int {
        let field = GraphQLField.leaf(
            name: "count",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.count[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Int.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Aggregate<T> = Selection<T, Objects.Aggregate>
}

extension Objects {
    struct Asset {
        let __typename: TypeName = .asset
        let createdAt: [String: DateTimeScalar]
        let createdBy: [String: Objects.User]
        let documentInStages: [String: [Objects.Asset]]
        let fileName: [String: String]
        let handle: [String: String]
        let height: [String: Double]
        let history: [String: [Objects.Version]]
        let id: [String: String]
        let locale: [String: Enums.Locale]
        let localizations: [String: [Objects.Asset]]
        let mimeType: [String: String]
        let productImage: [String: [Objects.Product]]
        let publishedAt: [String: DateTimeScalar]
        let publishedBy: [String: Objects.User]
        let scheduledIn: [String: [Objects.ScheduledOperation]]
        let size: [String: Double]
        let stage: [String: Enums.Stage]
        let updatedAt: [String: DateTimeScalar]
        let updatedBy: [String: Objects.User]
        let url: [String: String]
        let width: [String: Double]

        enum TypeName: String, Codable {
            case asset = "Asset"
        }
    }
}

extension Objects.Asset: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "createdAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "documentInStages":
                if let value = try container.decode([Objects.Asset]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "fileName":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "handle":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "height":
                if let value = try container.decode(Double?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "history":
                if let value = try container.decode([Objects.Version]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "locale":
                if let value = try container.decode(Enums.Locale?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "localizations":
                if let value = try container.decode([Objects.Asset]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "mimeType":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "productImage":
                if let value = try container.decode([Objects.Product]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduledIn":
                if let value = try container.decode([Objects.ScheduledOperation]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "size":
                if let value = try container.decode(Double?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "stage":
                if let value = try container.decode(Enums.Stage?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "url":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "width":
                if let value = try container.decode(Double?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        createdAt = map["createdAt"]
        createdBy = map["createdBy"]
        documentInStages = map["documentInStages"]
        fileName = map["fileName"]
        handle = map["handle"]
        height = map["height"]
        history = map["history"]
        id = map["id"]
        locale = map["locale"]
        localizations = map["localizations"]
        mimeType = map["mimeType"]
        productImage = map["productImage"]
        publishedAt = map["publishedAt"]
        publishedBy = map["publishedBy"]
        scheduledIn = map["scheduledIn"]
        size = map["size"]
        stage = map["stage"]
        updatedAt = map["updatedAt"]
        updatedBy = map["updatedBy"]
        url = map["url"]
        width = map["width"]
    }
}

extension Fields where TypeLock == Objects.Asset {
    /// System stage field

    func stage() throws -> Enums.Stage {
        let field = GraphQLField.leaf(
            name: "stage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.stage[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.Stage.allCases.first!
        }
    }

    /// System Locale field

    func locale() throws -> Enums.Locale {
        let field = GraphQLField.leaf(
            name: "locale",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.locale[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.Locale.allCases.first!
        }
    }

    /// Get the other localizations for this document

    func localizations<Type>(locales: [Enums.Locale], includeCurrent: Bool, selection: Selection<Type, [Objects.Asset]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "localizations",
            arguments: [Argument(name: "locales", type: "[Locale!]!", value: locales), Argument(name: "includeCurrent", type: "Boolean!", value: includeCurrent)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.localizations[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Get the document in other stages

    func documentInStages<Type>(stages: [Enums.Stage], includeCurrent: Bool, inheritLocale: Bool, selection: Selection<Type, [Objects.Asset]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "documentInStages",
            arguments: [Argument(name: "stages", type: "[Stage!]!", value: stages), Argument(name: "includeCurrent", type: "Boolean!", value: includeCurrent), Argument(name: "inheritLocale", type: "Boolean!", value: inheritLocale)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.documentInStages[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// The unique identifier

    func id() throws -> String {
        let field = GraphQLField.leaf(
            name: "id",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.id[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// The time the document was created

    func createdAt(variation: Enums.SystemDateTimeFieldVariation) throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "createdAt",
            arguments: [Argument(name: "variation", type: "SystemDateTimeFieldVariation!", value: variation)]
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.createdAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was updated

    func updatedAt(variation: Enums.SystemDateTimeFieldVariation) throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "updatedAt",
            arguments: [Argument(name: "variation", type: "SystemDateTimeFieldVariation!", value: variation)]
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updatedAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was published. Null on documents in draft stage.

    func publishedAt(variation: Enums.SystemDateTimeFieldVariation) throws -> DateTimeScalar? {
        let field = GraphQLField.leaf(
            name: "publishedAt",
            arguments: [Argument(name: "variation", type: "SystemDateTimeFieldVariation!", value: variation)]
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.publishedAt[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// The file handle

    func handle() throws -> String {
        let field = GraphQLField.leaf(
            name: "handle",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.handle[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// The file name

    func fileName() throws -> String {
        let field = GraphQLField.leaf(
            name: "fileName",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.fileName[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// The height of the file

    func height() throws -> Double? {
        let field = GraphQLField.leaf(
            name: "height",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.height[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// The file width

    func width() throws -> Double? {
        let field = GraphQLField.leaf(
            name: "width",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.width[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// The file size

    func size() throws -> Double? {
        let field = GraphQLField.leaf(
            name: "size",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.size[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// The mime type of the file

    func mimeType() throws -> String? {
        let field = GraphQLField.leaf(
            name: "mimeType",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.mimeType[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// User that created this document

    func createdBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createdBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createdBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last updated this document

    func updatedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updatedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updatedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last published this document

    func publishedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.publishedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    func productImage<Type>(where: OptionalArgument<InputObjects.ProductWhereInput> = .absent(), orderBy: OptionalArgument<Enums.ProductOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, [Objects.Product]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "productImage",
            arguments: [Argument(name: "where", type: "ProductWhereInput", value: `where`), Argument(name: "orderBy", type: "ProductOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.productImage[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    func scheduledIn<Type>(where: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, [Objects.ScheduledOperation]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduledIn",
            arguments: [Argument(name: "where", type: "ScheduledOperationWhereInput", value: `where`), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.scheduledIn[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// List of Asset versions

    func history<Type>(limit: Int, skip: Int, stageOverride: OptionalArgument<Enums.Stage> = .absent(), selection: Selection<Type, [Objects.Version]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "history",
            arguments: [Argument(name: "limit", type: "Int!", value: limit), Argument(name: "skip", type: "Int!", value: skip), Argument(name: "stageOverride", type: "Stage", value: stageOverride)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.history[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Get the url for the asset with provided transformations applied.

    func url(transformation: OptionalArgument<InputObjects.AssetTransformationInput> = .absent()) throws -> String {
        let field = GraphQLField.leaf(
            name: "url",
            arguments: [Argument(name: "transformation", type: "AssetTransformationInput", value: transformation)]
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.url[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Asset<T> = Selection<T, Objects.Asset>
}

extension Objects {
    struct AssetConnection {
        let __typename: TypeName = .assetConnection
        let aggregate: [String: Objects.Aggregate]
        let edges: [String: [Objects.AssetEdge]]
        let pageInfo: [String: Objects.PageInfo]

        enum TypeName: String, Codable {
            case assetConnection = "AssetConnection"
        }
    }
}

extension Objects.AssetConnection: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "aggregate":
                if let value = try container.decode(Objects.Aggregate?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "edges":
                if let value = try container.decode([Objects.AssetEdge]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "pageInfo":
                if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        aggregate = map["aggregate"]
        edges = map["edges"]
        pageInfo = map["pageInfo"]
    }
}

extension Fields where TypeLock == Objects.AssetConnection {
    /// Information to aid in pagination.

    func pageInfo<Type>(selection: Selection<Type, Objects.PageInfo>) throws -> Type {
        let field = GraphQLField.composite(
            name: "pageInfo",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.pageInfo[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A list of edges.

    func edges<Type>(selection: Selection<Type, [Objects.AssetEdge]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "edges",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.edges[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    func aggregate<Type>(selection: Selection<Type, Objects.Aggregate>) throws -> Type {
        let field = GraphQLField.composite(
            name: "aggregate",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.aggregate[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias AssetConnection<T> = Selection<T, Objects.AssetConnection>
}

extension Objects {
    struct AssetEdge {
        let __typename: TypeName = .assetEdge
        let cursor: [String: String]
        let node: [String: Objects.Asset]

        enum TypeName: String, Codable {
            case assetEdge = "AssetEdge"
        }
    }
}

extension Objects.AssetEdge: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "cursor":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "node":
                if let value = try container.decode(Objects.Asset?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        cursor = map["cursor"]
        node = map["node"]
    }
}

extension Fields where TypeLock == Objects.AssetEdge {
    /// The item at the end of the edge.

    func node<Type>(selection: Selection<Type, Objects.Asset>) throws -> Type {
        let field = GraphQLField.composite(
            name: "node",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.node[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A cursor for use in pagination.

    func cursor() throws -> String {
        let field = GraphQLField.leaf(
            name: "cursor",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.cursor[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias AssetEdge<T> = Selection<T, Objects.AssetEdge>
}

extension Objects {
    struct BatchPayload {
        let __typename: TypeName = .batchPayload
        let count: [String: Int]

        enum TypeName: String, Codable {
            case batchPayload = "BatchPayload"
        }
    }
}

extension Objects.BatchPayload: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "count":
                if let value = try container.decode(Int?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        count = map["count"]
    }
}

extension Fields where TypeLock == Objects.BatchPayload {
    /// The number of nodes that have been affected by the Batch operation.

    func count() throws -> Int {
        let field = GraphQLField.leaf(
            name: "count",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.count[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Int.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias BatchPayload<T> = Selection<T, Objects.BatchPayload>
}

extension Objects {
    struct Color {
        let __typename: TypeName = .color
        let css: [String: String]
        let hex: [String: String]
        let rgba: [String: Objects.Rgba]

        enum TypeName: String, Codable {
            case color = "Color"
        }
    }
}

extension Objects.Color: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "css":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "hex":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "rgba":
                if let value = try container.decode(Objects.Rgba?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        css = map["css"]
        hex = map["hex"]
        rgba = map["rgba"]
    }
}

extension Fields where TypeLock == Objects.Color {
    func hex() throws -> String {
        let field = GraphQLField.leaf(
            name: "hex",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.hex[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    func rgba<Type>(selection: Selection<Type, Objects.Rgba>) throws -> Type {
        let field = GraphQLField.composite(
            name: "rgba",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.rgba[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    func css() throws -> String {
        let field = GraphQLField.leaf(
            name: "css",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.css[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Color<T> = Selection<T, Objects.Color>
}

extension Objects {
    struct DocumentVersion {
        let __typename: TypeName = .documentVersion
        let createdAt: [String: DateTimeScalar]
        let data: [String: String]
        let id: [String: String]
        let revision: [String: Int]
        let stage: [String: Enums.Stage]

        enum TypeName: String, Codable {
            case documentVersion = "DocumentVersion"
        }
    }
}

extension Objects.DocumentVersion: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "createdAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "data":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "revision":
                if let value = try container.decode(Int?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "stage":
                if let value = try container.decode(Enums.Stage?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        createdAt = map["createdAt"]
        data = map["data"]
        id = map["id"]
        revision = map["revision"]
        stage = map["stage"]
    }
}

extension Fields where TypeLock == Objects.DocumentVersion {
    func id() throws -> String {
        let field = GraphQLField.leaf(
            name: "id",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.id[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    func stage() throws -> Enums.Stage {
        let field = GraphQLField.leaf(
            name: "stage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.stage[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.Stage.allCases.first!
        }
    }

    func revision() throws -> Int {
        let field = GraphQLField.leaf(
            name: "revision",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.revision[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Int.mockValue
        }
    }

    func createdAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "createdAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.createdAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    func data() throws -> String? {
        let field = GraphQLField.leaf(
            name: "data",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.data[field.alias!]
        case .mocking:
            return nil
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias DocumentVersion<T> = Selection<T, Objects.DocumentVersion>
}

extension Objects {
    struct Location {
        let __typename: TypeName = .location
        let distance: [String: Double]
        let latitude: [String: Double]
        let longitude: [String: Double]

        enum TypeName: String, Codable {
            case location = "Location"
        }
    }
}

extension Objects.Location: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "distance":
                if let value = try container.decode(Double?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "latitude":
                if let value = try container.decode(Double?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "longitude":
                if let value = try container.decode(Double?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        distance = map["distance"]
        latitude = map["latitude"]
        longitude = map["longitude"]
    }
}

extension Fields where TypeLock == Objects.Location {
    func latitude() throws -> Double {
        let field = GraphQLField.leaf(
            name: "latitude",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.latitude[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Double.mockValue
        }
    }

    func longitude() throws -> Double {
        let field = GraphQLField.leaf(
            name: "longitude",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.longitude[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Double.mockValue
        }
    }

    func distance(from: InputObjects.LocationInput) throws -> Double {
        let field = GraphQLField.leaf(
            name: "distance",
            arguments: [Argument(name: "from", type: "LocationInput!", value: from)]
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.distance[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Double.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Location<T> = Selection<T, Objects.Location>
}

extension Objects {
    struct Mutation {
        let __typename: TypeName = .mutation
        let createAsset: [String: Objects.Asset]
        let createNextAuthUser: [String: Objects.NextAuthUser]
        let createProduct: [String: Objects.Product]
        let createReview: [String: Objects.Review]
        let createScheduledRelease: [String: Objects.ScheduledRelease]
        let createVote: [String: Objects.Vote]
        let deleteAsset: [String: Objects.Asset]
        let deleteManyAssets: [String: Objects.BatchPayload]
        let deleteManyAssetsConnection: [String: Objects.AssetConnection]
        let deleteManyNextAuthUsers: [String: Objects.BatchPayload]
        let deleteManyNextAuthUsersConnection: [String: Objects.NextAuthUserConnection]
        let deleteManyProducts: [String: Objects.BatchPayload]
        let deleteManyProductsConnection: [String: Objects.ProductConnection]
        let deleteManyReviews: [String: Objects.BatchPayload]
        let deleteManyReviewsConnection: [String: Objects.ReviewConnection]
        let deleteManyVotes: [String: Objects.BatchPayload]
        let deleteManyVotesConnection: [String: Objects.VoteConnection]
        let deleteNextAuthUser: [String: Objects.NextAuthUser]
        let deleteProduct: [String: Objects.Product]
        let deleteReview: [String: Objects.Review]
        let deleteScheduledOperation: [String: Objects.ScheduledOperation]
        let deleteScheduledRelease: [String: Objects.ScheduledRelease]
        let deleteVote: [String: Objects.Vote]
        let publishAsset: [String: Objects.Asset]
        let publishManyAssets: [String: Objects.BatchPayload]
        let publishManyAssetsConnection: [String: Objects.AssetConnection]
        let publishManyNextAuthUsers: [String: Objects.BatchPayload]
        let publishManyNextAuthUsersConnection: [String: Objects.NextAuthUserConnection]
        let publishManyProducts: [String: Objects.BatchPayload]
        let publishManyProductsConnection: [String: Objects.ProductConnection]
        let publishManyReviews: [String: Objects.BatchPayload]
        let publishManyReviewsConnection: [String: Objects.ReviewConnection]
        let publishManyVotes: [String: Objects.BatchPayload]
        let publishManyVotesConnection: [String: Objects.VoteConnection]
        let publishNextAuthUser: [String: Objects.NextAuthUser]
        let publishProduct: [String: Objects.Product]
        let publishReview: [String: Objects.Review]
        let publishVote: [String: Objects.Vote]
        let schedulePublishAsset: [String: Objects.Asset]
        let schedulePublishNextAuthUser: [String: Objects.NextAuthUser]
        let schedulePublishProduct: [String: Objects.Product]
        let schedulePublishReview: [String: Objects.Review]
        let schedulePublishVote: [String: Objects.Vote]
        let scheduleUnpublishAsset: [String: Objects.Asset]
        let scheduleUnpublishNextAuthUser: [String: Objects.NextAuthUser]
        let scheduleUnpublishProduct: [String: Objects.Product]
        let scheduleUnpublishReview: [String: Objects.Review]
        let scheduleUnpublishVote: [String: Objects.Vote]
        let unpublishAsset: [String: Objects.Asset]
        let unpublishManyAssets: [String: Objects.BatchPayload]
        let unpublishManyAssetsConnection: [String: Objects.AssetConnection]
        let unpublishManyNextAuthUsers: [String: Objects.BatchPayload]
        let unpublishManyNextAuthUsersConnection: [String: Objects.NextAuthUserConnection]
        let unpublishManyProducts: [String: Objects.BatchPayload]
        let unpublishManyProductsConnection: [String: Objects.ProductConnection]
        let unpublishManyReviews: [String: Objects.BatchPayload]
        let unpublishManyReviewsConnection: [String: Objects.ReviewConnection]
        let unpublishManyVotes: [String: Objects.BatchPayload]
        let unpublishManyVotesConnection: [String: Objects.VoteConnection]
        let unpublishNextAuthUser: [String: Objects.NextAuthUser]
        let unpublishProduct: [String: Objects.Product]
        let unpublishReview: [String: Objects.Review]
        let unpublishVote: [String: Objects.Vote]
        let updateAsset: [String: Objects.Asset]
        let updateManyAssets: [String: Objects.BatchPayload]
        let updateManyAssetsConnection: [String: Objects.AssetConnection]
        let updateManyNextAuthUsers: [String: Objects.BatchPayload]
        let updateManyNextAuthUsersConnection: [String: Objects.NextAuthUserConnection]
        let updateManyProducts: [String: Objects.BatchPayload]
        let updateManyProductsConnection: [String: Objects.ProductConnection]
        let updateManyReviews: [String: Objects.BatchPayload]
        let updateManyReviewsConnection: [String: Objects.ReviewConnection]
        let updateManyVotes: [String: Objects.BatchPayload]
        let updateManyVotesConnection: [String: Objects.VoteConnection]
        let updateNextAuthUser: [String: Objects.NextAuthUser]
        let updateProduct: [String: Objects.Product]
        let updateReview: [String: Objects.Review]
        let updateScheduledRelease: [String: Objects.ScheduledRelease]
        let updateVote: [String: Objects.Vote]
        let upsertAsset: [String: Objects.Asset]
        let upsertNextAuthUser: [String: Objects.NextAuthUser]
        let upsertProduct: [String: Objects.Product]
        let upsertReview: [String: Objects.Review]
        let upsertVote: [String: Objects.Vote]

        enum TypeName: String, Codable {
            case mutation = "Mutation"
        }
    }
}

extension Objects.Mutation: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "createAsset":
                if let value = try container.decode(Objects.Asset?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createNextAuthUser":
                if let value = try container.decode(Objects.NextAuthUser?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createProduct":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createReview":
                if let value = try container.decode(Objects.Review?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createScheduledRelease":
                if let value = try container.decode(Objects.ScheduledRelease?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createVote":
                if let value = try container.decode(Objects.Vote?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteAsset":
                if let value = try container.decode(Objects.Asset?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteManyAssets":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteManyAssetsConnection":
                if let value = try container.decode(Objects.AssetConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteManyNextAuthUsers":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteManyNextAuthUsersConnection":
                if let value = try container.decode(Objects.NextAuthUserConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteManyProducts":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteManyProductsConnection":
                if let value = try container.decode(Objects.ProductConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteManyReviews":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteManyReviewsConnection":
                if let value = try container.decode(Objects.ReviewConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteManyVotes":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteManyVotesConnection":
                if let value = try container.decode(Objects.VoteConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteNextAuthUser":
                if let value = try container.decode(Objects.NextAuthUser?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteProduct":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteReview":
                if let value = try container.decode(Objects.Review?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteScheduledOperation":
                if let value = try container.decode(Objects.ScheduledOperation?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteScheduledRelease":
                if let value = try container.decode(Objects.ScheduledRelease?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "deleteVote":
                if let value = try container.decode(Objects.Vote?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishAsset":
                if let value = try container.decode(Objects.Asset?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishManyAssets":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishManyAssetsConnection":
                if let value = try container.decode(Objects.AssetConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishManyNextAuthUsers":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishManyNextAuthUsersConnection":
                if let value = try container.decode(Objects.NextAuthUserConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishManyProducts":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishManyProductsConnection":
                if let value = try container.decode(Objects.ProductConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishManyReviews":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishManyReviewsConnection":
                if let value = try container.decode(Objects.ReviewConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishManyVotes":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishManyVotesConnection":
                if let value = try container.decode(Objects.VoteConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishNextAuthUser":
                if let value = try container.decode(Objects.NextAuthUser?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishProduct":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishReview":
                if let value = try container.decode(Objects.Review?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishVote":
                if let value = try container.decode(Objects.Vote?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "schedulePublishAsset":
                if let value = try container.decode(Objects.Asset?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "schedulePublishNextAuthUser":
                if let value = try container.decode(Objects.NextAuthUser?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "schedulePublishProduct":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "schedulePublishReview":
                if let value = try container.decode(Objects.Review?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "schedulePublishVote":
                if let value = try container.decode(Objects.Vote?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduleUnpublishAsset":
                if let value = try container.decode(Objects.Asset?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduleUnpublishNextAuthUser":
                if let value = try container.decode(Objects.NextAuthUser?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduleUnpublishProduct":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduleUnpublishReview":
                if let value = try container.decode(Objects.Review?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduleUnpublishVote":
                if let value = try container.decode(Objects.Vote?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishAsset":
                if let value = try container.decode(Objects.Asset?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishManyAssets":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishManyAssetsConnection":
                if let value = try container.decode(Objects.AssetConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishManyNextAuthUsers":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishManyNextAuthUsersConnection":
                if let value = try container.decode(Objects.NextAuthUserConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishManyProducts":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishManyProductsConnection":
                if let value = try container.decode(Objects.ProductConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishManyReviews":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishManyReviewsConnection":
                if let value = try container.decode(Objects.ReviewConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishManyVotes":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishManyVotesConnection":
                if let value = try container.decode(Objects.VoteConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishNextAuthUser":
                if let value = try container.decode(Objects.NextAuthUser?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishProduct":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishReview":
                if let value = try container.decode(Objects.Review?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "unpublishVote":
                if let value = try container.decode(Objects.Vote?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateAsset":
                if let value = try container.decode(Objects.Asset?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateManyAssets":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateManyAssetsConnection":
                if let value = try container.decode(Objects.AssetConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateManyNextAuthUsers":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateManyNextAuthUsersConnection":
                if let value = try container.decode(Objects.NextAuthUserConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateManyProducts":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateManyProductsConnection":
                if let value = try container.decode(Objects.ProductConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateManyReviews":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateManyReviewsConnection":
                if let value = try container.decode(Objects.ReviewConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateManyVotes":
                if let value = try container.decode(Objects.BatchPayload?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateManyVotesConnection":
                if let value = try container.decode(Objects.VoteConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateNextAuthUser":
                if let value = try container.decode(Objects.NextAuthUser?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateProduct":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateReview":
                if let value = try container.decode(Objects.Review?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateScheduledRelease":
                if let value = try container.decode(Objects.ScheduledRelease?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateVote":
                if let value = try container.decode(Objects.Vote?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "upsertAsset":
                if let value = try container.decode(Objects.Asset?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "upsertNextAuthUser":
                if let value = try container.decode(Objects.NextAuthUser?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "upsertProduct":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "upsertReview":
                if let value = try container.decode(Objects.Review?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "upsertVote":
                if let value = try container.decode(Objects.Vote?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        createAsset = map["createAsset"]
        createNextAuthUser = map["createNextAuthUser"]
        createProduct = map["createProduct"]
        createReview = map["createReview"]
        createScheduledRelease = map["createScheduledRelease"]
        createVote = map["createVote"]
        deleteAsset = map["deleteAsset"]
        deleteManyAssets = map["deleteManyAssets"]
        deleteManyAssetsConnection = map["deleteManyAssetsConnection"]
        deleteManyNextAuthUsers = map["deleteManyNextAuthUsers"]
        deleteManyNextAuthUsersConnection = map["deleteManyNextAuthUsersConnection"]
        deleteManyProducts = map["deleteManyProducts"]
        deleteManyProductsConnection = map["deleteManyProductsConnection"]
        deleteManyReviews = map["deleteManyReviews"]
        deleteManyReviewsConnection = map["deleteManyReviewsConnection"]
        deleteManyVotes = map["deleteManyVotes"]
        deleteManyVotesConnection = map["deleteManyVotesConnection"]
        deleteNextAuthUser = map["deleteNextAuthUser"]
        deleteProduct = map["deleteProduct"]
        deleteReview = map["deleteReview"]
        deleteScheduledOperation = map["deleteScheduledOperation"]
        deleteScheduledRelease = map["deleteScheduledRelease"]
        deleteVote = map["deleteVote"]
        publishAsset = map["publishAsset"]
        publishManyAssets = map["publishManyAssets"]
        publishManyAssetsConnection = map["publishManyAssetsConnection"]
        publishManyNextAuthUsers = map["publishManyNextAuthUsers"]
        publishManyNextAuthUsersConnection = map["publishManyNextAuthUsersConnection"]
        publishManyProducts = map["publishManyProducts"]
        publishManyProductsConnection = map["publishManyProductsConnection"]
        publishManyReviews = map["publishManyReviews"]
        publishManyReviewsConnection = map["publishManyReviewsConnection"]
        publishManyVotes = map["publishManyVotes"]
        publishManyVotesConnection = map["publishManyVotesConnection"]
        publishNextAuthUser = map["publishNextAuthUser"]
        publishProduct = map["publishProduct"]
        publishReview = map["publishReview"]
        publishVote = map["publishVote"]
        schedulePublishAsset = map["schedulePublishAsset"]
        schedulePublishNextAuthUser = map["schedulePublishNextAuthUser"]
        schedulePublishProduct = map["schedulePublishProduct"]
        schedulePublishReview = map["schedulePublishReview"]
        schedulePublishVote = map["schedulePublishVote"]
        scheduleUnpublishAsset = map["scheduleUnpublishAsset"]
        scheduleUnpublishNextAuthUser = map["scheduleUnpublishNextAuthUser"]
        scheduleUnpublishProduct = map["scheduleUnpublishProduct"]
        scheduleUnpublishReview = map["scheduleUnpublishReview"]
        scheduleUnpublishVote = map["scheduleUnpublishVote"]
        unpublishAsset = map["unpublishAsset"]
        unpublishManyAssets = map["unpublishManyAssets"]
        unpublishManyAssetsConnection = map["unpublishManyAssetsConnection"]
        unpublishManyNextAuthUsers = map["unpublishManyNextAuthUsers"]
        unpublishManyNextAuthUsersConnection = map["unpublishManyNextAuthUsersConnection"]
        unpublishManyProducts = map["unpublishManyProducts"]
        unpublishManyProductsConnection = map["unpublishManyProductsConnection"]
        unpublishManyReviews = map["unpublishManyReviews"]
        unpublishManyReviewsConnection = map["unpublishManyReviewsConnection"]
        unpublishManyVotes = map["unpublishManyVotes"]
        unpublishManyVotesConnection = map["unpublishManyVotesConnection"]
        unpublishNextAuthUser = map["unpublishNextAuthUser"]
        unpublishProduct = map["unpublishProduct"]
        unpublishReview = map["unpublishReview"]
        unpublishVote = map["unpublishVote"]
        updateAsset = map["updateAsset"]
        updateManyAssets = map["updateManyAssets"]
        updateManyAssetsConnection = map["updateManyAssetsConnection"]
        updateManyNextAuthUsers = map["updateManyNextAuthUsers"]
        updateManyNextAuthUsersConnection = map["updateManyNextAuthUsersConnection"]
        updateManyProducts = map["updateManyProducts"]
        updateManyProductsConnection = map["updateManyProductsConnection"]
        updateManyReviews = map["updateManyReviews"]
        updateManyReviewsConnection = map["updateManyReviewsConnection"]
        updateManyVotes = map["updateManyVotes"]
        updateManyVotesConnection = map["updateManyVotesConnection"]
        updateNextAuthUser = map["updateNextAuthUser"]
        updateProduct = map["updateProduct"]
        updateReview = map["updateReview"]
        updateScheduledRelease = map["updateScheduledRelease"]
        updateVote = map["updateVote"]
        upsertAsset = map["upsertAsset"]
        upsertNextAuthUser = map["upsertNextAuthUser"]
        upsertProduct = map["upsertProduct"]
        upsertReview = map["upsertReview"]
        upsertVote = map["upsertVote"]
    }
}

extension Fields where TypeLock == Objects.Mutation {
    /// Create one product

    func createProduct<Type>(data: InputObjects.ProductCreateInput, selection: Selection<Type, Objects.Product?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createProduct",
            arguments: [Argument(name: "data", type: "ProductCreateInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createProduct[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Update one product

    func updateProduct<Type>(where: InputObjects.ProductWhereUniqueInput, data: InputObjects.ProductUpdateInput, selection: Selection<Type, Objects.Product?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateProduct",
            arguments: [Argument(name: "where", type: "ProductWhereUniqueInput!", value: `where`), Argument(name: "data", type: "ProductUpdateInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updateProduct[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete one product from _all_ existing stages. Returns deleted document.

    func deleteProduct<Type>(where: InputObjects.ProductWhereUniqueInput, selection: Selection<Type, Objects.Product?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteProduct",
            arguments: [Argument(name: "where", type: "ProductWhereUniqueInput!", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.deleteProduct[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Upsert one product

    func upsertProduct<Type>(where: InputObjects.ProductWhereUniqueInput, upsert: InputObjects.ProductUpsertInput, selection: Selection<Type, Objects.Product?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "upsertProduct",
            arguments: [Argument(name: "where", type: "ProductWhereUniqueInput!", value: `where`), Argument(name: "upsert", type: "ProductUpsertInput!", value: upsert)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.upsertProduct[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish one product

    func publishProduct<Type>(where: InputObjects.ProductWhereUniqueInput, locales: OptionalArgument<[Enums.Locale]> = .absent(), publishBase: OptionalArgument<Bool> = .absent(), withDefaultLocale: OptionalArgument<Bool> = .absent(), to: [Enums.Stage], selection: Selection<Type, Objects.Product?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishProduct",
            arguments: [Argument(name: "where", type: "ProductWhereUniqueInput!", value: `where`), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "publishBase", type: "Boolean", value: publishBase), Argument(name: "withDefaultLocale", type: "Boolean", value: withDefaultLocale), Argument(name: "to", type: "[Stage!]!", value: to)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.publishProduct[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish one product from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only.

    func unpublishProduct<Type>(where: InputObjects.ProductWhereUniqueInput, from: [Enums.Stage], locales: OptionalArgument<[Enums.Locale]> = .absent(), unpublishBase: OptionalArgument<Bool> = .absent(), selection: Selection<Type, Objects.Product?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishProduct",
            arguments: [Argument(name: "where", type: "ProductWhereUniqueInput!", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "unpublishBase", type: "Boolean", value: unpublishBase)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.unpublishProduct[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Update many Product documents

    func updateManyProductsConnection<Type>(where: OptionalArgument<InputObjects.ProductManyWhereInput> = .absent(), data: InputObjects.ProductUpdateManyInput, skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.ProductConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateManyProductsConnection",
            arguments: [Argument(name: "where", type: "ProductManyWhereInput", value: `where`), Argument(name: "data", type: "ProductUpdateManyInput!", value: data), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updateManyProductsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete many Product documents, return deleted documents

    func deleteManyProductsConnection<Type>(where: OptionalArgument<InputObjects.ProductManyWhereInput> = .absent(), skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.ProductConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteManyProductsConnection",
            arguments: [Argument(name: "where", type: "ProductManyWhereInput", value: `where`), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.deleteManyProductsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish many Product documents

    func publishManyProductsConnection<Type>(where: OptionalArgument<InputObjects.ProductManyWhereInput> = .absent(), from: OptionalArgument<Enums.Stage> = .absent(), to: [Enums.Stage], skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), publishBase: OptionalArgument<Bool> = .absent(), withDefaultLocale: OptionalArgument<Bool> = .absent(), selection: Selection<Type, Objects.ProductConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishManyProductsConnection",
            arguments: [Argument(name: "where", type: "ProductManyWhereInput", value: `where`), Argument(name: "from", type: "Stage", value: from), Argument(name: "to", type: "[Stage!]!", value: to), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "publishBase", type: "Boolean", value: publishBase), Argument(name: "withDefaultLocale", type: "Boolean", value: withDefaultLocale)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.publishManyProductsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Find many Product documents that match criteria in specified stage and unpublish from target stages

    func unpublishManyProductsConnection<Type>(where: OptionalArgument<InputObjects.ProductManyWhereInput> = .absent(), stage: OptionalArgument<Enums.Stage> = .absent(), from: [Enums.Stage], skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), unpublishBase: OptionalArgument<Bool> = .absent(), selection: Selection<Type, Objects.ProductConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishManyProductsConnection",
            arguments: [Argument(name: "where", type: "ProductManyWhereInput", value: `where`), Argument(name: "stage", type: "Stage", value: stage), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "unpublishBase", type: "Boolean", value: unpublishBase)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.unpublishManyProductsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Update many products
    @available(*, deprecated, message: "Please use the new paginated many mutation (updateManyProductsConnection)")
    func updateManyProducts<Type>(where: OptionalArgument<InputObjects.ProductManyWhereInput> = .absent(), data: InputObjects.ProductUpdateManyInput, selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateManyProducts",
            arguments: [Argument(name: "where", type: "ProductManyWhereInput", value: `where`), Argument(name: "data", type: "ProductUpdateManyInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updateManyProducts[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete many Product documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (deleteManyProductsConnection)")
    func deleteManyProducts<Type>(where: OptionalArgument<InputObjects.ProductManyWhereInput> = .absent(), selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteManyProducts",
            arguments: [Argument(name: "where", type: "ProductManyWhereInput", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.deleteManyProducts[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish many Product documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (publishManyProductsConnection)")
    func publishManyProducts<Type>(where: OptionalArgument<InputObjects.ProductManyWhereInput> = .absent(), to: [Enums.Stage], locales: OptionalArgument<[Enums.Locale]> = .absent(), publishBase: OptionalArgument<Bool> = .absent(), withDefaultLocale: OptionalArgument<Bool> = .absent(), selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishManyProducts",
            arguments: [Argument(name: "where", type: "ProductManyWhereInput", value: `where`), Argument(name: "to", type: "[Stage!]!", value: to), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "publishBase", type: "Boolean", value: publishBase), Argument(name: "withDefaultLocale", type: "Boolean", value: withDefaultLocale)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.publishManyProducts[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish many Product documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (unpublishManyProductsConnection)")
    func unpublishManyProducts<Type>(where: OptionalArgument<InputObjects.ProductManyWhereInput> = .absent(), from: [Enums.Stage], locales: OptionalArgument<[Enums.Locale]> = .absent(), unpublishBase: OptionalArgument<Bool> = .absent(), selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishManyProducts",
            arguments: [Argument(name: "where", type: "ProductManyWhereInput", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "unpublishBase", type: "Boolean", value: unpublishBase)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.unpublishManyProducts[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Schedule to publish one product

    func schedulePublishProduct<Type>(where: InputObjects.ProductWhereUniqueInput, locales: OptionalArgument<[Enums.Locale]> = .absent(), publishBase: OptionalArgument<Bool> = .absent(), withDefaultLocale: OptionalArgument<Bool> = .absent(), to: [Enums.Stage], releaseAt: OptionalArgument<DateTimeScalar> = .absent(), releaseId: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.Product?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "schedulePublishProduct",
            arguments: [Argument(name: "where", type: "ProductWhereUniqueInput!", value: `where`), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "publishBase", type: "Boolean", value: publishBase), Argument(name: "withDefaultLocale", type: "Boolean", value: withDefaultLocale), Argument(name: "to", type: "[Stage!]!", value: to), Argument(name: "releaseAt", type: "DateTime", value: releaseAt), Argument(name: "releaseId", type: "String", value: releaseId)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.schedulePublishProduct[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish one product from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only.

    func scheduleUnpublishProduct<Type>(where: InputObjects.ProductWhereUniqueInput, from: [Enums.Stage], releaseAt: OptionalArgument<DateTimeScalar> = .absent(), releaseId: OptionalArgument<String> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), unpublishBase: OptionalArgument<Bool> = .absent(), selection: Selection<Type, Objects.Product?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduleUnpublishProduct",
            arguments: [Argument(name: "where", type: "ProductWhereUniqueInput!", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "releaseAt", type: "DateTime", value: releaseAt), Argument(name: "releaseId", type: "String", value: releaseId), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "unpublishBase", type: "Boolean", value: unpublishBase)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.scheduleUnpublishProduct[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Create one review

    func createReview<Type>(data: InputObjects.ReviewCreateInput, selection: Selection<Type, Objects.Review?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createReview",
            arguments: [Argument(name: "data", type: "ReviewCreateInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createReview[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Update one review

    func updateReview<Type>(where: InputObjects.ReviewWhereUniqueInput, data: InputObjects.ReviewUpdateInput, selection: Selection<Type, Objects.Review?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateReview",
            arguments: [Argument(name: "where", type: "ReviewWhereUniqueInput!", value: `where`), Argument(name: "data", type: "ReviewUpdateInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updateReview[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete one review from _all_ existing stages. Returns deleted document.

    func deleteReview<Type>(where: InputObjects.ReviewWhereUniqueInput, selection: Selection<Type, Objects.Review?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteReview",
            arguments: [Argument(name: "where", type: "ReviewWhereUniqueInput!", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.deleteReview[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Upsert one review

    func upsertReview<Type>(where: InputObjects.ReviewWhereUniqueInput, upsert: InputObjects.ReviewUpsertInput, selection: Selection<Type, Objects.Review?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "upsertReview",
            arguments: [Argument(name: "where", type: "ReviewWhereUniqueInput!", value: `where`), Argument(name: "upsert", type: "ReviewUpsertInput!", value: upsert)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.upsertReview[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish one review

    func publishReview<Type>(where: InputObjects.ReviewWhereUniqueInput, to: [Enums.Stage], selection: Selection<Type, Objects.Review?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishReview",
            arguments: [Argument(name: "where", type: "ReviewWhereUniqueInput!", value: `where`), Argument(name: "to", type: "[Stage!]!", value: to)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.publishReview[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish one review from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only.

    func unpublishReview<Type>(where: InputObjects.ReviewWhereUniqueInput, from: [Enums.Stage], selection: Selection<Type, Objects.Review?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishReview",
            arguments: [Argument(name: "where", type: "ReviewWhereUniqueInput!", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.unpublishReview[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Update many Review documents

    func updateManyReviewsConnection<Type>(where: OptionalArgument<InputObjects.ReviewManyWhereInput> = .absent(), data: InputObjects.ReviewUpdateManyInput, skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.ReviewConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateManyReviewsConnection",
            arguments: [Argument(name: "where", type: "ReviewManyWhereInput", value: `where`), Argument(name: "data", type: "ReviewUpdateManyInput!", value: data), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updateManyReviewsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete many Review documents, return deleted documents

    func deleteManyReviewsConnection<Type>(where: OptionalArgument<InputObjects.ReviewManyWhereInput> = .absent(), skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.ReviewConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteManyReviewsConnection",
            arguments: [Argument(name: "where", type: "ReviewManyWhereInput", value: `where`), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.deleteManyReviewsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish many Review documents

    func publishManyReviewsConnection<Type>(where: OptionalArgument<InputObjects.ReviewManyWhereInput> = .absent(), from: OptionalArgument<Enums.Stage> = .absent(), to: [Enums.Stage], skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.ReviewConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishManyReviewsConnection",
            arguments: [Argument(name: "where", type: "ReviewManyWhereInput", value: `where`), Argument(name: "from", type: "Stage", value: from), Argument(name: "to", type: "[Stage!]!", value: to), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.publishManyReviewsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Find many Review documents that match criteria in specified stage and unpublish from target stages

    func unpublishManyReviewsConnection<Type>(where: OptionalArgument<InputObjects.ReviewManyWhereInput> = .absent(), stage: OptionalArgument<Enums.Stage> = .absent(), from: [Enums.Stage], skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.ReviewConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishManyReviewsConnection",
            arguments: [Argument(name: "where", type: "ReviewManyWhereInput", value: `where`), Argument(name: "stage", type: "Stage", value: stage), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.unpublishManyReviewsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Update many reviews
    @available(*, deprecated, message: "Please use the new paginated many mutation (updateManyReviewsConnection)")
    func updateManyReviews<Type>(where: OptionalArgument<InputObjects.ReviewManyWhereInput> = .absent(), data: InputObjects.ReviewUpdateManyInput, selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateManyReviews",
            arguments: [Argument(name: "where", type: "ReviewManyWhereInput", value: `where`), Argument(name: "data", type: "ReviewUpdateManyInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updateManyReviews[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete many Review documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (deleteManyReviewsConnection)")
    func deleteManyReviews<Type>(where: OptionalArgument<InputObjects.ReviewManyWhereInput> = .absent(), selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteManyReviews",
            arguments: [Argument(name: "where", type: "ReviewManyWhereInput", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.deleteManyReviews[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish many Review documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (publishManyReviewsConnection)")
    func publishManyReviews<Type>(where: OptionalArgument<InputObjects.ReviewManyWhereInput> = .absent(), to: [Enums.Stage], selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishManyReviews",
            arguments: [Argument(name: "where", type: "ReviewManyWhereInput", value: `where`), Argument(name: "to", type: "[Stage!]!", value: to)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.publishManyReviews[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish many Review documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (unpublishManyReviewsConnection)")
    func unpublishManyReviews<Type>(where: OptionalArgument<InputObjects.ReviewManyWhereInput> = .absent(), from: [Enums.Stage], selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishManyReviews",
            arguments: [Argument(name: "where", type: "ReviewManyWhereInput", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.unpublishManyReviews[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Schedule to publish one review

    func schedulePublishReview<Type>(where: InputObjects.ReviewWhereUniqueInput, to: [Enums.Stage], releaseAt: OptionalArgument<DateTimeScalar> = .absent(), releaseId: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.Review?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "schedulePublishReview",
            arguments: [Argument(name: "where", type: "ReviewWhereUniqueInput!", value: `where`), Argument(name: "to", type: "[Stage!]!", value: to), Argument(name: "releaseAt", type: "DateTime", value: releaseAt), Argument(name: "releaseId", type: "String", value: releaseId)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.schedulePublishReview[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish one review from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only.

    func scheduleUnpublishReview<Type>(where: InputObjects.ReviewWhereUniqueInput, from: [Enums.Stage], releaseAt: OptionalArgument<DateTimeScalar> = .absent(), releaseId: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.Review?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduleUnpublishReview",
            arguments: [Argument(name: "where", type: "ReviewWhereUniqueInput!", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "releaseAt", type: "DateTime", value: releaseAt), Argument(name: "releaseId", type: "String", value: releaseId)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.scheduleUnpublishReview[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Create one asset
    @available(*, deprecated, message: "Asset mutations will be overhauled soon")
    func createAsset<Type>(data: InputObjects.AssetCreateInput, selection: Selection<Type, Objects.Asset?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createAsset",
            arguments: [Argument(name: "data", type: "AssetCreateInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createAsset[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Update one asset

    func updateAsset<Type>(where: InputObjects.AssetWhereUniqueInput, data: InputObjects.AssetUpdateInput, selection: Selection<Type, Objects.Asset?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateAsset",
            arguments: [Argument(name: "where", type: "AssetWhereUniqueInput!", value: `where`), Argument(name: "data", type: "AssetUpdateInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updateAsset[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete one asset from _all_ existing stages. Returns deleted document.

    func deleteAsset<Type>(where: InputObjects.AssetWhereUniqueInput, selection: Selection<Type, Objects.Asset?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteAsset",
            arguments: [Argument(name: "where", type: "AssetWhereUniqueInput!", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.deleteAsset[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Upsert one asset

    func upsertAsset<Type>(where: InputObjects.AssetWhereUniqueInput, upsert: InputObjects.AssetUpsertInput, selection: Selection<Type, Objects.Asset?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "upsertAsset",
            arguments: [Argument(name: "where", type: "AssetWhereUniqueInput!", value: `where`), Argument(name: "upsert", type: "AssetUpsertInput!", value: upsert)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.upsertAsset[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish one asset

    func publishAsset<Type>(where: InputObjects.AssetWhereUniqueInput, locales: OptionalArgument<[Enums.Locale]> = .absent(), publishBase: OptionalArgument<Bool> = .absent(), withDefaultLocale: OptionalArgument<Bool> = .absent(), to: [Enums.Stage], selection: Selection<Type, Objects.Asset?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishAsset",
            arguments: [Argument(name: "where", type: "AssetWhereUniqueInput!", value: `where`), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "publishBase", type: "Boolean", value: publishBase), Argument(name: "withDefaultLocale", type: "Boolean", value: withDefaultLocale), Argument(name: "to", type: "[Stage!]!", value: to)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.publishAsset[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish one asset from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only.

    func unpublishAsset<Type>(where: InputObjects.AssetWhereUniqueInput, from: [Enums.Stage], locales: OptionalArgument<[Enums.Locale]> = .absent(), unpublishBase: OptionalArgument<Bool> = .absent(), selection: Selection<Type, Objects.Asset?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishAsset",
            arguments: [Argument(name: "where", type: "AssetWhereUniqueInput!", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "unpublishBase", type: "Boolean", value: unpublishBase)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.unpublishAsset[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Update many Asset documents

    func updateManyAssetsConnection<Type>(where: OptionalArgument<InputObjects.AssetManyWhereInput> = .absent(), data: InputObjects.AssetUpdateManyInput, skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.AssetConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateManyAssetsConnection",
            arguments: [Argument(name: "where", type: "AssetManyWhereInput", value: `where`), Argument(name: "data", type: "AssetUpdateManyInput!", value: data), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updateManyAssetsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete many Asset documents, return deleted documents

    func deleteManyAssetsConnection<Type>(where: OptionalArgument<InputObjects.AssetManyWhereInput> = .absent(), skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.AssetConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteManyAssetsConnection",
            arguments: [Argument(name: "where", type: "AssetManyWhereInput", value: `where`), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.deleteManyAssetsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish many Asset documents

    func publishManyAssetsConnection<Type>(where: OptionalArgument<InputObjects.AssetManyWhereInput> = .absent(), from: OptionalArgument<Enums.Stage> = .absent(), to: [Enums.Stage], skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), publishBase: OptionalArgument<Bool> = .absent(), withDefaultLocale: OptionalArgument<Bool> = .absent(), selection: Selection<Type, Objects.AssetConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishManyAssetsConnection",
            arguments: [Argument(name: "where", type: "AssetManyWhereInput", value: `where`), Argument(name: "from", type: "Stage", value: from), Argument(name: "to", type: "[Stage!]!", value: to), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "publishBase", type: "Boolean", value: publishBase), Argument(name: "withDefaultLocale", type: "Boolean", value: withDefaultLocale)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.publishManyAssetsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Find many Asset documents that match criteria in specified stage and unpublish from target stages

    func unpublishManyAssetsConnection<Type>(where: OptionalArgument<InputObjects.AssetManyWhereInput> = .absent(), stage: OptionalArgument<Enums.Stage> = .absent(), from: [Enums.Stage], skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), unpublishBase: OptionalArgument<Bool> = .absent(), selection: Selection<Type, Objects.AssetConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishManyAssetsConnection",
            arguments: [Argument(name: "where", type: "AssetManyWhereInput", value: `where`), Argument(name: "stage", type: "Stage", value: stage), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "unpublishBase", type: "Boolean", value: unpublishBase)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.unpublishManyAssetsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Update many assets
    @available(*, deprecated, message: "Please use the new paginated many mutation (updateManyAssetsConnection)")
    func updateManyAssets<Type>(where: OptionalArgument<InputObjects.AssetManyWhereInput> = .absent(), data: InputObjects.AssetUpdateManyInput, selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateManyAssets",
            arguments: [Argument(name: "where", type: "AssetManyWhereInput", value: `where`), Argument(name: "data", type: "AssetUpdateManyInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updateManyAssets[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete many Asset documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (deleteManyAssetsConnection)")
    func deleteManyAssets<Type>(where: OptionalArgument<InputObjects.AssetManyWhereInput> = .absent(), selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteManyAssets",
            arguments: [Argument(name: "where", type: "AssetManyWhereInput", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.deleteManyAssets[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish many Asset documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (publishManyAssetsConnection)")
    func publishManyAssets<Type>(where: OptionalArgument<InputObjects.AssetManyWhereInput> = .absent(), to: [Enums.Stage], locales: OptionalArgument<[Enums.Locale]> = .absent(), publishBase: OptionalArgument<Bool> = .absent(), withDefaultLocale: OptionalArgument<Bool> = .absent(), selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishManyAssets",
            arguments: [Argument(name: "where", type: "AssetManyWhereInput", value: `where`), Argument(name: "to", type: "[Stage!]!", value: to), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "publishBase", type: "Boolean", value: publishBase), Argument(name: "withDefaultLocale", type: "Boolean", value: withDefaultLocale)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.publishManyAssets[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish many Asset documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (unpublishManyAssetsConnection)")
    func unpublishManyAssets<Type>(where: OptionalArgument<InputObjects.AssetManyWhereInput> = .absent(), from: [Enums.Stage], locales: OptionalArgument<[Enums.Locale]> = .absent(), unpublishBase: OptionalArgument<Bool> = .absent(), selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishManyAssets",
            arguments: [Argument(name: "where", type: "AssetManyWhereInput", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "unpublishBase", type: "Boolean", value: unpublishBase)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.unpublishManyAssets[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Schedule to publish one asset

    func schedulePublishAsset<Type>(where: InputObjects.AssetWhereUniqueInput, locales: OptionalArgument<[Enums.Locale]> = .absent(), publishBase: OptionalArgument<Bool> = .absent(), withDefaultLocale: OptionalArgument<Bool> = .absent(), to: [Enums.Stage], releaseAt: OptionalArgument<DateTimeScalar> = .absent(), releaseId: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.Asset?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "schedulePublishAsset",
            arguments: [Argument(name: "where", type: "AssetWhereUniqueInput!", value: `where`), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "publishBase", type: "Boolean", value: publishBase), Argument(name: "withDefaultLocale", type: "Boolean", value: withDefaultLocale), Argument(name: "to", type: "[Stage!]!", value: to), Argument(name: "releaseAt", type: "DateTime", value: releaseAt), Argument(name: "releaseId", type: "String", value: releaseId)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.schedulePublishAsset[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish one asset from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only.

    func scheduleUnpublishAsset<Type>(where: InputObjects.AssetWhereUniqueInput, from: [Enums.Stage], releaseAt: OptionalArgument<DateTimeScalar> = .absent(), releaseId: OptionalArgument<String> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), unpublishBase: OptionalArgument<Bool> = .absent(), selection: Selection<Type, Objects.Asset?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduleUnpublishAsset",
            arguments: [Argument(name: "where", type: "AssetWhereUniqueInput!", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "releaseAt", type: "DateTime", value: releaseAt), Argument(name: "releaseId", type: "String", value: releaseId), Argument(name: "locales", type: "[Locale!]", value: locales), Argument(name: "unpublishBase", type: "Boolean", value: unpublishBase)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.scheduleUnpublishAsset[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Create one vote

    func createVote<Type>(data: InputObjects.VoteCreateInput, selection: Selection<Type, Objects.Vote?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createVote",
            arguments: [Argument(name: "data", type: "VoteCreateInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createVote[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Update one vote

    func updateVote<Type>(where: InputObjects.VoteWhereUniqueInput, data: InputObjects.VoteUpdateInput, selection: Selection<Type, Objects.Vote?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateVote",
            arguments: [Argument(name: "where", type: "VoteWhereUniqueInput!", value: `where`), Argument(name: "data", type: "VoteUpdateInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updateVote[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete one vote from _all_ existing stages. Returns deleted document.

    func deleteVote<Type>(where: InputObjects.VoteWhereUniqueInput, selection: Selection<Type, Objects.Vote?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteVote",
            arguments: [Argument(name: "where", type: "VoteWhereUniqueInput!", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.deleteVote[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Upsert one vote

    func upsertVote<Type>(where: InputObjects.VoteWhereUniqueInput, upsert: InputObjects.VoteUpsertInput, selection: Selection<Type, Objects.Vote?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "upsertVote",
            arguments: [Argument(name: "where", type: "VoteWhereUniqueInput!", value: `where`), Argument(name: "upsert", type: "VoteUpsertInput!", value: upsert)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.upsertVote[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish one vote

    func publishVote<Type>(where: InputObjects.VoteWhereUniqueInput, to: [Enums.Stage], selection: Selection<Type, Objects.Vote?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishVote",
            arguments: [Argument(name: "where", type: "VoteWhereUniqueInput!", value: `where`), Argument(name: "to", type: "[Stage!]!", value: to)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.publishVote[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish one vote from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only.

    func unpublishVote<Type>(where: InputObjects.VoteWhereUniqueInput, from: [Enums.Stage], selection: Selection<Type, Objects.Vote?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishVote",
            arguments: [Argument(name: "where", type: "VoteWhereUniqueInput!", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.unpublishVote[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Update many Vote documents

    func updateManyVotesConnection<Type>(where: OptionalArgument<InputObjects.VoteManyWhereInput> = .absent(), data: InputObjects.VoteUpdateManyInput, skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.VoteConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateManyVotesConnection",
            arguments: [Argument(name: "where", type: "VoteManyWhereInput", value: `where`), Argument(name: "data", type: "VoteUpdateManyInput!", value: data), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updateManyVotesConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete many Vote documents, return deleted documents

    func deleteManyVotesConnection<Type>(where: OptionalArgument<InputObjects.VoteManyWhereInput> = .absent(), skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.VoteConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteManyVotesConnection",
            arguments: [Argument(name: "where", type: "VoteManyWhereInput", value: `where`), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.deleteManyVotesConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish many Vote documents

    func publishManyVotesConnection<Type>(where: OptionalArgument<InputObjects.VoteManyWhereInput> = .absent(), from: OptionalArgument<Enums.Stage> = .absent(), to: [Enums.Stage], skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.VoteConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishManyVotesConnection",
            arguments: [Argument(name: "where", type: "VoteManyWhereInput", value: `where`), Argument(name: "from", type: "Stage", value: from), Argument(name: "to", type: "[Stage!]!", value: to), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.publishManyVotesConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Find many Vote documents that match criteria in specified stage and unpublish from target stages

    func unpublishManyVotesConnection<Type>(where: OptionalArgument<InputObjects.VoteManyWhereInput> = .absent(), stage: OptionalArgument<Enums.Stage> = .absent(), from: [Enums.Stage], skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.VoteConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishManyVotesConnection",
            arguments: [Argument(name: "where", type: "VoteManyWhereInput", value: `where`), Argument(name: "stage", type: "Stage", value: stage), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.unpublishManyVotesConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Update many votes
    @available(*, deprecated, message: "Please use the new paginated many mutation (updateManyVotesConnection)")
    func updateManyVotes<Type>(where: OptionalArgument<InputObjects.VoteManyWhereInput> = .absent(), data: InputObjects.VoteUpdateManyInput, selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateManyVotes",
            arguments: [Argument(name: "where", type: "VoteManyWhereInput", value: `where`), Argument(name: "data", type: "VoteUpdateManyInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updateManyVotes[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete many Vote documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (deleteManyVotesConnection)")
    func deleteManyVotes<Type>(where: OptionalArgument<InputObjects.VoteManyWhereInput> = .absent(), selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteManyVotes",
            arguments: [Argument(name: "where", type: "VoteManyWhereInput", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.deleteManyVotes[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish many Vote documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (publishManyVotesConnection)")
    func publishManyVotes<Type>(where: OptionalArgument<InputObjects.VoteManyWhereInput> = .absent(), to: [Enums.Stage], selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishManyVotes",
            arguments: [Argument(name: "where", type: "VoteManyWhereInput", value: `where`), Argument(name: "to", type: "[Stage!]!", value: to)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.publishManyVotes[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish many Vote documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (unpublishManyVotesConnection)")
    func unpublishManyVotes<Type>(where: OptionalArgument<InputObjects.VoteManyWhereInput> = .absent(), from: [Enums.Stage], selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishManyVotes",
            arguments: [Argument(name: "where", type: "VoteManyWhereInput", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.unpublishManyVotes[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Schedule to publish one vote

    func schedulePublishVote<Type>(where: InputObjects.VoteWhereUniqueInput, to: [Enums.Stage], releaseAt: OptionalArgument<DateTimeScalar> = .absent(), releaseId: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.Vote?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "schedulePublishVote",
            arguments: [Argument(name: "where", type: "VoteWhereUniqueInput!", value: `where`), Argument(name: "to", type: "[Stage!]!", value: to), Argument(name: "releaseAt", type: "DateTime", value: releaseAt), Argument(name: "releaseId", type: "String", value: releaseId)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.schedulePublishVote[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish one vote from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only.

    func scheduleUnpublishVote<Type>(where: InputObjects.VoteWhereUniqueInput, from: [Enums.Stage], releaseAt: OptionalArgument<DateTimeScalar> = .absent(), releaseId: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.Vote?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduleUnpublishVote",
            arguments: [Argument(name: "where", type: "VoteWhereUniqueInput!", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "releaseAt", type: "DateTime", value: releaseAt), Argument(name: "releaseId", type: "String", value: releaseId)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.scheduleUnpublishVote[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete and return scheduled operation

    func deleteScheduledOperation<Type>(where: InputObjects.ScheduledOperationWhereUniqueInput, selection: Selection<Type, Objects.ScheduledOperation?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteScheduledOperation",
            arguments: [Argument(name: "where", type: "ScheduledOperationWhereUniqueInput!", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.deleteScheduledOperation[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Create one scheduledRelease

    func createScheduledRelease<Type>(data: InputObjects.ScheduledReleaseCreateInput, selection: Selection<Type, Objects.ScheduledRelease?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createScheduledRelease",
            arguments: [Argument(name: "data", type: "ScheduledReleaseCreateInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createScheduledRelease[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Update one scheduledRelease

    func updateScheduledRelease<Type>(where: InputObjects.ScheduledReleaseWhereUniqueInput, data: InputObjects.ScheduledReleaseUpdateInput, selection: Selection<Type, Objects.ScheduledRelease?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateScheduledRelease",
            arguments: [Argument(name: "where", type: "ScheduledReleaseWhereUniqueInput!", value: `where`), Argument(name: "data", type: "ScheduledReleaseUpdateInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updateScheduledRelease[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete one scheduledRelease from _all_ existing stages. Returns deleted document.

    func deleteScheduledRelease<Type>(where: InputObjects.ScheduledReleaseWhereUniqueInput, selection: Selection<Type, Objects.ScheduledRelease?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteScheduledRelease",
            arguments: [Argument(name: "where", type: "ScheduledReleaseWhereUniqueInput!", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.deleteScheduledRelease[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Create one nextAuthUser

    func createNextAuthUser<Type>(data: InputObjects.NextAuthUserCreateInput, selection: Selection<Type, Objects.NextAuthUser?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createNextAuthUser",
            arguments: [Argument(name: "data", type: "NextAuthUserCreateInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createNextAuthUser[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Update one nextAuthUser

    func updateNextAuthUser<Type>(where: InputObjects.NextAuthUserWhereUniqueInput, data: InputObjects.NextAuthUserUpdateInput, selection: Selection<Type, Objects.NextAuthUser?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateNextAuthUser",
            arguments: [Argument(name: "where", type: "NextAuthUserWhereUniqueInput!", value: `where`), Argument(name: "data", type: "NextAuthUserUpdateInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updateNextAuthUser[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete one nextAuthUser from _all_ existing stages. Returns deleted document.

    func deleteNextAuthUser<Type>(where: InputObjects.NextAuthUserWhereUniqueInput, selection: Selection<Type, Objects.NextAuthUser?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteNextAuthUser",
            arguments: [Argument(name: "where", type: "NextAuthUserWhereUniqueInput!", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.deleteNextAuthUser[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Upsert one nextAuthUser

    func upsertNextAuthUser<Type>(where: InputObjects.NextAuthUserWhereUniqueInput, upsert: InputObjects.NextAuthUserUpsertInput, selection: Selection<Type, Objects.NextAuthUser?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "upsertNextAuthUser",
            arguments: [Argument(name: "where", type: "NextAuthUserWhereUniqueInput!", value: `where`), Argument(name: "upsert", type: "NextAuthUserUpsertInput!", value: upsert)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.upsertNextAuthUser[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish one nextAuthUser

    func publishNextAuthUser<Type>(where: InputObjects.NextAuthUserWhereUniqueInput, to: [Enums.Stage], selection: Selection<Type, Objects.NextAuthUser?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishNextAuthUser",
            arguments: [Argument(name: "where", type: "NextAuthUserWhereUniqueInput!", value: `where`), Argument(name: "to", type: "[Stage!]!", value: to)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.publishNextAuthUser[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish one nextAuthUser from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only.

    func unpublishNextAuthUser<Type>(where: InputObjects.NextAuthUserWhereUniqueInput, from: [Enums.Stage], selection: Selection<Type, Objects.NextAuthUser?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishNextAuthUser",
            arguments: [Argument(name: "where", type: "NextAuthUserWhereUniqueInput!", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.unpublishNextAuthUser[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Update many NextAuthUser documents

    func updateManyNextAuthUsersConnection<Type>(where: OptionalArgument<InputObjects.NextAuthUserManyWhereInput> = .absent(), data: InputObjects.NextAuthUserUpdateManyInput, skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.NextAuthUserConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateManyNextAuthUsersConnection",
            arguments: [Argument(name: "where", type: "NextAuthUserManyWhereInput", value: `where`), Argument(name: "data", type: "NextAuthUserUpdateManyInput!", value: data), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updateManyNextAuthUsersConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete many NextAuthUser documents, return deleted documents

    func deleteManyNextAuthUsersConnection<Type>(where: OptionalArgument<InputObjects.NextAuthUserManyWhereInput> = .absent(), skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.NextAuthUserConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteManyNextAuthUsersConnection",
            arguments: [Argument(name: "where", type: "NextAuthUserManyWhereInput", value: `where`), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.deleteManyNextAuthUsersConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish many NextAuthUser documents

    func publishManyNextAuthUsersConnection<Type>(where: OptionalArgument<InputObjects.NextAuthUserManyWhereInput> = .absent(), from: OptionalArgument<Enums.Stage> = .absent(), to: [Enums.Stage], skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.NextAuthUserConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishManyNextAuthUsersConnection",
            arguments: [Argument(name: "where", type: "NextAuthUserManyWhereInput", value: `where`), Argument(name: "from", type: "Stage", value: from), Argument(name: "to", type: "[Stage!]!", value: to), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.publishManyNextAuthUsersConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Find many NextAuthUser documents that match criteria in specified stage and unpublish from target stages

    func unpublishManyNextAuthUsersConnection<Type>(where: OptionalArgument<InputObjects.NextAuthUserManyWhereInput> = .absent(), stage: OptionalArgument<Enums.Stage> = .absent(), from: [Enums.Stage], skip: OptionalArgument<Int> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), before: OptionalArgument<String> = .absent(), after: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.NextAuthUserConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishManyNextAuthUsersConnection",
            arguments: [Argument(name: "where", type: "NextAuthUserManyWhereInput", value: `where`), Argument(name: "stage", type: "Stage", value: stage), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "skip", type: "Int", value: skip), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "before", type: "ID", value: before), Argument(name: "after", type: "ID", value: after)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.unpublishManyNextAuthUsersConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Update many nextAuthUsers
    @available(*, deprecated, message: "Please use the new paginated many mutation (updateManyNextAuthUsersConnection)")
    func updateManyNextAuthUsers<Type>(where: OptionalArgument<InputObjects.NextAuthUserManyWhereInput> = .absent(), data: InputObjects.NextAuthUserUpdateManyInput, selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateManyNextAuthUsers",
            arguments: [Argument(name: "where", type: "NextAuthUserManyWhereInput", value: `where`), Argument(name: "data", type: "NextAuthUserUpdateManyInput!", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updateManyNextAuthUsers[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Delete many NextAuthUser documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (deleteManyNextAuthUsersConnection)")
    func deleteManyNextAuthUsers<Type>(where: OptionalArgument<InputObjects.NextAuthUserManyWhereInput> = .absent(), selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "deleteManyNextAuthUsers",
            arguments: [Argument(name: "where", type: "NextAuthUserManyWhereInput", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.deleteManyNextAuthUsers[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Publish many NextAuthUser documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (publishManyNextAuthUsersConnection)")
    func publishManyNextAuthUsers<Type>(where: OptionalArgument<InputObjects.NextAuthUserManyWhereInput> = .absent(), to: [Enums.Stage], selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishManyNextAuthUsers",
            arguments: [Argument(name: "where", type: "NextAuthUserManyWhereInput", value: `where`), Argument(name: "to", type: "[Stage!]!", value: to)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.publishManyNextAuthUsers[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish many NextAuthUser documents
    @available(*, deprecated, message: "Please use the new paginated many mutation (unpublishManyNextAuthUsersConnection)")
    func unpublishManyNextAuthUsers<Type>(where: OptionalArgument<InputObjects.NextAuthUserManyWhereInput> = .absent(), from: [Enums.Stage], selection: Selection<Type, Objects.BatchPayload>) throws -> Type {
        let field = GraphQLField.composite(
            name: "unpublishManyNextAuthUsers",
            arguments: [Argument(name: "where", type: "NextAuthUserManyWhereInput", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.unpublishManyNextAuthUsers[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Schedule to publish one nextAuthUser

    func schedulePublishNextAuthUser<Type>(where: InputObjects.NextAuthUserWhereUniqueInput, to: [Enums.Stage], releaseAt: OptionalArgument<DateTimeScalar> = .absent(), releaseId: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.NextAuthUser?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "schedulePublishNextAuthUser",
            arguments: [Argument(name: "where", type: "NextAuthUserWhereUniqueInput!", value: `where`), Argument(name: "to", type: "[Stage!]!", value: to), Argument(name: "releaseAt", type: "DateTime", value: releaseAt), Argument(name: "releaseId", type: "String", value: releaseId)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.schedulePublishNextAuthUser[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Unpublish one nextAuthUser from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only.

    func scheduleUnpublishNextAuthUser<Type>(where: InputObjects.NextAuthUserWhereUniqueInput, from: [Enums.Stage], releaseAt: OptionalArgument<DateTimeScalar> = .absent(), releaseId: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.NextAuthUser?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduleUnpublishNextAuthUser",
            arguments: [Argument(name: "where", type: "NextAuthUserWhereUniqueInput!", value: `where`), Argument(name: "from", type: "[Stage!]!", value: from), Argument(name: "releaseAt", type: "DateTime", value: releaseAt), Argument(name: "releaseId", type: "String", value: releaseId)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.scheduleUnpublishNextAuthUser[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Mutation<T> = Selection<T, Objects.Mutation>
}

extension Objects {
    struct NextAuthUser {
        let __typename: TypeName = .nextAuthUser
        let auth0Id: [String: String]
        let bio: [String: String]
        let createdAt: [String: DateTimeScalar]
        let createdBy: [String: Objects.User]
        let documentInStages: [String: [Objects.NextAuthUser]]
        let email: [String: String]
        let history: [String: [Objects.Version]]
        let id: [String: String]
        let name: [String: String]
        let password: [String: String]
        let publishedAt: [String: DateTimeScalar]
        let publishedBy: [String: Objects.User]
        let scheduledIn: [String: [Objects.ScheduledOperation]]
        let stage: [String: Enums.Stage]
        let updatedAt: [String: DateTimeScalar]
        let updatedBy: [String: Objects.User]

        enum TypeName: String, Codable {
            case nextAuthUser = "NextAuthUser"
        }
    }
}

extension Objects.NextAuthUser: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "auth0Id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "bio":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "documentInStages":
                if let value = try container.decode([Objects.NextAuthUser]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "email":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "history":
                if let value = try container.decode([Objects.Version]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "name":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "password":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduledIn":
                if let value = try container.decode([Objects.ScheduledOperation]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "stage":
                if let value = try container.decode(Enums.Stage?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        auth0Id = map["auth0Id"]
        bio = map["bio"]
        createdAt = map["createdAt"]
        createdBy = map["createdBy"]
        documentInStages = map["documentInStages"]
        email = map["email"]
        history = map["history"]
        id = map["id"]
        name = map["name"]
        password = map["password"]
        publishedAt = map["publishedAt"]
        publishedBy = map["publishedBy"]
        scheduledIn = map["scheduledIn"]
        stage = map["stage"]
        updatedAt = map["updatedAt"]
        updatedBy = map["updatedBy"]
    }
}

extension Fields where TypeLock == Objects.NextAuthUser {
    /// System stage field

    func stage() throws -> Enums.Stage {
        let field = GraphQLField.leaf(
            name: "stage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.stage[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.Stage.allCases.first!
        }
    }

    /// Get the document in other stages

    func documentInStages<Type>(stages: [Enums.Stage], includeCurrent: Bool, inheritLocale: Bool, selection: Selection<Type, [Objects.NextAuthUser]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "documentInStages",
            arguments: [Argument(name: "stages", type: "[Stage!]!", value: stages), Argument(name: "includeCurrent", type: "Boolean!", value: includeCurrent), Argument(name: "inheritLocale", type: "Boolean!", value: inheritLocale)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.documentInStages[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// The unique identifier

    func id() throws -> String {
        let field = GraphQLField.leaf(
            name: "id",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.id[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// The time the document was created

    func createdAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "createdAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.createdAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was updated

    func updatedAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "updatedAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updatedAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was published. Null on documents in draft stage.

    func publishedAt() throws -> DateTimeScalar? {
        let field = GraphQLField.leaf(
            name: "publishedAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.publishedAt[field.alias!]
        case .mocking:
            return nil
        }
    }

    func name() throws -> String? {
        let field = GraphQLField.leaf(
            name: "name",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }

    func email() throws -> String {
        let field = GraphQLField.leaf(
            name: "email",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.email[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    func bio() throws -> String? {
        let field = GraphQLField.leaf(
            name: "bio",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.bio[field.alias!]
        case .mocking:
            return nil
        }
    }

    func password() throws -> String {
        let field = GraphQLField.leaf(
            name: "password",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.password[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    func auth0Id() throws -> String? {
        let field = GraphQLField.leaf(
            name: "auth0Id",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.auth0Id[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// User that created this document

    func createdBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createdBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createdBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last updated this document

    func updatedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updatedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updatedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last published this document

    func publishedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.publishedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    func scheduledIn<Type>(where: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, [Objects.ScheduledOperation]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduledIn",
            arguments: [Argument(name: "where", type: "ScheduledOperationWhereInput", value: `where`), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.scheduledIn[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// List of NextAuthUser versions

    func history<Type>(limit: Int, skip: Int, stageOverride: OptionalArgument<Enums.Stage> = .absent(), selection: Selection<Type, [Objects.Version]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "history",
            arguments: [Argument(name: "limit", type: "Int!", value: limit), Argument(name: "skip", type: "Int!", value: skip), Argument(name: "stageOverride", type: "Stage", value: stageOverride)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.history[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias NextAuthUser<T> = Selection<T, Objects.NextAuthUser>
}

extension Objects {
    struct NextAuthUserConnection {
        let __typename: TypeName = .nextAuthUserConnection
        let aggregate: [String: Objects.Aggregate]
        let edges: [String: [Objects.NextAuthUserEdge]]
        let pageInfo: [String: Objects.PageInfo]

        enum TypeName: String, Codable {
            case nextAuthUserConnection = "NextAuthUserConnection"
        }
    }
}

extension Objects.NextAuthUserConnection: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "aggregate":
                if let value = try container.decode(Objects.Aggregate?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "edges":
                if let value = try container.decode([Objects.NextAuthUserEdge]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "pageInfo":
                if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        aggregate = map["aggregate"]
        edges = map["edges"]
        pageInfo = map["pageInfo"]
    }
}

extension Fields where TypeLock == Objects.NextAuthUserConnection {
    /// Information to aid in pagination.

    func pageInfo<Type>(selection: Selection<Type, Objects.PageInfo>) throws -> Type {
        let field = GraphQLField.composite(
            name: "pageInfo",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.pageInfo[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A list of edges.

    func edges<Type>(selection: Selection<Type, [Objects.NextAuthUserEdge]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "edges",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.edges[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    func aggregate<Type>(selection: Selection<Type, Objects.Aggregate>) throws -> Type {
        let field = GraphQLField.composite(
            name: "aggregate",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.aggregate[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias NextAuthUserConnection<T> = Selection<T, Objects.NextAuthUserConnection>
}

extension Objects {
    struct NextAuthUserEdge {
        let __typename: TypeName = .nextAuthUserEdge
        let cursor: [String: String]
        let node: [String: Objects.NextAuthUser]

        enum TypeName: String, Codable {
            case nextAuthUserEdge = "NextAuthUserEdge"
        }
    }
}

extension Objects.NextAuthUserEdge: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "cursor":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "node":
                if let value = try container.decode(Objects.NextAuthUser?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        cursor = map["cursor"]
        node = map["node"]
    }
}

extension Fields where TypeLock == Objects.NextAuthUserEdge {
    /// The item at the end of the edge.

    func node<Type>(selection: Selection<Type, Objects.NextAuthUser>) throws -> Type {
        let field = GraphQLField.composite(
            name: "node",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.node[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A cursor for use in pagination.

    func cursor() throws -> String {
        let field = GraphQLField.leaf(
            name: "cursor",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.cursor[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias NextAuthUserEdge<T> = Selection<T, Objects.NextAuthUserEdge>
}

extension Objects {
    struct PageInfo {
        let __typename: TypeName = .pageInfo
        let endCursor: [String: String]
        let hasNextPage: [String: Bool]
        let hasPreviousPage: [String: Bool]
        let pageSize: [String: Int]
        let startCursor: [String: String]

        enum TypeName: String, Codable {
            case pageInfo = "PageInfo"
        }
    }
}

extension Objects.PageInfo: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "endCursor":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "hasNextPage":
                if let value = try container.decode(Bool?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "hasPreviousPage":
                if let value = try container.decode(Bool?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "pageSize":
                if let value = try container.decode(Int?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "startCursor":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        endCursor = map["endCursor"]
        hasNextPage = map["hasNextPage"]
        hasPreviousPage = map["hasPreviousPage"]
        pageSize = map["pageSize"]
        startCursor = map["startCursor"]
    }
}

extension Fields where TypeLock == Objects.PageInfo {
    /// When paginating forwards, are there more items?

    func hasNextPage() throws -> Bool {
        let field = GraphQLField.leaf(
            name: "hasNextPage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.hasNextPage[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Bool.mockValue
        }
    }

    /// When paginating backwards, are there more items?

    func hasPreviousPage() throws -> Bool {
        let field = GraphQLField.leaf(
            name: "hasPreviousPage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.hasPreviousPage[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Bool.mockValue
        }
    }

    /// When paginating backwards, the cursor to continue.

    func startCursor() throws -> String? {
        let field = GraphQLField.leaf(
            name: "startCursor",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.startCursor[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// When paginating forwards, the cursor to continue.

    func endCursor() throws -> String? {
        let field = GraphQLField.leaf(
            name: "endCursor",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.endCursor[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// Number of items in the current page.

    func pageSize() throws -> Int? {
        let field = GraphQLField.leaf(
            name: "pageSize",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.pageSize[field.alias!]
        case .mocking:
            return nil
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias PageInfo<T> = Selection<T, Objects.PageInfo>
}

extension Objects {
    struct Product {
        let __typename: TypeName = .product
        let content: [String: Objects.RichText]
        let createdAt: [String: DateTimeScalar]
        let createdBy: [String: Objects.User]
        let description: [String: String]
        let documentInStages: [String: [Objects.Product]]
        let history: [String: [Objects.Version]]
        let id: [String: String]
        let image: [String: Objects.Asset]
        let locale: [String: Enums.Locale]
        let localizations: [String: [Objects.Product]]
        let name: [String: String]
        let price: [String: Int]
        let publishedAt: [String: DateTimeScalar]
        let publishedBy: [String: Objects.User]
        let reviews: [String: [Objects.Review]]
        let scheduledIn: [String: [Objects.ScheduledOperation]]
        let slug: [String: String]
        let stage: [String: Enums.Stage]
        let updatedAt: [String: DateTimeScalar]
        let updatedBy: [String: Objects.User]
        let votes: [String: [Objects.Vote]]

        enum TypeName: String, Codable {
            case product = "Product"
        }
    }
}

extension Objects.Product: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "content":
                if let value = try container.decode(Objects.RichText?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "description":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "documentInStages":
                if let value = try container.decode([Objects.Product]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "history":
                if let value = try container.decode([Objects.Version]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "image":
                if let value = try container.decode(Objects.Asset?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "locale":
                if let value = try container.decode(Enums.Locale?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "localizations":
                if let value = try container.decode([Objects.Product]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "name":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "price":
                if let value = try container.decode(Int?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "reviews":
                if let value = try container.decode([Objects.Review]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduledIn":
                if let value = try container.decode([Objects.ScheduledOperation]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "slug":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "stage":
                if let value = try container.decode(Enums.Stage?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "votes":
                if let value = try container.decode([Objects.Vote]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        content = map["content"]
        createdAt = map["createdAt"]
        createdBy = map["createdBy"]
        description = map["description"]
        documentInStages = map["documentInStages"]
        history = map["history"]
        id = map["id"]
        image = map["image"]
        locale = map["locale"]
        localizations = map["localizations"]
        name = map["name"]
        price = map["price"]
        publishedAt = map["publishedAt"]
        publishedBy = map["publishedBy"]
        reviews = map["reviews"]
        scheduledIn = map["scheduledIn"]
        slug = map["slug"]
        stage = map["stage"]
        updatedAt = map["updatedAt"]
        updatedBy = map["updatedBy"]
        votes = map["votes"]
    }
}

extension Fields where TypeLock == Objects.Product {
    /// System stage field

    func stage() throws -> Enums.Stage {
        let field = GraphQLField.leaf(
            name: "stage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.stage[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.Stage.allCases.first!
        }
    }

    /// System Locale field

    func locale() throws -> Enums.Locale {
        let field = GraphQLField.leaf(
            name: "locale",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.locale[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.Locale.allCases.first!
        }
    }

    /// Get the other localizations for this document

    func localizations<Type>(locales: [Enums.Locale], includeCurrent: Bool, selection: Selection<Type, [Objects.Product]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "localizations",
            arguments: [Argument(name: "locales", type: "[Locale!]!", value: locales), Argument(name: "includeCurrent", type: "Boolean!", value: includeCurrent)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.localizations[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Get the document in other stages

    func documentInStages<Type>(stages: [Enums.Stage], includeCurrent: Bool, inheritLocale: Bool, selection: Selection<Type, [Objects.Product]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "documentInStages",
            arguments: [Argument(name: "stages", type: "[Stage!]!", value: stages), Argument(name: "includeCurrent", type: "Boolean!", value: includeCurrent), Argument(name: "inheritLocale", type: "Boolean!", value: inheritLocale)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.documentInStages[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// The unique identifier

    func id() throws -> String {
        let field = GraphQLField.leaf(
            name: "id",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.id[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// The time the document was created

    func createdAt(variation: Enums.SystemDateTimeFieldVariation) throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "createdAt",
            arguments: [Argument(name: "variation", type: "SystemDateTimeFieldVariation!", value: variation)]
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.createdAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was updated

    func updatedAt(variation: Enums.SystemDateTimeFieldVariation) throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "updatedAt",
            arguments: [Argument(name: "variation", type: "SystemDateTimeFieldVariation!", value: variation)]
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updatedAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was published. Null on documents in draft stage.

    func publishedAt(variation: Enums.SystemDateTimeFieldVariation) throws -> DateTimeScalar? {
        let field = GraphQLField.leaf(
            name: "publishedAt",
            arguments: [Argument(name: "variation", type: "SystemDateTimeFieldVariation!", value: variation)]
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.publishedAt[field.alias!]
        case .mocking:
            return nil
        }
    }

    func name() throws -> String {
        let field = GraphQLField.leaf(
            name: "name",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.name[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    func slug() throws -> String {
        let field = GraphQLField.leaf(
            name: "slug",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.slug[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    func description() throws -> String? {
        let field = GraphQLField.leaf(
            name: "description",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.description[field.alias!]
        case .mocking:
            return nil
        }
    }

    func price() throws -> Int {
        let field = GraphQLField.leaf(
            name: "price",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.price[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Int.mockValue
        }
    }

    func content<Type>(selection: Selection<Type, Objects.RichText?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "content",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.content[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that created this document

    func createdBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createdBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createdBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last updated this document

    func updatedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updatedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updatedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last published this document

    func publishedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.publishedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    func reviews<Type>(where: OptionalArgument<InputObjects.ReviewWhereInput> = .absent(), orderBy: OptionalArgument<Enums.ReviewOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, [Objects.Review]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "reviews",
            arguments: [Argument(name: "where", type: "ReviewWhereInput", value: `where`), Argument(name: "orderBy", type: "ReviewOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.reviews[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    func votes<Type>(where: OptionalArgument<InputObjects.VoteWhereInput> = .absent(), orderBy: OptionalArgument<Enums.VoteOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, [Objects.Vote]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "votes",
            arguments: [Argument(name: "where", type: "VoteWhereInput", value: `where`), Argument(name: "orderBy", type: "VoteOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.votes[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    func image<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.Asset?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "image",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.image[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    func scheduledIn<Type>(where: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, [Objects.ScheduledOperation]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduledIn",
            arguments: [Argument(name: "where", type: "ScheduledOperationWhereInput", value: `where`), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.scheduledIn[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// List of Product versions

    func history<Type>(limit: Int, skip: Int, stageOverride: OptionalArgument<Enums.Stage> = .absent(), selection: Selection<Type, [Objects.Version]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "history",
            arguments: [Argument(name: "limit", type: "Int!", value: limit), Argument(name: "skip", type: "Int!", value: skip), Argument(name: "stageOverride", type: "Stage", value: stageOverride)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.history[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Product<T> = Selection<T, Objects.Product>
}

extension Objects {
    struct ProductConnection {
        let __typename: TypeName = .productConnection
        let aggregate: [String: Objects.Aggregate]
        let edges: [String: [Objects.ProductEdge]]
        let pageInfo: [String: Objects.PageInfo]

        enum TypeName: String, Codable {
            case productConnection = "ProductConnection"
        }
    }
}

extension Objects.ProductConnection: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "aggregate":
                if let value = try container.decode(Objects.Aggregate?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "edges":
                if let value = try container.decode([Objects.ProductEdge]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "pageInfo":
                if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        aggregate = map["aggregate"]
        edges = map["edges"]
        pageInfo = map["pageInfo"]
    }
}

extension Fields where TypeLock == Objects.ProductConnection {
    /// Information to aid in pagination.

    func pageInfo<Type>(selection: Selection<Type, Objects.PageInfo>) throws -> Type {
        let field = GraphQLField.composite(
            name: "pageInfo",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.pageInfo[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A list of edges.

    func edges<Type>(selection: Selection<Type, [Objects.ProductEdge]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "edges",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.edges[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    func aggregate<Type>(selection: Selection<Type, Objects.Aggregate>) throws -> Type {
        let field = GraphQLField.composite(
            name: "aggregate",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.aggregate[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias ProductConnection<T> = Selection<T, Objects.ProductConnection>
}

extension Objects {
    struct ProductEdge {
        let __typename: TypeName = .productEdge
        let cursor: [String: String]
        let node: [String: Objects.Product]

        enum TypeName: String, Codable {
            case productEdge = "ProductEdge"
        }
    }
}

extension Objects.ProductEdge: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "cursor":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "node":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        cursor = map["cursor"]
        node = map["node"]
    }
}

extension Fields where TypeLock == Objects.ProductEdge {
    /// The item at the end of the edge.

    func node<Type>(selection: Selection<Type, Objects.Product>) throws -> Type {
        let field = GraphQLField.composite(
            name: "node",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.node[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A cursor for use in pagination.

    func cursor() throws -> String {
        let field = GraphQLField.leaf(
            name: "cursor",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.cursor[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias ProductEdge<T> = Selection<T, Objects.ProductEdge>
}

extension Objects {
    struct Query {
        let __typename: TypeName = .query
        let asset: [String: Objects.Asset]
        let assetVersion: [String: Objects.DocumentVersion]
        let assets: [String: [Objects.Asset]]
        let assetsConnection: [String: Objects.AssetConnection]
        let nextAuthUser: [String: Objects.NextAuthUser]
        let nextAuthUserVersion: [String: Objects.DocumentVersion]
        let nextAuthUsers: [String: [Objects.NextAuthUser]]
        let nextAuthUsersConnection: [String: Objects.NextAuthUserConnection]
        let node: [String: Interfaces.Node]
        let product: [String: Objects.Product]
        let productVersion: [String: Objects.DocumentVersion]
        let products: [String: [Objects.Product]]
        let productsConnection: [String: Objects.ProductConnection]
        let review: [String: Objects.Review]
        let reviewVersion: [String: Objects.DocumentVersion]
        let reviews: [String: [Objects.Review]]
        let reviewsConnection: [String: Objects.ReviewConnection]
        let scheduledOperation: [String: Objects.ScheduledOperation]
        let scheduledOperations: [String: [Objects.ScheduledOperation]]
        let scheduledOperationsConnection: [String: Objects.ScheduledOperationConnection]
        let scheduledRelease: [String: Objects.ScheduledRelease]
        let scheduledReleases: [String: [Objects.ScheduledRelease]]
        let scheduledReleasesConnection: [String: Objects.ScheduledReleaseConnection]
        let user: [String: Objects.User]
        let users: [String: [Objects.User]]
        let usersConnection: [String: Objects.UserConnection]
        let vote: [String: Objects.Vote]
        let voteVersion: [String: Objects.DocumentVersion]
        let votes: [String: [Objects.Vote]]
        let votesConnection: [String: Objects.VoteConnection]

        enum TypeName: String, Codable {
            case query = "Query"
        }
    }
}

extension Objects.Query: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "asset":
                if let value = try container.decode(Objects.Asset?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "assetVersion":
                if let value = try container.decode(Objects.DocumentVersion?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "assets":
                if let value = try container.decode([Objects.Asset]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "assetsConnection":
                if let value = try container.decode(Objects.AssetConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "nextAuthUser":
                if let value = try container.decode(Objects.NextAuthUser?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "nextAuthUserVersion":
                if let value = try container.decode(Objects.DocumentVersion?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "nextAuthUsers":
                if let value = try container.decode([Objects.NextAuthUser]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "nextAuthUsersConnection":
                if let value = try container.decode(Objects.NextAuthUserConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "node":
                if let value = try container.decode(Interfaces.Node?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "product":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "productVersion":
                if let value = try container.decode(Objects.DocumentVersion?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "products":
                if let value = try container.decode([Objects.Product]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "productsConnection":
                if let value = try container.decode(Objects.ProductConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "review":
                if let value = try container.decode(Objects.Review?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "reviewVersion":
                if let value = try container.decode(Objects.DocumentVersion?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "reviews":
                if let value = try container.decode([Objects.Review]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "reviewsConnection":
                if let value = try container.decode(Objects.ReviewConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduledOperation":
                if let value = try container.decode(Objects.ScheduledOperation?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduledOperations":
                if let value = try container.decode([Objects.ScheduledOperation]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduledOperationsConnection":
                if let value = try container.decode(Objects.ScheduledOperationConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduledRelease":
                if let value = try container.decode(Objects.ScheduledRelease?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduledReleases":
                if let value = try container.decode([Objects.ScheduledRelease]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduledReleasesConnection":
                if let value = try container.decode(Objects.ScheduledReleaseConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "user":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "users":
                if let value = try container.decode([Objects.User]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "usersConnection":
                if let value = try container.decode(Objects.UserConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "vote":
                if let value = try container.decode(Objects.Vote?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "voteVersion":
                if let value = try container.decode(Objects.DocumentVersion?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "votes":
                if let value = try container.decode([Objects.Vote]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "votesConnection":
                if let value = try container.decode(Objects.VoteConnection?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        asset = map["asset"]
        assetVersion = map["assetVersion"]
        assets = map["assets"]
        assetsConnection = map["assetsConnection"]
        nextAuthUser = map["nextAuthUser"]
        nextAuthUserVersion = map["nextAuthUserVersion"]
        nextAuthUsers = map["nextAuthUsers"]
        nextAuthUsersConnection = map["nextAuthUsersConnection"]
        node = map["node"]
        product = map["product"]
        productVersion = map["productVersion"]
        products = map["products"]
        productsConnection = map["productsConnection"]
        review = map["review"]
        reviewVersion = map["reviewVersion"]
        reviews = map["reviews"]
        reviewsConnection = map["reviewsConnection"]
        scheduledOperation = map["scheduledOperation"]
        scheduledOperations = map["scheduledOperations"]
        scheduledOperationsConnection = map["scheduledOperationsConnection"]
        scheduledRelease = map["scheduledRelease"]
        scheduledReleases = map["scheduledReleases"]
        scheduledReleasesConnection = map["scheduledReleasesConnection"]
        user = map["user"]
        users = map["users"]
        usersConnection = map["usersConnection"]
        vote = map["vote"]
        voteVersion = map["voteVersion"]
        votes = map["votes"]
        votesConnection = map["votesConnection"]
    }
}

extension Fields where TypeLock == Objects.Query {
    /// Fetches an object given its ID

    func node<Type>(id: String, stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Interfaces.Node?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "node",
            arguments: [Argument(name: "id", type: "ID!", value: id), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.node[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple products

    func products<Type>(where: OptionalArgument<InputObjects.ProductWhereInput> = .absent(), orderBy: OptionalArgument<Enums.ProductOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, [Objects.Product]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "products",
            arguments: [Argument(name: "where", type: "ProductWhereInput", value: `where`), Argument(name: "orderBy", type: "ProductOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.products[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve a single product

    func product<Type>(where: InputObjects.ProductWhereUniqueInput, stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.Product?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "product",
            arguments: [Argument(name: "where", type: "ProductWhereUniqueInput!", value: `where`), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.product[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple products using the Relay connection interface

    func productsConnection<Type>(where: OptionalArgument<InputObjects.ProductWhereInput> = .absent(), orderBy: OptionalArgument<Enums.ProductOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.ProductConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "productsConnection",
            arguments: [Argument(name: "where", type: "ProductWhereInput", value: `where`), Argument(name: "orderBy", type: "ProductOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.productsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve document version

    func productVersion<Type>(where: InputObjects.VersionWhereInput, selection: Selection<Type, Objects.DocumentVersion?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "productVersion",
            arguments: [Argument(name: "where", type: "VersionWhereInput!", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.productVersion[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple reviews

    func reviews<Type>(where: OptionalArgument<InputObjects.ReviewWhereInput> = .absent(), orderBy: OptionalArgument<Enums.ReviewOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, [Objects.Review]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "reviews",
            arguments: [Argument(name: "where", type: "ReviewWhereInput", value: `where`), Argument(name: "orderBy", type: "ReviewOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.reviews[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve a single review

    func review<Type>(where: InputObjects.ReviewWhereUniqueInput, stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.Review?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "review",
            arguments: [Argument(name: "where", type: "ReviewWhereUniqueInput!", value: `where`), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.review[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple reviews using the Relay connection interface

    func reviewsConnection<Type>(where: OptionalArgument<InputObjects.ReviewWhereInput> = .absent(), orderBy: OptionalArgument<Enums.ReviewOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.ReviewConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "reviewsConnection",
            arguments: [Argument(name: "where", type: "ReviewWhereInput", value: `where`), Argument(name: "orderBy", type: "ReviewOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.reviewsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve document version

    func reviewVersion<Type>(where: InputObjects.VersionWhereInput, selection: Selection<Type, Objects.DocumentVersion?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "reviewVersion",
            arguments: [Argument(name: "where", type: "VersionWhereInput!", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.reviewVersion[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple assets

    func assets<Type>(where: OptionalArgument<InputObjects.AssetWhereInput> = .absent(), orderBy: OptionalArgument<Enums.AssetOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, [Objects.Asset]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "assets",
            arguments: [Argument(name: "where", type: "AssetWhereInput", value: `where`), Argument(name: "orderBy", type: "AssetOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.assets[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve a single asset

    func asset<Type>(where: InputObjects.AssetWhereUniqueInput, stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.Asset?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "asset",
            arguments: [Argument(name: "where", type: "AssetWhereUniqueInput!", value: `where`), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.asset[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple assets using the Relay connection interface

    func assetsConnection<Type>(where: OptionalArgument<InputObjects.AssetWhereInput> = .absent(), orderBy: OptionalArgument<Enums.AssetOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.AssetConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "assetsConnection",
            arguments: [Argument(name: "where", type: "AssetWhereInput", value: `where`), Argument(name: "orderBy", type: "AssetOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.assetsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve document version

    func assetVersion<Type>(where: InputObjects.VersionWhereInput, selection: Selection<Type, Objects.DocumentVersion?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "assetVersion",
            arguments: [Argument(name: "where", type: "VersionWhereInput!", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.assetVersion[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple votes

    func votes<Type>(where: OptionalArgument<InputObjects.VoteWhereInput> = .absent(), orderBy: OptionalArgument<Enums.VoteOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, [Objects.Vote]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "votes",
            arguments: [Argument(name: "where", type: "VoteWhereInput", value: `where`), Argument(name: "orderBy", type: "VoteOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.votes[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve a single vote

    func vote<Type>(where: InputObjects.VoteWhereUniqueInput, stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.Vote?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "vote",
            arguments: [Argument(name: "where", type: "VoteWhereUniqueInput!", value: `where`), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.vote[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple votes using the Relay connection interface

    func votesConnection<Type>(where: OptionalArgument<InputObjects.VoteWhereInput> = .absent(), orderBy: OptionalArgument<Enums.VoteOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.VoteConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "votesConnection",
            arguments: [Argument(name: "where", type: "VoteWhereInput", value: `where`), Argument(name: "orderBy", type: "VoteOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.votesConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve document version

    func voteVersion<Type>(where: InputObjects.VersionWhereInput, selection: Selection<Type, Objects.DocumentVersion?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "voteVersion",
            arguments: [Argument(name: "where", type: "VersionWhereInput!", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.voteVersion[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple users

    func users<Type>(where: OptionalArgument<InputObjects.UserWhereInput> = .absent(), orderBy: OptionalArgument<Enums.UserOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, [Objects.User]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "users",
            arguments: [Argument(name: "where", type: "UserWhereInput", value: `where`), Argument(name: "orderBy", type: "UserOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.users[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve a single user

    func user<Type>(where: InputObjects.UserWhereUniqueInput, stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "user",
            arguments: [Argument(name: "where", type: "UserWhereUniqueInput!", value: `where`), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.user[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple users using the Relay connection interface

    func usersConnection<Type>(where: OptionalArgument<InputObjects.UserWhereInput> = .absent(), orderBy: OptionalArgument<Enums.UserOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.UserConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "usersConnection",
            arguments: [Argument(name: "where", type: "UserWhereInput", value: `where`), Argument(name: "orderBy", type: "UserOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.usersConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple scheduledOperations

    func scheduledOperations<Type>(where: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent(), orderBy: OptionalArgument<Enums.ScheduledOperationOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, [Objects.ScheduledOperation]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduledOperations",
            arguments: [Argument(name: "where", type: "ScheduledOperationWhereInput", value: `where`), Argument(name: "orderBy", type: "ScheduledOperationOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.scheduledOperations[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve a single scheduledOperation

    func scheduledOperation<Type>(where: InputObjects.ScheduledOperationWhereUniqueInput, stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.ScheduledOperation?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduledOperation",
            arguments: [Argument(name: "where", type: "ScheduledOperationWhereUniqueInput!", value: `where`), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.scheduledOperation[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple scheduledOperations using the Relay connection interface

    func scheduledOperationsConnection<Type>(where: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent(), orderBy: OptionalArgument<Enums.ScheduledOperationOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.ScheduledOperationConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduledOperationsConnection",
            arguments: [Argument(name: "where", type: "ScheduledOperationWhereInput", value: `where`), Argument(name: "orderBy", type: "ScheduledOperationOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.scheduledOperationsConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple scheduledReleases

    func scheduledReleases<Type>(where: OptionalArgument<InputObjects.ScheduledReleaseWhereInput> = .absent(), orderBy: OptionalArgument<Enums.ScheduledReleaseOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, [Objects.ScheduledRelease]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduledReleases",
            arguments: [Argument(name: "where", type: "ScheduledReleaseWhereInput", value: `where`), Argument(name: "orderBy", type: "ScheduledReleaseOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.scheduledReleases[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve a single scheduledRelease

    func scheduledRelease<Type>(where: InputObjects.ScheduledReleaseWhereUniqueInput, stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.ScheduledRelease?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduledRelease",
            arguments: [Argument(name: "where", type: "ScheduledReleaseWhereUniqueInput!", value: `where`), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.scheduledRelease[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple scheduledReleases using the Relay connection interface

    func scheduledReleasesConnection<Type>(where: OptionalArgument<InputObjects.ScheduledReleaseWhereInput> = .absent(), orderBy: OptionalArgument<Enums.ScheduledReleaseOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.ScheduledReleaseConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduledReleasesConnection",
            arguments: [Argument(name: "where", type: "ScheduledReleaseWhereInput", value: `where`), Argument(name: "orderBy", type: "ScheduledReleaseOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.scheduledReleasesConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple nextAuthUsers

    func nextAuthUsers<Type>(where: OptionalArgument<InputObjects.NextAuthUserWhereInput> = .absent(), orderBy: OptionalArgument<Enums.NextAuthUserOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, [Objects.NextAuthUser]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "nextAuthUsers",
            arguments: [Argument(name: "where", type: "NextAuthUserWhereInput", value: `where`), Argument(name: "orderBy", type: "NextAuthUserOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.nextAuthUsers[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve a single nextAuthUser

    func nextAuthUser<Type>(where: InputObjects.NextAuthUserWhereUniqueInput, stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.NextAuthUser?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "nextAuthUser",
            arguments: [Argument(name: "where", type: "NextAuthUserWhereUniqueInput!", value: `where`), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.nextAuthUser[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve multiple nextAuthUsers using the Relay connection interface

    func nextAuthUsersConnection<Type>(where: OptionalArgument<InputObjects.NextAuthUserWhereInput> = .absent(), orderBy: OptionalArgument<Enums.NextAuthUserOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), stage: Enums.Stage, locales: [Enums.Locale], selection: Selection<Type, Objects.NextAuthUserConnection>) throws -> Type {
        let field = GraphQLField.composite(
            name: "nextAuthUsersConnection",
            arguments: [Argument(name: "where", type: "NextAuthUserWhereInput", value: `where`), Argument(name: "orderBy", type: "NextAuthUserOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "stage", type: "Stage!", value: stage), Argument(name: "locales", type: "[Locale!]!", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.nextAuthUsersConnection[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Retrieve document version

    func nextAuthUserVersion<Type>(where: InputObjects.VersionWhereInput, selection: Selection<Type, Objects.DocumentVersion?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "nextAuthUserVersion",
            arguments: [Argument(name: "where", type: "VersionWhereInput!", value: `where`)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.nextAuthUserVersion[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Query<T> = Selection<T, Objects.Query>
}

extension Objects {
    struct Rgba {
        let __typename: TypeName = .rgba
        let a: [String: String]
        let b: [String: String]
        let g: [String: String]
        let r: [String: String]

        enum TypeName: String, Codable {
            case rgba = "RGBA"
        }
    }
}

extension Objects.Rgba: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "a":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "b":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "g":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "r":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        a = map["a"]
        b = map["b"]
        g = map["g"]
        r = map["r"]
    }
}

extension Fields where TypeLock == Objects.Rgba {
    func r() throws -> String {
        let field = GraphQLField.leaf(
            name: "r",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.r[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    func g() throws -> String {
        let field = GraphQLField.leaf(
            name: "g",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.g[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    func b() throws -> String {
        let field = GraphQLField.leaf(
            name: "b",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.b[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    func a() throws -> String {
        let field = GraphQLField.leaf(
            name: "a",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.a[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Rgba<T> = Selection<T, Objects.Rgba>
}

extension Objects {
    struct Review {
        let __typename: TypeName = .review
        let comment: [String: String]
        let createdAt: [String: DateTimeScalar]
        let createdBy: [String: Objects.User]
        let documentInStages: [String: [Objects.Review]]
        let history: [String: [Objects.Version]]
        let id: [String: String]
        let name: [String: String]
        let product: [String: Objects.Product]
        let publishedAt: [String: DateTimeScalar]
        let publishedBy: [String: Objects.User]
        let scheduledIn: [String: [Objects.ScheduledOperation]]
        let stage: [String: Enums.Stage]
        let updatedAt: [String: DateTimeScalar]
        let updatedBy: [String: Objects.User]

        enum TypeName: String, Codable {
            case review = "Review"
        }
    }
}

extension Objects.Review: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "comment":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "documentInStages":
                if let value = try container.decode([Objects.Review]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "history":
                if let value = try container.decode([Objects.Version]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "name":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "product":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduledIn":
                if let value = try container.decode([Objects.ScheduledOperation]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "stage":
                if let value = try container.decode(Enums.Stage?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        comment = map["comment"]
        createdAt = map["createdAt"]
        createdBy = map["createdBy"]
        documentInStages = map["documentInStages"]
        history = map["history"]
        id = map["id"]
        name = map["name"]
        product = map["product"]
        publishedAt = map["publishedAt"]
        publishedBy = map["publishedBy"]
        scheduledIn = map["scheduledIn"]
        stage = map["stage"]
        updatedAt = map["updatedAt"]
        updatedBy = map["updatedBy"]
    }
}

extension Fields where TypeLock == Objects.Review {
    /// System stage field

    func stage() throws -> Enums.Stage {
        let field = GraphQLField.leaf(
            name: "stage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.stage[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.Stage.allCases.first!
        }
    }

    /// Get the document in other stages

    func documentInStages<Type>(stages: [Enums.Stage], includeCurrent: Bool, inheritLocale: Bool, selection: Selection<Type, [Objects.Review]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "documentInStages",
            arguments: [Argument(name: "stages", type: "[Stage!]!", value: stages), Argument(name: "includeCurrent", type: "Boolean!", value: includeCurrent), Argument(name: "inheritLocale", type: "Boolean!", value: inheritLocale)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.documentInStages[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// The unique identifier

    func id() throws -> String {
        let field = GraphQLField.leaf(
            name: "id",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.id[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// The time the document was created

    func createdAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "createdAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.createdAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was updated

    func updatedAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "updatedAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updatedAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was published. Null on documents in draft stage.

    func publishedAt() throws -> DateTimeScalar? {
        let field = GraphQLField.leaf(
            name: "publishedAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.publishedAt[field.alias!]
        case .mocking:
            return nil
        }
    }

    func name() throws -> String? {
        let field = GraphQLField.leaf(
            name: "name",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }

    func comment() throws -> String {
        let field = GraphQLField.leaf(
            name: "comment",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.comment[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// User that created this document

    func createdBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createdBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createdBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last updated this document

    func updatedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updatedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updatedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last published this document

    func publishedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.publishedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    func product<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.Product?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "product",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.product[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    func scheduledIn<Type>(where: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, [Objects.ScheduledOperation]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduledIn",
            arguments: [Argument(name: "where", type: "ScheduledOperationWhereInput", value: `where`), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.scheduledIn[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// List of Review versions

    func history<Type>(limit: Int, skip: Int, stageOverride: OptionalArgument<Enums.Stage> = .absent(), selection: Selection<Type, [Objects.Version]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "history",
            arguments: [Argument(name: "limit", type: "Int!", value: limit), Argument(name: "skip", type: "Int!", value: skip), Argument(name: "stageOverride", type: "Stage", value: stageOverride)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.history[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Review<T> = Selection<T, Objects.Review>
}

extension Objects {
    struct ReviewConnection {
        let __typename: TypeName = .reviewConnection
        let aggregate: [String: Objects.Aggregate]
        let edges: [String: [Objects.ReviewEdge]]
        let pageInfo: [String: Objects.PageInfo]

        enum TypeName: String, Codable {
            case reviewConnection = "ReviewConnection"
        }
    }
}

extension Objects.ReviewConnection: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "aggregate":
                if let value = try container.decode(Objects.Aggregate?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "edges":
                if let value = try container.decode([Objects.ReviewEdge]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "pageInfo":
                if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        aggregate = map["aggregate"]
        edges = map["edges"]
        pageInfo = map["pageInfo"]
    }
}

extension Fields where TypeLock == Objects.ReviewConnection {
    /// Information to aid in pagination.

    func pageInfo<Type>(selection: Selection<Type, Objects.PageInfo>) throws -> Type {
        let field = GraphQLField.composite(
            name: "pageInfo",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.pageInfo[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A list of edges.

    func edges<Type>(selection: Selection<Type, [Objects.ReviewEdge]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "edges",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.edges[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    func aggregate<Type>(selection: Selection<Type, Objects.Aggregate>) throws -> Type {
        let field = GraphQLField.composite(
            name: "aggregate",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.aggregate[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias ReviewConnection<T> = Selection<T, Objects.ReviewConnection>
}

extension Objects {
    struct ReviewEdge {
        let __typename: TypeName = .reviewEdge
        let cursor: [String: String]
        let node: [String: Objects.Review]

        enum TypeName: String, Codable {
            case reviewEdge = "ReviewEdge"
        }
    }
}

extension Objects.ReviewEdge: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "cursor":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "node":
                if let value = try container.decode(Objects.Review?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        cursor = map["cursor"]
        node = map["node"]
    }
}

extension Fields where TypeLock == Objects.ReviewEdge {
    /// The item at the end of the edge.

    func node<Type>(selection: Selection<Type, Objects.Review>) throws -> Type {
        let field = GraphQLField.composite(
            name: "node",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.node[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A cursor for use in pagination.

    func cursor() throws -> String {
        let field = GraphQLField.leaf(
            name: "cursor",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.cursor[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias ReviewEdge<T> = Selection<T, Objects.ReviewEdge>
}

extension Objects {
    struct RichText {
        let __typename: TypeName = .richText
        let html: [String: String]
        let markdown: [String: String]
        let raw: [String: String]
        let text: [String: String]

        enum TypeName: String, Codable {
            case richText = "RichText"
        }
    }
}

extension Objects.RichText: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "html":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "markdown":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "raw":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "text":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        html = map["html"]
        markdown = map["markdown"]
        raw = map["raw"]
        text = map["text"]
    }
}

extension Fields where TypeLock == Objects.RichText {
    /// Returns AST representation

    func raw() throws -> String {
        let field = GraphQLField.leaf(
            name: "raw",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.raw[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// Returns HTMl representation

    func html() throws -> String {
        let field = GraphQLField.leaf(
            name: "html",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.html[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// Returns Markdown representation

    func markdown() throws -> String {
        let field = GraphQLField.leaf(
            name: "markdown",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.markdown[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// Returns plain-text contents of RichText

    func text() throws -> String {
        let field = GraphQLField.leaf(
            name: "text",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.text[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias RichText<T> = Selection<T, Objects.RichText>
}

extension Objects {
    struct ScheduledOperation {
        let __typename: TypeName = .scheduledOperation
        let affectedDocuments: [String: [Unions.ScheduledOperationAffectedDocument]]
        let createdAt: [String: DateTimeScalar]
        let createdBy: [String: Objects.User]
        let description: [String: String]
        let documentInStages: [String: [Objects.ScheduledOperation]]
        let errorMessage: [String: String]
        let id: [String: String]
        let publishedAt: [String: DateTimeScalar]
        let publishedBy: [String: Objects.User]
        let rawPayload: [String: String]
        let release: [String: Objects.ScheduledRelease]
        let stage: [String: Enums.Stage]
        let status: [String: Enums.ScheduledOperationStatus]
        let updatedAt: [String: DateTimeScalar]
        let updatedBy: [String: Objects.User]

        enum TypeName: String, Codable {
            case scheduledOperation = "ScheduledOperation"
        }
    }
}

extension Objects.ScheduledOperation: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "affectedDocuments":
                if let value = try container.decode([Unions.ScheduledOperationAffectedDocument]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "description":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "documentInStages":
                if let value = try container.decode([Objects.ScheduledOperation]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "errorMessage":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "rawPayload":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "release":
                if let value = try container.decode(Objects.ScheduledRelease?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "stage":
                if let value = try container.decode(Enums.Stage?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "status":
                if let value = try container.decode(Enums.ScheduledOperationStatus?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        affectedDocuments = map["affectedDocuments"]
        createdAt = map["createdAt"]
        createdBy = map["createdBy"]
        description = map["description"]
        documentInStages = map["documentInStages"]
        errorMessage = map["errorMessage"]
        id = map["id"]
        publishedAt = map["publishedAt"]
        publishedBy = map["publishedBy"]
        rawPayload = map["rawPayload"]
        release = map["release"]
        stage = map["stage"]
        status = map["status"]
        updatedAt = map["updatedAt"]
        updatedBy = map["updatedBy"]
    }
}

extension Fields where TypeLock == Objects.ScheduledOperation {
    /// System stage field

    func stage() throws -> Enums.Stage {
        let field = GraphQLField.leaf(
            name: "stage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.stage[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.Stage.allCases.first!
        }
    }

    /// Get the document in other stages

    func documentInStages<Type>(stages: [Enums.Stage], includeCurrent: Bool, inheritLocale: Bool, selection: Selection<Type, [Objects.ScheduledOperation]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "documentInStages",
            arguments: [Argument(name: "stages", type: "[Stage!]!", value: stages), Argument(name: "includeCurrent", type: "Boolean!", value: includeCurrent), Argument(name: "inheritLocale", type: "Boolean!", value: inheritLocale)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.documentInStages[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// The unique identifier

    func id() throws -> String {
        let field = GraphQLField.leaf(
            name: "id",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.id[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// The time the document was created

    func createdAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "createdAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.createdAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was updated

    func updatedAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "updatedAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updatedAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was published. Null on documents in draft stage.

    func publishedAt() throws -> DateTimeScalar? {
        let field = GraphQLField.leaf(
            name: "publishedAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.publishedAt[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// Operation description

    func description() throws -> String? {
        let field = GraphQLField.leaf(
            name: "description",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.description[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// Operation error message

    func errorMessage() throws -> String? {
        let field = GraphQLField.leaf(
            name: "errorMessage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.errorMessage[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// Raw operation payload including all details, this field is subject to change

    func rawPayload() throws -> String {
        let field = GraphQLField.leaf(
            name: "rawPayload",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.rawPayload[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// User that created this document

    func createdBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createdBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createdBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last updated this document

    func updatedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updatedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updatedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last published this document

    func publishedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.publishedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// The release this operation is scheduled for

    func release<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.ScheduledRelease?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "release",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.release[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// operation Status

    func status() throws -> Enums.ScheduledOperationStatus {
        let field = GraphQLField.leaf(
            name: "status",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.status[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.ScheduledOperationStatus.allCases.first!
        }
    }

    func affectedDocuments<Type>(skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, [Unions.ScheduledOperationAffectedDocument]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "affectedDocuments",
            arguments: [Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.affectedDocuments[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias ScheduledOperation<T> = Selection<T, Objects.ScheduledOperation>
}

extension Objects {
    struct ScheduledOperationConnection {
        let __typename: TypeName = .scheduledOperationConnection
        let aggregate: [String: Objects.Aggregate]
        let edges: [String: [Objects.ScheduledOperationEdge]]
        let pageInfo: [String: Objects.PageInfo]

        enum TypeName: String, Codable {
            case scheduledOperationConnection = "ScheduledOperationConnection"
        }
    }
}

extension Objects.ScheduledOperationConnection: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "aggregate":
                if let value = try container.decode(Objects.Aggregate?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "edges":
                if let value = try container.decode([Objects.ScheduledOperationEdge]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "pageInfo":
                if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        aggregate = map["aggregate"]
        edges = map["edges"]
        pageInfo = map["pageInfo"]
    }
}

extension Fields where TypeLock == Objects.ScheduledOperationConnection {
    /// Information to aid in pagination.

    func pageInfo<Type>(selection: Selection<Type, Objects.PageInfo>) throws -> Type {
        let field = GraphQLField.composite(
            name: "pageInfo",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.pageInfo[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A list of edges.

    func edges<Type>(selection: Selection<Type, [Objects.ScheduledOperationEdge]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "edges",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.edges[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    func aggregate<Type>(selection: Selection<Type, Objects.Aggregate>) throws -> Type {
        let field = GraphQLField.composite(
            name: "aggregate",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.aggregate[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias ScheduledOperationConnection<T> = Selection<T, Objects.ScheduledOperationConnection>
}

extension Objects {
    struct ScheduledOperationEdge {
        let __typename: TypeName = .scheduledOperationEdge
        let cursor: [String: String]
        let node: [String: Objects.ScheduledOperation]

        enum TypeName: String, Codable {
            case scheduledOperationEdge = "ScheduledOperationEdge"
        }
    }
}

extension Objects.ScheduledOperationEdge: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "cursor":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "node":
                if let value = try container.decode(Objects.ScheduledOperation?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        cursor = map["cursor"]
        node = map["node"]
    }
}

extension Fields where TypeLock == Objects.ScheduledOperationEdge {
    /// The item at the end of the edge.

    func node<Type>(selection: Selection<Type, Objects.ScheduledOperation>) throws -> Type {
        let field = GraphQLField.composite(
            name: "node",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.node[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A cursor for use in pagination.

    func cursor() throws -> String {
        let field = GraphQLField.leaf(
            name: "cursor",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.cursor[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias ScheduledOperationEdge<T> = Selection<T, Objects.ScheduledOperationEdge>
}

extension Objects {
    struct ScheduledRelease {
        let __typename: TypeName = .scheduledRelease
        let createdAt: [String: DateTimeScalar]
        let createdBy: [String: Objects.User]
        let description: [String: String]
        let documentInStages: [String: [Objects.ScheduledRelease]]
        let errorMessage: [String: String]
        let id: [String: String]
        let isActive: [String: Bool]
        let isImplicit: [String: Bool]
        let operations: [String: [Objects.ScheduledOperation]]
        let publishedAt: [String: DateTimeScalar]
        let publishedBy: [String: Objects.User]
        let releaseAt: [String: DateTimeScalar]
        let stage: [String: Enums.Stage]
        let status: [String: Enums.ScheduledReleaseStatus]
        let title: [String: String]
        let updatedAt: [String: DateTimeScalar]
        let updatedBy: [String: Objects.User]

        enum TypeName: String, Codable {
            case scheduledRelease = "ScheduledRelease"
        }
    }
}

extension Objects.ScheduledRelease: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "createdAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "description":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "documentInStages":
                if let value = try container.decode([Objects.ScheduledRelease]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "errorMessage":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "isActive":
                if let value = try container.decode(Bool?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "isImplicit":
                if let value = try container.decode(Bool?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "operations":
                if let value = try container.decode([Objects.ScheduledOperation]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "releaseAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "stage":
                if let value = try container.decode(Enums.Stage?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "status":
                if let value = try container.decode(Enums.ScheduledReleaseStatus?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "title":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        createdAt = map["createdAt"]
        createdBy = map["createdBy"]
        description = map["description"]
        documentInStages = map["documentInStages"]
        errorMessage = map["errorMessage"]
        id = map["id"]
        isActive = map["isActive"]
        isImplicit = map["isImplicit"]
        operations = map["operations"]
        publishedAt = map["publishedAt"]
        publishedBy = map["publishedBy"]
        releaseAt = map["releaseAt"]
        stage = map["stage"]
        status = map["status"]
        title = map["title"]
        updatedAt = map["updatedAt"]
        updatedBy = map["updatedBy"]
    }
}

extension Fields where TypeLock == Objects.ScheduledRelease {
    /// System stage field

    func stage() throws -> Enums.Stage {
        let field = GraphQLField.leaf(
            name: "stage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.stage[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.Stage.allCases.first!
        }
    }

    /// Get the document in other stages

    func documentInStages<Type>(stages: [Enums.Stage], includeCurrent: Bool, inheritLocale: Bool, selection: Selection<Type, [Objects.ScheduledRelease]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "documentInStages",
            arguments: [Argument(name: "stages", type: "[Stage!]!", value: stages), Argument(name: "includeCurrent", type: "Boolean!", value: includeCurrent), Argument(name: "inheritLocale", type: "Boolean!", value: inheritLocale)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.documentInStages[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// The unique identifier

    func id() throws -> String {
        let field = GraphQLField.leaf(
            name: "id",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.id[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// The time the document was created

    func createdAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "createdAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.createdAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was updated

    func updatedAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "updatedAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updatedAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was published. Null on documents in draft stage.

    func publishedAt() throws -> DateTimeScalar? {
        let field = GraphQLField.leaf(
            name: "publishedAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.publishedAt[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// Release Title

    func title() throws -> String? {
        let field = GraphQLField.leaf(
            name: "title",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.title[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// Release description

    func description() throws -> String? {
        let field = GraphQLField.leaf(
            name: "description",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.description[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// Release error message

    func errorMessage() throws -> String? {
        let field = GraphQLField.leaf(
            name: "errorMessage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.errorMessage[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// Whether scheduled release should be run

    func isActive() throws -> Bool {
        let field = GraphQLField.leaf(
            name: "isActive",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.isActive[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Bool.mockValue
        }
    }

    /// Whether scheduled release is implicit

    func isImplicit() throws -> Bool {
        let field = GraphQLField.leaf(
            name: "isImplicit",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.isImplicit[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Bool.mockValue
        }
    }

    /// Release date and time

    func releaseAt() throws -> DateTimeScalar? {
        let field = GraphQLField.leaf(
            name: "releaseAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.releaseAt[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// User that created this document

    func createdBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createdBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createdBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last updated this document

    func updatedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updatedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updatedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last published this document

    func publishedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.publishedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// Operations to run with this release

    func operations<Type>(where: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent(), orderBy: OptionalArgument<Enums.ScheduledOperationOrderByInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, [Objects.ScheduledOperation]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "operations",
            arguments: [Argument(name: "where", type: "ScheduledOperationWhereInput", value: `where`), Argument(name: "orderBy", type: "ScheduledOperationOrderByInput", value: orderBy), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.operations[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// Release Status

    func status() throws -> Enums.ScheduledReleaseStatus {
        let field = GraphQLField.leaf(
            name: "status",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.status[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.ScheduledReleaseStatus.allCases.first!
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias ScheduledRelease<T> = Selection<T, Objects.ScheduledRelease>
}

extension Objects {
    struct ScheduledReleaseConnection {
        let __typename: TypeName = .scheduledReleaseConnection
        let aggregate: [String: Objects.Aggregate]
        let edges: [String: [Objects.ScheduledReleaseEdge]]
        let pageInfo: [String: Objects.PageInfo]

        enum TypeName: String, Codable {
            case scheduledReleaseConnection = "ScheduledReleaseConnection"
        }
    }
}

extension Objects.ScheduledReleaseConnection: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "aggregate":
                if let value = try container.decode(Objects.Aggregate?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "edges":
                if let value = try container.decode([Objects.ScheduledReleaseEdge]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "pageInfo":
                if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        aggregate = map["aggregate"]
        edges = map["edges"]
        pageInfo = map["pageInfo"]
    }
}

extension Fields where TypeLock == Objects.ScheduledReleaseConnection {
    /// Information to aid in pagination.

    func pageInfo<Type>(selection: Selection<Type, Objects.PageInfo>) throws -> Type {
        let field = GraphQLField.composite(
            name: "pageInfo",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.pageInfo[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A list of edges.

    func edges<Type>(selection: Selection<Type, [Objects.ScheduledReleaseEdge]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "edges",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.edges[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    func aggregate<Type>(selection: Selection<Type, Objects.Aggregate>) throws -> Type {
        let field = GraphQLField.composite(
            name: "aggregate",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.aggregate[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias ScheduledReleaseConnection<T> = Selection<T, Objects.ScheduledReleaseConnection>
}

extension Objects {
    struct ScheduledReleaseEdge {
        let __typename: TypeName = .scheduledReleaseEdge
        let cursor: [String: String]
        let node: [String: Objects.ScheduledRelease]

        enum TypeName: String, Codable {
            case scheduledReleaseEdge = "ScheduledReleaseEdge"
        }
    }
}

extension Objects.ScheduledReleaseEdge: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "cursor":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "node":
                if let value = try container.decode(Objects.ScheduledRelease?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        cursor = map["cursor"]
        node = map["node"]
    }
}

extension Fields where TypeLock == Objects.ScheduledReleaseEdge {
    /// The item at the end of the edge.

    func node<Type>(selection: Selection<Type, Objects.ScheduledRelease>) throws -> Type {
        let field = GraphQLField.composite(
            name: "node",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.node[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A cursor for use in pagination.

    func cursor() throws -> String {
        let field = GraphQLField.leaf(
            name: "cursor",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.cursor[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias ScheduledReleaseEdge<T> = Selection<T, Objects.ScheduledReleaseEdge>
}

extension Objects {
    struct User {
        let __typename: TypeName = .user
        let createdAt: [String: DateTimeScalar]
        let documentInStages: [String: [Objects.User]]
        let id: [String: String]
        let isActive: [String: Bool]
        let kind: [String: Enums.UserKind]
        let name: [String: String]
        let picture: [String: String]
        let publishedAt: [String: DateTimeScalar]
        let stage: [String: Enums.Stage]
        let updatedAt: [String: DateTimeScalar]

        enum TypeName: String, Codable {
            case user = "User"
        }
    }
}

extension Objects.User: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "createdAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "documentInStages":
                if let value = try container.decode([Objects.User]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "isActive":
                if let value = try container.decode(Bool?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "kind":
                if let value = try container.decode(Enums.UserKind?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "name":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "picture":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "stage":
                if let value = try container.decode(Enums.Stage?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        createdAt = map["createdAt"]
        documentInStages = map["documentInStages"]
        id = map["id"]
        isActive = map["isActive"]
        kind = map["kind"]
        name = map["name"]
        picture = map["picture"]
        publishedAt = map["publishedAt"]
        stage = map["stage"]
        updatedAt = map["updatedAt"]
    }
}

extension Fields where TypeLock == Objects.User {
    /// System stage field

    func stage() throws -> Enums.Stage {
        let field = GraphQLField.leaf(
            name: "stage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.stage[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.Stage.allCases.first!
        }
    }

    /// Get the document in other stages

    func documentInStages<Type>(stages: [Enums.Stage], includeCurrent: Bool, inheritLocale: Bool, selection: Selection<Type, [Objects.User]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "documentInStages",
            arguments: [Argument(name: "stages", type: "[Stage!]!", value: stages), Argument(name: "includeCurrent", type: "Boolean!", value: includeCurrent), Argument(name: "inheritLocale", type: "Boolean!", value: inheritLocale)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.documentInStages[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// The unique identifier

    func id() throws -> String {
        let field = GraphQLField.leaf(
            name: "id",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.id[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// The time the document was created

    func createdAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "createdAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.createdAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was updated

    func updatedAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "updatedAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updatedAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was published. Null on documents in draft stage.

    func publishedAt() throws -> DateTimeScalar? {
        let field = GraphQLField.leaf(
            name: "publishedAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.publishedAt[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// The username

    func name() throws -> String {
        let field = GraphQLField.leaf(
            name: "name",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.name[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// Profile Picture url

    func picture() throws -> String? {
        let field = GraphQLField.leaf(
            name: "picture",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.picture[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// Flag to determine if user is active or not

    func isActive() throws -> Bool {
        let field = GraphQLField.leaf(
            name: "isActive",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.isActive[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Bool.mockValue
        }
    }

    /// User Kind. Can be either MEMBER, PAT or PUBLIC

    func kind() throws -> Enums.UserKind {
        let field = GraphQLField.leaf(
            name: "kind",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.kind[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.UserKind.allCases.first!
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias User<T> = Selection<T, Objects.User>
}

extension Objects {
    struct UserConnection {
        let __typename: TypeName = .userConnection
        let aggregate: [String: Objects.Aggregate]
        let edges: [String: [Objects.UserEdge]]
        let pageInfo: [String: Objects.PageInfo]

        enum TypeName: String, Codable {
            case userConnection = "UserConnection"
        }
    }
}

extension Objects.UserConnection: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "aggregate":
                if let value = try container.decode(Objects.Aggregate?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "edges":
                if let value = try container.decode([Objects.UserEdge]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "pageInfo":
                if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        aggregate = map["aggregate"]
        edges = map["edges"]
        pageInfo = map["pageInfo"]
    }
}

extension Fields where TypeLock == Objects.UserConnection {
    /// Information to aid in pagination.

    func pageInfo<Type>(selection: Selection<Type, Objects.PageInfo>) throws -> Type {
        let field = GraphQLField.composite(
            name: "pageInfo",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.pageInfo[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A list of edges.

    func edges<Type>(selection: Selection<Type, [Objects.UserEdge]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "edges",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.edges[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    func aggregate<Type>(selection: Selection<Type, Objects.Aggregate>) throws -> Type {
        let field = GraphQLField.composite(
            name: "aggregate",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.aggregate[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias UserConnection<T> = Selection<T, Objects.UserConnection>
}

extension Objects {
    struct UserEdge {
        let __typename: TypeName = .userEdge
        let cursor: [String: String]
        let node: [String: Objects.User]

        enum TypeName: String, Codable {
            case userEdge = "UserEdge"
        }
    }
}

extension Objects.UserEdge: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "cursor":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "node":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        cursor = map["cursor"]
        node = map["node"]
    }
}

extension Fields where TypeLock == Objects.UserEdge {
    /// The item at the end of the edge.

    func node<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
        let field = GraphQLField.composite(
            name: "node",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.node[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A cursor for use in pagination.

    func cursor() throws -> String {
        let field = GraphQLField.leaf(
            name: "cursor",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.cursor[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias UserEdge<T> = Selection<T, Objects.UserEdge>
}

extension Objects {
    struct Version {
        let __typename: TypeName = .version
        let createdAt: [String: DateTimeScalar]
        let id: [String: String]
        let revision: [String: Int]
        let stage: [String: Enums.Stage]

        enum TypeName: String, Codable {
            case version = "Version"
        }
    }
}

extension Objects.Version: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "createdAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "revision":
                if let value = try container.decode(Int?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "stage":
                if let value = try container.decode(Enums.Stage?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        createdAt = map["createdAt"]
        id = map["id"]
        revision = map["revision"]
        stage = map["stage"]
    }
}

extension Fields where TypeLock == Objects.Version {
    func id() throws -> String {
        let field = GraphQLField.leaf(
            name: "id",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.id[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    func stage() throws -> Enums.Stage {
        let field = GraphQLField.leaf(
            name: "stage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.stage[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.Stage.allCases.first!
        }
    }

    func revision() throws -> Int {
        let field = GraphQLField.leaf(
            name: "revision",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.revision[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Int.mockValue
        }
    }

    func createdAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "createdAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.createdAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Version<T> = Selection<T, Objects.Version>
}

extension Objects {
    struct Vote {
        let __typename: TypeName = .vote
        let createdAt: [String: DateTimeScalar]
        let createdBy: [String: Objects.User]
        let documentInStages: [String: [Objects.Vote]]
        let history: [String: [Objects.Version]]
        let id: [String: String]
        let product: [String: Objects.Product]
        let publishedAt: [String: DateTimeScalar]
        let publishedBy: [String: Objects.User]
        let scheduledIn: [String: [Objects.ScheduledOperation]]
        let stage: [String: Enums.Stage]
        let updatedAt: [String: DateTimeScalar]
        let updatedBy: [String: Objects.User]

        enum TypeName: String, Codable {
            case vote = "Vote"
        }
    }
}

extension Objects.Vote: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "createdAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "documentInStages":
                if let value = try container.decode([Objects.Vote]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "history":
                if let value = try container.decode([Objects.Version]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "product":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduledIn":
                if let value = try container.decode([Objects.ScheduledOperation]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "stage":
                if let value = try container.decode(Enums.Stage?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        createdAt = map["createdAt"]
        createdBy = map["createdBy"]
        documentInStages = map["documentInStages"]
        history = map["history"]
        id = map["id"]
        product = map["product"]
        publishedAt = map["publishedAt"]
        publishedBy = map["publishedBy"]
        scheduledIn = map["scheduledIn"]
        stage = map["stage"]
        updatedAt = map["updatedAt"]
        updatedBy = map["updatedBy"]
    }
}

extension Fields where TypeLock == Objects.Vote {
    /// System stage field

    func stage() throws -> Enums.Stage {
        let field = GraphQLField.leaf(
            name: "stage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.stage[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.Stage.allCases.first!
        }
    }

    /// Get the document in other stages

    func documentInStages<Type>(stages: [Enums.Stage], includeCurrent: Bool, inheritLocale: Bool, selection: Selection<Type, [Objects.Vote]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "documentInStages",
            arguments: [Argument(name: "stages", type: "[Stage!]!", value: stages), Argument(name: "includeCurrent", type: "Boolean!", value: includeCurrent), Argument(name: "inheritLocale", type: "Boolean!", value: inheritLocale)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.documentInStages[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// The unique identifier

    func id() throws -> String {
        let field = GraphQLField.leaf(
            name: "id",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.id[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// The time the document was created

    func createdAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "createdAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.createdAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was updated

    func updatedAt() throws -> DateTimeScalar {
        let field = GraphQLField.leaf(
            name: "updatedAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.updatedAt[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return DateTimeScalar.mockValue
        }
    }

    /// The time the document was published. Null on documents in draft stage.

    func publishedAt() throws -> DateTimeScalar? {
        let field = GraphQLField.leaf(
            name: "publishedAt",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.publishedAt[field.alias!]
        case .mocking:
            return nil
        }
    }

    /// User that created this document

    func createdBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createdBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createdBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last updated this document

    func updatedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updatedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updatedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    /// User that last published this document

    func publishedBy<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "publishedBy",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.publishedBy[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    func product<Type>(locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, Objects.Product?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "product",
            arguments: [Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.product[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    func scheduledIn<Type>(where: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent(), skip: OptionalArgument<Int> = .absent(), after: OptionalArgument<String> = .absent(), before: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), last: OptionalArgument<Int> = .absent(), locales: OptionalArgument<[Enums.Locale]> = .absent(), selection: Selection<Type, [Objects.ScheduledOperation]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "scheduledIn",
            arguments: [Argument(name: "where", type: "ScheduledOperationWhereInput", value: `where`), Argument(name: "skip", type: "Int", value: skip), Argument(name: "after", type: "String", value: after), Argument(name: "before", type: "String", value: before), Argument(name: "first", type: "Int", value: first), Argument(name: "last", type: "Int", value: last), Argument(name: "locales", type: "[Locale!]", value: locales)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.scheduledIn[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// List of Vote versions

    func history<Type>(limit: Int, skip: Int, stageOverride: OptionalArgument<Enums.Stage> = .absent(), selection: Selection<Type, [Objects.Version]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "history",
            arguments: [Argument(name: "limit", type: "Int!", value: limit), Argument(name: "skip", type: "Int!", value: skip), Argument(name: "stageOverride", type: "Stage", value: stageOverride)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.history[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Vote<T> = Selection<T, Objects.Vote>
}

extension Objects {
    struct VoteConnection {
        let __typename: TypeName = .voteConnection
        let aggregate: [String: Objects.Aggregate]
        let edges: [String: [Objects.VoteEdge]]
        let pageInfo: [String: Objects.PageInfo]

        enum TypeName: String, Codable {
            case voteConnection = "VoteConnection"
        }
    }
}

extension Objects.VoteConnection: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "aggregate":
                if let value = try container.decode(Objects.Aggregate?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "edges":
                if let value = try container.decode([Objects.VoteEdge]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "pageInfo":
                if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        aggregate = map["aggregate"]
        edges = map["edges"]
        pageInfo = map["pageInfo"]
    }
}

extension Fields where TypeLock == Objects.VoteConnection {
    /// Information to aid in pagination.

    func pageInfo<Type>(selection: Selection<Type, Objects.PageInfo>) throws -> Type {
        let field = GraphQLField.composite(
            name: "pageInfo",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.pageInfo[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A list of edges.

    func edges<Type>(selection: Selection<Type, [Objects.VoteEdge]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "edges",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.edges[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    func aggregate<Type>(selection: Selection<Type, Objects.Aggregate>) throws -> Type {
        let field = GraphQLField.composite(
            name: "aggregate",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.aggregate[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias VoteConnection<T> = Selection<T, Objects.VoteConnection>
}

extension Objects {
    struct VoteEdge {
        let __typename: TypeName = .voteEdge
        let cursor: [String: String]
        let node: [String: Objects.Vote]

        enum TypeName: String, Codable {
            case voteEdge = "VoteEdge"
        }
    }
}

extension Objects.VoteEdge: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "cursor":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "node":
                if let value = try container.decode(Objects.Vote?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        cursor = map["cursor"]
        node = map["node"]
    }
}

extension Fields where TypeLock == Objects.VoteEdge {
    /// The item at the end of the edge.

    func node<Type>(selection: Selection<Type, Objects.Vote>) throws -> Type {
        let field = GraphQLField.composite(
            name: "node",
            arguments: [],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.node[field.alias!] {
                return try selection.decode(data: data)
            }
            throw HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }

    /// A cursor for use in pagination.

    func cursor() throws -> String {
        let field = GraphQLField.leaf(
            name: "cursor",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.cursor[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias VoteEdge<T> = Selection<T, Objects.VoteEdge>
}

// MARK: - Interfaces

enum Interfaces {}
extension Interfaces {
    struct Node {
        let __typename: TypeName
        let affectedDocuments: [String: [Unions.ScheduledOperationAffectedDocument]]
        let auth0Id: [String: String]
        let bio: [String: String]
        let comment: [String: String]
        let content: [String: Objects.RichText]
        let createdAt: [String: DateTimeScalar]
        let createdBy: [String: Objects.User]
        let description: [String: String]
        let documentInStages: [String: [Objects.Vote]]
        let email: [String: String]
        let errorMessage: [String: String]
        let fileName: [String: String]
        let handle: [String: String]
        let height: [String: Double]
        let history: [String: [Objects.Version]]
        let id: [String: String]
        let image: [String: Objects.Asset]
        let isActive: [String: Bool]
        let isImplicit: [String: Bool]
        let kind: [String: Enums.UserKind]
        let locale: [String: Enums.Locale]
        let localizations: [String: [Objects.Product]]
        let mimeType: [String: String]
        let name: [String: String]
        let operations: [String: [Objects.ScheduledOperation]]
        let password: [String: String]
        let picture: [String: String]
        let price: [String: Int]
        let product: [String: Objects.Product]
        let productImage: [String: [Objects.Product]]
        let publishedAt: [String: DateTimeScalar]
        let publishedBy: [String: Objects.User]
        let rawPayload: [String: String]
        let release: [String: Objects.ScheduledRelease]
        let releaseAt: [String: DateTimeScalar]
        let reviews: [String: [Objects.Review]]
        let scheduledIn: [String: [Objects.ScheduledOperation]]
        let size: [String: Double]
        let slug: [String: String]
        let stage: [String: Enums.Stage]
        let status: [String: Enums.ScheduledReleaseStatus]
        let title: [String: String]
        let updatedAt: [String: DateTimeScalar]
        let updatedBy: [String: Objects.User]
        let url: [String: String]
        let votes: [String: [Objects.Vote]]
        let width: [String: Double]

        enum TypeName: String, Codable {
            case asset = "Asset"
            case nextAuthUser = "NextAuthUser"
            case product = "Product"
            case review = "Review"
            case scheduledOperation = "ScheduledOperation"
            case scheduledRelease = "ScheduledRelease"
            case user = "User"
            case vote = "Vote"
        }
    }
}

extension Interfaces.Node: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "affectedDocuments":
                if let value = try container.decode([Unions.ScheduledOperationAffectedDocument]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "auth0Id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "bio":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "comment":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "content":
                if let value = try container.decode(Objects.RichText?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "description":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "documentInStages":
                if let value = try container.decode([Objects.Vote]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "email":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "errorMessage":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "fileName":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "handle":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "height":
                if let value = try container.decode(Double?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "history":
                if let value = try container.decode([Objects.Version]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "image":
                if let value = try container.decode(Objects.Asset?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "isActive":
                if let value = try container.decode(Bool?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "isImplicit":
                if let value = try container.decode(Bool?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "kind":
                if let value = try container.decode(Enums.UserKind?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "locale":
                if let value = try container.decode(Enums.Locale?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "localizations":
                if let value = try container.decode([Objects.Product]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "mimeType":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "name":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "operations":
                if let value = try container.decode([Objects.ScheduledOperation]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "password":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "picture":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "price":
                if let value = try container.decode(Int?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "product":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "productImage":
                if let value = try container.decode([Objects.Product]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "rawPayload":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "release":
                if let value = try container.decode(Objects.ScheduledRelease?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "releaseAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "reviews":
                if let value = try container.decode([Objects.Review]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduledIn":
                if let value = try container.decode([Objects.ScheduledOperation]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "size":
                if let value = try container.decode(Double?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "slug":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "stage":
                if let value = try container.decode(Enums.Stage?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "status":
                if let value = try container.decode(Enums.ScheduledReleaseStatus?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "title":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "url":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "votes":
                if let value = try container.decode([Objects.Vote]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "width":
                if let value = try container.decode(Double?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

        affectedDocuments = map["affectedDocuments"]
        auth0Id = map["auth0Id"]
        bio = map["bio"]
        comment = map["comment"]
        content = map["content"]
        createdAt = map["createdAt"]
        createdBy = map["createdBy"]
        description = map["description"]
        documentInStages = map["documentInStages"]
        email = map["email"]
        errorMessage = map["errorMessage"]
        fileName = map["fileName"]
        handle = map["handle"]
        height = map["height"]
        history = map["history"]
        id = map["id"]
        image = map["image"]
        isActive = map["isActive"]
        isImplicit = map["isImplicit"]
        kind = map["kind"]
        locale = map["locale"]
        localizations = map["localizations"]
        mimeType = map["mimeType"]
        name = map["name"]
        operations = map["operations"]
        password = map["password"]
        picture = map["picture"]
        price = map["price"]
        product = map["product"]
        productImage = map["productImage"]
        publishedAt = map["publishedAt"]
        publishedBy = map["publishedBy"]
        rawPayload = map["rawPayload"]
        release = map["release"]
        releaseAt = map["releaseAt"]
        reviews = map["reviews"]
        scheduledIn = map["scheduledIn"]
        size = map["size"]
        slug = map["slug"]
        stage = map["stage"]
        status = map["status"]
        title = map["title"]
        updatedAt = map["updatedAt"]
        updatedBy = map["updatedBy"]
        url = map["url"]
        votes = map["votes"]
        width = map["width"]
    }
}

extension Fields where TypeLock == Interfaces.Node {
    /// The id of the object.

    func id() throws -> String {
        let field = GraphQLField.leaf(
            name: "id",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.id[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    /// The Stage of an object

    func stage() throws -> Enums.Stage {
        let field = GraphQLField.leaf(
            name: "stage",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.stage[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return Enums.Stage.allCases.first!
        }
    }
}

extension Fields where TypeLock == Interfaces.Node {
    func on<Type>(
        asset: Selection<Type, Objects.Asset>,
        nextAuthUser: Selection<Type, Objects.NextAuthUser>,
        product: Selection<Type, Objects.Product>,
        review: Selection<Type, Objects.Review>,
        scheduledOperation: Selection<Type, Objects.ScheduledOperation>,
        scheduledRelease: Selection<Type, Objects.ScheduledRelease>,
        user: Selection<Type, Objects.User>,
        vote: Selection<Type, Objects.Vote>) throws -> Type {
        select([GraphQLField.fragment(type: "Asset", selection: asset.selection), GraphQLField.fragment(type: "NextAuthUser", selection: nextAuthUser.selection), GraphQLField.fragment(type: "Product", selection: product.selection), GraphQLField.fragment(type: "Review", selection: review.selection), GraphQLField.fragment(type: "ScheduledOperation", selection: scheduledOperation.selection), GraphQLField.fragment(type: "ScheduledRelease", selection: scheduledRelease.selection), GraphQLField.fragment(type: "User", selection: user.selection), GraphQLField.fragment(type: "Vote", selection: vote.selection)])

        switch response {
        case let .decoding(data):
            switch data.__typename {
            case .asset:
                let data = Objects.Asset(createdAt: data.createdAt, createdBy: data.createdBy, documentInStages: [:], fileName: data.fileName, handle: data.handle, height: data.height, history: data.history, id: data.id, locale: data.locale, localizations: [:], mimeType: data.mimeType, productImage: data.productImage, publishedAt: data.publishedAt, publishedBy: data.publishedBy, scheduledIn: data.scheduledIn, size: data.size, stage: data.stage, updatedAt: data.updatedAt, updatedBy: data.updatedBy, url: data.url, width: data.width)
                return try asset.decode(data: data)
            case .nextAuthUser:
                let data = Objects.NextAuthUser(auth0Id: data.auth0Id, bio: data.bio, createdAt: data.createdAt, createdBy: data.createdBy, documentInStages: [:], email: data.email, history: data.history, id: data.id, name: data.name, password: data.password, publishedAt: data.publishedAt, publishedBy: data.publishedBy, scheduledIn: data.scheduledIn, stage: data.stage, updatedAt: data.updatedAt, updatedBy: data.updatedBy)
                return try nextAuthUser.decode(data: data)
            case .product:
                let data = Objects.Product(content: data.content, createdAt: data.createdAt, createdBy: data.createdBy, description: data.description, documentInStages: [:], history: data.history, id: data.id, image: data.image, locale: data.locale, localizations: [:], name: data.name, price: data.price, publishedAt: data.publishedAt, publishedBy: data.publishedBy, reviews: data.reviews, scheduledIn: data.scheduledIn, slug: data.slug, stage: data.stage, updatedAt: data.updatedAt, updatedBy: data.updatedBy, votes: data.votes)
                return try product.decode(data: data)
            case .review:
                let data = Objects.Review(comment: data.comment, createdAt: data.createdAt, createdBy: data.createdBy, documentInStages: [:], history: data.history, id: data.id, name: data.name, product: data.product, publishedAt: data.publishedAt, publishedBy: data.publishedBy, scheduledIn: data.scheduledIn, stage: data.stage, updatedAt: data.updatedAt, updatedBy: data.updatedBy)
                return try review.decode(data: data)
            case .scheduledOperation:
                let data = Objects.ScheduledOperation(affectedDocuments: data.affectedDocuments, createdAt: data.createdAt, createdBy: data.createdBy, description: data.description, documentInStages: [:], errorMessage: data.errorMessage, id: data.id, publishedAt: data.publishedAt, publishedBy: data.publishedBy, rawPayload: data.rawPayload, release: data.release, stage: data.stage, status: [:], updatedAt: data.updatedAt, updatedBy: data.updatedBy)
                return try scheduledOperation.decode(data: data)
            case .scheduledRelease:
                let data = Objects.ScheduledRelease(createdAt: data.createdAt, createdBy: data.createdBy, description: data.description, documentInStages: [:], errorMessage: data.errorMessage, id: data.id, isActive: data.isActive, isImplicit: data.isImplicit, operations: data.operations, publishedAt: data.publishedAt, publishedBy: data.publishedBy, releaseAt: data.releaseAt, stage: data.stage, status: data.status, title: data.title, updatedAt: data.updatedAt, updatedBy: data.updatedBy)
                return try scheduledRelease.decode(data: data)
            case .user:
                let data = Objects.User(createdAt: data.createdAt, documentInStages: [:], id: data.id, isActive: data.isActive, kind: data.kind, name: data.name, picture: data.picture, publishedAt: data.publishedAt, stage: data.stage, updatedAt: data.updatedAt)
                return try user.decode(data: data)
            case .vote:
                let data = Objects.Vote(createdAt: data.createdAt, createdBy: data.createdBy, documentInStages: data.documentInStages, history: data.history, id: data.id, product: data.product, publishedAt: data.publishedAt, publishedBy: data.publishedBy, scheduledIn: data.scheduledIn, stage: data.stage, updatedAt: data.updatedAt, updatedBy: data.updatedBy)
                return try vote.decode(data: data)
            }
        case .mocking:
            return asset.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Node<T> = Selection<T, Interfaces.Node>
}

// MARK: - Unions

enum Unions {}
extension Unions {
    struct ScheduledOperationAffectedDocument {
        let __typename: TypeName
        let auth0Id: [String: String]
        let bio: [String: String]
        let comment: [String: String]
        let content: [String: Objects.RichText]
        let createdAt: [String: DateTimeScalar]
        let createdBy: [String: Objects.User]
        let description: [String: String]
        let documentInStages: [String: [Objects.Vote]]
        let email: [String: String]
        let fileName: [String: String]
        let handle: [String: String]
        let height: [String: Double]
        let history: [String: [Objects.Version]]
        let id: [String: String]
        let image: [String: Objects.Asset]
        let locale: [String: Enums.Locale]
        let localizations: [String: [Objects.Product]]
        let mimeType: [String: String]
        let name: [String: String]
        let password: [String: String]
        let price: [String: Int]
        let product: [String: Objects.Product]
        let productImage: [String: [Objects.Product]]
        let publishedAt: [String: DateTimeScalar]
        let publishedBy: [String: Objects.User]
        let reviews: [String: [Objects.Review]]
        let scheduledIn: [String: [Objects.ScheduledOperation]]
        let size: [String: Double]
        let slug: [String: String]
        let stage: [String: Enums.Stage]
        let updatedAt: [String: DateTimeScalar]
        let updatedBy: [String: Objects.User]
        let url: [String: String]
        let votes: [String: [Objects.Vote]]
        let width: [String: Double]

        enum TypeName: String, Codable {
            case asset = "Asset"
            case nextAuthUser = "NextAuthUser"
            case product = "Product"
            case review = "Review"
            case vote = "Vote"
        }
    }
}

extension Unions.ScheduledOperationAffectedDocument: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "auth0Id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "bio":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "comment":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "content":
                if let value = try container.decode(Objects.RichText?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createdBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "description":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "documentInStages":
                if let value = try container.decode([Objects.Vote]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "email":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "fileName":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "handle":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "height":
                if let value = try container.decode(Double?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "history":
                if let value = try container.decode([Objects.Version]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "image":
                if let value = try container.decode(Objects.Asset?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "locale":
                if let value = try container.decode(Enums.Locale?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "localizations":
                if let value = try container.decode([Objects.Product]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "mimeType":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "name":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "password":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "price":
                if let value = try container.decode(Int?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "product":
                if let value = try container.decode(Objects.Product?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "productImage":
                if let value = try container.decode([Objects.Product]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "publishedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "reviews":
                if let value = try container.decode([Objects.Review]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "scheduledIn":
                if let value = try container.decode([Objects.ScheduledOperation]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "size":
                if let value = try container.decode(Double?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "slug":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "stage":
                if let value = try container.decode(Enums.Stage?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedAt":
                if let value = try container.decode(DateTimeScalar?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updatedBy":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "url":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "votes":
                if let value = try container.decode([Objects.Vote]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "width":
                if let value = try container.decode(Double?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

        auth0Id = map["auth0Id"]
        bio = map["bio"]
        comment = map["comment"]
        content = map["content"]
        createdAt = map["createdAt"]
        createdBy = map["createdBy"]
        description = map["description"]
        documentInStages = map["documentInStages"]
        email = map["email"]
        fileName = map["fileName"]
        handle = map["handle"]
        height = map["height"]
        history = map["history"]
        id = map["id"]
        image = map["image"]
        locale = map["locale"]
        localizations = map["localizations"]
        mimeType = map["mimeType"]
        name = map["name"]
        password = map["password"]
        price = map["price"]
        product = map["product"]
        productImage = map["productImage"]
        publishedAt = map["publishedAt"]
        publishedBy = map["publishedBy"]
        reviews = map["reviews"]
        scheduledIn = map["scheduledIn"]
        size = map["size"]
        slug = map["slug"]
        stage = map["stage"]
        updatedAt = map["updatedAt"]
        updatedBy = map["updatedBy"]
        url = map["url"]
        votes = map["votes"]
        width = map["width"]
    }
}

extension Fields where TypeLock == Unions.ScheduledOperationAffectedDocument {
    func on<Type>(asset: Selection<Type, Objects.Asset>, nextAuthUser: Selection<Type, Objects.NextAuthUser>, product: Selection<Type, Objects.Product>, review: Selection<Type, Objects.Review>, vote: Selection<Type, Objects.Vote>) throws -> Type {
        select([GraphQLField.fragment(type: "Asset", selection: asset.selection), GraphQLField.fragment(type: "NextAuthUser", selection: nextAuthUser.selection), GraphQLField.fragment(type: "Product", selection: product.selection), GraphQLField.fragment(type: "Review", selection: review.selection), GraphQLField.fragment(type: "Vote", selection: vote.selection)])

        switch response {
        case let .decoding(data):
            switch data.__typename {
            case .asset:
                let item = Objects.Asset(createdAt: data.createdAt, createdBy: data.createdBy, documentInStages: [:], fileName: data.fileName, handle: data.handle, height: data.height, history: data.history, id: data.id, locale: data.locale, localizations: [:], mimeType: data.mimeType, productImage: data.productImage, publishedAt: data.publishedAt, publishedBy: data.publishedBy, scheduledIn: data.scheduledIn, size: data.size, stage: data.stage, updatedAt: data.updatedAt, updatedBy: data.updatedBy, url: data.url, width: data.width)
                return try asset.decode(data: item)
            case .nextAuthUser:
                let item = Objects.NextAuthUser(auth0Id: data.auth0Id, bio: data.bio, createdAt: data.createdAt, createdBy: data.createdBy, documentInStages: [:], email: data.email, history: data.history, id: data.id, name: data.name, password: data.password, publishedAt: data.publishedAt, publishedBy: data.publishedBy, scheduledIn: data.scheduledIn, stage: data.stage, updatedAt: data.updatedAt, updatedBy: data.updatedBy)
                return try nextAuthUser.decode(data: item)
            case .product:
                let item = Objects.Product(content: data.content, createdAt: data.createdAt, createdBy: data.createdBy, description: data.description, documentInStages: [:], history: data.history, id: data.id, image: data.image, locale: data.locale, localizations: data.localizations, name: data.name, price: data.price, publishedAt: data.publishedAt, publishedBy: data.publishedBy, reviews: data.reviews, scheduledIn: data.scheduledIn, slug: data.slug, stage: data.stage, updatedAt: data.updatedAt, updatedBy: data.updatedBy, votes: data.votes)
                return try product.decode(data: item)
            case .review:
                let item = Objects.Review(comment: data.comment, createdAt: data.createdAt, createdBy: data.createdBy, documentInStages: [:], history: data.history, id: data.id, name: data.name, product: data.product, publishedAt: data.publishedAt, publishedBy: data.publishedBy, scheduledIn: data.scheduledIn, stage: data.stage, updatedAt: data.updatedAt, updatedBy: data.updatedBy)
                return try review.decode(data: item)
            case .vote:
                let item = Objects.Vote(createdAt: data.createdAt, createdBy: data.createdBy, documentInStages: data.documentInStages, history: data.history, id: data.id, product: data.product, publishedAt: data.publishedAt, publishedBy: data.publishedBy, scheduledIn: data.scheduledIn, stage: data.stage, updatedAt: data.updatedAt, updatedBy: data.updatedBy)
                return try vote.decode(data: item)
            }
        case .mocking:
            return asset.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias ScheduledOperationAffectedDocument<T> = Selection<T, Unions.ScheduledOperationAffectedDocument>
}

// MARK: - Enums

enum Enums {}
extension Enums {
    enum AssetOrderByInput: String, CaseIterable, Codable {
        case idAsc = "id_ASC"

        case idDesc = "id_DESC"

        case createdAtAsc = "createdAt_ASC"

        case createdAtDesc = "createdAt_DESC"

        case updatedAtAsc = "updatedAt_ASC"

        case updatedAtDesc = "updatedAt_DESC"

        case publishedAtAsc = "publishedAt_ASC"

        case publishedAtDesc = "publishedAt_DESC"

        case handleAsc = "handle_ASC"

        case handleDesc = "handle_DESC"

        case fileNameAsc = "fileName_ASC"

        case fileNameDesc = "fileName_DESC"

        case heightAsc = "height_ASC"

        case heightDesc = "height_DESC"

        case widthAsc = "width_ASC"

        case widthDesc = "width_DESC"

        case sizeAsc = "size_ASC"

        case sizeDesc = "size_DESC"

        case mimeTypeAsc = "mimeType_ASC"

        case mimeTypeDesc = "mimeType_DESC"
    }
}

extension Enums {
    enum DocumentFileTypes: String, CaseIterable, Codable {
        case jpg

        case odp

        case ods

        case odt

        case png

        case svg

        case txt

        case webp

        case docx

        case pdf

        case html

        case doc

        case xlsx

        case xls

        case pptx

        case ppt
    }
}

extension Enums {
    enum ImageFit: String, CaseIterable, Codable {
        /// Resizes the image to fit within the specified parameters without distorting, cropping, or changing the aspect ratio.

        case clip
        /// Resizes the image to fit the specified parameters exactly by removing any parts of the image that don't fit within the boundaries.

        case crop
        /// Resizes the image to fit the specified parameters exactly by scaling the image to the desired size. The aspect ratio of the image is not respected and the image can be distorted using this method.

        case scale
        /// Resizes the image to fit within the parameters, but as opposed to 'fit:clip' will not scale the image if the image is smaller than the output size.

        case max
    }
}

extension Enums {
    /// Locale system enumeration
    enum Locale: String, CaseIterable, Codable {
        /// System locale

        case en

        case de
    }
}

extension Enums {
    enum NextAuthUserOrderByInput: String, CaseIterable, Codable {
        case idAsc = "id_ASC"

        case idDesc = "id_DESC"

        case createdAtAsc = "createdAt_ASC"

        case createdAtDesc = "createdAt_DESC"

        case updatedAtAsc = "updatedAt_ASC"

        case updatedAtDesc = "updatedAt_DESC"

        case publishedAtAsc = "publishedAt_ASC"

        case publishedAtDesc = "publishedAt_DESC"

        case nameAsc = "name_ASC"

        case nameDesc = "name_DESC"

        case emailAsc = "email_ASC"

        case emailDesc = "email_DESC"

        case bioAsc = "bio_ASC"

        case bioDesc = "bio_DESC"

        case passwordAsc = "password_ASC"

        case passwordDesc = "password_DESC"

        case auth0IdAsc = "auth0Id_ASC"

        case auth0IdDesc = "auth0Id_DESC"
    }
}

extension Enums {
    enum ProductOrderByInput: String, CaseIterable, Codable {
        case idAsc = "id_ASC"

        case idDesc = "id_DESC"

        case createdAtAsc = "createdAt_ASC"

        case createdAtDesc = "createdAt_DESC"

        case updatedAtAsc = "updatedAt_ASC"

        case updatedAtDesc = "updatedAt_DESC"

        case publishedAtAsc = "publishedAt_ASC"

        case publishedAtDesc = "publishedAt_DESC"

        case nameAsc = "name_ASC"

        case nameDesc = "name_DESC"

        case slugAsc = "slug_ASC"

        case slugDesc = "slug_DESC"

        case descriptionAsc = "description_ASC"

        case descriptionDesc = "description_DESC"

        case priceAsc = "price_ASC"

        case priceDesc = "price_DESC"
    }
}

extension Enums {
    enum ReviewOrderByInput: String, CaseIterable, Codable {
        case idAsc = "id_ASC"

        case idDesc = "id_DESC"

        case createdAtAsc = "createdAt_ASC"

        case createdAtDesc = "createdAt_DESC"

        case updatedAtAsc = "updatedAt_ASC"

        case updatedAtDesc = "updatedAt_DESC"

        case publishedAtAsc = "publishedAt_ASC"

        case publishedAtDesc = "publishedAt_DESC"

        case nameAsc = "name_ASC"

        case nameDesc = "name_DESC"

        case commentAsc = "comment_ASC"

        case commentDesc = "comment_DESC"
    }
}

extension Enums {
    enum ScheduledOperationOrderByInput: String, CaseIterable, Codable {
        case idAsc = "id_ASC"

        case idDesc = "id_DESC"

        case createdAtAsc = "createdAt_ASC"

        case createdAtDesc = "createdAt_DESC"

        case updatedAtAsc = "updatedAt_ASC"

        case updatedAtDesc = "updatedAt_DESC"

        case publishedAtAsc = "publishedAt_ASC"

        case publishedAtDesc = "publishedAt_DESC"

        case descriptionAsc = "description_ASC"

        case descriptionDesc = "description_DESC"

        case errorMessageAsc = "errorMessage_ASC"

        case errorMessageDesc = "errorMessage_DESC"

        case statusAsc = "status_ASC"

        case statusDesc = "status_DESC"
    }
}

extension Enums {
    /// System Scheduled Operation Status
    enum ScheduledOperationStatus: String, CaseIterable, Codable {
        case pending = "PENDING"

        case inProgress = "IN_PROGRESS"

        case completed = "COMPLETED"

        case failed = "FAILED"

        case canceled = "CANCELED"
    }
}

extension Enums {
    enum ScheduledReleaseOrderByInput: String, CaseIterable, Codable {
        case idAsc = "id_ASC"

        case idDesc = "id_DESC"

        case createdAtAsc = "createdAt_ASC"

        case createdAtDesc = "createdAt_DESC"

        case updatedAtAsc = "updatedAt_ASC"

        case updatedAtDesc = "updatedAt_DESC"

        case publishedAtAsc = "publishedAt_ASC"

        case publishedAtDesc = "publishedAt_DESC"

        case titleAsc = "title_ASC"

        case titleDesc = "title_DESC"

        case descriptionAsc = "description_ASC"

        case descriptionDesc = "description_DESC"

        case errorMessageAsc = "errorMessage_ASC"

        case errorMessageDesc = "errorMessage_DESC"

        case isActiveAsc = "isActive_ASC"

        case isActiveDesc = "isActive_DESC"

        case isImplicitAsc = "isImplicit_ASC"

        case isImplicitDesc = "isImplicit_DESC"

        case releaseAtAsc = "releaseAt_ASC"

        case releaseAtDesc = "releaseAt_DESC"

        case statusAsc = "status_ASC"

        case statusDesc = "status_DESC"
    }
}

extension Enums {
    /// System Scheduled Release Status
    enum ScheduledReleaseStatus: String, CaseIterable, Codable {
        case pending = "PENDING"

        case inProgress = "IN_PROGRESS"

        case completed = "COMPLETED"

        case failed = "FAILED"
    }
}

extension Enums {
    /// Stage system enumeration
    enum Stage: String, CaseIterable, Codable {
        /// The Draft is the default stage for all your content.

        case draft = "DRAFT"
        /// The Published stage is where you can publish your content to.

        case published = "PUBLISHED"
    }
}

extension Enums {
    enum SystemDateTimeFieldVariation: String, CaseIterable, Codable {
        case base = "BASE"

        case localization = "LOCALIZATION"

        case combined = "COMBINED"
    }
}

extension Enums {
    /// System User Kind
    enum UserKind: String, CaseIterable, Codable {
        case pat = "PAT"

        case member = "MEMBER"

        case webhook = "WEBHOOK"

        case `public` = "PUBLIC"
    }
}

extension Enums {
    enum UserOrderByInput: String, CaseIterable, Codable {
        case idAsc = "id_ASC"

        case idDesc = "id_DESC"

        case createdAtAsc = "createdAt_ASC"

        case createdAtDesc = "createdAt_DESC"

        case updatedAtAsc = "updatedAt_ASC"

        case updatedAtDesc = "updatedAt_DESC"

        case publishedAtAsc = "publishedAt_ASC"

        case publishedAtDesc = "publishedAt_DESC"

        case nameAsc = "name_ASC"

        case nameDesc = "name_DESC"

        case pictureAsc = "picture_ASC"

        case pictureDesc = "picture_DESC"

        case isActiveAsc = "isActive_ASC"

        case isActiveDesc = "isActive_DESC"

        case kindAsc = "kind_ASC"

        case kindDesc = "kind_DESC"
    }
}

extension Enums {
    enum VoteOrderByInput: String, CaseIterable, Codable {
        case idAsc = "id_ASC"

        case idDesc = "id_DESC"

        case createdAtAsc = "createdAt_ASC"

        case createdAtDesc = "createdAt_DESC"

        case updatedAtAsc = "updatedAt_ASC"

        case updatedAtDesc = "updatedAt_DESC"

        case publishedAtAsc = "publishedAt_ASC"

        case publishedAtDesc = "publishedAt_DESC"
    }
}

extension Enums {
    enum FilterKind: String, CaseIterable, Codable {
        case search

        case and = "AND"

        case or = "OR"

        case not = "NOT"

        case eq

        case eqNot = "eq_not"

        case `in`

        case notIn = "not_in"

        case lt

        case lte

        case gt

        case gte

        case contains

        case notContains = "not_contains"

        case startsWith = "starts_with"

        case notStartsWith = "not_starts_with"

        case endsWith = "ends_with"

        case notEndsWith = "not_ends_with"

        case containsAll = "contains_all"

        case containsSome = "contains_some"

        case containsNone = "contains_none"

        case relationalSingle = "relational_single"

        case relationalEvery = "relational_every"

        case relationalSome = "relational_some"

        case relationalNone = "relational_none"
    }
}

extension Enums {
    enum MutationInputFieldKind: String, CaseIterable, Codable {
        case scalar

        case richText

        case richTextWithEmbeds

        case `enum`

        case relation

        case union

        case virtual
    }
}

extension Enums {
    enum MutationKind: String, CaseIterable, Codable {
        case create

        case publish

        case unpublish

        case update

        case upsert

        case delete

        case updateMany

        case publishMany

        case unpublishMany

        case deleteMany
    }
}

extension Enums {
    enum OrderDirection: String, CaseIterable, Codable {
        case asc

        case desc
    }
}

extension Enums {
    enum RelationInputCardinality: String, CaseIterable, Codable {
        case one

        case many
    }
}

extension Enums {
    enum RelationInputKind: String, CaseIterable, Codable {
        case create

        case update
    }
}

extension Enums {
    enum RelationKind: String, CaseIterable, Codable {
        case regular

        case union
    }
}

// MARK: - Input Objects

enum InputObjects {}
extension InputObjects {
    struct AssetConnectInput: Encodable, Hashable {
        /// Document to connect
        var `where`: InputObjects.AssetWhereUniqueInput
        /// Allow to specify document position in list of connected documents, will default to appending at end of list
        var position: OptionalArgument<InputObjects.ConnectPositionInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            if position.hasValue { try container.encode(position, forKey: .position) }
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case position
        }
    }
}

extension InputObjects {
    struct AssetCreateInput: Encodable, Hashable {
        var createdAt: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()

        var handle: String

        var fileName: String

        var height: OptionalArgument<Double> = .absent()

        var width: OptionalArgument<Double> = .absent()

        var size: OptionalArgument<Double> = .absent()

        var mimeType: OptionalArgument<String> = .absent()

        var productImage: OptionalArgument<InputObjects.ProductCreateManyInlineInput> = .absent()
        /// Inline mutations for managing document localizations excluding the default locale
        var localizations: OptionalArgument<InputObjects.AssetCreateLocalizationsInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            try container.encode(handle, forKey: .handle)
            try container.encode(fileName, forKey: .fileName)
            if height.hasValue { try container.encode(height, forKey: .height) }
            if width.hasValue { try container.encode(width, forKey: .width) }
            if size.hasValue { try container.encode(size, forKey: .size) }
            if mimeType.hasValue { try container.encode(mimeType, forKey: .mimeType) }
            if productImage.hasValue { try container.encode(productImage, forKey: .productImage) }
            if localizations.hasValue { try container.encode(localizations, forKey: .localizations) }
        }

        enum CodingKeys: String, CodingKey {
            case createdAt
            case updatedAt
            case handle
            case fileName
            case height
            case width
            case size
            case mimeType
            case productImage
            case localizations
        }
    }
}

extension InputObjects {
    struct AssetCreateLocalizationDataInput: Encodable, Hashable {
        var createdAt: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()

        var handle: String

        var fileName: String

        var height: OptionalArgument<Double> = .absent()

        var width: OptionalArgument<Double> = .absent()

        var size: OptionalArgument<Double> = .absent()

        var mimeType: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            try container.encode(handle, forKey: .handle)
            try container.encode(fileName, forKey: .fileName)
            if height.hasValue { try container.encode(height, forKey: .height) }
            if width.hasValue { try container.encode(width, forKey: .width) }
            if size.hasValue { try container.encode(size, forKey: .size) }
            if mimeType.hasValue { try container.encode(mimeType, forKey: .mimeType) }
        }

        enum CodingKeys: String, CodingKey {
            case createdAt
            case updatedAt
            case handle
            case fileName
            case height
            case width
            case size
            case mimeType
        }
    }
}

extension InputObjects {
    struct AssetCreateLocalizationInput: Encodable, Hashable {
        /// Localization input
        var data: InputObjects.AssetCreateLocalizationDataInput

        var locale: Enums.Locale

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(data, forKey: .data)
            try container.encode(locale, forKey: .locale)
        }

        enum CodingKeys: String, CodingKey {
            case data
            case locale
        }
    }
}

extension InputObjects {
    struct AssetCreateLocalizationsInput: Encodable, Hashable {
        /// Create localizations for the newly-created document
        var create: OptionalArgument<[InputObjects.AssetCreateLocalizationInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
        }

        enum CodingKeys: String, CodingKey {
            case create
        }
    }
}

extension InputObjects {
    struct AssetCreateManyInlineInput: Encodable, Hashable {
        /// Create and connect multiple existing Asset documents
        var create: OptionalArgument<[InputObjects.AssetCreateInput]> = .absent()
        /// Connect multiple existing Asset documents
        var connect: OptionalArgument<[InputObjects.AssetWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
        }
    }
}

extension InputObjects {
    struct AssetCreateOneInlineInput: Encodable, Hashable {
        /// Create and connect one Asset document
        var create: OptionalArgument<InputObjects.AssetCreateInput> = .absent()
        /// Connect one existing Asset document
        var connect: OptionalArgument<InputObjects.AssetWhereUniqueInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
        }
    }
}

extension InputObjects {
    struct AssetManyWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.AssetWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.AssetWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.AssetWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var productImageEvery: OptionalArgument<InputObjects.ProductWhereInput> = .absent()

        var productImageSome: OptionalArgument<InputObjects.ProductWhereInput> = .absent()

        var productImageNone: OptionalArgument<InputObjects.ProductWhereInput> = .absent()

        var scheduledInEvery: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInSome: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInNone: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if productImageEvery.hasValue { try container.encode(productImageEvery, forKey: .productImageEvery) }
            if productImageSome.hasValue { try container.encode(productImageSome, forKey: .productImageSome) }
            if productImageNone.hasValue { try container.encode(productImageNone, forKey: .productImageNone) }
            if scheduledInEvery.hasValue { try container.encode(scheduledInEvery, forKey: .scheduledInEvery) }
            if scheduledInSome.hasValue { try container.encode(scheduledInSome, forKey: .scheduledInSome) }
            if scheduledInNone.hasValue { try container.encode(scheduledInNone, forKey: .scheduledInNone) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case createdBy
            case updatedBy
            case publishedBy
            case productImageEvery = "productImage_every"
            case productImageSome = "productImage_some"
            case productImageNone = "productImage_none"
            case scheduledInEvery = "scheduledIn_every"
            case scheduledInSome = "scheduledIn_some"
            case scheduledInNone = "scheduledIn_none"
        }
    }
}

extension InputObjects {
    struct AssetTransformationInput: Encodable, Hashable {
        var image: OptionalArgument<InputObjects.ImageTransformationInput> = .absent()

        var document: OptionalArgument<InputObjects.DocumentTransformationInput> = .absent()
        /// Pass true if you want to validate the passed transformation parameters
        var validateOptions: OptionalArgument<Bool> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if image.hasValue { try container.encode(image, forKey: .image) }
            if document.hasValue { try container.encode(document, forKey: .document) }
            if validateOptions.hasValue { try container.encode(validateOptions, forKey: .validateOptions) }
        }

        enum CodingKeys: String, CodingKey {
            case image
            case document
            case validateOptions
        }
    }
}

extension InputObjects {
    struct AssetUpdateInput: Encodable, Hashable {
        var handle: OptionalArgument<String> = .absent()

        var fileName: OptionalArgument<String> = .absent()

        var height: OptionalArgument<Double> = .absent()

        var width: OptionalArgument<Double> = .absent()

        var size: OptionalArgument<Double> = .absent()

        var mimeType: OptionalArgument<String> = .absent()

        var productImage: OptionalArgument<InputObjects.ProductUpdateManyInlineInput> = .absent()
        /// Manage document localizations
        var localizations: OptionalArgument<InputObjects.AssetUpdateLocalizationsInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if handle.hasValue { try container.encode(handle, forKey: .handle) }
            if fileName.hasValue { try container.encode(fileName, forKey: .fileName) }
            if height.hasValue { try container.encode(height, forKey: .height) }
            if width.hasValue { try container.encode(width, forKey: .width) }
            if size.hasValue { try container.encode(size, forKey: .size) }
            if mimeType.hasValue { try container.encode(mimeType, forKey: .mimeType) }
            if productImage.hasValue { try container.encode(productImage, forKey: .productImage) }
            if localizations.hasValue { try container.encode(localizations, forKey: .localizations) }
        }

        enum CodingKeys: String, CodingKey {
            case handle
            case fileName
            case height
            case width
            case size
            case mimeType
            case productImage
            case localizations
        }
    }
}

extension InputObjects {
    struct AssetUpdateLocalizationDataInput: Encodable, Hashable {
        var handle: OptionalArgument<String> = .absent()

        var fileName: OptionalArgument<String> = .absent()

        var height: OptionalArgument<Double> = .absent()

        var width: OptionalArgument<Double> = .absent()

        var size: OptionalArgument<Double> = .absent()

        var mimeType: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if handle.hasValue { try container.encode(handle, forKey: .handle) }
            if fileName.hasValue { try container.encode(fileName, forKey: .fileName) }
            if height.hasValue { try container.encode(height, forKey: .height) }
            if width.hasValue { try container.encode(width, forKey: .width) }
            if size.hasValue { try container.encode(size, forKey: .size) }
            if mimeType.hasValue { try container.encode(mimeType, forKey: .mimeType) }
        }

        enum CodingKeys: String, CodingKey {
            case handle
            case fileName
            case height
            case width
            case size
            case mimeType
        }
    }
}

extension InputObjects {
    struct AssetUpdateLocalizationInput: Encodable, Hashable {
        var data: InputObjects.AssetUpdateLocalizationDataInput

        var locale: Enums.Locale

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(data, forKey: .data)
            try container.encode(locale, forKey: .locale)
        }

        enum CodingKeys: String, CodingKey {
            case data
            case locale
        }
    }
}

extension InputObjects {
    struct AssetUpdateLocalizationsInput: Encodable, Hashable {
        /// Localizations to create
        var create: OptionalArgument<[InputObjects.AssetCreateLocalizationInput]> = .absent()
        /// Localizations to update
        var update: OptionalArgument<[InputObjects.AssetUpdateLocalizationInput]> = .absent()

        var upsert: OptionalArgument<[InputObjects.AssetUpsertLocalizationInput]> = .absent()
        /// Localizations to delete
        var delete: OptionalArgument<[Enums.Locale]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
            case upsert
            case delete
        }
    }
}

extension InputObjects {
    struct AssetUpdateManyInlineInput: Encodable, Hashable {
        /// Create and connect multiple Asset documents
        var create: OptionalArgument<[InputObjects.AssetCreateInput]> = .absent()
        /// Connect multiple existing Asset documents
        var connect: OptionalArgument<[InputObjects.AssetConnectInput]> = .absent()
        /// Override currently-connected documents with multiple existing Asset documents
        var set: OptionalArgument<[InputObjects.AssetWhereUniqueInput]> = .absent()
        /// Update multiple Asset documents
        var update: OptionalArgument<[InputObjects.AssetUpdateWithNestedWhereUniqueInput]> = .absent()
        /// Upsert multiple Asset documents
        var upsert: OptionalArgument<[InputObjects.AssetUpsertWithNestedWhereUniqueInput]> = .absent()
        /// Disconnect multiple Asset documents
        var disconnect: OptionalArgument<[InputObjects.AssetWhereUniqueInput]> = .absent()
        /// Delete multiple Asset documents
        var delete: OptionalArgument<[InputObjects.AssetWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if set.hasValue { try container.encode(set, forKey: .set) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
            case set
            case update
            case upsert
            case disconnect
            case delete
        }
    }
}

extension InputObjects {
    struct AssetUpdateManyInput: Encodable, Hashable {
        var fileName: OptionalArgument<String> = .absent()

        var height: OptionalArgument<Double> = .absent()

        var width: OptionalArgument<Double> = .absent()

        var size: OptionalArgument<Double> = .absent()

        var mimeType: OptionalArgument<String> = .absent()
        /// Optional updates to localizations
        var localizations: OptionalArgument<InputObjects.AssetUpdateManyLocalizationsInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if fileName.hasValue { try container.encode(fileName, forKey: .fileName) }
            if height.hasValue { try container.encode(height, forKey: .height) }
            if width.hasValue { try container.encode(width, forKey: .width) }
            if size.hasValue { try container.encode(size, forKey: .size) }
            if mimeType.hasValue { try container.encode(mimeType, forKey: .mimeType) }
            if localizations.hasValue { try container.encode(localizations, forKey: .localizations) }
        }

        enum CodingKeys: String, CodingKey {
            case fileName
            case height
            case width
            case size
            case mimeType
            case localizations
        }
    }
}

extension InputObjects {
    struct AssetUpdateManyLocalizationDataInput: Encodable, Hashable {
        var fileName: OptionalArgument<String> = .absent()

        var height: OptionalArgument<Double> = .absent()

        var width: OptionalArgument<Double> = .absent()

        var size: OptionalArgument<Double> = .absent()

        var mimeType: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if fileName.hasValue { try container.encode(fileName, forKey: .fileName) }
            if height.hasValue { try container.encode(height, forKey: .height) }
            if width.hasValue { try container.encode(width, forKey: .width) }
            if size.hasValue { try container.encode(size, forKey: .size) }
            if mimeType.hasValue { try container.encode(mimeType, forKey: .mimeType) }
        }

        enum CodingKeys: String, CodingKey {
            case fileName
            case height
            case width
            case size
            case mimeType
        }
    }
}

extension InputObjects {
    struct AssetUpdateManyLocalizationInput: Encodable, Hashable {
        var data: InputObjects.AssetUpdateManyLocalizationDataInput

        var locale: Enums.Locale

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(data, forKey: .data)
            try container.encode(locale, forKey: .locale)
        }

        enum CodingKeys: String, CodingKey {
            case data
            case locale
        }
    }
}

extension InputObjects {
    struct AssetUpdateManyLocalizationsInput: Encodable, Hashable {
        /// Localizations to update
        var update: OptionalArgument<[InputObjects.AssetUpdateManyLocalizationInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if update.hasValue { try container.encode(update, forKey: .update) }
        }

        enum CodingKeys: String, CodingKey {
            case update
        }
    }
}

extension InputObjects {
    struct AssetUpdateManyWithNestedWhereInput: Encodable, Hashable {
        /// Document search
        var `where`: InputObjects.AssetWhereInput
        /// Update many input
        var data: InputObjects.AssetUpdateManyInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct AssetUpdateOneInlineInput: Encodable, Hashable {
        /// Create and connect one Asset document
        var create: OptionalArgument<InputObjects.AssetCreateInput> = .absent()
        /// Update single Asset document
        var update: OptionalArgument<InputObjects.AssetUpdateWithNestedWhereUniqueInput> = .absent()
        /// Upsert single Asset document
        var upsert: OptionalArgument<InputObjects.AssetUpsertWithNestedWhereUniqueInput> = .absent()
        /// Connect existing Asset document
        var connect: OptionalArgument<InputObjects.AssetWhereUniqueInput> = .absent()
        /// Disconnect currently connected Asset document
        var disconnect: OptionalArgument<Bool> = .absent()
        /// Delete currently connected Asset document
        var delete: OptionalArgument<Bool> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
            case upsert
            case connect
            case disconnect
            case delete
        }
    }
}

extension InputObjects {
    struct AssetUpdateWithNestedWhereUniqueInput: Encodable, Hashable {
        /// Unique document search
        var `where`: InputObjects.AssetWhereUniqueInput
        /// Document to update
        var data: InputObjects.AssetUpdateInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct AssetUpsertInput: Encodable, Hashable {
        /// Create document if it didn't exist
        var create: InputObjects.AssetCreateInput
        /// Update document if it exists
        var update: InputObjects.AssetUpdateInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(create, forKey: .create)
            try container.encode(update, forKey: .update)
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
        }
    }
}

extension InputObjects {
    struct AssetUpsertLocalizationInput: Encodable, Hashable {
        var update: InputObjects.AssetUpdateLocalizationDataInput

        var create: InputObjects.AssetCreateLocalizationDataInput

        var locale: Enums.Locale

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(update, forKey: .update)
            try container.encode(create, forKey: .create)
            try container.encode(locale, forKey: .locale)
        }

        enum CodingKeys: String, CodingKey {
            case update
            case create
            case locale
        }
    }
}

extension InputObjects {
    struct AssetUpsertWithNestedWhereUniqueInput: Encodable, Hashable {
        /// Unique document search
        var `where`: InputObjects.AssetWhereUniqueInput
        /// Upsert data
        var data: InputObjects.AssetUpsertInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct AssetWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.AssetWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.AssetWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.AssetWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var handle: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var handleNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var handleIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var handleNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var handleContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var handleNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var handleStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var handleNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var handleEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var handleNotEndsWith: OptionalArgument<String> = .absent()

        var fileName: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var fileNameNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var fileNameIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var fileNameNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var fileNameContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var fileNameNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var fileNameStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var fileNameNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var fileNameEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var fileNameNotEndsWith: OptionalArgument<String> = .absent()

        var height: OptionalArgument<Double> = .absent()
        /// All values that are not equal to given value.
        var heightNot: OptionalArgument<Double> = .absent()
        /// All values that are contained in given list.
        var heightIn: OptionalArgument<[Double]> = .absent()
        /// All values that are not contained in given list.
        var heightNotIn: OptionalArgument<[Double]> = .absent()
        /// All values less than the given value.
        var heightLt: OptionalArgument<Double> = .absent()
        /// All values less than or equal the given value.
        var heightLte: OptionalArgument<Double> = .absent()
        /// All values greater than the given value.
        var heightGt: OptionalArgument<Double> = .absent()
        /// All values greater than or equal the given value.
        var heightGte: OptionalArgument<Double> = .absent()

        var width: OptionalArgument<Double> = .absent()
        /// All values that are not equal to given value.
        var widthNot: OptionalArgument<Double> = .absent()
        /// All values that are contained in given list.
        var widthIn: OptionalArgument<[Double]> = .absent()
        /// All values that are not contained in given list.
        var widthNotIn: OptionalArgument<[Double]> = .absent()
        /// All values less than the given value.
        var widthLt: OptionalArgument<Double> = .absent()
        /// All values less than or equal the given value.
        var widthLte: OptionalArgument<Double> = .absent()
        /// All values greater than the given value.
        var widthGt: OptionalArgument<Double> = .absent()
        /// All values greater than or equal the given value.
        var widthGte: OptionalArgument<Double> = .absent()

        var size: OptionalArgument<Double> = .absent()
        /// All values that are not equal to given value.
        var sizeNot: OptionalArgument<Double> = .absent()
        /// All values that are contained in given list.
        var sizeIn: OptionalArgument<[Double]> = .absent()
        /// All values that are not contained in given list.
        var sizeNotIn: OptionalArgument<[Double]> = .absent()
        /// All values less than the given value.
        var sizeLt: OptionalArgument<Double> = .absent()
        /// All values less than or equal the given value.
        var sizeLte: OptionalArgument<Double> = .absent()
        /// All values greater than the given value.
        var sizeGt: OptionalArgument<Double> = .absent()
        /// All values greater than or equal the given value.
        var sizeGte: OptionalArgument<Double> = .absent()

        var mimeType: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var mimeTypeNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var mimeTypeIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var mimeTypeNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var mimeTypeContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var mimeTypeNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var mimeTypeStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var mimeTypeNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var mimeTypeEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var mimeTypeNotEndsWith: OptionalArgument<String> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var productImageEvery: OptionalArgument<InputObjects.ProductWhereInput> = .absent()

        var productImageSome: OptionalArgument<InputObjects.ProductWhereInput> = .absent()

        var productImageNone: OptionalArgument<InputObjects.ProductWhereInput> = .absent()

        var scheduledInEvery: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInSome: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInNone: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if handle.hasValue { try container.encode(handle, forKey: .handle) }
            if handleNot.hasValue { try container.encode(handleNot, forKey: .handleNot) }
            if handleIn.hasValue { try container.encode(handleIn, forKey: .handleIn) }
            if handleNotIn.hasValue { try container.encode(handleNotIn, forKey: .handleNotIn) }
            if handleContains.hasValue { try container.encode(handleContains, forKey: .handleContains) }
            if handleNotContains.hasValue { try container.encode(handleNotContains, forKey: .handleNotContains) }
            if handleStartsWith.hasValue { try container.encode(handleStartsWith, forKey: .handleStartsWith) }
            if handleNotStartsWith.hasValue { try container.encode(handleNotStartsWith, forKey: .handleNotStartsWith) }
            if handleEndsWith.hasValue { try container.encode(handleEndsWith, forKey: .handleEndsWith) }
            if handleNotEndsWith.hasValue { try container.encode(handleNotEndsWith, forKey: .handleNotEndsWith) }
            if fileName.hasValue { try container.encode(fileName, forKey: .fileName) }
            if fileNameNot.hasValue { try container.encode(fileNameNot, forKey: .fileNameNot) }
            if fileNameIn.hasValue { try container.encode(fileNameIn, forKey: .fileNameIn) }
            if fileNameNotIn.hasValue { try container.encode(fileNameNotIn, forKey: .fileNameNotIn) }
            if fileNameContains.hasValue { try container.encode(fileNameContains, forKey: .fileNameContains) }
            if fileNameNotContains.hasValue { try container.encode(fileNameNotContains, forKey: .fileNameNotContains) }
            if fileNameStartsWith.hasValue { try container.encode(fileNameStartsWith, forKey: .fileNameStartsWith) }
            if fileNameNotStartsWith.hasValue { try container.encode(fileNameNotStartsWith, forKey: .fileNameNotStartsWith) }
            if fileNameEndsWith.hasValue { try container.encode(fileNameEndsWith, forKey: .fileNameEndsWith) }
            if fileNameNotEndsWith.hasValue { try container.encode(fileNameNotEndsWith, forKey: .fileNameNotEndsWith) }
            if height.hasValue { try container.encode(height, forKey: .height) }
            if heightNot.hasValue { try container.encode(heightNot, forKey: .heightNot) }
            if heightIn.hasValue { try container.encode(heightIn, forKey: .heightIn) }
            if heightNotIn.hasValue { try container.encode(heightNotIn, forKey: .heightNotIn) }
            if heightLt.hasValue { try container.encode(heightLt, forKey: .heightLt) }
            if heightLte.hasValue { try container.encode(heightLte, forKey: .heightLte) }
            if heightGt.hasValue { try container.encode(heightGt, forKey: .heightGt) }
            if heightGte.hasValue { try container.encode(heightGte, forKey: .heightGte) }
            if width.hasValue { try container.encode(width, forKey: .width) }
            if widthNot.hasValue { try container.encode(widthNot, forKey: .widthNot) }
            if widthIn.hasValue { try container.encode(widthIn, forKey: .widthIn) }
            if widthNotIn.hasValue { try container.encode(widthNotIn, forKey: .widthNotIn) }
            if widthLt.hasValue { try container.encode(widthLt, forKey: .widthLt) }
            if widthLte.hasValue { try container.encode(widthLte, forKey: .widthLte) }
            if widthGt.hasValue { try container.encode(widthGt, forKey: .widthGt) }
            if widthGte.hasValue { try container.encode(widthGte, forKey: .widthGte) }
            if size.hasValue { try container.encode(size, forKey: .size) }
            if sizeNot.hasValue { try container.encode(sizeNot, forKey: .sizeNot) }
            if sizeIn.hasValue { try container.encode(sizeIn, forKey: .sizeIn) }
            if sizeNotIn.hasValue { try container.encode(sizeNotIn, forKey: .sizeNotIn) }
            if sizeLt.hasValue { try container.encode(sizeLt, forKey: .sizeLt) }
            if sizeLte.hasValue { try container.encode(sizeLte, forKey: .sizeLte) }
            if sizeGt.hasValue { try container.encode(sizeGt, forKey: .sizeGt) }
            if sizeGte.hasValue { try container.encode(sizeGte, forKey: .sizeGte) }
            if mimeType.hasValue { try container.encode(mimeType, forKey: .mimeType) }
            if mimeTypeNot.hasValue { try container.encode(mimeTypeNot, forKey: .mimeTypeNot) }
            if mimeTypeIn.hasValue { try container.encode(mimeTypeIn, forKey: .mimeTypeIn) }
            if mimeTypeNotIn.hasValue { try container.encode(mimeTypeNotIn, forKey: .mimeTypeNotIn) }
            if mimeTypeContains.hasValue { try container.encode(mimeTypeContains, forKey: .mimeTypeContains) }
            if mimeTypeNotContains.hasValue { try container.encode(mimeTypeNotContains, forKey: .mimeTypeNotContains) }
            if mimeTypeStartsWith.hasValue { try container.encode(mimeTypeStartsWith, forKey: .mimeTypeStartsWith) }
            if mimeTypeNotStartsWith.hasValue { try container.encode(mimeTypeNotStartsWith, forKey: .mimeTypeNotStartsWith) }
            if mimeTypeEndsWith.hasValue { try container.encode(mimeTypeEndsWith, forKey: .mimeTypeEndsWith) }
            if mimeTypeNotEndsWith.hasValue { try container.encode(mimeTypeNotEndsWith, forKey: .mimeTypeNotEndsWith) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if productImageEvery.hasValue { try container.encode(productImageEvery, forKey: .productImageEvery) }
            if productImageSome.hasValue { try container.encode(productImageSome, forKey: .productImageSome) }
            if productImageNone.hasValue { try container.encode(productImageNone, forKey: .productImageNone) }
            if scheduledInEvery.hasValue { try container.encode(scheduledInEvery, forKey: .scheduledInEvery) }
            if scheduledInSome.hasValue { try container.encode(scheduledInSome, forKey: .scheduledInSome) }
            if scheduledInNone.hasValue { try container.encode(scheduledInNone, forKey: .scheduledInNone) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case handle
            case handleNot = "handle_not"
            case handleIn = "handle_in"
            case handleNotIn = "handle_not_in"
            case handleContains = "handle_contains"
            case handleNotContains = "handle_not_contains"
            case handleStartsWith = "handle_starts_with"
            case handleNotStartsWith = "handle_not_starts_with"
            case handleEndsWith = "handle_ends_with"
            case handleNotEndsWith = "handle_not_ends_with"
            case fileName
            case fileNameNot = "fileName_not"
            case fileNameIn = "fileName_in"
            case fileNameNotIn = "fileName_not_in"
            case fileNameContains = "fileName_contains"
            case fileNameNotContains = "fileName_not_contains"
            case fileNameStartsWith = "fileName_starts_with"
            case fileNameNotStartsWith = "fileName_not_starts_with"
            case fileNameEndsWith = "fileName_ends_with"
            case fileNameNotEndsWith = "fileName_not_ends_with"
            case height
            case heightNot = "height_not"
            case heightIn = "height_in"
            case heightNotIn = "height_not_in"
            case heightLt = "height_lt"
            case heightLte = "height_lte"
            case heightGt = "height_gt"
            case heightGte = "height_gte"
            case width
            case widthNot = "width_not"
            case widthIn = "width_in"
            case widthNotIn = "width_not_in"
            case widthLt = "width_lt"
            case widthLte = "width_lte"
            case widthGt = "width_gt"
            case widthGte = "width_gte"
            case size
            case sizeNot = "size_not"
            case sizeIn = "size_in"
            case sizeNotIn = "size_not_in"
            case sizeLt = "size_lt"
            case sizeLte = "size_lte"
            case sizeGt = "size_gt"
            case sizeGte = "size_gte"
            case mimeType
            case mimeTypeNot = "mimeType_not"
            case mimeTypeIn = "mimeType_in"
            case mimeTypeNotIn = "mimeType_not_in"
            case mimeTypeContains = "mimeType_contains"
            case mimeTypeNotContains = "mimeType_not_contains"
            case mimeTypeStartsWith = "mimeType_starts_with"
            case mimeTypeNotStartsWith = "mimeType_not_starts_with"
            case mimeTypeEndsWith = "mimeType_ends_with"
            case mimeTypeNotEndsWith = "mimeType_not_ends_with"
            case createdBy
            case updatedBy
            case publishedBy
            case productImageEvery = "productImage_every"
            case productImageSome = "productImage_some"
            case productImageNone = "productImage_none"
            case scheduledInEvery = "scheduledIn_every"
            case scheduledInSome = "scheduledIn_some"
            case scheduledInNone = "scheduledIn_none"
        }
    }
}

extension InputObjects {
    struct AssetWhereUniqueInput: Encodable, Hashable {
        var id: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if id.hasValue { try container.encode(id, forKey: .id) }
        }

        enum CodingKeys: String, CodingKey {
            case id
        }
    }
}

extension InputObjects {
    struct ColorInput: Encodable, Hashable {
        var hex: OptionalArgument<String> = .absent()

        var rgba: OptionalArgument<InputObjects.RgbaInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if hex.hasValue { try container.encode(hex, forKey: .hex) }
            if rgba.hasValue { try container.encode(rgba, forKey: .rgba) }
        }

        enum CodingKeys: String, CodingKey {
            case hex
            case rgba
        }
    }
}

extension InputObjects {
    struct ConnectPositionInput: Encodable, Hashable {
        /// Connect document after specified document
        var after: OptionalArgument<String> = .absent()
        /// Connect document before specified document
        var before: OptionalArgument<String> = .absent()
        /// Connect document at first position
        var start: OptionalArgument<Bool> = .absent()
        /// Connect document at last position
        var end: OptionalArgument<Bool> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if after.hasValue { try container.encode(after, forKey: .after) }
            if before.hasValue { try container.encode(before, forKey: .before) }
            if start.hasValue { try container.encode(start, forKey: .start) }
            if end.hasValue { try container.encode(end, forKey: .end) }
        }

        enum CodingKeys: String, CodingKey {
            case after
            case before
            case start
            case end
        }
    }
}

extension InputObjects {
    struct DocumentOutputInput: Encodable, Hashable {
        /// Transforms a document into a desired file type.
        /// See this matrix for format support:
        /// PDF:	jpg, odp, ods, odt, png, svg, txt, and webp
        /// DOC:	docx, html, jpg, odt, pdf, png, svg, txt, and webp
        /// DOCX:	doc, html, jpg, odt, pdf, png, svg, txt, and webp
        /// ODT:	doc, docx, html, jpg, pdf, png, svg, txt, and webp
        /// XLS:	jpg, pdf, ods, png, svg, xlsx, and webp
        /// XLSX:	jpg, pdf, ods, png, svg, xls, and webp
        /// ODS:	jpg, pdf, png, xls, svg, xlsx, and webp
        /// PPT:	jpg, odp, pdf, png, svg, pptx, and webp
        /// PPTX:	jpg, odp, pdf, png, svg, ppt, and webp
        /// ODP:	jpg, pdf, png, ppt, svg, pptx, and webp
        /// BMP:	jpg, odp, ods, odt, pdf, png, svg, and webp
        /// GIF:	jpg, odp, ods, odt, pdf, png, svg, and webp
        /// JPG:	jpg, odp, ods, odt, pdf, png, svg, and webp
        /// PNG:	jpg, odp, ods, odt, pdf, png, svg, and webp
        /// WEBP:	jpg, odp, ods, odt, pdf, png, svg, and webp
        /// TIFF:	jpg, odp, ods, odt, pdf, png, svg, and webp
        /// AI:	    jpg, odp, ods, odt, pdf, png, svg, and webp
        /// PSD:	jpg, odp, ods, odt, pdf, png, svg, and webp
        /// SVG:	jpg, odp, ods, odt, pdf, png, and webp
        /// HTML:	jpg, odt, pdf, svg, txt, and webp
        /// TXT:	jpg, html, odt, pdf, svg, and webp
        var format: OptionalArgument<Enums.DocumentFileTypes> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if format.hasValue { try container.encode(format, forKey: .format) }
        }

        enum CodingKeys: String, CodingKey {
            case format
        }
    }
}

extension InputObjects {
    struct DocumentTransformationInput: Encodable, Hashable {
        /// Changes the output for the file.
        var output: OptionalArgument<InputObjects.DocumentOutputInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if output.hasValue { try container.encode(output, forKey: .output) }
        }

        enum CodingKeys: String, CodingKey {
            case output
        }
    }
}

extension InputObjects {
    struct ImageResizeInput: Encodable, Hashable {
        /// The width in pixels to resize the image to. The value must be an integer from 1 to 10000.
        var width: OptionalArgument<Int> = .absent()
        /// The height in pixels to resize the image to. The value must be an integer from 1 to 10000.
        var height: OptionalArgument<Int> = .absent()
        /// The default value for the fit parameter is fit:clip.
        var fit: OptionalArgument<Enums.ImageFit> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if width.hasValue { try container.encode(width, forKey: .width) }
            if height.hasValue { try container.encode(height, forKey: .height) }
            if fit.hasValue { try container.encode(fit, forKey: .fit) }
        }

        enum CodingKeys: String, CodingKey {
            case width
            case height
            case fit
        }
    }
}

extension InputObjects {
    struct ImageTransformationInput: Encodable, Hashable {
        /// Resizes the image
        var resize: OptionalArgument<InputObjects.ImageResizeInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if resize.hasValue { try container.encode(resize, forKey: .resize) }
        }

        enum CodingKeys: String, CodingKey {
            case resize
        }
    }
}

extension InputObjects {
    struct LocationInput: Encodable, Hashable {
        var latitude: Double

        var longitude: Double

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(latitude, forKey: .latitude)
            try container.encode(longitude, forKey: .longitude)
        }

        enum CodingKeys: String, CodingKey {
            case latitude
            case longitude
        }
    }
}

extension InputObjects {
    struct NextAuthUserConnectInput: Encodable, Hashable {
        /// Document to connect
        var `where`: InputObjects.NextAuthUserWhereUniqueInput
        /// Allow to specify document position in list of connected documents, will default to appending at end of list
        var position: OptionalArgument<InputObjects.ConnectPositionInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            if position.hasValue { try container.encode(position, forKey: .position) }
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case position
        }
    }
}

extension InputObjects {
    struct NextAuthUserCreateInput: Encodable, Hashable {
        var createdAt: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()

        var name: OptionalArgument<String> = .absent()

        var email: String

        var bio: OptionalArgument<String> = .absent()

        var password: String

        var auth0Id: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            try container.encode(email, forKey: .email)
            if bio.hasValue { try container.encode(bio, forKey: .bio) }
            try container.encode(password, forKey: .password)
            if auth0Id.hasValue { try container.encode(auth0Id, forKey: .auth0Id) }
        }

        enum CodingKeys: String, CodingKey {
            case createdAt
            case updatedAt
            case name
            case email
            case bio
            case password
            case auth0Id
        }
    }
}

extension InputObjects {
    struct NextAuthUserCreateManyInlineInput: Encodable, Hashable {
        /// Create and connect multiple existing NextAuthUser documents
        var create: OptionalArgument<[InputObjects.NextAuthUserCreateInput]> = .absent()
        /// Connect multiple existing NextAuthUser documents
        var connect: OptionalArgument<[InputObjects.NextAuthUserWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
        }
    }
}

extension InputObjects {
    struct NextAuthUserCreateOneInlineInput: Encodable, Hashable {
        /// Create and connect one NextAuthUser document
        var create: OptionalArgument<InputObjects.NextAuthUserCreateInput> = .absent()
        /// Connect one existing NextAuthUser document
        var connect: OptionalArgument<InputObjects.NextAuthUserWhereUniqueInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
        }
    }
}

extension InputObjects {
    struct NextAuthUserManyWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.NextAuthUserWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.NextAuthUserWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.NextAuthUserWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var name: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var nameNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var nameIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var nameNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var nameContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var nameNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var nameStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var nameNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var nameEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var nameNotEndsWith: OptionalArgument<String> = .absent()

        var email: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var emailNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var emailIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var emailNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var emailContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var emailNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var emailStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var emailNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var emailEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var emailNotEndsWith: OptionalArgument<String> = .absent()

        var bio: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var bioNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var bioIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var bioNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var bioContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var bioNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var bioStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var bioNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var bioEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var bioNotEndsWith: OptionalArgument<String> = .absent()

        var password: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var passwordNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var passwordIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var passwordNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var passwordContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var passwordNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var passwordStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var passwordNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var passwordEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var passwordNotEndsWith: OptionalArgument<String> = .absent()

        var auth0Id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var auth0IdNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var auth0IdIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var auth0IdNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var auth0IdContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var auth0IdNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var auth0IdStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var auth0IdNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var auth0IdEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var auth0IdNotEndsWith: OptionalArgument<String> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var scheduledInEvery: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInSome: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInNone: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if nameNot.hasValue { try container.encode(nameNot, forKey: .nameNot) }
            if nameIn.hasValue { try container.encode(nameIn, forKey: .nameIn) }
            if nameNotIn.hasValue { try container.encode(nameNotIn, forKey: .nameNotIn) }
            if nameContains.hasValue { try container.encode(nameContains, forKey: .nameContains) }
            if nameNotContains.hasValue { try container.encode(nameNotContains, forKey: .nameNotContains) }
            if nameStartsWith.hasValue { try container.encode(nameStartsWith, forKey: .nameStartsWith) }
            if nameNotStartsWith.hasValue { try container.encode(nameNotStartsWith, forKey: .nameNotStartsWith) }
            if nameEndsWith.hasValue { try container.encode(nameEndsWith, forKey: .nameEndsWith) }
            if nameNotEndsWith.hasValue { try container.encode(nameNotEndsWith, forKey: .nameNotEndsWith) }
            if email.hasValue { try container.encode(email, forKey: .email) }
            if emailNot.hasValue { try container.encode(emailNot, forKey: .emailNot) }
            if emailIn.hasValue { try container.encode(emailIn, forKey: .emailIn) }
            if emailNotIn.hasValue { try container.encode(emailNotIn, forKey: .emailNotIn) }
            if emailContains.hasValue { try container.encode(emailContains, forKey: .emailContains) }
            if emailNotContains.hasValue { try container.encode(emailNotContains, forKey: .emailNotContains) }
            if emailStartsWith.hasValue { try container.encode(emailStartsWith, forKey: .emailStartsWith) }
            if emailNotStartsWith.hasValue { try container.encode(emailNotStartsWith, forKey: .emailNotStartsWith) }
            if emailEndsWith.hasValue { try container.encode(emailEndsWith, forKey: .emailEndsWith) }
            if emailNotEndsWith.hasValue { try container.encode(emailNotEndsWith, forKey: .emailNotEndsWith) }
            if bio.hasValue { try container.encode(bio, forKey: .bio) }
            if bioNot.hasValue { try container.encode(bioNot, forKey: .bioNot) }
            if bioIn.hasValue { try container.encode(bioIn, forKey: .bioIn) }
            if bioNotIn.hasValue { try container.encode(bioNotIn, forKey: .bioNotIn) }
            if bioContains.hasValue { try container.encode(bioContains, forKey: .bioContains) }
            if bioNotContains.hasValue { try container.encode(bioNotContains, forKey: .bioNotContains) }
            if bioStartsWith.hasValue { try container.encode(bioStartsWith, forKey: .bioStartsWith) }
            if bioNotStartsWith.hasValue { try container.encode(bioNotStartsWith, forKey: .bioNotStartsWith) }
            if bioEndsWith.hasValue { try container.encode(bioEndsWith, forKey: .bioEndsWith) }
            if bioNotEndsWith.hasValue { try container.encode(bioNotEndsWith, forKey: .bioNotEndsWith) }
            if password.hasValue { try container.encode(password, forKey: .password) }
            if passwordNot.hasValue { try container.encode(passwordNot, forKey: .passwordNot) }
            if passwordIn.hasValue { try container.encode(passwordIn, forKey: .passwordIn) }
            if passwordNotIn.hasValue { try container.encode(passwordNotIn, forKey: .passwordNotIn) }
            if passwordContains.hasValue { try container.encode(passwordContains, forKey: .passwordContains) }
            if passwordNotContains.hasValue { try container.encode(passwordNotContains, forKey: .passwordNotContains) }
            if passwordStartsWith.hasValue { try container.encode(passwordStartsWith, forKey: .passwordStartsWith) }
            if passwordNotStartsWith.hasValue { try container.encode(passwordNotStartsWith, forKey: .passwordNotStartsWith) }
            if passwordEndsWith.hasValue { try container.encode(passwordEndsWith, forKey: .passwordEndsWith) }
            if passwordNotEndsWith.hasValue { try container.encode(passwordNotEndsWith, forKey: .passwordNotEndsWith) }
            if auth0Id.hasValue { try container.encode(auth0Id, forKey: .auth0Id) }
            if auth0IdNot.hasValue { try container.encode(auth0IdNot, forKey: .auth0IdNot) }
            if auth0IdIn.hasValue { try container.encode(auth0IdIn, forKey: .auth0IdIn) }
            if auth0IdNotIn.hasValue { try container.encode(auth0IdNotIn, forKey: .auth0IdNotIn) }
            if auth0IdContains.hasValue { try container.encode(auth0IdContains, forKey: .auth0IdContains) }
            if auth0IdNotContains.hasValue { try container.encode(auth0IdNotContains, forKey: .auth0IdNotContains) }
            if auth0IdStartsWith.hasValue { try container.encode(auth0IdStartsWith, forKey: .auth0IdStartsWith) }
            if auth0IdNotStartsWith.hasValue { try container.encode(auth0IdNotStartsWith, forKey: .auth0IdNotStartsWith) }
            if auth0IdEndsWith.hasValue { try container.encode(auth0IdEndsWith, forKey: .auth0IdEndsWith) }
            if auth0IdNotEndsWith.hasValue { try container.encode(auth0IdNotEndsWith, forKey: .auth0IdNotEndsWith) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if scheduledInEvery.hasValue { try container.encode(scheduledInEvery, forKey: .scheduledInEvery) }
            if scheduledInSome.hasValue { try container.encode(scheduledInSome, forKey: .scheduledInSome) }
            if scheduledInNone.hasValue { try container.encode(scheduledInNone, forKey: .scheduledInNone) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case name
            case nameNot = "name_not"
            case nameIn = "name_in"
            case nameNotIn = "name_not_in"
            case nameContains = "name_contains"
            case nameNotContains = "name_not_contains"
            case nameStartsWith = "name_starts_with"
            case nameNotStartsWith = "name_not_starts_with"
            case nameEndsWith = "name_ends_with"
            case nameNotEndsWith = "name_not_ends_with"
            case email
            case emailNot = "email_not"
            case emailIn = "email_in"
            case emailNotIn = "email_not_in"
            case emailContains = "email_contains"
            case emailNotContains = "email_not_contains"
            case emailStartsWith = "email_starts_with"
            case emailNotStartsWith = "email_not_starts_with"
            case emailEndsWith = "email_ends_with"
            case emailNotEndsWith = "email_not_ends_with"
            case bio
            case bioNot = "bio_not"
            case bioIn = "bio_in"
            case bioNotIn = "bio_not_in"
            case bioContains = "bio_contains"
            case bioNotContains = "bio_not_contains"
            case bioStartsWith = "bio_starts_with"
            case bioNotStartsWith = "bio_not_starts_with"
            case bioEndsWith = "bio_ends_with"
            case bioNotEndsWith = "bio_not_ends_with"
            case password
            case passwordNot = "password_not"
            case passwordIn = "password_in"
            case passwordNotIn = "password_not_in"
            case passwordContains = "password_contains"
            case passwordNotContains = "password_not_contains"
            case passwordStartsWith = "password_starts_with"
            case passwordNotStartsWith = "password_not_starts_with"
            case passwordEndsWith = "password_ends_with"
            case passwordNotEndsWith = "password_not_ends_with"
            case auth0Id
            case auth0IdNot = "auth0Id_not"
            case auth0IdIn = "auth0Id_in"
            case auth0IdNotIn = "auth0Id_not_in"
            case auth0IdContains = "auth0Id_contains"
            case auth0IdNotContains = "auth0Id_not_contains"
            case auth0IdStartsWith = "auth0Id_starts_with"
            case auth0IdNotStartsWith = "auth0Id_not_starts_with"
            case auth0IdEndsWith = "auth0Id_ends_with"
            case auth0IdNotEndsWith = "auth0Id_not_ends_with"
            case createdBy
            case updatedBy
            case publishedBy
            case scheduledInEvery = "scheduledIn_every"
            case scheduledInSome = "scheduledIn_some"
            case scheduledInNone = "scheduledIn_none"
        }
    }
}

extension InputObjects {
    struct NextAuthUserUpdateInput: Encodable, Hashable {
        var name: OptionalArgument<String> = .absent()

        var email: OptionalArgument<String> = .absent()

        var bio: OptionalArgument<String> = .absent()

        var password: OptionalArgument<String> = .absent()

        var auth0Id: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if name.hasValue { try container.encode(name, forKey: .name) }
            if email.hasValue { try container.encode(email, forKey: .email) }
            if bio.hasValue { try container.encode(bio, forKey: .bio) }
            if password.hasValue { try container.encode(password, forKey: .password) }
            if auth0Id.hasValue { try container.encode(auth0Id, forKey: .auth0Id) }
        }

        enum CodingKeys: String, CodingKey {
            case name
            case email
            case bio
            case password
            case auth0Id
        }
    }
}

extension InputObjects {
    struct NextAuthUserUpdateManyInlineInput: Encodable, Hashable {
        /// Create and connect multiple NextAuthUser documents
        var create: OptionalArgument<[InputObjects.NextAuthUserCreateInput]> = .absent()
        /// Connect multiple existing NextAuthUser documents
        var connect: OptionalArgument<[InputObjects.NextAuthUserConnectInput]> = .absent()
        /// Override currently-connected documents with multiple existing NextAuthUser documents
        var set: OptionalArgument<[InputObjects.NextAuthUserWhereUniqueInput]> = .absent()
        /// Update multiple NextAuthUser documents
        var update: OptionalArgument<[InputObjects.NextAuthUserUpdateWithNestedWhereUniqueInput]> = .absent()
        /// Upsert multiple NextAuthUser documents
        var upsert: OptionalArgument<[InputObjects.NextAuthUserUpsertWithNestedWhereUniqueInput]> = .absent()
        /// Disconnect multiple NextAuthUser documents
        var disconnect: OptionalArgument<[InputObjects.NextAuthUserWhereUniqueInput]> = .absent()
        /// Delete multiple NextAuthUser documents
        var delete: OptionalArgument<[InputObjects.NextAuthUserWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if set.hasValue { try container.encode(set, forKey: .set) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
            case set
            case update
            case upsert
            case disconnect
            case delete
        }
    }
}

extension InputObjects {
    struct NextAuthUserUpdateManyInput: Encodable, Hashable {
        var name: OptionalArgument<String> = .absent()

        var bio: OptionalArgument<String> = .absent()

        var password: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if name.hasValue { try container.encode(name, forKey: .name) }
            if bio.hasValue { try container.encode(bio, forKey: .bio) }
            if password.hasValue { try container.encode(password, forKey: .password) }
        }

        enum CodingKeys: String, CodingKey {
            case name
            case bio
            case password
        }
    }
}

extension InputObjects {
    struct NextAuthUserUpdateManyWithNestedWhereInput: Encodable, Hashable {
        /// Document search
        var `where`: InputObjects.NextAuthUserWhereInput
        /// Update many input
        var data: InputObjects.NextAuthUserUpdateManyInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct NextAuthUserUpdateOneInlineInput: Encodable, Hashable {
        /// Create and connect one NextAuthUser document
        var create: OptionalArgument<InputObjects.NextAuthUserCreateInput> = .absent()
        /// Update single NextAuthUser document
        var update: OptionalArgument<InputObjects.NextAuthUserUpdateWithNestedWhereUniqueInput> = .absent()
        /// Upsert single NextAuthUser document
        var upsert: OptionalArgument<InputObjects.NextAuthUserUpsertWithNestedWhereUniqueInput> = .absent()
        /// Connect existing NextAuthUser document
        var connect: OptionalArgument<InputObjects.NextAuthUserWhereUniqueInput> = .absent()
        /// Disconnect currently connected NextAuthUser document
        var disconnect: OptionalArgument<Bool> = .absent()
        /// Delete currently connected NextAuthUser document
        var delete: OptionalArgument<Bool> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
            case upsert
            case connect
            case disconnect
            case delete
        }
    }
}

extension InputObjects {
    struct NextAuthUserUpdateWithNestedWhereUniqueInput: Encodable, Hashable {
        /// Unique document search
        var `where`: InputObjects.NextAuthUserWhereUniqueInput
        /// Document to update
        var data: InputObjects.NextAuthUserUpdateInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct NextAuthUserUpsertInput: Encodable, Hashable {
        /// Create document if it didn't exist
        var create: InputObjects.NextAuthUserCreateInput
        /// Update document if it exists
        var update: InputObjects.NextAuthUserUpdateInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(create, forKey: .create)
            try container.encode(update, forKey: .update)
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
        }
    }
}

extension InputObjects {
    struct NextAuthUserUpsertWithNestedWhereUniqueInput: Encodable, Hashable {
        /// Unique document search
        var `where`: InputObjects.NextAuthUserWhereUniqueInput
        /// Upsert data
        var data: InputObjects.NextAuthUserUpsertInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct NextAuthUserWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.NextAuthUserWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.NextAuthUserWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.NextAuthUserWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var name: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var nameNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var nameIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var nameNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var nameContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var nameNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var nameStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var nameNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var nameEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var nameNotEndsWith: OptionalArgument<String> = .absent()

        var email: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var emailNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var emailIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var emailNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var emailContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var emailNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var emailStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var emailNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var emailEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var emailNotEndsWith: OptionalArgument<String> = .absent()

        var bio: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var bioNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var bioIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var bioNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var bioContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var bioNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var bioStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var bioNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var bioEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var bioNotEndsWith: OptionalArgument<String> = .absent()

        var password: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var passwordNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var passwordIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var passwordNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var passwordContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var passwordNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var passwordStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var passwordNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var passwordEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var passwordNotEndsWith: OptionalArgument<String> = .absent()

        var auth0Id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var auth0IdNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var auth0IdIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var auth0IdNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var auth0IdContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var auth0IdNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var auth0IdStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var auth0IdNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var auth0IdEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var auth0IdNotEndsWith: OptionalArgument<String> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var scheduledInEvery: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInSome: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInNone: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if nameNot.hasValue { try container.encode(nameNot, forKey: .nameNot) }
            if nameIn.hasValue { try container.encode(nameIn, forKey: .nameIn) }
            if nameNotIn.hasValue { try container.encode(nameNotIn, forKey: .nameNotIn) }
            if nameContains.hasValue { try container.encode(nameContains, forKey: .nameContains) }
            if nameNotContains.hasValue { try container.encode(nameNotContains, forKey: .nameNotContains) }
            if nameStartsWith.hasValue { try container.encode(nameStartsWith, forKey: .nameStartsWith) }
            if nameNotStartsWith.hasValue { try container.encode(nameNotStartsWith, forKey: .nameNotStartsWith) }
            if nameEndsWith.hasValue { try container.encode(nameEndsWith, forKey: .nameEndsWith) }
            if nameNotEndsWith.hasValue { try container.encode(nameNotEndsWith, forKey: .nameNotEndsWith) }
            if email.hasValue { try container.encode(email, forKey: .email) }
            if emailNot.hasValue { try container.encode(emailNot, forKey: .emailNot) }
            if emailIn.hasValue { try container.encode(emailIn, forKey: .emailIn) }
            if emailNotIn.hasValue { try container.encode(emailNotIn, forKey: .emailNotIn) }
            if emailContains.hasValue { try container.encode(emailContains, forKey: .emailContains) }
            if emailNotContains.hasValue { try container.encode(emailNotContains, forKey: .emailNotContains) }
            if emailStartsWith.hasValue { try container.encode(emailStartsWith, forKey: .emailStartsWith) }
            if emailNotStartsWith.hasValue { try container.encode(emailNotStartsWith, forKey: .emailNotStartsWith) }
            if emailEndsWith.hasValue { try container.encode(emailEndsWith, forKey: .emailEndsWith) }
            if emailNotEndsWith.hasValue { try container.encode(emailNotEndsWith, forKey: .emailNotEndsWith) }
            if bio.hasValue { try container.encode(bio, forKey: .bio) }
            if bioNot.hasValue { try container.encode(bioNot, forKey: .bioNot) }
            if bioIn.hasValue { try container.encode(bioIn, forKey: .bioIn) }
            if bioNotIn.hasValue { try container.encode(bioNotIn, forKey: .bioNotIn) }
            if bioContains.hasValue { try container.encode(bioContains, forKey: .bioContains) }
            if bioNotContains.hasValue { try container.encode(bioNotContains, forKey: .bioNotContains) }
            if bioStartsWith.hasValue { try container.encode(bioStartsWith, forKey: .bioStartsWith) }
            if bioNotStartsWith.hasValue { try container.encode(bioNotStartsWith, forKey: .bioNotStartsWith) }
            if bioEndsWith.hasValue { try container.encode(bioEndsWith, forKey: .bioEndsWith) }
            if bioNotEndsWith.hasValue { try container.encode(bioNotEndsWith, forKey: .bioNotEndsWith) }
            if password.hasValue { try container.encode(password, forKey: .password) }
            if passwordNot.hasValue { try container.encode(passwordNot, forKey: .passwordNot) }
            if passwordIn.hasValue { try container.encode(passwordIn, forKey: .passwordIn) }
            if passwordNotIn.hasValue { try container.encode(passwordNotIn, forKey: .passwordNotIn) }
            if passwordContains.hasValue { try container.encode(passwordContains, forKey: .passwordContains) }
            if passwordNotContains.hasValue { try container.encode(passwordNotContains, forKey: .passwordNotContains) }
            if passwordStartsWith.hasValue { try container.encode(passwordStartsWith, forKey: .passwordStartsWith) }
            if passwordNotStartsWith.hasValue { try container.encode(passwordNotStartsWith, forKey: .passwordNotStartsWith) }
            if passwordEndsWith.hasValue { try container.encode(passwordEndsWith, forKey: .passwordEndsWith) }
            if passwordNotEndsWith.hasValue { try container.encode(passwordNotEndsWith, forKey: .passwordNotEndsWith) }
            if auth0Id.hasValue { try container.encode(auth0Id, forKey: .auth0Id) }
            if auth0IdNot.hasValue { try container.encode(auth0IdNot, forKey: .auth0IdNot) }
            if auth0IdIn.hasValue { try container.encode(auth0IdIn, forKey: .auth0IdIn) }
            if auth0IdNotIn.hasValue { try container.encode(auth0IdNotIn, forKey: .auth0IdNotIn) }
            if auth0IdContains.hasValue { try container.encode(auth0IdContains, forKey: .auth0IdContains) }
            if auth0IdNotContains.hasValue { try container.encode(auth0IdNotContains, forKey: .auth0IdNotContains) }
            if auth0IdStartsWith.hasValue { try container.encode(auth0IdStartsWith, forKey: .auth0IdStartsWith) }
            if auth0IdNotStartsWith.hasValue { try container.encode(auth0IdNotStartsWith, forKey: .auth0IdNotStartsWith) }
            if auth0IdEndsWith.hasValue { try container.encode(auth0IdEndsWith, forKey: .auth0IdEndsWith) }
            if auth0IdNotEndsWith.hasValue { try container.encode(auth0IdNotEndsWith, forKey: .auth0IdNotEndsWith) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if scheduledInEvery.hasValue { try container.encode(scheduledInEvery, forKey: .scheduledInEvery) }
            if scheduledInSome.hasValue { try container.encode(scheduledInSome, forKey: .scheduledInSome) }
            if scheduledInNone.hasValue { try container.encode(scheduledInNone, forKey: .scheduledInNone) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case name
            case nameNot = "name_not"
            case nameIn = "name_in"
            case nameNotIn = "name_not_in"
            case nameContains = "name_contains"
            case nameNotContains = "name_not_contains"
            case nameStartsWith = "name_starts_with"
            case nameNotStartsWith = "name_not_starts_with"
            case nameEndsWith = "name_ends_with"
            case nameNotEndsWith = "name_not_ends_with"
            case email
            case emailNot = "email_not"
            case emailIn = "email_in"
            case emailNotIn = "email_not_in"
            case emailContains = "email_contains"
            case emailNotContains = "email_not_contains"
            case emailStartsWith = "email_starts_with"
            case emailNotStartsWith = "email_not_starts_with"
            case emailEndsWith = "email_ends_with"
            case emailNotEndsWith = "email_not_ends_with"
            case bio
            case bioNot = "bio_not"
            case bioIn = "bio_in"
            case bioNotIn = "bio_not_in"
            case bioContains = "bio_contains"
            case bioNotContains = "bio_not_contains"
            case bioStartsWith = "bio_starts_with"
            case bioNotStartsWith = "bio_not_starts_with"
            case bioEndsWith = "bio_ends_with"
            case bioNotEndsWith = "bio_not_ends_with"
            case password
            case passwordNot = "password_not"
            case passwordIn = "password_in"
            case passwordNotIn = "password_not_in"
            case passwordContains = "password_contains"
            case passwordNotContains = "password_not_contains"
            case passwordStartsWith = "password_starts_with"
            case passwordNotStartsWith = "password_not_starts_with"
            case passwordEndsWith = "password_ends_with"
            case passwordNotEndsWith = "password_not_ends_with"
            case auth0Id
            case auth0IdNot = "auth0Id_not"
            case auth0IdIn = "auth0Id_in"
            case auth0IdNotIn = "auth0Id_not_in"
            case auth0IdContains = "auth0Id_contains"
            case auth0IdNotContains = "auth0Id_not_contains"
            case auth0IdStartsWith = "auth0Id_starts_with"
            case auth0IdNotStartsWith = "auth0Id_not_starts_with"
            case auth0IdEndsWith = "auth0Id_ends_with"
            case auth0IdNotEndsWith = "auth0Id_not_ends_with"
            case createdBy
            case updatedBy
            case publishedBy
            case scheduledInEvery = "scheduledIn_every"
            case scheduledInSome = "scheduledIn_some"
            case scheduledInNone = "scheduledIn_none"
        }
    }
}

extension InputObjects {
    struct NextAuthUserWhereUniqueInput: Encodable, Hashable {
        var id: OptionalArgument<String> = .absent()

        var email: OptionalArgument<String> = .absent()

        var auth0Id: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if id.hasValue { try container.encode(id, forKey: .id) }
            if email.hasValue { try container.encode(email, forKey: .email) }
            if auth0Id.hasValue { try container.encode(auth0Id, forKey: .auth0Id) }
        }

        enum CodingKeys: String, CodingKey {
            case id
            case email
            case auth0Id
        }
    }
}

extension InputObjects {
    struct ProductConnectInput: Encodable, Hashable {
        /// Document to connect
        var `where`: InputObjects.ProductWhereUniqueInput
        /// Allow to specify document position in list of connected documents, will default to appending at end of list
        var position: OptionalArgument<InputObjects.ConnectPositionInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            if position.hasValue { try container.encode(position, forKey: .position) }
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case position
        }
    }
}

extension InputObjects {
    struct ProductCreateInput: Encodable, Hashable {
        var createdAt: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// name input for default locale (en)
        var name: String

        var slug: String

        var description: OptionalArgument<String> = .absent()

        var price: Int

        var content: OptionalArgument<String> = .absent()

        var reviews: OptionalArgument<InputObjects.ReviewCreateManyInlineInput> = .absent()

        var votes: OptionalArgument<InputObjects.VoteCreateManyInlineInput> = .absent()

        var image: OptionalArgument<InputObjects.AssetCreateOneInlineInput> = .absent()
        /// Inline mutations for managing document localizations excluding the default locale
        var localizations: OptionalArgument<InputObjects.ProductCreateLocalizationsInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            try container.encode(name, forKey: .name)
            try container.encode(slug, forKey: .slug)
            if description.hasValue { try container.encode(description, forKey: .description) }
            try container.encode(price, forKey: .price)
            if content.hasValue { try container.encode(content, forKey: .content) }
            if reviews.hasValue { try container.encode(reviews, forKey: .reviews) }
            if votes.hasValue { try container.encode(votes, forKey: .votes) }
            if image.hasValue { try container.encode(image, forKey: .image) }
            if localizations.hasValue { try container.encode(localizations, forKey: .localizations) }
        }

        enum CodingKeys: String, CodingKey {
            case createdAt
            case updatedAt
            case name
            case slug
            case description
            case price
            case content
            case reviews
            case votes
            case image
            case localizations
        }
    }
}

extension InputObjects {
    struct ProductCreateLocalizationDataInput: Encodable, Hashable {
        var createdAt: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()

        var name: String

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            try container.encode(name, forKey: .name)
        }

        enum CodingKeys: String, CodingKey {
            case createdAt
            case updatedAt
            case name
        }
    }
}

extension InputObjects {
    struct ProductCreateLocalizationInput: Encodable, Hashable {
        /// Localization input
        var data: InputObjects.ProductCreateLocalizationDataInput

        var locale: Enums.Locale

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(data, forKey: .data)
            try container.encode(locale, forKey: .locale)
        }

        enum CodingKeys: String, CodingKey {
            case data
            case locale
        }
    }
}

extension InputObjects {
    struct ProductCreateLocalizationsInput: Encodable, Hashable {
        /// Create localizations for the newly-created document
        var create: OptionalArgument<[InputObjects.ProductCreateLocalizationInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
        }

        enum CodingKeys: String, CodingKey {
            case create
        }
    }
}

extension InputObjects {
    struct ProductCreateManyInlineInput: Encodable, Hashable {
        /// Create and connect multiple existing Product documents
        var create: OptionalArgument<[InputObjects.ProductCreateInput]> = .absent()
        /// Connect multiple existing Product documents
        var connect: OptionalArgument<[InputObjects.ProductWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
        }
    }
}

extension InputObjects {
    struct ProductCreateOneInlineInput: Encodable, Hashable {
        /// Create and connect one Product document
        var create: OptionalArgument<InputObjects.ProductCreateInput> = .absent()
        /// Connect one existing Product document
        var connect: OptionalArgument<InputObjects.ProductWhereUniqueInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
        }
    }
}

extension InputObjects {
    struct ProductManyWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.ProductWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.ProductWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.ProductWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var slug: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var slugNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var slugIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var slugNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var slugContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var slugNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var slugStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var slugNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var slugEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var slugNotEndsWith: OptionalArgument<String> = .absent()

        var description: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var descriptionNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var descriptionIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var descriptionNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var descriptionContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var descriptionNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var descriptionStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var descriptionNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var descriptionEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var descriptionNotEndsWith: OptionalArgument<String> = .absent()

        var price: OptionalArgument<Int> = .absent()
        /// All values that are not equal to given value.
        var priceNot: OptionalArgument<Int> = .absent()
        /// All values that are contained in given list.
        var priceIn: OptionalArgument<[Int]> = .absent()
        /// All values that are not contained in given list.
        var priceNotIn: OptionalArgument<[Int]> = .absent()
        /// All values less than the given value.
        var priceLt: OptionalArgument<Int> = .absent()
        /// All values less than or equal the given value.
        var priceLte: OptionalArgument<Int> = .absent()
        /// All values greater than the given value.
        var priceGt: OptionalArgument<Int> = .absent()
        /// All values greater than or equal the given value.
        var priceGte: OptionalArgument<Int> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var reviewsEvery: OptionalArgument<InputObjects.ReviewWhereInput> = .absent()

        var reviewsSome: OptionalArgument<InputObjects.ReviewWhereInput> = .absent()

        var reviewsNone: OptionalArgument<InputObjects.ReviewWhereInput> = .absent()

        var votesEvery: OptionalArgument<InputObjects.VoteWhereInput> = .absent()

        var votesSome: OptionalArgument<InputObjects.VoteWhereInput> = .absent()

        var votesNone: OptionalArgument<InputObjects.VoteWhereInput> = .absent()

        var image: OptionalArgument<InputObjects.AssetWhereInput> = .absent()

        var scheduledInEvery: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInSome: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInNone: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if slug.hasValue { try container.encode(slug, forKey: .slug) }
            if slugNot.hasValue { try container.encode(slugNot, forKey: .slugNot) }
            if slugIn.hasValue { try container.encode(slugIn, forKey: .slugIn) }
            if slugNotIn.hasValue { try container.encode(slugNotIn, forKey: .slugNotIn) }
            if slugContains.hasValue { try container.encode(slugContains, forKey: .slugContains) }
            if slugNotContains.hasValue { try container.encode(slugNotContains, forKey: .slugNotContains) }
            if slugStartsWith.hasValue { try container.encode(slugStartsWith, forKey: .slugStartsWith) }
            if slugNotStartsWith.hasValue { try container.encode(slugNotStartsWith, forKey: .slugNotStartsWith) }
            if slugEndsWith.hasValue { try container.encode(slugEndsWith, forKey: .slugEndsWith) }
            if slugNotEndsWith.hasValue { try container.encode(slugNotEndsWith, forKey: .slugNotEndsWith) }
            if description.hasValue { try container.encode(description, forKey: .description) }
            if descriptionNot.hasValue { try container.encode(descriptionNot, forKey: .descriptionNot) }
            if descriptionIn.hasValue { try container.encode(descriptionIn, forKey: .descriptionIn) }
            if descriptionNotIn.hasValue { try container.encode(descriptionNotIn, forKey: .descriptionNotIn) }
            if descriptionContains.hasValue { try container.encode(descriptionContains, forKey: .descriptionContains) }
            if descriptionNotContains.hasValue { try container.encode(descriptionNotContains, forKey: .descriptionNotContains) }
            if descriptionStartsWith.hasValue { try container.encode(descriptionStartsWith, forKey: .descriptionStartsWith) }
            if descriptionNotStartsWith.hasValue { try container.encode(descriptionNotStartsWith, forKey: .descriptionNotStartsWith) }
            if descriptionEndsWith.hasValue { try container.encode(descriptionEndsWith, forKey: .descriptionEndsWith) }
            if descriptionNotEndsWith.hasValue { try container.encode(descriptionNotEndsWith, forKey: .descriptionNotEndsWith) }
            if price.hasValue { try container.encode(price, forKey: .price) }
            if priceNot.hasValue { try container.encode(priceNot, forKey: .priceNot) }
            if priceIn.hasValue { try container.encode(priceIn, forKey: .priceIn) }
            if priceNotIn.hasValue { try container.encode(priceNotIn, forKey: .priceNotIn) }
            if priceLt.hasValue { try container.encode(priceLt, forKey: .priceLt) }
            if priceLte.hasValue { try container.encode(priceLte, forKey: .priceLte) }
            if priceGt.hasValue { try container.encode(priceGt, forKey: .priceGt) }
            if priceGte.hasValue { try container.encode(priceGte, forKey: .priceGte) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if reviewsEvery.hasValue { try container.encode(reviewsEvery, forKey: .reviewsEvery) }
            if reviewsSome.hasValue { try container.encode(reviewsSome, forKey: .reviewsSome) }
            if reviewsNone.hasValue { try container.encode(reviewsNone, forKey: .reviewsNone) }
            if votesEvery.hasValue { try container.encode(votesEvery, forKey: .votesEvery) }
            if votesSome.hasValue { try container.encode(votesSome, forKey: .votesSome) }
            if votesNone.hasValue { try container.encode(votesNone, forKey: .votesNone) }
            if image.hasValue { try container.encode(image, forKey: .image) }
            if scheduledInEvery.hasValue { try container.encode(scheduledInEvery, forKey: .scheduledInEvery) }
            if scheduledInSome.hasValue { try container.encode(scheduledInSome, forKey: .scheduledInSome) }
            if scheduledInNone.hasValue { try container.encode(scheduledInNone, forKey: .scheduledInNone) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case slug
            case slugNot = "slug_not"
            case slugIn = "slug_in"
            case slugNotIn = "slug_not_in"
            case slugContains = "slug_contains"
            case slugNotContains = "slug_not_contains"
            case slugStartsWith = "slug_starts_with"
            case slugNotStartsWith = "slug_not_starts_with"
            case slugEndsWith = "slug_ends_with"
            case slugNotEndsWith = "slug_not_ends_with"
            case description
            case descriptionNot = "description_not"
            case descriptionIn = "description_in"
            case descriptionNotIn = "description_not_in"
            case descriptionContains = "description_contains"
            case descriptionNotContains = "description_not_contains"
            case descriptionStartsWith = "description_starts_with"
            case descriptionNotStartsWith = "description_not_starts_with"
            case descriptionEndsWith = "description_ends_with"
            case descriptionNotEndsWith = "description_not_ends_with"
            case price
            case priceNot = "price_not"
            case priceIn = "price_in"
            case priceNotIn = "price_not_in"
            case priceLt = "price_lt"
            case priceLte = "price_lte"
            case priceGt = "price_gt"
            case priceGte = "price_gte"
            case createdBy
            case updatedBy
            case publishedBy
            case reviewsEvery = "reviews_every"
            case reviewsSome = "reviews_some"
            case reviewsNone = "reviews_none"
            case votesEvery = "votes_every"
            case votesSome = "votes_some"
            case votesNone = "votes_none"
            case image
            case scheduledInEvery = "scheduledIn_every"
            case scheduledInSome = "scheduledIn_some"
            case scheduledInNone = "scheduledIn_none"
        }
    }
}

extension InputObjects {
    struct ProductUpdateInput: Encodable, Hashable {
        /// name input for default locale (en)
        var name: OptionalArgument<String> = .absent()

        var slug: OptionalArgument<String> = .absent()

        var description: OptionalArgument<String> = .absent()

        var price: OptionalArgument<Int> = .absent()

        var content: OptionalArgument<String> = .absent()

        var reviews: OptionalArgument<InputObjects.ReviewUpdateManyInlineInput> = .absent()

        var votes: OptionalArgument<InputObjects.VoteUpdateManyInlineInput> = .absent()

        var image: OptionalArgument<InputObjects.AssetUpdateOneInlineInput> = .absent()
        /// Manage document localizations
        var localizations: OptionalArgument<InputObjects.ProductUpdateLocalizationsInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if name.hasValue { try container.encode(name, forKey: .name) }
            if slug.hasValue { try container.encode(slug, forKey: .slug) }
            if description.hasValue { try container.encode(description, forKey: .description) }
            if price.hasValue { try container.encode(price, forKey: .price) }
            if content.hasValue { try container.encode(content, forKey: .content) }
            if reviews.hasValue { try container.encode(reviews, forKey: .reviews) }
            if votes.hasValue { try container.encode(votes, forKey: .votes) }
            if image.hasValue { try container.encode(image, forKey: .image) }
            if localizations.hasValue { try container.encode(localizations, forKey: .localizations) }
        }

        enum CodingKeys: String, CodingKey {
            case name
            case slug
            case description
            case price
            case content
            case reviews
            case votes
            case image
            case localizations
        }
    }
}

extension InputObjects {
    struct ProductUpdateLocalizationDataInput: Encodable, Hashable {
        var name: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if name.hasValue { try container.encode(name, forKey: .name) }
        }

        enum CodingKeys: String, CodingKey {
            case name
        }
    }
}

extension InputObjects {
    struct ProductUpdateLocalizationInput: Encodable, Hashable {
        var data: InputObjects.ProductUpdateLocalizationDataInput

        var locale: Enums.Locale

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(data, forKey: .data)
            try container.encode(locale, forKey: .locale)
        }

        enum CodingKeys: String, CodingKey {
            case data
            case locale
        }
    }
}

extension InputObjects {
    struct ProductUpdateLocalizationsInput: Encodable, Hashable {
        /// Localizations to create
        var create: OptionalArgument<[InputObjects.ProductCreateLocalizationInput]> = .absent()
        /// Localizations to update
        var update: OptionalArgument<[InputObjects.ProductUpdateLocalizationInput]> = .absent()

        var upsert: OptionalArgument<[InputObjects.ProductUpsertLocalizationInput]> = .absent()
        /// Localizations to delete
        var delete: OptionalArgument<[Enums.Locale]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
            case upsert
            case delete
        }
    }
}

extension InputObjects {
    struct ProductUpdateManyInlineInput: Encodable, Hashable {
        /// Create and connect multiple Product documents
        var create: OptionalArgument<[InputObjects.ProductCreateInput]> = .absent()
        /// Connect multiple existing Product documents
        var connect: OptionalArgument<[InputObjects.ProductConnectInput]> = .absent()
        /// Override currently-connected documents with multiple existing Product documents
        var set: OptionalArgument<[InputObjects.ProductWhereUniqueInput]> = .absent()
        /// Update multiple Product documents
        var update: OptionalArgument<[InputObjects.ProductUpdateWithNestedWhereUniqueInput]> = .absent()
        /// Upsert multiple Product documents
        var upsert: OptionalArgument<[InputObjects.ProductUpsertWithNestedWhereUniqueInput]> = .absent()
        /// Disconnect multiple Product documents
        var disconnect: OptionalArgument<[InputObjects.ProductWhereUniqueInput]> = .absent()
        /// Delete multiple Product documents
        var delete: OptionalArgument<[InputObjects.ProductWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if set.hasValue { try container.encode(set, forKey: .set) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
            case set
            case update
            case upsert
            case disconnect
            case delete
        }
    }
}

extension InputObjects {
    struct ProductUpdateManyInput: Encodable, Hashable {
        /// name input for default locale (en)
        var name: OptionalArgument<String> = .absent()

        var description: OptionalArgument<String> = .absent()

        var price: OptionalArgument<Int> = .absent()

        var content: OptionalArgument<String> = .absent()
        /// Optional updates to localizations
        var localizations: OptionalArgument<InputObjects.ProductUpdateManyLocalizationsInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if name.hasValue { try container.encode(name, forKey: .name) }
            if description.hasValue { try container.encode(description, forKey: .description) }
            if price.hasValue { try container.encode(price, forKey: .price) }
            if content.hasValue { try container.encode(content, forKey: .content) }
            if localizations.hasValue { try container.encode(localizations, forKey: .localizations) }
        }

        enum CodingKeys: String, CodingKey {
            case name
            case description
            case price
            case content
            case localizations
        }
    }
}

extension InputObjects {
    struct ProductUpdateManyLocalizationDataInput: Encodable, Hashable {
        var name: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if name.hasValue { try container.encode(name, forKey: .name) }
        }

        enum CodingKeys: String, CodingKey {
            case name
        }
    }
}

extension InputObjects {
    struct ProductUpdateManyLocalizationInput: Encodable, Hashable {
        var data: InputObjects.ProductUpdateManyLocalizationDataInput

        var locale: Enums.Locale

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(data, forKey: .data)
            try container.encode(locale, forKey: .locale)
        }

        enum CodingKeys: String, CodingKey {
            case data
            case locale
        }
    }
}

extension InputObjects {
    struct ProductUpdateManyLocalizationsInput: Encodable, Hashable {
        /// Localizations to update
        var update: OptionalArgument<[InputObjects.ProductUpdateManyLocalizationInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if update.hasValue { try container.encode(update, forKey: .update) }
        }

        enum CodingKeys: String, CodingKey {
            case update
        }
    }
}

extension InputObjects {
    struct ProductUpdateManyWithNestedWhereInput: Encodable, Hashable {
        /// Document search
        var `where`: InputObjects.ProductWhereInput
        /// Update many input
        var data: InputObjects.ProductUpdateManyInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct ProductUpdateOneInlineInput: Encodable, Hashable {
        /// Create and connect one Product document
        var create: OptionalArgument<InputObjects.ProductCreateInput> = .absent()
        /// Update single Product document
        var update: OptionalArgument<InputObjects.ProductUpdateWithNestedWhereUniqueInput> = .absent()
        /// Upsert single Product document
        var upsert: OptionalArgument<InputObjects.ProductUpsertWithNestedWhereUniqueInput> = .absent()
        /// Connect existing Product document
        var connect: OptionalArgument<InputObjects.ProductWhereUniqueInput> = .absent()
        /// Disconnect currently connected Product document
        var disconnect: OptionalArgument<Bool> = .absent()
        /// Delete currently connected Product document
        var delete: OptionalArgument<Bool> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
            case upsert
            case connect
            case disconnect
            case delete
        }
    }
}

extension InputObjects {
    struct ProductUpdateWithNestedWhereUniqueInput: Encodable, Hashable {
        /// Unique document search
        var `where`: InputObjects.ProductWhereUniqueInput
        /// Document to update
        var data: InputObjects.ProductUpdateInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct ProductUpsertInput: Encodable, Hashable {
        /// Create document if it didn't exist
        var create: InputObjects.ProductCreateInput
        /// Update document if it exists
        var update: InputObjects.ProductUpdateInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(create, forKey: .create)
            try container.encode(update, forKey: .update)
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
        }
    }
}

extension InputObjects {
    struct ProductUpsertLocalizationInput: Encodable, Hashable {
        var update: InputObjects.ProductUpdateLocalizationDataInput

        var create: InputObjects.ProductCreateLocalizationDataInput

        var locale: Enums.Locale

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(update, forKey: .update)
            try container.encode(create, forKey: .create)
            try container.encode(locale, forKey: .locale)
        }

        enum CodingKeys: String, CodingKey {
            case update
            case create
            case locale
        }
    }
}

extension InputObjects {
    struct ProductUpsertWithNestedWhereUniqueInput: Encodable, Hashable {
        /// Unique document search
        var `where`: InputObjects.ProductWhereUniqueInput
        /// Upsert data
        var data: InputObjects.ProductUpsertInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct ProductWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.ProductWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.ProductWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.ProductWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var name: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var nameNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var nameIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var nameNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var nameContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var nameNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var nameStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var nameNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var nameEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var nameNotEndsWith: OptionalArgument<String> = .absent()

        var slug: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var slugNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var slugIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var slugNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var slugContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var slugNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var slugStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var slugNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var slugEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var slugNotEndsWith: OptionalArgument<String> = .absent()

        var description: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var descriptionNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var descriptionIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var descriptionNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var descriptionContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var descriptionNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var descriptionStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var descriptionNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var descriptionEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var descriptionNotEndsWith: OptionalArgument<String> = .absent()

        var price: OptionalArgument<Int> = .absent()
        /// All values that are not equal to given value.
        var priceNot: OptionalArgument<Int> = .absent()
        /// All values that are contained in given list.
        var priceIn: OptionalArgument<[Int]> = .absent()
        /// All values that are not contained in given list.
        var priceNotIn: OptionalArgument<[Int]> = .absent()
        /// All values less than the given value.
        var priceLt: OptionalArgument<Int> = .absent()
        /// All values less than or equal the given value.
        var priceLte: OptionalArgument<Int> = .absent()
        /// All values greater than the given value.
        var priceGt: OptionalArgument<Int> = .absent()
        /// All values greater than or equal the given value.
        var priceGte: OptionalArgument<Int> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var reviewsEvery: OptionalArgument<InputObjects.ReviewWhereInput> = .absent()

        var reviewsSome: OptionalArgument<InputObjects.ReviewWhereInput> = .absent()

        var reviewsNone: OptionalArgument<InputObjects.ReviewWhereInput> = .absent()

        var votesEvery: OptionalArgument<InputObjects.VoteWhereInput> = .absent()

        var votesSome: OptionalArgument<InputObjects.VoteWhereInput> = .absent()

        var votesNone: OptionalArgument<InputObjects.VoteWhereInput> = .absent()

        var image: OptionalArgument<InputObjects.AssetWhereInput> = .absent()

        var scheduledInEvery: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInSome: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInNone: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if nameNot.hasValue { try container.encode(nameNot, forKey: .nameNot) }
            if nameIn.hasValue { try container.encode(nameIn, forKey: .nameIn) }
            if nameNotIn.hasValue { try container.encode(nameNotIn, forKey: .nameNotIn) }
            if nameContains.hasValue { try container.encode(nameContains, forKey: .nameContains) }
            if nameNotContains.hasValue { try container.encode(nameNotContains, forKey: .nameNotContains) }
            if nameStartsWith.hasValue { try container.encode(nameStartsWith, forKey: .nameStartsWith) }
            if nameNotStartsWith.hasValue { try container.encode(nameNotStartsWith, forKey: .nameNotStartsWith) }
            if nameEndsWith.hasValue { try container.encode(nameEndsWith, forKey: .nameEndsWith) }
            if nameNotEndsWith.hasValue { try container.encode(nameNotEndsWith, forKey: .nameNotEndsWith) }
            if slug.hasValue { try container.encode(slug, forKey: .slug) }
            if slugNot.hasValue { try container.encode(slugNot, forKey: .slugNot) }
            if slugIn.hasValue { try container.encode(slugIn, forKey: .slugIn) }
            if slugNotIn.hasValue { try container.encode(slugNotIn, forKey: .slugNotIn) }
            if slugContains.hasValue { try container.encode(slugContains, forKey: .slugContains) }
            if slugNotContains.hasValue { try container.encode(slugNotContains, forKey: .slugNotContains) }
            if slugStartsWith.hasValue { try container.encode(slugStartsWith, forKey: .slugStartsWith) }
            if slugNotStartsWith.hasValue { try container.encode(slugNotStartsWith, forKey: .slugNotStartsWith) }
            if slugEndsWith.hasValue { try container.encode(slugEndsWith, forKey: .slugEndsWith) }
            if slugNotEndsWith.hasValue { try container.encode(slugNotEndsWith, forKey: .slugNotEndsWith) }
            if description.hasValue { try container.encode(description, forKey: .description) }
            if descriptionNot.hasValue { try container.encode(descriptionNot, forKey: .descriptionNot) }
            if descriptionIn.hasValue { try container.encode(descriptionIn, forKey: .descriptionIn) }
            if descriptionNotIn.hasValue { try container.encode(descriptionNotIn, forKey: .descriptionNotIn) }
            if descriptionContains.hasValue { try container.encode(descriptionContains, forKey: .descriptionContains) }
            if descriptionNotContains.hasValue { try container.encode(descriptionNotContains, forKey: .descriptionNotContains) }
            if descriptionStartsWith.hasValue { try container.encode(descriptionStartsWith, forKey: .descriptionStartsWith) }
            if descriptionNotStartsWith.hasValue { try container.encode(descriptionNotStartsWith, forKey: .descriptionNotStartsWith) }
            if descriptionEndsWith.hasValue { try container.encode(descriptionEndsWith, forKey: .descriptionEndsWith) }
            if descriptionNotEndsWith.hasValue { try container.encode(descriptionNotEndsWith, forKey: .descriptionNotEndsWith) }
            if price.hasValue { try container.encode(price, forKey: .price) }
            if priceNot.hasValue { try container.encode(priceNot, forKey: .priceNot) }
            if priceIn.hasValue { try container.encode(priceIn, forKey: .priceIn) }
            if priceNotIn.hasValue { try container.encode(priceNotIn, forKey: .priceNotIn) }
            if priceLt.hasValue { try container.encode(priceLt, forKey: .priceLt) }
            if priceLte.hasValue { try container.encode(priceLte, forKey: .priceLte) }
            if priceGt.hasValue { try container.encode(priceGt, forKey: .priceGt) }
            if priceGte.hasValue { try container.encode(priceGte, forKey: .priceGte) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if reviewsEvery.hasValue { try container.encode(reviewsEvery, forKey: .reviewsEvery) }
            if reviewsSome.hasValue { try container.encode(reviewsSome, forKey: .reviewsSome) }
            if reviewsNone.hasValue { try container.encode(reviewsNone, forKey: .reviewsNone) }
            if votesEvery.hasValue { try container.encode(votesEvery, forKey: .votesEvery) }
            if votesSome.hasValue { try container.encode(votesSome, forKey: .votesSome) }
            if votesNone.hasValue { try container.encode(votesNone, forKey: .votesNone) }
            if image.hasValue { try container.encode(image, forKey: .image) }
            if scheduledInEvery.hasValue { try container.encode(scheduledInEvery, forKey: .scheduledInEvery) }
            if scheduledInSome.hasValue { try container.encode(scheduledInSome, forKey: .scheduledInSome) }
            if scheduledInNone.hasValue { try container.encode(scheduledInNone, forKey: .scheduledInNone) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case name
            case nameNot = "name_not"
            case nameIn = "name_in"
            case nameNotIn = "name_not_in"
            case nameContains = "name_contains"
            case nameNotContains = "name_not_contains"
            case nameStartsWith = "name_starts_with"
            case nameNotStartsWith = "name_not_starts_with"
            case nameEndsWith = "name_ends_with"
            case nameNotEndsWith = "name_not_ends_with"
            case slug
            case slugNot = "slug_not"
            case slugIn = "slug_in"
            case slugNotIn = "slug_not_in"
            case slugContains = "slug_contains"
            case slugNotContains = "slug_not_contains"
            case slugStartsWith = "slug_starts_with"
            case slugNotStartsWith = "slug_not_starts_with"
            case slugEndsWith = "slug_ends_with"
            case slugNotEndsWith = "slug_not_ends_with"
            case description
            case descriptionNot = "description_not"
            case descriptionIn = "description_in"
            case descriptionNotIn = "description_not_in"
            case descriptionContains = "description_contains"
            case descriptionNotContains = "description_not_contains"
            case descriptionStartsWith = "description_starts_with"
            case descriptionNotStartsWith = "description_not_starts_with"
            case descriptionEndsWith = "description_ends_with"
            case descriptionNotEndsWith = "description_not_ends_with"
            case price
            case priceNot = "price_not"
            case priceIn = "price_in"
            case priceNotIn = "price_not_in"
            case priceLt = "price_lt"
            case priceLte = "price_lte"
            case priceGt = "price_gt"
            case priceGte = "price_gte"
            case createdBy
            case updatedBy
            case publishedBy
            case reviewsEvery = "reviews_every"
            case reviewsSome = "reviews_some"
            case reviewsNone = "reviews_none"
            case votesEvery = "votes_every"
            case votesSome = "votes_some"
            case votesNone = "votes_none"
            case image
            case scheduledInEvery = "scheduledIn_every"
            case scheduledInSome = "scheduledIn_some"
            case scheduledInNone = "scheduledIn_none"
        }
    }
}

extension InputObjects {
    struct ProductWhereUniqueInput: Encodable, Hashable {
        var id: OptionalArgument<String> = .absent()

        var slug: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if id.hasValue { try container.encode(id, forKey: .id) }
            if slug.hasValue { try container.encode(slug, forKey: .slug) }
        }

        enum CodingKeys: String, CodingKey {
            case id
            case slug
        }
    }
}

extension InputObjects {
    struct PublishLocaleInput: Encodable, Hashable {
        /// Locales to publish
        var locale: Enums.Locale
        /// Stages to publish selected locales to
        var stages: [Enums.Stage]

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(locale, forKey: .locale)
            try container.encode(stages, forKey: .stages)
        }

        enum CodingKeys: String, CodingKey {
            case locale
            case stages
        }
    }
}

extension InputObjects {
    struct RgbaInput: Encodable, Hashable {
        var r: String

        var g: String

        var b: String

        var a: String

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(r, forKey: .r)
            try container.encode(g, forKey: .g)
            try container.encode(b, forKey: .b)
            try container.encode(a, forKey: .a)
        }

        enum CodingKeys: String, CodingKey {
            case r
            case g
            case b
            case a
        }
    }
}

extension InputObjects {
    struct ReviewConnectInput: Encodable, Hashable {
        /// Document to connect
        var `where`: InputObjects.ReviewWhereUniqueInput
        /// Allow to specify document position in list of connected documents, will default to appending at end of list
        var position: OptionalArgument<InputObjects.ConnectPositionInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            if position.hasValue { try container.encode(position, forKey: .position) }
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case position
        }
    }
}

extension InputObjects {
    struct ReviewCreateInput: Encodable, Hashable {
        var createdAt: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()

        var name: OptionalArgument<String> = .absent()

        var comment: String

        var product: OptionalArgument<InputObjects.ProductCreateOneInlineInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            try container.encode(comment, forKey: .comment)
            if product.hasValue { try container.encode(product, forKey: .product) }
        }

        enum CodingKeys: String, CodingKey {
            case createdAt
            case updatedAt
            case name
            case comment
            case product
        }
    }
}

extension InputObjects {
    struct ReviewCreateManyInlineInput: Encodable, Hashable {
        /// Create and connect multiple existing Review documents
        var create: OptionalArgument<[InputObjects.ReviewCreateInput]> = .absent()
        /// Connect multiple existing Review documents
        var connect: OptionalArgument<[InputObjects.ReviewWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
        }
    }
}

extension InputObjects {
    struct ReviewCreateOneInlineInput: Encodable, Hashable {
        /// Create and connect one Review document
        var create: OptionalArgument<InputObjects.ReviewCreateInput> = .absent()
        /// Connect one existing Review document
        var connect: OptionalArgument<InputObjects.ReviewWhereUniqueInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
        }
    }
}

extension InputObjects {
    struct ReviewManyWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.ReviewWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.ReviewWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.ReviewWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var name: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var nameNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var nameIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var nameNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var nameContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var nameNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var nameStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var nameNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var nameEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var nameNotEndsWith: OptionalArgument<String> = .absent()

        var comment: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var commentNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var commentIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var commentNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var commentContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var commentNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var commentStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var commentNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var commentEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var commentNotEndsWith: OptionalArgument<String> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var product: OptionalArgument<InputObjects.ProductWhereInput> = .absent()

        var scheduledInEvery: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInSome: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInNone: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if nameNot.hasValue { try container.encode(nameNot, forKey: .nameNot) }
            if nameIn.hasValue { try container.encode(nameIn, forKey: .nameIn) }
            if nameNotIn.hasValue { try container.encode(nameNotIn, forKey: .nameNotIn) }
            if nameContains.hasValue { try container.encode(nameContains, forKey: .nameContains) }
            if nameNotContains.hasValue { try container.encode(nameNotContains, forKey: .nameNotContains) }
            if nameStartsWith.hasValue { try container.encode(nameStartsWith, forKey: .nameStartsWith) }
            if nameNotStartsWith.hasValue { try container.encode(nameNotStartsWith, forKey: .nameNotStartsWith) }
            if nameEndsWith.hasValue { try container.encode(nameEndsWith, forKey: .nameEndsWith) }
            if nameNotEndsWith.hasValue { try container.encode(nameNotEndsWith, forKey: .nameNotEndsWith) }
            if comment.hasValue { try container.encode(comment, forKey: .comment) }
            if commentNot.hasValue { try container.encode(commentNot, forKey: .commentNot) }
            if commentIn.hasValue { try container.encode(commentIn, forKey: .commentIn) }
            if commentNotIn.hasValue { try container.encode(commentNotIn, forKey: .commentNotIn) }
            if commentContains.hasValue { try container.encode(commentContains, forKey: .commentContains) }
            if commentNotContains.hasValue { try container.encode(commentNotContains, forKey: .commentNotContains) }
            if commentStartsWith.hasValue { try container.encode(commentStartsWith, forKey: .commentStartsWith) }
            if commentNotStartsWith.hasValue { try container.encode(commentNotStartsWith, forKey: .commentNotStartsWith) }
            if commentEndsWith.hasValue { try container.encode(commentEndsWith, forKey: .commentEndsWith) }
            if commentNotEndsWith.hasValue { try container.encode(commentNotEndsWith, forKey: .commentNotEndsWith) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if product.hasValue { try container.encode(product, forKey: .product) }
            if scheduledInEvery.hasValue { try container.encode(scheduledInEvery, forKey: .scheduledInEvery) }
            if scheduledInSome.hasValue { try container.encode(scheduledInSome, forKey: .scheduledInSome) }
            if scheduledInNone.hasValue { try container.encode(scheduledInNone, forKey: .scheduledInNone) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case name
            case nameNot = "name_not"
            case nameIn = "name_in"
            case nameNotIn = "name_not_in"
            case nameContains = "name_contains"
            case nameNotContains = "name_not_contains"
            case nameStartsWith = "name_starts_with"
            case nameNotStartsWith = "name_not_starts_with"
            case nameEndsWith = "name_ends_with"
            case nameNotEndsWith = "name_not_ends_with"
            case comment
            case commentNot = "comment_not"
            case commentIn = "comment_in"
            case commentNotIn = "comment_not_in"
            case commentContains = "comment_contains"
            case commentNotContains = "comment_not_contains"
            case commentStartsWith = "comment_starts_with"
            case commentNotStartsWith = "comment_not_starts_with"
            case commentEndsWith = "comment_ends_with"
            case commentNotEndsWith = "comment_not_ends_with"
            case createdBy
            case updatedBy
            case publishedBy
            case product
            case scheduledInEvery = "scheduledIn_every"
            case scheduledInSome = "scheduledIn_some"
            case scheduledInNone = "scheduledIn_none"
        }
    }
}

extension InputObjects {
    struct ReviewUpdateInput: Encodable, Hashable {
        var name: OptionalArgument<String> = .absent()

        var comment: OptionalArgument<String> = .absent()

        var product: OptionalArgument<InputObjects.ProductUpdateOneInlineInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if name.hasValue { try container.encode(name, forKey: .name) }
            if comment.hasValue { try container.encode(comment, forKey: .comment) }
            if product.hasValue { try container.encode(product, forKey: .product) }
        }

        enum CodingKeys: String, CodingKey {
            case name
            case comment
            case product
        }
    }
}

extension InputObjects {
    struct ReviewUpdateManyInlineInput: Encodable, Hashable {
        /// Create and connect multiple Review documents
        var create: OptionalArgument<[InputObjects.ReviewCreateInput]> = .absent()
        /// Connect multiple existing Review documents
        var connect: OptionalArgument<[InputObjects.ReviewConnectInput]> = .absent()
        /// Override currently-connected documents with multiple existing Review documents
        var set: OptionalArgument<[InputObjects.ReviewWhereUniqueInput]> = .absent()
        /// Update multiple Review documents
        var update: OptionalArgument<[InputObjects.ReviewUpdateWithNestedWhereUniqueInput]> = .absent()
        /// Upsert multiple Review documents
        var upsert: OptionalArgument<[InputObjects.ReviewUpsertWithNestedWhereUniqueInput]> = .absent()
        /// Disconnect multiple Review documents
        var disconnect: OptionalArgument<[InputObjects.ReviewWhereUniqueInput]> = .absent()
        /// Delete multiple Review documents
        var delete: OptionalArgument<[InputObjects.ReviewWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if set.hasValue { try container.encode(set, forKey: .set) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
            case set
            case update
            case upsert
            case disconnect
            case delete
        }
    }
}

extension InputObjects {
    struct ReviewUpdateManyInput: Encodable, Hashable {
        var name: OptionalArgument<String> = .absent()

        var comment: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if name.hasValue { try container.encode(name, forKey: .name) }
            if comment.hasValue { try container.encode(comment, forKey: .comment) }
        }

        enum CodingKeys: String, CodingKey {
            case name
            case comment
        }
    }
}

extension InputObjects {
    struct ReviewUpdateManyWithNestedWhereInput: Encodable, Hashable {
        /// Document search
        var `where`: InputObjects.ReviewWhereInput
        /// Update many input
        var data: InputObjects.ReviewUpdateManyInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct ReviewUpdateOneInlineInput: Encodable, Hashable {
        /// Create and connect one Review document
        var create: OptionalArgument<InputObjects.ReviewCreateInput> = .absent()
        /// Update single Review document
        var update: OptionalArgument<InputObjects.ReviewUpdateWithNestedWhereUniqueInput> = .absent()
        /// Upsert single Review document
        var upsert: OptionalArgument<InputObjects.ReviewUpsertWithNestedWhereUniqueInput> = .absent()
        /// Connect existing Review document
        var connect: OptionalArgument<InputObjects.ReviewWhereUniqueInput> = .absent()
        /// Disconnect currently connected Review document
        var disconnect: OptionalArgument<Bool> = .absent()
        /// Delete currently connected Review document
        var delete: OptionalArgument<Bool> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
            case upsert
            case connect
            case disconnect
            case delete
        }
    }
}

extension InputObjects {
    struct ReviewUpdateWithNestedWhereUniqueInput: Encodable, Hashable {
        /// Unique document search
        var `where`: InputObjects.ReviewWhereUniqueInput
        /// Document to update
        var data: InputObjects.ReviewUpdateInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct ReviewUpsertInput: Encodable, Hashable {
        /// Create document if it didn't exist
        var create: InputObjects.ReviewCreateInput
        /// Update document if it exists
        var update: InputObjects.ReviewUpdateInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(create, forKey: .create)
            try container.encode(update, forKey: .update)
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
        }
    }
}

extension InputObjects {
    struct ReviewUpsertWithNestedWhereUniqueInput: Encodable, Hashable {
        /// Unique document search
        var `where`: InputObjects.ReviewWhereUniqueInput
        /// Upsert data
        var data: InputObjects.ReviewUpsertInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct ReviewWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.ReviewWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.ReviewWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.ReviewWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var name: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var nameNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var nameIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var nameNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var nameContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var nameNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var nameStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var nameNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var nameEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var nameNotEndsWith: OptionalArgument<String> = .absent()

        var comment: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var commentNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var commentIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var commentNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var commentContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var commentNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var commentStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var commentNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var commentEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var commentNotEndsWith: OptionalArgument<String> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var product: OptionalArgument<InputObjects.ProductWhereInput> = .absent()

        var scheduledInEvery: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInSome: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInNone: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if nameNot.hasValue { try container.encode(nameNot, forKey: .nameNot) }
            if nameIn.hasValue { try container.encode(nameIn, forKey: .nameIn) }
            if nameNotIn.hasValue { try container.encode(nameNotIn, forKey: .nameNotIn) }
            if nameContains.hasValue { try container.encode(nameContains, forKey: .nameContains) }
            if nameNotContains.hasValue { try container.encode(nameNotContains, forKey: .nameNotContains) }
            if nameStartsWith.hasValue { try container.encode(nameStartsWith, forKey: .nameStartsWith) }
            if nameNotStartsWith.hasValue { try container.encode(nameNotStartsWith, forKey: .nameNotStartsWith) }
            if nameEndsWith.hasValue { try container.encode(nameEndsWith, forKey: .nameEndsWith) }
            if nameNotEndsWith.hasValue { try container.encode(nameNotEndsWith, forKey: .nameNotEndsWith) }
            if comment.hasValue { try container.encode(comment, forKey: .comment) }
            if commentNot.hasValue { try container.encode(commentNot, forKey: .commentNot) }
            if commentIn.hasValue { try container.encode(commentIn, forKey: .commentIn) }
            if commentNotIn.hasValue { try container.encode(commentNotIn, forKey: .commentNotIn) }
            if commentContains.hasValue { try container.encode(commentContains, forKey: .commentContains) }
            if commentNotContains.hasValue { try container.encode(commentNotContains, forKey: .commentNotContains) }
            if commentStartsWith.hasValue { try container.encode(commentStartsWith, forKey: .commentStartsWith) }
            if commentNotStartsWith.hasValue { try container.encode(commentNotStartsWith, forKey: .commentNotStartsWith) }
            if commentEndsWith.hasValue { try container.encode(commentEndsWith, forKey: .commentEndsWith) }
            if commentNotEndsWith.hasValue { try container.encode(commentNotEndsWith, forKey: .commentNotEndsWith) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if product.hasValue { try container.encode(product, forKey: .product) }
            if scheduledInEvery.hasValue { try container.encode(scheduledInEvery, forKey: .scheduledInEvery) }
            if scheduledInSome.hasValue { try container.encode(scheduledInSome, forKey: .scheduledInSome) }
            if scheduledInNone.hasValue { try container.encode(scheduledInNone, forKey: .scheduledInNone) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case name
            case nameNot = "name_not"
            case nameIn = "name_in"
            case nameNotIn = "name_not_in"
            case nameContains = "name_contains"
            case nameNotContains = "name_not_contains"
            case nameStartsWith = "name_starts_with"
            case nameNotStartsWith = "name_not_starts_with"
            case nameEndsWith = "name_ends_with"
            case nameNotEndsWith = "name_not_ends_with"
            case comment
            case commentNot = "comment_not"
            case commentIn = "comment_in"
            case commentNotIn = "comment_not_in"
            case commentContains = "comment_contains"
            case commentNotContains = "comment_not_contains"
            case commentStartsWith = "comment_starts_with"
            case commentNotStartsWith = "comment_not_starts_with"
            case commentEndsWith = "comment_ends_with"
            case commentNotEndsWith = "comment_not_ends_with"
            case createdBy
            case updatedBy
            case publishedBy
            case product
            case scheduledInEvery = "scheduledIn_every"
            case scheduledInSome = "scheduledIn_some"
            case scheduledInNone = "scheduledIn_none"
        }
    }
}

extension InputObjects {
    struct ReviewWhereUniqueInput: Encodable, Hashable {
        var id: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if id.hasValue { try container.encode(id, forKey: .id) }
        }

        enum CodingKeys: String, CodingKey {
            case id
        }
    }
}

extension InputObjects {
    struct ScheduledOperationConnectInput: Encodable, Hashable {
        /// Document to connect
        var `where`: InputObjects.ScheduledOperationWhereUniqueInput
        /// Allow to specify document position in list of connected documents, will default to appending at end of list
        var position: OptionalArgument<InputObjects.ConnectPositionInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            if position.hasValue { try container.encode(position, forKey: .position) }
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case position
        }
    }
}

extension InputObjects {
    struct ScheduledOperationCreateManyInlineInput: Encodable, Hashable {
        /// Connect multiple existing ScheduledOperation documents
        var connect: OptionalArgument<[InputObjects.ScheduledOperationWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case connect
        }
    }
}

extension InputObjects {
    struct ScheduledOperationCreateOneInlineInput: Encodable, Hashable {
        /// Connect one existing ScheduledOperation document
        var connect: OptionalArgument<InputObjects.ScheduledOperationWhereUniqueInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case connect
        }
    }
}

extension InputObjects {
    struct ScheduledOperationManyWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.ScheduledOperationWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.ScheduledOperationWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.ScheduledOperationWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var description: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var descriptionNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var descriptionIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var descriptionNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var descriptionContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var descriptionNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var descriptionStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var descriptionNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var descriptionEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var descriptionNotEndsWith: OptionalArgument<String> = .absent()

        var errorMessage: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var errorMessageNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var errorMessageIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var errorMessageNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var errorMessageContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var errorMessageNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var errorMessageStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var errorMessageNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var errorMessageEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var errorMessageNotEndsWith: OptionalArgument<String> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var release: OptionalArgument<InputObjects.ScheduledReleaseWhereInput> = .absent()

        var status: OptionalArgument<Enums.ScheduledOperationStatus> = .absent()
        /// All values that are not equal to given value.
        var statusNot: OptionalArgument<Enums.ScheduledOperationStatus> = .absent()
        /// All values that are contained in given list.
        var statusIn: OptionalArgument<[Enums.ScheduledOperationStatus]> = .absent()
        /// All values that are not contained in given list.
        var statusNotIn: OptionalArgument<[Enums.ScheduledOperationStatus]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if description.hasValue { try container.encode(description, forKey: .description) }
            if descriptionNot.hasValue { try container.encode(descriptionNot, forKey: .descriptionNot) }
            if descriptionIn.hasValue { try container.encode(descriptionIn, forKey: .descriptionIn) }
            if descriptionNotIn.hasValue { try container.encode(descriptionNotIn, forKey: .descriptionNotIn) }
            if descriptionContains.hasValue { try container.encode(descriptionContains, forKey: .descriptionContains) }
            if descriptionNotContains.hasValue { try container.encode(descriptionNotContains, forKey: .descriptionNotContains) }
            if descriptionStartsWith.hasValue { try container.encode(descriptionStartsWith, forKey: .descriptionStartsWith) }
            if descriptionNotStartsWith.hasValue { try container.encode(descriptionNotStartsWith, forKey: .descriptionNotStartsWith) }
            if descriptionEndsWith.hasValue { try container.encode(descriptionEndsWith, forKey: .descriptionEndsWith) }
            if descriptionNotEndsWith.hasValue { try container.encode(descriptionNotEndsWith, forKey: .descriptionNotEndsWith) }
            if errorMessage.hasValue { try container.encode(errorMessage, forKey: .errorMessage) }
            if errorMessageNot.hasValue { try container.encode(errorMessageNot, forKey: .errorMessageNot) }
            if errorMessageIn.hasValue { try container.encode(errorMessageIn, forKey: .errorMessageIn) }
            if errorMessageNotIn.hasValue { try container.encode(errorMessageNotIn, forKey: .errorMessageNotIn) }
            if errorMessageContains.hasValue { try container.encode(errorMessageContains, forKey: .errorMessageContains) }
            if errorMessageNotContains.hasValue { try container.encode(errorMessageNotContains, forKey: .errorMessageNotContains) }
            if errorMessageStartsWith.hasValue { try container.encode(errorMessageStartsWith, forKey: .errorMessageStartsWith) }
            if errorMessageNotStartsWith.hasValue { try container.encode(errorMessageNotStartsWith, forKey: .errorMessageNotStartsWith) }
            if errorMessageEndsWith.hasValue { try container.encode(errorMessageEndsWith, forKey: .errorMessageEndsWith) }
            if errorMessageNotEndsWith.hasValue { try container.encode(errorMessageNotEndsWith, forKey: .errorMessageNotEndsWith) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if release.hasValue { try container.encode(release, forKey: .release) }
            if status.hasValue { try container.encode(status, forKey: .status) }
            if statusNot.hasValue { try container.encode(statusNot, forKey: .statusNot) }
            if statusIn.hasValue { try container.encode(statusIn, forKey: .statusIn) }
            if statusNotIn.hasValue { try container.encode(statusNotIn, forKey: .statusNotIn) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case description
            case descriptionNot = "description_not"
            case descriptionIn = "description_in"
            case descriptionNotIn = "description_not_in"
            case descriptionContains = "description_contains"
            case descriptionNotContains = "description_not_contains"
            case descriptionStartsWith = "description_starts_with"
            case descriptionNotStartsWith = "description_not_starts_with"
            case descriptionEndsWith = "description_ends_with"
            case descriptionNotEndsWith = "description_not_ends_with"
            case errorMessage
            case errorMessageNot = "errorMessage_not"
            case errorMessageIn = "errorMessage_in"
            case errorMessageNotIn = "errorMessage_not_in"
            case errorMessageContains = "errorMessage_contains"
            case errorMessageNotContains = "errorMessage_not_contains"
            case errorMessageStartsWith = "errorMessage_starts_with"
            case errorMessageNotStartsWith = "errorMessage_not_starts_with"
            case errorMessageEndsWith = "errorMessage_ends_with"
            case errorMessageNotEndsWith = "errorMessage_not_ends_with"
            case createdBy
            case updatedBy
            case publishedBy
            case release
            case status
            case statusNot = "status_not"
            case statusIn = "status_in"
            case statusNotIn = "status_not_in"
        }
    }
}

extension InputObjects {
    struct ScheduledOperationUpdateManyInlineInput: Encodable, Hashable {
        /// Connect multiple existing ScheduledOperation documents
        var connect: OptionalArgument<[InputObjects.ScheduledOperationConnectInput]> = .absent()
        /// Override currently-connected documents with multiple existing ScheduledOperation documents
        var set: OptionalArgument<[InputObjects.ScheduledOperationWhereUniqueInput]> = .absent()
        /// Disconnect multiple ScheduledOperation documents
        var disconnect: OptionalArgument<[InputObjects.ScheduledOperationWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if set.hasValue { try container.encode(set, forKey: .set) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
        }

        enum CodingKeys: String, CodingKey {
            case connect
            case set
            case disconnect
        }
    }
}

extension InputObjects {
    struct ScheduledOperationUpdateOneInlineInput: Encodable, Hashable {
        /// Connect existing ScheduledOperation document
        var connect: OptionalArgument<InputObjects.ScheduledOperationWhereUniqueInput> = .absent()
        /// Disconnect currently connected ScheduledOperation document
        var disconnect: OptionalArgument<Bool> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
        }

        enum CodingKeys: String, CodingKey {
            case connect
            case disconnect
        }
    }
}

extension InputObjects {
    struct ScheduledOperationWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.ScheduledOperationWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.ScheduledOperationWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.ScheduledOperationWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var description: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var descriptionNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var descriptionIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var descriptionNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var descriptionContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var descriptionNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var descriptionStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var descriptionNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var descriptionEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var descriptionNotEndsWith: OptionalArgument<String> = .absent()

        var errorMessage: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var errorMessageNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var errorMessageIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var errorMessageNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var errorMessageContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var errorMessageNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var errorMessageStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var errorMessageNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var errorMessageEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var errorMessageNotEndsWith: OptionalArgument<String> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var release: OptionalArgument<InputObjects.ScheduledReleaseWhereInput> = .absent()

        var status: OptionalArgument<Enums.ScheduledOperationStatus> = .absent()
        /// All values that are not equal to given value.
        var statusNot: OptionalArgument<Enums.ScheduledOperationStatus> = .absent()
        /// All values that are contained in given list.
        var statusIn: OptionalArgument<[Enums.ScheduledOperationStatus]> = .absent()
        /// All values that are not contained in given list.
        var statusNotIn: OptionalArgument<[Enums.ScheduledOperationStatus]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if description.hasValue { try container.encode(description, forKey: .description) }
            if descriptionNot.hasValue { try container.encode(descriptionNot, forKey: .descriptionNot) }
            if descriptionIn.hasValue { try container.encode(descriptionIn, forKey: .descriptionIn) }
            if descriptionNotIn.hasValue { try container.encode(descriptionNotIn, forKey: .descriptionNotIn) }
            if descriptionContains.hasValue { try container.encode(descriptionContains, forKey: .descriptionContains) }
            if descriptionNotContains.hasValue { try container.encode(descriptionNotContains, forKey: .descriptionNotContains) }
            if descriptionStartsWith.hasValue { try container.encode(descriptionStartsWith, forKey: .descriptionStartsWith) }
            if descriptionNotStartsWith.hasValue { try container.encode(descriptionNotStartsWith, forKey: .descriptionNotStartsWith) }
            if descriptionEndsWith.hasValue { try container.encode(descriptionEndsWith, forKey: .descriptionEndsWith) }
            if descriptionNotEndsWith.hasValue { try container.encode(descriptionNotEndsWith, forKey: .descriptionNotEndsWith) }
            if errorMessage.hasValue { try container.encode(errorMessage, forKey: .errorMessage) }
            if errorMessageNot.hasValue { try container.encode(errorMessageNot, forKey: .errorMessageNot) }
            if errorMessageIn.hasValue { try container.encode(errorMessageIn, forKey: .errorMessageIn) }
            if errorMessageNotIn.hasValue { try container.encode(errorMessageNotIn, forKey: .errorMessageNotIn) }
            if errorMessageContains.hasValue { try container.encode(errorMessageContains, forKey: .errorMessageContains) }
            if errorMessageNotContains.hasValue { try container.encode(errorMessageNotContains, forKey: .errorMessageNotContains) }
            if errorMessageStartsWith.hasValue { try container.encode(errorMessageStartsWith, forKey: .errorMessageStartsWith) }
            if errorMessageNotStartsWith.hasValue { try container.encode(errorMessageNotStartsWith, forKey: .errorMessageNotStartsWith) }
            if errorMessageEndsWith.hasValue { try container.encode(errorMessageEndsWith, forKey: .errorMessageEndsWith) }
            if errorMessageNotEndsWith.hasValue { try container.encode(errorMessageNotEndsWith, forKey: .errorMessageNotEndsWith) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if release.hasValue { try container.encode(release, forKey: .release) }
            if status.hasValue { try container.encode(status, forKey: .status) }
            if statusNot.hasValue { try container.encode(statusNot, forKey: .statusNot) }
            if statusIn.hasValue { try container.encode(statusIn, forKey: .statusIn) }
            if statusNotIn.hasValue { try container.encode(statusNotIn, forKey: .statusNotIn) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case description
            case descriptionNot = "description_not"
            case descriptionIn = "description_in"
            case descriptionNotIn = "description_not_in"
            case descriptionContains = "description_contains"
            case descriptionNotContains = "description_not_contains"
            case descriptionStartsWith = "description_starts_with"
            case descriptionNotStartsWith = "description_not_starts_with"
            case descriptionEndsWith = "description_ends_with"
            case descriptionNotEndsWith = "description_not_ends_with"
            case errorMessage
            case errorMessageNot = "errorMessage_not"
            case errorMessageIn = "errorMessage_in"
            case errorMessageNotIn = "errorMessage_not_in"
            case errorMessageContains = "errorMessage_contains"
            case errorMessageNotContains = "errorMessage_not_contains"
            case errorMessageStartsWith = "errorMessage_starts_with"
            case errorMessageNotStartsWith = "errorMessage_not_starts_with"
            case errorMessageEndsWith = "errorMessage_ends_with"
            case errorMessageNotEndsWith = "errorMessage_not_ends_with"
            case createdBy
            case updatedBy
            case publishedBy
            case release
            case status
            case statusNot = "status_not"
            case statusIn = "status_in"
            case statusNotIn = "status_not_in"
        }
    }
}

extension InputObjects {
    struct ScheduledOperationWhereUniqueInput: Encodable, Hashable {
        var id: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if id.hasValue { try container.encode(id, forKey: .id) }
        }

        enum CodingKeys: String, CodingKey {
            case id
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseConnectInput: Encodable, Hashable {
        /// Document to connect
        var `where`: InputObjects.ScheduledReleaseWhereUniqueInput
        /// Allow to specify document position in list of connected documents, will default to appending at end of list
        var position: OptionalArgument<InputObjects.ConnectPositionInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            if position.hasValue { try container.encode(position, forKey: .position) }
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case position
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseCreateInput: Encodable, Hashable {
        var createdAt: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()

        var title: OptionalArgument<String> = .absent()

        var description: OptionalArgument<String> = .absent()

        var errorMessage: OptionalArgument<String> = .absent()

        var isActive: OptionalArgument<Bool> = .absent()

        var releaseAt: OptionalArgument<DateTimeScalar> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if title.hasValue { try container.encode(title, forKey: .title) }
            if description.hasValue { try container.encode(description, forKey: .description) }
            if errorMessage.hasValue { try container.encode(errorMessage, forKey: .errorMessage) }
            if isActive.hasValue { try container.encode(isActive, forKey: .isActive) }
            if releaseAt.hasValue { try container.encode(releaseAt, forKey: .releaseAt) }
        }

        enum CodingKeys: String, CodingKey {
            case createdAt
            case updatedAt
            case title
            case description
            case errorMessage
            case isActive
            case releaseAt
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseCreateManyInlineInput: Encodable, Hashable {
        /// Create and connect multiple existing ScheduledRelease documents
        var create: OptionalArgument<[InputObjects.ScheduledReleaseCreateInput]> = .absent()
        /// Connect multiple existing ScheduledRelease documents
        var connect: OptionalArgument<[InputObjects.ScheduledReleaseWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseCreateOneInlineInput: Encodable, Hashable {
        /// Create and connect one ScheduledRelease document
        var create: OptionalArgument<InputObjects.ScheduledReleaseCreateInput> = .absent()
        /// Connect one existing ScheduledRelease document
        var connect: OptionalArgument<InputObjects.ScheduledReleaseWhereUniqueInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseManyWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.ScheduledReleaseWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.ScheduledReleaseWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.ScheduledReleaseWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var title: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var titleNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var titleIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var titleNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var titleContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var titleNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var titleStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var titleNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var titleEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var titleNotEndsWith: OptionalArgument<String> = .absent()

        var description: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var descriptionNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var descriptionIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var descriptionNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var descriptionContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var descriptionNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var descriptionStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var descriptionNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var descriptionEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var descriptionNotEndsWith: OptionalArgument<String> = .absent()

        var errorMessage: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var errorMessageNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var errorMessageIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var errorMessageNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var errorMessageContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var errorMessageNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var errorMessageStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var errorMessageNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var errorMessageEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var errorMessageNotEndsWith: OptionalArgument<String> = .absent()

        var isActive: OptionalArgument<Bool> = .absent()
        /// All values that are not equal to given value.
        var isActiveNot: OptionalArgument<Bool> = .absent()

        var isImplicit: OptionalArgument<Bool> = .absent()
        /// All values that are not equal to given value.
        var isImplicitNot: OptionalArgument<Bool> = .absent()

        var releaseAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var releaseAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var releaseAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var releaseAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var releaseAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var releaseAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var releaseAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var releaseAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var operationsEvery: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var operationsSome: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var operationsNone: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var status: OptionalArgument<Enums.ScheduledReleaseStatus> = .absent()
        /// All values that are not equal to given value.
        var statusNot: OptionalArgument<Enums.ScheduledReleaseStatus> = .absent()
        /// All values that are contained in given list.
        var statusIn: OptionalArgument<[Enums.ScheduledReleaseStatus]> = .absent()
        /// All values that are not contained in given list.
        var statusNotIn: OptionalArgument<[Enums.ScheduledReleaseStatus]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if title.hasValue { try container.encode(title, forKey: .title) }
            if titleNot.hasValue { try container.encode(titleNot, forKey: .titleNot) }
            if titleIn.hasValue { try container.encode(titleIn, forKey: .titleIn) }
            if titleNotIn.hasValue { try container.encode(titleNotIn, forKey: .titleNotIn) }
            if titleContains.hasValue { try container.encode(titleContains, forKey: .titleContains) }
            if titleNotContains.hasValue { try container.encode(titleNotContains, forKey: .titleNotContains) }
            if titleStartsWith.hasValue { try container.encode(titleStartsWith, forKey: .titleStartsWith) }
            if titleNotStartsWith.hasValue { try container.encode(titleNotStartsWith, forKey: .titleNotStartsWith) }
            if titleEndsWith.hasValue { try container.encode(titleEndsWith, forKey: .titleEndsWith) }
            if titleNotEndsWith.hasValue { try container.encode(titleNotEndsWith, forKey: .titleNotEndsWith) }
            if description.hasValue { try container.encode(description, forKey: .description) }
            if descriptionNot.hasValue { try container.encode(descriptionNot, forKey: .descriptionNot) }
            if descriptionIn.hasValue { try container.encode(descriptionIn, forKey: .descriptionIn) }
            if descriptionNotIn.hasValue { try container.encode(descriptionNotIn, forKey: .descriptionNotIn) }
            if descriptionContains.hasValue { try container.encode(descriptionContains, forKey: .descriptionContains) }
            if descriptionNotContains.hasValue { try container.encode(descriptionNotContains, forKey: .descriptionNotContains) }
            if descriptionStartsWith.hasValue { try container.encode(descriptionStartsWith, forKey: .descriptionStartsWith) }
            if descriptionNotStartsWith.hasValue { try container.encode(descriptionNotStartsWith, forKey: .descriptionNotStartsWith) }
            if descriptionEndsWith.hasValue { try container.encode(descriptionEndsWith, forKey: .descriptionEndsWith) }
            if descriptionNotEndsWith.hasValue { try container.encode(descriptionNotEndsWith, forKey: .descriptionNotEndsWith) }
            if errorMessage.hasValue { try container.encode(errorMessage, forKey: .errorMessage) }
            if errorMessageNot.hasValue { try container.encode(errorMessageNot, forKey: .errorMessageNot) }
            if errorMessageIn.hasValue { try container.encode(errorMessageIn, forKey: .errorMessageIn) }
            if errorMessageNotIn.hasValue { try container.encode(errorMessageNotIn, forKey: .errorMessageNotIn) }
            if errorMessageContains.hasValue { try container.encode(errorMessageContains, forKey: .errorMessageContains) }
            if errorMessageNotContains.hasValue { try container.encode(errorMessageNotContains, forKey: .errorMessageNotContains) }
            if errorMessageStartsWith.hasValue { try container.encode(errorMessageStartsWith, forKey: .errorMessageStartsWith) }
            if errorMessageNotStartsWith.hasValue { try container.encode(errorMessageNotStartsWith, forKey: .errorMessageNotStartsWith) }
            if errorMessageEndsWith.hasValue { try container.encode(errorMessageEndsWith, forKey: .errorMessageEndsWith) }
            if errorMessageNotEndsWith.hasValue { try container.encode(errorMessageNotEndsWith, forKey: .errorMessageNotEndsWith) }
            if isActive.hasValue { try container.encode(isActive, forKey: .isActive) }
            if isActiveNot.hasValue { try container.encode(isActiveNot, forKey: .isActiveNot) }
            if isImplicit.hasValue { try container.encode(isImplicit, forKey: .isImplicit) }
            if isImplicitNot.hasValue { try container.encode(isImplicitNot, forKey: .isImplicitNot) }
            if releaseAt.hasValue { try container.encode(releaseAt, forKey: .releaseAt) }
            if releaseAtNot.hasValue { try container.encode(releaseAtNot, forKey: .releaseAtNot) }
            if releaseAtIn.hasValue { try container.encode(releaseAtIn, forKey: .releaseAtIn) }
            if releaseAtNotIn.hasValue { try container.encode(releaseAtNotIn, forKey: .releaseAtNotIn) }
            if releaseAtLt.hasValue { try container.encode(releaseAtLt, forKey: .releaseAtLt) }
            if releaseAtLte.hasValue { try container.encode(releaseAtLte, forKey: .releaseAtLte) }
            if releaseAtGt.hasValue { try container.encode(releaseAtGt, forKey: .releaseAtGt) }
            if releaseAtGte.hasValue { try container.encode(releaseAtGte, forKey: .releaseAtGte) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if operationsEvery.hasValue { try container.encode(operationsEvery, forKey: .operationsEvery) }
            if operationsSome.hasValue { try container.encode(operationsSome, forKey: .operationsSome) }
            if operationsNone.hasValue { try container.encode(operationsNone, forKey: .operationsNone) }
            if status.hasValue { try container.encode(status, forKey: .status) }
            if statusNot.hasValue { try container.encode(statusNot, forKey: .statusNot) }
            if statusIn.hasValue { try container.encode(statusIn, forKey: .statusIn) }
            if statusNotIn.hasValue { try container.encode(statusNotIn, forKey: .statusNotIn) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case title
            case titleNot = "title_not"
            case titleIn = "title_in"
            case titleNotIn = "title_not_in"
            case titleContains = "title_contains"
            case titleNotContains = "title_not_contains"
            case titleStartsWith = "title_starts_with"
            case titleNotStartsWith = "title_not_starts_with"
            case titleEndsWith = "title_ends_with"
            case titleNotEndsWith = "title_not_ends_with"
            case description
            case descriptionNot = "description_not"
            case descriptionIn = "description_in"
            case descriptionNotIn = "description_not_in"
            case descriptionContains = "description_contains"
            case descriptionNotContains = "description_not_contains"
            case descriptionStartsWith = "description_starts_with"
            case descriptionNotStartsWith = "description_not_starts_with"
            case descriptionEndsWith = "description_ends_with"
            case descriptionNotEndsWith = "description_not_ends_with"
            case errorMessage
            case errorMessageNot = "errorMessage_not"
            case errorMessageIn = "errorMessage_in"
            case errorMessageNotIn = "errorMessage_not_in"
            case errorMessageContains = "errorMessage_contains"
            case errorMessageNotContains = "errorMessage_not_contains"
            case errorMessageStartsWith = "errorMessage_starts_with"
            case errorMessageNotStartsWith = "errorMessage_not_starts_with"
            case errorMessageEndsWith = "errorMessage_ends_with"
            case errorMessageNotEndsWith = "errorMessage_not_ends_with"
            case isActive
            case isActiveNot = "isActive_not"
            case isImplicit
            case isImplicitNot = "isImplicit_not"
            case releaseAt
            case releaseAtNot = "releaseAt_not"
            case releaseAtIn = "releaseAt_in"
            case releaseAtNotIn = "releaseAt_not_in"
            case releaseAtLt = "releaseAt_lt"
            case releaseAtLte = "releaseAt_lte"
            case releaseAtGt = "releaseAt_gt"
            case releaseAtGte = "releaseAt_gte"
            case createdBy
            case updatedBy
            case publishedBy
            case operationsEvery = "operations_every"
            case operationsSome = "operations_some"
            case operationsNone = "operations_none"
            case status
            case statusNot = "status_not"
            case statusIn = "status_in"
            case statusNotIn = "status_not_in"
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseUpdateInput: Encodable, Hashable {
        var title: OptionalArgument<String> = .absent()

        var description: OptionalArgument<String> = .absent()

        var errorMessage: OptionalArgument<String> = .absent()

        var isActive: OptionalArgument<Bool> = .absent()

        var releaseAt: OptionalArgument<DateTimeScalar> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if title.hasValue { try container.encode(title, forKey: .title) }
            if description.hasValue { try container.encode(description, forKey: .description) }
            if errorMessage.hasValue { try container.encode(errorMessage, forKey: .errorMessage) }
            if isActive.hasValue { try container.encode(isActive, forKey: .isActive) }
            if releaseAt.hasValue { try container.encode(releaseAt, forKey: .releaseAt) }
        }

        enum CodingKeys: String, CodingKey {
            case title
            case description
            case errorMessage
            case isActive
            case releaseAt
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseUpdateManyInlineInput: Encodable, Hashable {
        /// Create and connect multiple ScheduledRelease documents
        var create: OptionalArgument<[InputObjects.ScheduledReleaseCreateInput]> = .absent()
        /// Connect multiple existing ScheduledRelease documents
        var connect: OptionalArgument<[InputObjects.ScheduledReleaseConnectInput]> = .absent()
        /// Override currently-connected documents with multiple existing ScheduledRelease documents
        var set: OptionalArgument<[InputObjects.ScheduledReleaseWhereUniqueInput]> = .absent()
        /// Update multiple ScheduledRelease documents
        var update: OptionalArgument<[InputObjects.ScheduledReleaseUpdateWithNestedWhereUniqueInput]> = .absent()
        /// Upsert multiple ScheduledRelease documents
        var upsert: OptionalArgument<[InputObjects.ScheduledReleaseUpsertWithNestedWhereUniqueInput]> = .absent()
        /// Disconnect multiple ScheduledRelease documents
        var disconnect: OptionalArgument<[InputObjects.ScheduledReleaseWhereUniqueInput]> = .absent()
        /// Delete multiple ScheduledRelease documents
        var delete: OptionalArgument<[InputObjects.ScheduledReleaseWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if set.hasValue { try container.encode(set, forKey: .set) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
            case set
            case update
            case upsert
            case disconnect
            case delete
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseUpdateManyInput: Encodable, Hashable {
        var title: OptionalArgument<String> = .absent()

        var description: OptionalArgument<String> = .absent()

        var errorMessage: OptionalArgument<String> = .absent()

        var isActive: OptionalArgument<Bool> = .absent()

        var releaseAt: OptionalArgument<DateTimeScalar> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if title.hasValue { try container.encode(title, forKey: .title) }
            if description.hasValue { try container.encode(description, forKey: .description) }
            if errorMessage.hasValue { try container.encode(errorMessage, forKey: .errorMessage) }
            if isActive.hasValue { try container.encode(isActive, forKey: .isActive) }
            if releaseAt.hasValue { try container.encode(releaseAt, forKey: .releaseAt) }
        }

        enum CodingKeys: String, CodingKey {
            case title
            case description
            case errorMessage
            case isActive
            case releaseAt
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseUpdateManyWithNestedWhereInput: Encodable, Hashable {
        /// Document search
        var `where`: InputObjects.ScheduledReleaseWhereInput
        /// Update many input
        var data: InputObjects.ScheduledReleaseUpdateManyInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseUpdateOneInlineInput: Encodable, Hashable {
        /// Create and connect one ScheduledRelease document
        var create: OptionalArgument<InputObjects.ScheduledReleaseCreateInput> = .absent()
        /// Update single ScheduledRelease document
        var update: OptionalArgument<InputObjects.ScheduledReleaseUpdateWithNestedWhereUniqueInput> = .absent()
        /// Upsert single ScheduledRelease document
        var upsert: OptionalArgument<InputObjects.ScheduledReleaseUpsertWithNestedWhereUniqueInput> = .absent()
        /// Connect existing ScheduledRelease document
        var connect: OptionalArgument<InputObjects.ScheduledReleaseWhereUniqueInput> = .absent()
        /// Disconnect currently connected ScheduledRelease document
        var disconnect: OptionalArgument<Bool> = .absent()
        /// Delete currently connected ScheduledRelease document
        var delete: OptionalArgument<Bool> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
            case upsert
            case connect
            case disconnect
            case delete
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseUpdateWithNestedWhereUniqueInput: Encodable, Hashable {
        /// Unique document search
        var `where`: InputObjects.ScheduledReleaseWhereUniqueInput
        /// Document to update
        var data: InputObjects.ScheduledReleaseUpdateInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseUpsertInput: Encodable, Hashable {
        /// Create document if it didn't exist
        var create: InputObjects.ScheduledReleaseCreateInput
        /// Update document if it exists
        var update: InputObjects.ScheduledReleaseUpdateInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(create, forKey: .create)
            try container.encode(update, forKey: .update)
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseUpsertWithNestedWhereUniqueInput: Encodable, Hashable {
        /// Unique document search
        var `where`: InputObjects.ScheduledReleaseWhereUniqueInput
        /// Upsert data
        var data: InputObjects.ScheduledReleaseUpsertInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.ScheduledReleaseWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.ScheduledReleaseWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.ScheduledReleaseWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var title: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var titleNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var titleIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var titleNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var titleContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var titleNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var titleStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var titleNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var titleEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var titleNotEndsWith: OptionalArgument<String> = .absent()

        var description: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var descriptionNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var descriptionIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var descriptionNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var descriptionContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var descriptionNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var descriptionStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var descriptionNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var descriptionEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var descriptionNotEndsWith: OptionalArgument<String> = .absent()

        var errorMessage: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var errorMessageNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var errorMessageIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var errorMessageNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var errorMessageContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var errorMessageNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var errorMessageStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var errorMessageNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var errorMessageEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var errorMessageNotEndsWith: OptionalArgument<String> = .absent()

        var isActive: OptionalArgument<Bool> = .absent()
        /// All values that are not equal to given value.
        var isActiveNot: OptionalArgument<Bool> = .absent()

        var isImplicit: OptionalArgument<Bool> = .absent()
        /// All values that are not equal to given value.
        var isImplicitNot: OptionalArgument<Bool> = .absent()

        var releaseAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var releaseAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var releaseAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var releaseAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var releaseAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var releaseAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var releaseAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var releaseAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var operationsEvery: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var operationsSome: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var operationsNone: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var status: OptionalArgument<Enums.ScheduledReleaseStatus> = .absent()
        /// All values that are not equal to given value.
        var statusNot: OptionalArgument<Enums.ScheduledReleaseStatus> = .absent()
        /// All values that are contained in given list.
        var statusIn: OptionalArgument<[Enums.ScheduledReleaseStatus]> = .absent()
        /// All values that are not contained in given list.
        var statusNotIn: OptionalArgument<[Enums.ScheduledReleaseStatus]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if title.hasValue { try container.encode(title, forKey: .title) }
            if titleNot.hasValue { try container.encode(titleNot, forKey: .titleNot) }
            if titleIn.hasValue { try container.encode(titleIn, forKey: .titleIn) }
            if titleNotIn.hasValue { try container.encode(titleNotIn, forKey: .titleNotIn) }
            if titleContains.hasValue { try container.encode(titleContains, forKey: .titleContains) }
            if titleNotContains.hasValue { try container.encode(titleNotContains, forKey: .titleNotContains) }
            if titleStartsWith.hasValue { try container.encode(titleStartsWith, forKey: .titleStartsWith) }
            if titleNotStartsWith.hasValue { try container.encode(titleNotStartsWith, forKey: .titleNotStartsWith) }
            if titleEndsWith.hasValue { try container.encode(titleEndsWith, forKey: .titleEndsWith) }
            if titleNotEndsWith.hasValue { try container.encode(titleNotEndsWith, forKey: .titleNotEndsWith) }
            if description.hasValue { try container.encode(description, forKey: .description) }
            if descriptionNot.hasValue { try container.encode(descriptionNot, forKey: .descriptionNot) }
            if descriptionIn.hasValue { try container.encode(descriptionIn, forKey: .descriptionIn) }
            if descriptionNotIn.hasValue { try container.encode(descriptionNotIn, forKey: .descriptionNotIn) }
            if descriptionContains.hasValue { try container.encode(descriptionContains, forKey: .descriptionContains) }
            if descriptionNotContains.hasValue { try container.encode(descriptionNotContains, forKey: .descriptionNotContains) }
            if descriptionStartsWith.hasValue { try container.encode(descriptionStartsWith, forKey: .descriptionStartsWith) }
            if descriptionNotStartsWith.hasValue { try container.encode(descriptionNotStartsWith, forKey: .descriptionNotStartsWith) }
            if descriptionEndsWith.hasValue { try container.encode(descriptionEndsWith, forKey: .descriptionEndsWith) }
            if descriptionNotEndsWith.hasValue { try container.encode(descriptionNotEndsWith, forKey: .descriptionNotEndsWith) }
            if errorMessage.hasValue { try container.encode(errorMessage, forKey: .errorMessage) }
            if errorMessageNot.hasValue { try container.encode(errorMessageNot, forKey: .errorMessageNot) }
            if errorMessageIn.hasValue { try container.encode(errorMessageIn, forKey: .errorMessageIn) }
            if errorMessageNotIn.hasValue { try container.encode(errorMessageNotIn, forKey: .errorMessageNotIn) }
            if errorMessageContains.hasValue { try container.encode(errorMessageContains, forKey: .errorMessageContains) }
            if errorMessageNotContains.hasValue { try container.encode(errorMessageNotContains, forKey: .errorMessageNotContains) }
            if errorMessageStartsWith.hasValue { try container.encode(errorMessageStartsWith, forKey: .errorMessageStartsWith) }
            if errorMessageNotStartsWith.hasValue { try container.encode(errorMessageNotStartsWith, forKey: .errorMessageNotStartsWith) }
            if errorMessageEndsWith.hasValue { try container.encode(errorMessageEndsWith, forKey: .errorMessageEndsWith) }
            if errorMessageNotEndsWith.hasValue { try container.encode(errorMessageNotEndsWith, forKey: .errorMessageNotEndsWith) }
            if isActive.hasValue { try container.encode(isActive, forKey: .isActive) }
            if isActiveNot.hasValue { try container.encode(isActiveNot, forKey: .isActiveNot) }
            if isImplicit.hasValue { try container.encode(isImplicit, forKey: .isImplicit) }
            if isImplicitNot.hasValue { try container.encode(isImplicitNot, forKey: .isImplicitNot) }
            if releaseAt.hasValue { try container.encode(releaseAt, forKey: .releaseAt) }
            if releaseAtNot.hasValue { try container.encode(releaseAtNot, forKey: .releaseAtNot) }
            if releaseAtIn.hasValue { try container.encode(releaseAtIn, forKey: .releaseAtIn) }
            if releaseAtNotIn.hasValue { try container.encode(releaseAtNotIn, forKey: .releaseAtNotIn) }
            if releaseAtLt.hasValue { try container.encode(releaseAtLt, forKey: .releaseAtLt) }
            if releaseAtLte.hasValue { try container.encode(releaseAtLte, forKey: .releaseAtLte) }
            if releaseAtGt.hasValue { try container.encode(releaseAtGt, forKey: .releaseAtGt) }
            if releaseAtGte.hasValue { try container.encode(releaseAtGte, forKey: .releaseAtGte) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if operationsEvery.hasValue { try container.encode(operationsEvery, forKey: .operationsEvery) }
            if operationsSome.hasValue { try container.encode(operationsSome, forKey: .operationsSome) }
            if operationsNone.hasValue { try container.encode(operationsNone, forKey: .operationsNone) }
            if status.hasValue { try container.encode(status, forKey: .status) }
            if statusNot.hasValue { try container.encode(statusNot, forKey: .statusNot) }
            if statusIn.hasValue { try container.encode(statusIn, forKey: .statusIn) }
            if statusNotIn.hasValue { try container.encode(statusNotIn, forKey: .statusNotIn) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case title
            case titleNot = "title_not"
            case titleIn = "title_in"
            case titleNotIn = "title_not_in"
            case titleContains = "title_contains"
            case titleNotContains = "title_not_contains"
            case titleStartsWith = "title_starts_with"
            case titleNotStartsWith = "title_not_starts_with"
            case titleEndsWith = "title_ends_with"
            case titleNotEndsWith = "title_not_ends_with"
            case description
            case descriptionNot = "description_not"
            case descriptionIn = "description_in"
            case descriptionNotIn = "description_not_in"
            case descriptionContains = "description_contains"
            case descriptionNotContains = "description_not_contains"
            case descriptionStartsWith = "description_starts_with"
            case descriptionNotStartsWith = "description_not_starts_with"
            case descriptionEndsWith = "description_ends_with"
            case descriptionNotEndsWith = "description_not_ends_with"
            case errorMessage
            case errorMessageNot = "errorMessage_not"
            case errorMessageIn = "errorMessage_in"
            case errorMessageNotIn = "errorMessage_not_in"
            case errorMessageContains = "errorMessage_contains"
            case errorMessageNotContains = "errorMessage_not_contains"
            case errorMessageStartsWith = "errorMessage_starts_with"
            case errorMessageNotStartsWith = "errorMessage_not_starts_with"
            case errorMessageEndsWith = "errorMessage_ends_with"
            case errorMessageNotEndsWith = "errorMessage_not_ends_with"
            case isActive
            case isActiveNot = "isActive_not"
            case isImplicit
            case isImplicitNot = "isImplicit_not"
            case releaseAt
            case releaseAtNot = "releaseAt_not"
            case releaseAtIn = "releaseAt_in"
            case releaseAtNotIn = "releaseAt_not_in"
            case releaseAtLt = "releaseAt_lt"
            case releaseAtLte = "releaseAt_lte"
            case releaseAtGt = "releaseAt_gt"
            case releaseAtGte = "releaseAt_gte"
            case createdBy
            case updatedBy
            case publishedBy
            case operationsEvery = "operations_every"
            case operationsSome = "operations_some"
            case operationsNone = "operations_none"
            case status
            case statusNot = "status_not"
            case statusIn = "status_in"
            case statusNotIn = "status_not_in"
        }
    }
}

extension InputObjects {
    struct ScheduledReleaseWhereUniqueInput: Encodable, Hashable {
        var id: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if id.hasValue { try container.encode(id, forKey: .id) }
        }

        enum CodingKeys: String, CodingKey {
            case id
        }
    }
}

extension InputObjects {
    struct UnpublishLocaleInput: Encodable, Hashable {
        /// Locales to unpublish
        var locale: Enums.Locale
        /// Stages to unpublish selected locales from
        var stages: [Enums.Stage]

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(locale, forKey: .locale)
            try container.encode(stages, forKey: .stages)
        }

        enum CodingKeys: String, CodingKey {
            case locale
            case stages
        }
    }
}

extension InputObjects {
    struct UserConnectInput: Encodable, Hashable {
        /// Document to connect
        var `where`: InputObjects.UserWhereUniqueInput
        /// Allow to specify document position in list of connected documents, will default to appending at end of list
        var position: OptionalArgument<InputObjects.ConnectPositionInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            if position.hasValue { try container.encode(position, forKey: .position) }
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case position
        }
    }
}

extension InputObjects {
    struct UserCreateManyInlineInput: Encodable, Hashable {
        /// Connect multiple existing User documents
        var connect: OptionalArgument<[InputObjects.UserWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case connect
        }
    }
}

extension InputObjects {
    struct UserCreateOneInlineInput: Encodable, Hashable {
        /// Connect one existing User document
        var connect: OptionalArgument<InputObjects.UserWhereUniqueInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case connect
        }
    }
}

extension InputObjects {
    struct UserManyWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.UserWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.UserWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.UserWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var name: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var nameNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var nameIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var nameNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var nameContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var nameNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var nameStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var nameNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var nameEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var nameNotEndsWith: OptionalArgument<String> = .absent()

        var picture: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var pictureNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var pictureIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var pictureNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var pictureContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var pictureNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var pictureStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var pictureNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var pictureEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var pictureNotEndsWith: OptionalArgument<String> = .absent()

        var isActive: OptionalArgument<Bool> = .absent()
        /// All values that are not equal to given value.
        var isActiveNot: OptionalArgument<Bool> = .absent()

        var kind: OptionalArgument<Enums.UserKind> = .absent()
        /// All values that are not equal to given value.
        var kindNot: OptionalArgument<Enums.UserKind> = .absent()
        /// All values that are contained in given list.
        var kindIn: OptionalArgument<[Enums.UserKind]> = .absent()
        /// All values that are not contained in given list.
        var kindNotIn: OptionalArgument<[Enums.UserKind]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if nameNot.hasValue { try container.encode(nameNot, forKey: .nameNot) }
            if nameIn.hasValue { try container.encode(nameIn, forKey: .nameIn) }
            if nameNotIn.hasValue { try container.encode(nameNotIn, forKey: .nameNotIn) }
            if nameContains.hasValue { try container.encode(nameContains, forKey: .nameContains) }
            if nameNotContains.hasValue { try container.encode(nameNotContains, forKey: .nameNotContains) }
            if nameStartsWith.hasValue { try container.encode(nameStartsWith, forKey: .nameStartsWith) }
            if nameNotStartsWith.hasValue { try container.encode(nameNotStartsWith, forKey: .nameNotStartsWith) }
            if nameEndsWith.hasValue { try container.encode(nameEndsWith, forKey: .nameEndsWith) }
            if nameNotEndsWith.hasValue { try container.encode(nameNotEndsWith, forKey: .nameNotEndsWith) }
            if picture.hasValue { try container.encode(picture, forKey: .picture) }
            if pictureNot.hasValue { try container.encode(pictureNot, forKey: .pictureNot) }
            if pictureIn.hasValue { try container.encode(pictureIn, forKey: .pictureIn) }
            if pictureNotIn.hasValue { try container.encode(pictureNotIn, forKey: .pictureNotIn) }
            if pictureContains.hasValue { try container.encode(pictureContains, forKey: .pictureContains) }
            if pictureNotContains.hasValue { try container.encode(pictureNotContains, forKey: .pictureNotContains) }
            if pictureStartsWith.hasValue { try container.encode(pictureStartsWith, forKey: .pictureStartsWith) }
            if pictureNotStartsWith.hasValue { try container.encode(pictureNotStartsWith, forKey: .pictureNotStartsWith) }
            if pictureEndsWith.hasValue { try container.encode(pictureEndsWith, forKey: .pictureEndsWith) }
            if pictureNotEndsWith.hasValue { try container.encode(pictureNotEndsWith, forKey: .pictureNotEndsWith) }
            if isActive.hasValue { try container.encode(isActive, forKey: .isActive) }
            if isActiveNot.hasValue { try container.encode(isActiveNot, forKey: .isActiveNot) }
            if kind.hasValue { try container.encode(kind, forKey: .kind) }
            if kindNot.hasValue { try container.encode(kindNot, forKey: .kindNot) }
            if kindIn.hasValue { try container.encode(kindIn, forKey: .kindIn) }
            if kindNotIn.hasValue { try container.encode(kindNotIn, forKey: .kindNotIn) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case name
            case nameNot = "name_not"
            case nameIn = "name_in"
            case nameNotIn = "name_not_in"
            case nameContains = "name_contains"
            case nameNotContains = "name_not_contains"
            case nameStartsWith = "name_starts_with"
            case nameNotStartsWith = "name_not_starts_with"
            case nameEndsWith = "name_ends_with"
            case nameNotEndsWith = "name_not_ends_with"
            case picture
            case pictureNot = "picture_not"
            case pictureIn = "picture_in"
            case pictureNotIn = "picture_not_in"
            case pictureContains = "picture_contains"
            case pictureNotContains = "picture_not_contains"
            case pictureStartsWith = "picture_starts_with"
            case pictureNotStartsWith = "picture_not_starts_with"
            case pictureEndsWith = "picture_ends_with"
            case pictureNotEndsWith = "picture_not_ends_with"
            case isActive
            case isActiveNot = "isActive_not"
            case kind
            case kindNot = "kind_not"
            case kindIn = "kind_in"
            case kindNotIn = "kind_not_in"
        }
    }
}

extension InputObjects {
    struct UserUpdateManyInlineInput: Encodable, Hashable {
        /// Connect multiple existing User documents
        var connect: OptionalArgument<[InputObjects.UserConnectInput]> = .absent()
        /// Override currently-connected documents with multiple existing User documents
        var set: OptionalArgument<[InputObjects.UserWhereUniqueInput]> = .absent()
        /// Disconnect multiple User documents
        var disconnect: OptionalArgument<[InputObjects.UserWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if set.hasValue { try container.encode(set, forKey: .set) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
        }

        enum CodingKeys: String, CodingKey {
            case connect
            case set
            case disconnect
        }
    }
}

extension InputObjects {
    struct UserUpdateOneInlineInput: Encodable, Hashable {
        /// Connect existing User document
        var connect: OptionalArgument<InputObjects.UserWhereUniqueInput> = .absent()
        /// Disconnect currently connected User document
        var disconnect: OptionalArgument<Bool> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
        }

        enum CodingKeys: String, CodingKey {
            case connect
            case disconnect
        }
    }
}

extension InputObjects {
    struct UserWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.UserWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.UserWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.UserWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var name: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var nameNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var nameIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var nameNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var nameContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var nameNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var nameStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var nameNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var nameEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var nameNotEndsWith: OptionalArgument<String> = .absent()

        var picture: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var pictureNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var pictureIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var pictureNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var pictureContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var pictureNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var pictureStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var pictureNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var pictureEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var pictureNotEndsWith: OptionalArgument<String> = .absent()

        var isActive: OptionalArgument<Bool> = .absent()
        /// All values that are not equal to given value.
        var isActiveNot: OptionalArgument<Bool> = .absent()

        var kind: OptionalArgument<Enums.UserKind> = .absent()
        /// All values that are not equal to given value.
        var kindNot: OptionalArgument<Enums.UserKind> = .absent()
        /// All values that are contained in given list.
        var kindIn: OptionalArgument<[Enums.UserKind]> = .absent()
        /// All values that are not contained in given list.
        var kindNotIn: OptionalArgument<[Enums.UserKind]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if nameNot.hasValue { try container.encode(nameNot, forKey: .nameNot) }
            if nameIn.hasValue { try container.encode(nameIn, forKey: .nameIn) }
            if nameNotIn.hasValue { try container.encode(nameNotIn, forKey: .nameNotIn) }
            if nameContains.hasValue { try container.encode(nameContains, forKey: .nameContains) }
            if nameNotContains.hasValue { try container.encode(nameNotContains, forKey: .nameNotContains) }
            if nameStartsWith.hasValue { try container.encode(nameStartsWith, forKey: .nameStartsWith) }
            if nameNotStartsWith.hasValue { try container.encode(nameNotStartsWith, forKey: .nameNotStartsWith) }
            if nameEndsWith.hasValue { try container.encode(nameEndsWith, forKey: .nameEndsWith) }
            if nameNotEndsWith.hasValue { try container.encode(nameNotEndsWith, forKey: .nameNotEndsWith) }
            if picture.hasValue { try container.encode(picture, forKey: .picture) }
            if pictureNot.hasValue { try container.encode(pictureNot, forKey: .pictureNot) }
            if pictureIn.hasValue { try container.encode(pictureIn, forKey: .pictureIn) }
            if pictureNotIn.hasValue { try container.encode(pictureNotIn, forKey: .pictureNotIn) }
            if pictureContains.hasValue { try container.encode(pictureContains, forKey: .pictureContains) }
            if pictureNotContains.hasValue { try container.encode(pictureNotContains, forKey: .pictureNotContains) }
            if pictureStartsWith.hasValue { try container.encode(pictureStartsWith, forKey: .pictureStartsWith) }
            if pictureNotStartsWith.hasValue { try container.encode(pictureNotStartsWith, forKey: .pictureNotStartsWith) }
            if pictureEndsWith.hasValue { try container.encode(pictureEndsWith, forKey: .pictureEndsWith) }
            if pictureNotEndsWith.hasValue { try container.encode(pictureNotEndsWith, forKey: .pictureNotEndsWith) }
            if isActive.hasValue { try container.encode(isActive, forKey: .isActive) }
            if isActiveNot.hasValue { try container.encode(isActiveNot, forKey: .isActiveNot) }
            if kind.hasValue { try container.encode(kind, forKey: .kind) }
            if kindNot.hasValue { try container.encode(kindNot, forKey: .kindNot) }
            if kindIn.hasValue { try container.encode(kindIn, forKey: .kindIn) }
            if kindNotIn.hasValue { try container.encode(kindNotIn, forKey: .kindNotIn) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case name
            case nameNot = "name_not"
            case nameIn = "name_in"
            case nameNotIn = "name_not_in"
            case nameContains = "name_contains"
            case nameNotContains = "name_not_contains"
            case nameStartsWith = "name_starts_with"
            case nameNotStartsWith = "name_not_starts_with"
            case nameEndsWith = "name_ends_with"
            case nameNotEndsWith = "name_not_ends_with"
            case picture
            case pictureNot = "picture_not"
            case pictureIn = "picture_in"
            case pictureNotIn = "picture_not_in"
            case pictureContains = "picture_contains"
            case pictureNotContains = "picture_not_contains"
            case pictureStartsWith = "picture_starts_with"
            case pictureNotStartsWith = "picture_not_starts_with"
            case pictureEndsWith = "picture_ends_with"
            case pictureNotEndsWith = "picture_not_ends_with"
            case isActive
            case isActiveNot = "isActive_not"
            case kind
            case kindNot = "kind_not"
            case kindIn = "kind_in"
            case kindNotIn = "kind_not_in"
        }
    }
}

extension InputObjects {
    struct UserWhereUniqueInput: Encodable, Hashable {
        var id: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if id.hasValue { try container.encode(id, forKey: .id) }
        }

        enum CodingKeys: String, CodingKey {
            case id
        }
    }
}

extension InputObjects {
    struct VersionWhereInput: Encodable, Hashable {
        var id: String

        var stage: Enums.Stage

        var revision: Int

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(id, forKey: .id)
            try container.encode(stage, forKey: .stage)
            try container.encode(revision, forKey: .revision)
        }

        enum CodingKeys: String, CodingKey {
            case id
            case stage
            case revision
        }
    }
}

extension InputObjects {
    struct VoteConnectInput: Encodable, Hashable {
        /// Document to connect
        var `where`: InputObjects.VoteWhereUniqueInput
        /// Allow to specify document position in list of connected documents, will default to appending at end of list
        var position: OptionalArgument<InputObjects.ConnectPositionInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            if position.hasValue { try container.encode(position, forKey: .position) }
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case position
        }
    }
}

extension InputObjects {
    struct VoteCreateInput: Encodable, Hashable {
        var createdAt: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()

        var product: OptionalArgument<InputObjects.ProductCreateOneInlineInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if product.hasValue { try container.encode(product, forKey: .product) }
        }

        enum CodingKeys: String, CodingKey {
            case createdAt
            case updatedAt
            case product
        }
    }
}

extension InputObjects {
    struct VoteCreateManyInlineInput: Encodable, Hashable {
        /// Create and connect multiple existing Vote documents
        var create: OptionalArgument<[InputObjects.VoteCreateInput]> = .absent()
        /// Connect multiple existing Vote documents
        var connect: OptionalArgument<[InputObjects.VoteWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
        }
    }
}

extension InputObjects {
    struct VoteCreateOneInlineInput: Encodable, Hashable {
        /// Create and connect one Vote document
        var create: OptionalArgument<InputObjects.VoteCreateInput> = .absent()
        /// Connect one existing Vote document
        var connect: OptionalArgument<InputObjects.VoteWhereUniqueInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
        }
    }
}

extension InputObjects {
    struct VoteManyWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.VoteWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.VoteWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.VoteWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var product: OptionalArgument<InputObjects.ProductWhereInput> = .absent()

        var scheduledInEvery: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInSome: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInNone: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if product.hasValue { try container.encode(product, forKey: .product) }
            if scheduledInEvery.hasValue { try container.encode(scheduledInEvery, forKey: .scheduledInEvery) }
            if scheduledInSome.hasValue { try container.encode(scheduledInSome, forKey: .scheduledInSome) }
            if scheduledInNone.hasValue { try container.encode(scheduledInNone, forKey: .scheduledInNone) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case createdBy
            case updatedBy
            case publishedBy
            case product
            case scheduledInEvery = "scheduledIn_every"
            case scheduledInSome = "scheduledIn_some"
            case scheduledInNone = "scheduledIn_none"
        }
    }
}

extension InputObjects {
    struct VoteUpdateInput: Encodable, Hashable {
        var product: OptionalArgument<InputObjects.ProductUpdateOneInlineInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if product.hasValue { try container.encode(product, forKey: .product) }
        }

        enum CodingKeys: String, CodingKey {
            case product
        }
    }
}

extension InputObjects {
    struct VoteUpdateManyInlineInput: Encodable, Hashable {
        /// Create and connect multiple Vote documents
        var create: OptionalArgument<[InputObjects.VoteCreateInput]> = .absent()
        /// Connect multiple existing Vote documents
        var connect: OptionalArgument<[InputObjects.VoteConnectInput]> = .absent()
        /// Override currently-connected documents with multiple existing Vote documents
        var set: OptionalArgument<[InputObjects.VoteWhereUniqueInput]> = .absent()
        /// Update multiple Vote documents
        var update: OptionalArgument<[InputObjects.VoteUpdateWithNestedWhereUniqueInput]> = .absent()
        /// Upsert multiple Vote documents
        var upsert: OptionalArgument<[InputObjects.VoteUpsertWithNestedWhereUniqueInput]> = .absent()
        /// Disconnect multiple Vote documents
        var disconnect: OptionalArgument<[InputObjects.VoteWhereUniqueInput]> = .absent()
        /// Delete multiple Vote documents
        var delete: OptionalArgument<[InputObjects.VoteWhereUniqueInput]> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if set.hasValue { try container.encode(set, forKey: .set) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case connect
            case set
            case update
            case upsert
            case disconnect
            case delete
        }
    }
}

extension InputObjects {
    struct VoteUpdateManyInput: Encodable, Hashable {

    }
}

extension InputObjects {
    struct VoteUpdateManyWithNestedWhereInput: Encodable, Hashable {
        /// Document search
        var `where`: InputObjects.VoteWhereInput
        /// Update many input
        var data: InputObjects.VoteUpdateManyInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct VoteUpdateOneInlineInput: Encodable, Hashable {
        /// Create and connect one Vote document
        var create: OptionalArgument<InputObjects.VoteCreateInput> = .absent()
        /// Update single Vote document
        var update: OptionalArgument<InputObjects.VoteUpdateWithNestedWhereUniqueInput> = .absent()
        /// Upsert single Vote document
        var upsert: OptionalArgument<InputObjects.VoteUpsertWithNestedWhereUniqueInput> = .absent()
        /// Connect existing Vote document
        var connect: OptionalArgument<InputObjects.VoteWhereUniqueInput> = .absent()
        /// Disconnect currently connected Vote document
        var disconnect: OptionalArgument<Bool> = .absent()
        /// Delete currently connected Vote document
        var delete: OptionalArgument<Bool> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if create.hasValue { try container.encode(create, forKey: .create) }
            if update.hasValue { try container.encode(update, forKey: .update) }
            if upsert.hasValue { try container.encode(upsert, forKey: .upsert) }
            if connect.hasValue { try container.encode(connect, forKey: .connect) }
            if disconnect.hasValue { try container.encode(disconnect, forKey: .disconnect) }
            if delete.hasValue { try container.encode(delete, forKey: .delete) }
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
            case upsert
            case connect
            case disconnect
            case delete
        }
    }
}

extension InputObjects {
    struct VoteUpdateWithNestedWhereUniqueInput: Encodable, Hashable {
        /// Unique document search
        var `where`: InputObjects.VoteWhereUniqueInput
        /// Document to update
        var data: InputObjects.VoteUpdateInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct VoteUpsertInput: Encodable, Hashable {
        /// Create document if it didn't exist
        var create: InputObjects.VoteCreateInput
        /// Update document if it exists
        var update: InputObjects.VoteUpdateInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(create, forKey: .create)
            try container.encode(update, forKey: .update)
        }

        enum CodingKeys: String, CodingKey {
            case create
            case update
        }
    }
}

extension InputObjects {
    struct VoteUpsertWithNestedWhereUniqueInput: Encodable, Hashable {
        /// Unique document search
        var `where`: InputObjects.VoteWhereUniqueInput
        /// Upsert data
        var data: InputObjects.VoteUpsertInput

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(`where`, forKey: .where)
            try container.encode(data, forKey: .data)
        }

        enum CodingKeys: String, CodingKey {
            case `where`
            case data
        }
    }
}

extension InputObjects {
    struct VoteWhereInput: Encodable, Hashable {
        /// Contains search across all appropriate fields.
        var search: OptionalArgument<String> = .absent()
        /// Logical AND on all given filters.
        var and: OptionalArgument<[InputObjects.VoteWhereInput]> = .absent()
        /// Logical OR on all given filters.
        var or: OptionalArgument<[InputObjects.VoteWhereInput]> = .absent()
        /// Logical NOT on all given filters combined by AND.
        var not: OptionalArgument<[InputObjects.VoteWhereInput]> = .absent()

        var id: OptionalArgument<String> = .absent()
        /// All values that are not equal to given value.
        var idNot: OptionalArgument<String> = .absent()
        /// All values that are contained in given list.
        var idIn: OptionalArgument<[String]> = .absent()
        /// All values that are not contained in given list.
        var idNotIn: OptionalArgument<[String]> = .absent()
        /// All values containing the given string.
        var idContains: OptionalArgument<String> = .absent()
        /// All values not containing the given string.
        var idNotContains: OptionalArgument<String> = .absent()
        /// All values starting with the given string.
        var idStartsWith: OptionalArgument<String> = .absent()
        /// All values not starting with the given string.
        var idNotStartsWith: OptionalArgument<String> = .absent()
        /// All values ending with the given string.
        var idEndsWith: OptionalArgument<String> = .absent()
        /// All values not ending with the given string
        var idNotEndsWith: OptionalArgument<String> = .absent()

        var createdAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var createdAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var createdAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var createdAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var createdAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var createdAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var createdAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var createdAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var updatedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var updatedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var updatedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var updatedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var updatedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var updatedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var updatedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var updatedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var publishedAt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are not equal to given value.
        var publishedAtNot: OptionalArgument<DateTimeScalar> = .absent()
        /// All values that are contained in given list.
        var publishedAtIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values that are not contained in given list.
        var publishedAtNotIn: OptionalArgument<[DateTimeScalar]> = .absent()
        /// All values less than the given value.
        var publishedAtLt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values less than or equal the given value.
        var publishedAtLte: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than the given value.
        var publishedAtGt: OptionalArgument<DateTimeScalar> = .absent()
        /// All values greater than or equal the given value.
        var publishedAtGte: OptionalArgument<DateTimeScalar> = .absent()

        var createdBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var updatedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var publishedBy: OptionalArgument<InputObjects.UserWhereInput> = .absent()

        var product: OptionalArgument<InputObjects.ProductWhereInput> = .absent()

        var scheduledInEvery: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInSome: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        var scheduledInNone: OptionalArgument<InputObjects.ScheduledOperationWhereInput> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if search.hasValue { try container.encode(search, forKey: .search) }
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if not.hasValue { try container.encode(not, forKey: .not) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if idNot.hasValue { try container.encode(idNot, forKey: .idNot) }
            if idIn.hasValue { try container.encode(idIn, forKey: .idIn) }
            if idNotIn.hasValue { try container.encode(idNotIn, forKey: .idNotIn) }
            if idContains.hasValue { try container.encode(idContains, forKey: .idContains) }
            if idNotContains.hasValue { try container.encode(idNotContains, forKey: .idNotContains) }
            if idStartsWith.hasValue { try container.encode(idStartsWith, forKey: .idStartsWith) }
            if idNotStartsWith.hasValue { try container.encode(idNotStartsWith, forKey: .idNotStartsWith) }
            if idEndsWith.hasValue { try container.encode(idEndsWith, forKey: .idEndsWith) }
            if idNotEndsWith.hasValue { try container.encode(idNotEndsWith, forKey: .idNotEndsWith) }
            if createdAt.hasValue { try container.encode(createdAt, forKey: .createdAt) }
            if createdAtNot.hasValue { try container.encode(createdAtNot, forKey: .createdAtNot) }
            if createdAtIn.hasValue { try container.encode(createdAtIn, forKey: .createdAtIn) }
            if createdAtNotIn.hasValue { try container.encode(createdAtNotIn, forKey: .createdAtNotIn) }
            if createdAtLt.hasValue { try container.encode(createdAtLt, forKey: .createdAtLt) }
            if createdAtLte.hasValue { try container.encode(createdAtLte, forKey: .createdAtLte) }
            if createdAtGt.hasValue { try container.encode(createdAtGt, forKey: .createdAtGt) }
            if createdAtGte.hasValue { try container.encode(createdAtGte, forKey: .createdAtGte) }
            if updatedAt.hasValue { try container.encode(updatedAt, forKey: .updatedAt) }
            if updatedAtNot.hasValue { try container.encode(updatedAtNot, forKey: .updatedAtNot) }
            if updatedAtIn.hasValue { try container.encode(updatedAtIn, forKey: .updatedAtIn) }
            if updatedAtNotIn.hasValue { try container.encode(updatedAtNotIn, forKey: .updatedAtNotIn) }
            if updatedAtLt.hasValue { try container.encode(updatedAtLt, forKey: .updatedAtLt) }
            if updatedAtLte.hasValue { try container.encode(updatedAtLte, forKey: .updatedAtLte) }
            if updatedAtGt.hasValue { try container.encode(updatedAtGt, forKey: .updatedAtGt) }
            if updatedAtGte.hasValue { try container.encode(updatedAtGte, forKey: .updatedAtGte) }
            if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
            if publishedAtNot.hasValue { try container.encode(publishedAtNot, forKey: .publishedAtNot) }
            if publishedAtIn.hasValue { try container.encode(publishedAtIn, forKey: .publishedAtIn) }
            if publishedAtNotIn.hasValue { try container.encode(publishedAtNotIn, forKey: .publishedAtNotIn) }
            if publishedAtLt.hasValue { try container.encode(publishedAtLt, forKey: .publishedAtLt) }
            if publishedAtLte.hasValue { try container.encode(publishedAtLte, forKey: .publishedAtLte) }
            if publishedAtGt.hasValue { try container.encode(publishedAtGt, forKey: .publishedAtGt) }
            if publishedAtGte.hasValue { try container.encode(publishedAtGte, forKey: .publishedAtGte) }
            if createdBy.hasValue { try container.encode(createdBy, forKey: .createdBy) }
            if updatedBy.hasValue { try container.encode(updatedBy, forKey: .updatedBy) }
            if publishedBy.hasValue { try container.encode(publishedBy, forKey: .publishedBy) }
            if product.hasValue { try container.encode(product, forKey: .product) }
            if scheduledInEvery.hasValue { try container.encode(scheduledInEvery, forKey: .scheduledInEvery) }
            if scheduledInSome.hasValue { try container.encode(scheduledInSome, forKey: .scheduledInSome) }
            if scheduledInNone.hasValue { try container.encode(scheduledInNone, forKey: .scheduledInNone) }
        }

        enum CodingKeys: String, CodingKey {
            case search = "_search"
            case and = "AND"
            case or = "OR"
            case not = "NOT"
            case id
            case idNot = "id_not"
            case idIn = "id_in"
            case idNotIn = "id_not_in"
            case idContains = "id_contains"
            case idNotContains = "id_not_contains"
            case idStartsWith = "id_starts_with"
            case idNotStartsWith = "id_not_starts_with"
            case idEndsWith = "id_ends_with"
            case idNotEndsWith = "id_not_ends_with"
            case createdAt
            case createdAtNot = "createdAt_not"
            case createdAtIn = "createdAt_in"
            case createdAtNotIn = "createdAt_not_in"
            case createdAtLt = "createdAt_lt"
            case createdAtLte = "createdAt_lte"
            case createdAtGt = "createdAt_gt"
            case createdAtGte = "createdAt_gte"
            case updatedAt
            case updatedAtNot = "updatedAt_not"
            case updatedAtIn = "updatedAt_in"
            case updatedAtNotIn = "updatedAt_not_in"
            case updatedAtLt = "updatedAt_lt"
            case updatedAtLte = "updatedAt_lte"
            case updatedAtGt = "updatedAt_gt"
            case updatedAtGte = "updatedAt_gte"
            case publishedAt
            case publishedAtNot = "publishedAt_not"
            case publishedAtIn = "publishedAt_in"
            case publishedAtNotIn = "publishedAt_not_in"
            case publishedAtLt = "publishedAt_lt"
            case publishedAtLte = "publishedAt_lte"
            case publishedAtGt = "publishedAt_gt"
            case publishedAtGte = "publishedAt_gte"
            case createdBy
            case updatedBy
            case publishedBy
            case product
            case scheduledInEvery = "scheduledIn_every"
            case scheduledInSome = "scheduledIn_some"
            case scheduledInNone = "scheduledIn_none"
        }
    }
}

extension InputObjects {
    struct VoteWhereUniqueInput: Encodable, Hashable {
        var id: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if id.hasValue { try container.encode(id, forKey: .id) }
        }

        enum CodingKeys: String, CodingKey {
            case id
        }
    }
}
