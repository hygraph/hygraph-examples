module.exports = {
    "scalars": [
        12,
        32,
        36,
        37,
        38,
        42,
        43,
        44,
        45,
        48,
        49,
        50,
        53,
        68,
        89,
        91,
        100,
        112,
        113,
        114,
        115,
        123,
        125,
        140,
        151,
        152,
        153,
        154,
        155,
        156,
        157,
        158
    ],
    "types": {
        "Aggregate": {
            "count": [
                48
            ],
            "__typename": [
                114
            ]
        },
        "Asset": {
            "stage": [
                113
            ],
            "locale": [
                50
            ],
            "localizations": [
                1,
                {
                    "locales": [
                        50,
                        "[Locale!]!"
                    ],
                    "includeCurrent": [
                        32,
                        "Boolean!"
                    ]
                }
            ],
            "documentInStages": [
                1,
                {
                    "stages": [
                        113,
                        "[Stage!]!"
                    ],
                    "includeCurrent": [
                        32,
                        "Boolean!"
                    ],
                    "inheritLocale": [
                        32,
                        "Boolean!"
                    ]
                }
            ],
            "id": [
                44
            ],
            "createdAt": [
                37,
                {
                    "variation": [
                        115,
                        "SystemDateTimeFieldVariation!"
                    ]
                }
            ],
            "createdBy": [
                117,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "updatedAt": [
                37,
                {
                    "variation": [
                        115,
                        "SystemDateTimeFieldVariation!"
                    ]
                }
            ],
            "updatedBy": [
                117,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "publishedAt": [
                37,
                {
                    "variation": [
                        115,
                        "SystemDateTimeFieldVariation!"
                    ]
                }
            ],
            "publishedBy": [
                117,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "handle": [
                114
            ],
            "fileName": [
                114
            ],
            "height": [
                42
            ],
            "width": [
                42
            ],
            "size": [
                42
            ],
            "mimeType": [
                114
            ],
            "productImage": [
                57,
                {
                    "where": [
                        84
                    ],
                    "orderBy": [
                        68
                    ],
                    "skip": [
                        48
                    ],
                    "after": [
                        114
                    ],
                    "before": [
                        114
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "history": [
                130,
                {
                    "limit": [
                        48,
                        "Int!"
                    ],
                    "skip": [
                        48,
                        "Int!"
                    ],
                    "stageOverride": [
                        113
                    ]
                }
            ],
            "url": [
                114,
                {
                    "transformation": [
                        13
                    ]
                }
            ],
            "__typename": [
                114
            ]
        },
        "AssetConnectInput": {
            "where": [
                30
            ],
            "position": [
                35
            ],
            "__typename": [
                114
            ]
        },
        "AssetConnection": {
            "pageInfo": [
                56
            ],
            "edges": [
                10
            ],
            "aggregate": [
                0
            ],
            "__typename": [
                114
            ]
        },
        "AssetCreateInput": {
            "createdAt": [
                37
            ],
            "updatedAt": [
                37
            ],
            "handle": [
                114
            ],
            "fileName": [
                114
            ],
            "height": [
                42
            ],
            "width": [
                42
            ],
            "size": [
                42
            ],
            "mimeType": [
                114
            ],
            "productImage": [
                64
            ],
            "localizations": [
                7
            ],
            "__typename": [
                114
            ]
        },
        "AssetCreateLocalizationDataInput": {
            "createdAt": [
                37
            ],
            "updatedAt": [
                37
            ],
            "handle": [
                114
            ],
            "fileName": [
                114
            ],
            "height": [
                42
            ],
            "width": [
                42
            ],
            "size": [
                42
            ],
            "mimeType": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "AssetCreateLocalizationInput": {
            "data": [
                5
            ],
            "locale": [
                50
            ],
            "__typename": [
                114
            ]
        },
        "AssetCreateLocalizationsInput": {
            "create": [
                6
            ],
            "__typename": [
                114
            ]
        },
        "AssetCreateManyInlineInput": {
            "create": [
                4
            ],
            "connect": [
                30
            ],
            "__typename": [
                114
            ]
        },
        "AssetCreateOneInlineInput": {
            "create": [
                4
            ],
            "connect": [
                30
            ],
            "__typename": [
                114
            ]
        },
        "AssetEdge": {
            "node": [
                1
            ],
            "cursor": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "AssetManyWhereInput": {
            "_search": [
                114
            ],
            "AND": [
                29
            ],
            "OR": [
                29
            ],
            "NOT": [
                29
            ],
            "id": [
                44
            ],
            "id_not": [
                44
            ],
            "id_in": [
                44
            ],
            "id_not_in": [
                44
            ],
            "id_contains": [
                44
            ],
            "id_not_contains": [
                44
            ],
            "id_starts_with": [
                44
            ],
            "id_not_starts_with": [
                44
            ],
            "id_ends_with": [
                44
            ],
            "id_not_ends_with": [
                44
            ],
            "createdAt": [
                37
            ],
            "createdAt_not": [
                37
            ],
            "createdAt_in": [
                37
            ],
            "createdAt_not_in": [
                37
            ],
            "createdAt_lt": [
                37
            ],
            "createdAt_lte": [
                37
            ],
            "createdAt_gt": [
                37
            ],
            "createdAt_gte": [
                37
            ],
            "createdBy": [
                128
            ],
            "updatedAt": [
                37
            ],
            "updatedAt_not": [
                37
            ],
            "updatedAt_in": [
                37
            ],
            "updatedAt_not_in": [
                37
            ],
            "updatedAt_lt": [
                37
            ],
            "updatedAt_lte": [
                37
            ],
            "updatedAt_gt": [
                37
            ],
            "updatedAt_gte": [
                37
            ],
            "updatedBy": [
                128
            ],
            "publishedAt": [
                37
            ],
            "publishedAt_not": [
                37
            ],
            "publishedAt_in": [
                37
            ],
            "publishedAt_not_in": [
                37
            ],
            "publishedAt_lt": [
                37
            ],
            "publishedAt_lte": [
                37
            ],
            "publishedAt_gt": [
                37
            ],
            "publishedAt_gte": [
                37
            ],
            "publishedBy": [
                128
            ],
            "productImage_every": [
                84
            ],
            "productImage_some": [
                84
            ],
            "productImage_none": [
                84
            ],
            "__typename": [
                114
            ]
        },
        "AssetOrderByInput": {},
        "AssetTransformationInput": {
            "image": [
                47
            ],
            "document": [
                40
            ],
            "validateOptions": [
                32
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpdateInput": {
            "handle": [
                114
            ],
            "fileName": [
                114
            ],
            "height": [
                42
            ],
            "width": [
                42
            ],
            "size": [
                42
            ],
            "mimeType": [
                114
            ],
            "productImage": [
                73
            ],
            "localizations": [
                17
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpdateLocalizationDataInput": {
            "handle": [
                114
            ],
            "fileName": [
                114
            ],
            "height": [
                42
            ],
            "width": [
                42
            ],
            "size": [
                42
            ],
            "mimeType": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpdateLocalizationInput": {
            "data": [
                15
            ],
            "locale": [
                50
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpdateLocalizationsInput": {
            "create": [
                6
            ],
            "update": [
                16
            ],
            "upsert": [
                27
            ],
            "delete": [
                50
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpdateManyInlineInput": {
            "create": [
                4
            ],
            "connect": [
                2
            ],
            "set": [
                30
            ],
            "update": [
                25
            ],
            "upsert": [
                28
            ],
            "disconnect": [
                30
            ],
            "delete": [
                30
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpdateManyInput": {
            "fileName": [
                114
            ],
            "height": [
                42
            ],
            "width": [
                42
            ],
            "size": [
                42
            ],
            "mimeType": [
                114
            ],
            "localizations": [
                22
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpdateManyLocalizationDataInput": {
            "fileName": [
                114
            ],
            "height": [
                42
            ],
            "width": [
                42
            ],
            "size": [
                42
            ],
            "mimeType": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpdateManyLocalizationInput": {
            "data": [
                20
            ],
            "locale": [
                50
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpdateManyLocalizationsInput": {
            "update": [
                21
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpdateManyWithNestedWhereInput": {
            "where": [
                29
            ],
            "data": [
                19
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpdateOneInlineInput": {
            "create": [
                4
            ],
            "update": [
                25
            ],
            "upsert": [
                28
            ],
            "connect": [
                30
            ],
            "disconnect": [
                32
            ],
            "delete": [
                32
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpdateWithNestedWhereUniqueInput": {
            "where": [
                30
            ],
            "data": [
                14
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpsertInput": {
            "create": [
                4
            ],
            "update": [
                14
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpsertLocalizationInput": {
            "update": [
                15
            ],
            "create": [
                5
            ],
            "locale": [
                50
            ],
            "__typename": [
                114
            ]
        },
        "AssetUpsertWithNestedWhereUniqueInput": {
            "where": [
                30
            ],
            "data": [
                26
            ],
            "__typename": [
                114
            ]
        },
        "AssetWhereInput": {
            "_search": [
                114
            ],
            "AND": [
                29
            ],
            "OR": [
                29
            ],
            "NOT": [
                29
            ],
            "id": [
                44
            ],
            "id_not": [
                44
            ],
            "id_in": [
                44
            ],
            "id_not_in": [
                44
            ],
            "id_contains": [
                44
            ],
            "id_not_contains": [
                44
            ],
            "id_starts_with": [
                44
            ],
            "id_not_starts_with": [
                44
            ],
            "id_ends_with": [
                44
            ],
            "id_not_ends_with": [
                44
            ],
            "createdAt": [
                37
            ],
            "createdAt_not": [
                37
            ],
            "createdAt_in": [
                37
            ],
            "createdAt_not_in": [
                37
            ],
            "createdAt_lt": [
                37
            ],
            "createdAt_lte": [
                37
            ],
            "createdAt_gt": [
                37
            ],
            "createdAt_gte": [
                37
            ],
            "createdBy": [
                128
            ],
            "updatedAt": [
                37
            ],
            "updatedAt_not": [
                37
            ],
            "updatedAt_in": [
                37
            ],
            "updatedAt_not_in": [
                37
            ],
            "updatedAt_lt": [
                37
            ],
            "updatedAt_lte": [
                37
            ],
            "updatedAt_gt": [
                37
            ],
            "updatedAt_gte": [
                37
            ],
            "updatedBy": [
                128
            ],
            "publishedAt": [
                37
            ],
            "publishedAt_not": [
                37
            ],
            "publishedAt_in": [
                37
            ],
            "publishedAt_not_in": [
                37
            ],
            "publishedAt_lt": [
                37
            ],
            "publishedAt_lte": [
                37
            ],
            "publishedAt_gt": [
                37
            ],
            "publishedAt_gte": [
                37
            ],
            "publishedBy": [
                128
            ],
            "handle": [
                114
            ],
            "handle_not": [
                114
            ],
            "handle_in": [
                114
            ],
            "handle_not_in": [
                114
            ],
            "handle_contains": [
                114
            ],
            "handle_not_contains": [
                114
            ],
            "handle_starts_with": [
                114
            ],
            "handle_not_starts_with": [
                114
            ],
            "handle_ends_with": [
                114
            ],
            "handle_not_ends_with": [
                114
            ],
            "fileName": [
                114
            ],
            "fileName_not": [
                114
            ],
            "fileName_in": [
                114
            ],
            "fileName_not_in": [
                114
            ],
            "fileName_contains": [
                114
            ],
            "fileName_not_contains": [
                114
            ],
            "fileName_starts_with": [
                114
            ],
            "fileName_not_starts_with": [
                114
            ],
            "fileName_ends_with": [
                114
            ],
            "fileName_not_ends_with": [
                114
            ],
            "height": [
                42
            ],
            "height_not": [
                42
            ],
            "height_in": [
                42
            ],
            "height_not_in": [
                42
            ],
            "height_lt": [
                42
            ],
            "height_lte": [
                42
            ],
            "height_gt": [
                42
            ],
            "height_gte": [
                42
            ],
            "width": [
                42
            ],
            "width_not": [
                42
            ],
            "width_in": [
                42
            ],
            "width_not_in": [
                42
            ],
            "width_lt": [
                42
            ],
            "width_lte": [
                42
            ],
            "width_gt": [
                42
            ],
            "width_gte": [
                42
            ],
            "size": [
                42
            ],
            "size_not": [
                42
            ],
            "size_in": [
                42
            ],
            "size_not_in": [
                42
            ],
            "size_lt": [
                42
            ],
            "size_lte": [
                42
            ],
            "size_gt": [
                42
            ],
            "size_gte": [
                42
            ],
            "mimeType": [
                114
            ],
            "mimeType_not": [
                114
            ],
            "mimeType_in": [
                114
            ],
            "mimeType_not_in": [
                114
            ],
            "mimeType_contains": [
                114
            ],
            "mimeType_not_contains": [
                114
            ],
            "mimeType_starts_with": [
                114
            ],
            "mimeType_not_starts_with": [
                114
            ],
            "mimeType_ends_with": [
                114
            ],
            "mimeType_not_ends_with": [
                114
            ],
            "productImage_every": [
                84
            ],
            "productImage_some": [
                84
            ],
            "productImage_none": [
                84
            ],
            "__typename": [
                114
            ]
        },
        "AssetWhereUniqueInput": {
            "id": [
                44
            ],
            "__typename": [
                114
            ]
        },
        "BatchPayload": {
            "count": [
                53
            ],
            "__typename": [
                114
            ]
        },
        "Boolean": {},
        "Color": {
            "hex": [
                43
            ],
            "rgba": [
                88
            ],
            "css": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "ColorInput": {
            "hex": [
                43
            ],
            "rgba": [
                90
            ],
            "__typename": [
                114
            ]
        },
        "ConnectPositionInput": {
            "after": [
                44
            ],
            "before": [
                44
            ],
            "start": [
                32
            ],
            "end": [
                32
            ],
            "__typename": [
                114
            ]
        },
        "Date": {},
        "DateTime": {},
        "DocumentFileTypes": {},
        "DocumentOutputInput": {
            "format": [
                38
            ],
            "__typename": [
                114
            ]
        },
        "DocumentTransformationInput": {
            "output": [
                39
            ],
            "__typename": [
                114
            ]
        },
        "DocumentVersion": {
            "id": [
                44
            ],
            "stage": [
                113
            ],
            "revision": [
                48
            ],
            "createdAt": [
                37
            ],
            "data": [
                49
            ],
            "__typename": [
                114
            ]
        },
        "Float": {},
        "Hex": {},
        "ID": {},
        "ImageFit": {},
        "ImageResizeInput": {
            "width": [
                48
            ],
            "height": [
                48
            ],
            "fit": [
                45
            ],
            "__typename": [
                114
            ]
        },
        "ImageTransformationInput": {
            "resize": [
                46
            ],
            "__typename": [
                114
            ]
        },
        "Int": {},
        "Json": {},
        "Locale": {},
        "Location": {
            "latitude": [
                42
            ],
            "longitude": [
                42
            ],
            "distance": [
                42,
                {
                    "from": [
                        52,
                        "LocationInput!"
                    ]
                }
            ],
            "__typename": [
                114
            ]
        },
        "LocationInput": {
            "latitude": [
                42
            ],
            "longitude": [
                42
            ],
            "__typename": [
                114
            ]
        },
        "Long": {},
        "Mutation": {
            "createAsset": [
                1,
                {
                    "data": [
                        4,
                        "AssetCreateInput!"
                    ]
                }
            ],
            "updateAsset": [
                1,
                {
                    "where": [
                        30,
                        "AssetWhereUniqueInput!"
                    ],
                    "data": [
                        14,
                        "AssetUpdateInput!"
                    ]
                }
            ],
            "deleteAsset": [
                1,
                {
                    "where": [
                        30,
                        "AssetWhereUniqueInput!"
                    ]
                }
            ],
            "upsertAsset": [
                1,
                {
                    "where": [
                        30,
                        "AssetWhereUniqueInput!"
                    ],
                    "upsert": [
                        26,
                        "AssetUpsertInput!"
                    ]
                }
            ],
            "publishAsset": [
                1,
                {
                    "where": [
                        30,
                        "AssetWhereUniqueInput!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ],
                    "publishBase": [
                        32
                    ],
                    "withDefaultLocale": [
                        32
                    ],
                    "to": [
                        113,
                        "[Stage!]!"
                    ]
                }
            ],
            "unpublishAsset": [
                1,
                {
                    "where": [
                        30,
                        "AssetWhereUniqueInput!"
                    ],
                    "from": [
                        113,
                        "[Stage!]!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ],
                    "unpublishBase": [
                        32
                    ]
                }
            ],
            "updateManyAssetsConnection": [
                3,
                {
                    "where": [
                        11
                    ],
                    "data": [
                        19,
                        "AssetUpdateManyInput!"
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ]
                }
            ],
            "deleteManyAssetsConnection": [
                3,
                {
                    "where": [
                        11
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ]
                }
            ],
            "publishManyAssetsConnection": [
                3,
                {
                    "where": [
                        11
                    ],
                    "from": [
                        113
                    ],
                    "to": [
                        113,
                        "[Stage!]!"
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ],
                    "publishBase": [
                        32
                    ],
                    "withDefaultLocale": [
                        32
                    ]
                }
            ],
            "unpublishManyAssetsConnection": [
                3,
                {
                    "where": [
                        11
                    ],
                    "stage": [
                        113
                    ],
                    "from": [
                        113,
                        "[Stage!]!"
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ],
                    "unpublishBase": [
                        32
                    ]
                }
            ],
            "updateManyAssets": [
                31,
                {
                    "where": [
                        11
                    ],
                    "data": [
                        19,
                        "AssetUpdateManyInput!"
                    ]
                }
            ],
            "deleteManyAssets": [
                31,
                {
                    "where": [
                        11
                    ]
                }
            ],
            "publishManyAssets": [
                31,
                {
                    "where": [
                        11
                    ],
                    "to": [
                        113,
                        "[Stage!]!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ],
                    "publishBase": [
                        32
                    ],
                    "withDefaultLocale": [
                        32
                    ]
                }
            ],
            "unpublishManyAssets": [
                31,
                {
                    "where": [
                        11
                    ],
                    "from": [
                        113,
                        "[Stage!]!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ],
                    "unpublishBase": [
                        32
                    ]
                }
            ],
            "createProduct": [
                57,
                {
                    "data": [
                        60,
                        "ProductCreateInput!"
                    ]
                }
            ],
            "updateProduct": [
                57,
                {
                    "where": [
                        85,
                        "ProductWhereUniqueInput!"
                    ],
                    "data": [
                        69,
                        "ProductUpdateInput!"
                    ]
                }
            ],
            "deleteProduct": [
                57,
                {
                    "where": [
                        85,
                        "ProductWhereUniqueInput!"
                    ]
                }
            ],
            "upsertProduct": [
                57,
                {
                    "where": [
                        85,
                        "ProductWhereUniqueInput!"
                    ],
                    "upsert": [
                        81,
                        "ProductUpsertInput!"
                    ]
                }
            ],
            "publishProduct": [
                57,
                {
                    "where": [
                        85,
                        "ProductWhereUniqueInput!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ],
                    "publishBase": [
                        32
                    ],
                    "withDefaultLocale": [
                        32
                    ],
                    "to": [
                        113,
                        "[Stage!]!"
                    ]
                }
            ],
            "unpublishProduct": [
                57,
                {
                    "where": [
                        85,
                        "ProductWhereUniqueInput!"
                    ],
                    "from": [
                        113,
                        "[Stage!]!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ],
                    "unpublishBase": [
                        32
                    ]
                }
            ],
            "updateManyProductsConnection": [
                59,
                {
                    "where": [
                        67
                    ],
                    "data": [
                        74,
                        "ProductUpdateManyInput!"
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ]
                }
            ],
            "deleteManyProductsConnection": [
                59,
                {
                    "where": [
                        67
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ]
                }
            ],
            "publishManyProductsConnection": [
                59,
                {
                    "where": [
                        67
                    ],
                    "from": [
                        113
                    ],
                    "to": [
                        113,
                        "[Stage!]!"
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ],
                    "publishBase": [
                        32
                    ],
                    "withDefaultLocale": [
                        32
                    ]
                }
            ],
            "unpublishManyProductsConnection": [
                59,
                {
                    "where": [
                        67
                    ],
                    "stage": [
                        113
                    ],
                    "from": [
                        113,
                        "[Stage!]!"
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ],
                    "unpublishBase": [
                        32
                    ]
                }
            ],
            "updateManyProducts": [
                31,
                {
                    "where": [
                        67
                    ],
                    "data": [
                        74,
                        "ProductUpdateManyInput!"
                    ]
                }
            ],
            "deleteManyProducts": [
                31,
                {
                    "where": [
                        67
                    ]
                }
            ],
            "publishManyProducts": [
                31,
                {
                    "where": [
                        67
                    ],
                    "to": [
                        113,
                        "[Stage!]!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ],
                    "publishBase": [
                        32
                    ],
                    "withDefaultLocale": [
                        32
                    ]
                }
            ],
            "unpublishManyProducts": [
                31,
                {
                    "where": [
                        67
                    ],
                    "from": [
                        113,
                        "[Stage!]!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ],
                    "unpublishBase": [
                        32
                    ]
                }
            ],
            "createReview": [
                92,
                {
                    "data": [
                        95,
                        "ReviewCreateInput!"
                    ]
                }
            ],
            "updateReview": [
                92,
                {
                    "where": [
                        110,
                        "ReviewWhereUniqueInput!"
                    ],
                    "data": [
                        101,
                        "ReviewUpdateInput!"
                    ]
                }
            ],
            "deleteReview": [
                92,
                {
                    "where": [
                        110,
                        "ReviewWhereUniqueInput!"
                    ]
                }
            ],
            "upsertReview": [
                92,
                {
                    "where": [
                        110,
                        "ReviewWhereUniqueInput!"
                    ],
                    "upsert": [
                        107,
                        "ReviewUpsertInput!"
                    ]
                }
            ],
            "publishReview": [
                92,
                {
                    "where": [
                        110,
                        "ReviewWhereUniqueInput!"
                    ],
                    "to": [
                        113,
                        "[Stage!]!"
                    ]
                }
            ],
            "unpublishReview": [
                92,
                {
                    "where": [
                        110,
                        "ReviewWhereUniqueInput!"
                    ],
                    "from": [
                        113,
                        "[Stage!]!"
                    ]
                }
            ],
            "updateManyReviewsConnection": [
                94,
                {
                    "where": [
                        99
                    ],
                    "data": [
                        103,
                        "ReviewUpdateManyInput!"
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ]
                }
            ],
            "deleteManyReviewsConnection": [
                94,
                {
                    "where": [
                        99
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ]
                }
            ],
            "publishManyReviewsConnection": [
                94,
                {
                    "where": [
                        99
                    ],
                    "from": [
                        113
                    ],
                    "to": [
                        113,
                        "[Stage!]!"
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ]
                }
            ],
            "unpublishManyReviewsConnection": [
                94,
                {
                    "where": [
                        99
                    ],
                    "stage": [
                        113
                    ],
                    "from": [
                        113,
                        "[Stage!]!"
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ]
                }
            ],
            "updateManyReviews": [
                31,
                {
                    "where": [
                        99
                    ],
                    "data": [
                        103,
                        "ReviewUpdateManyInput!"
                    ]
                }
            ],
            "deleteManyReviews": [
                31,
                {
                    "where": [
                        99
                    ]
                }
            ],
            "publishManyReviews": [
                31,
                {
                    "where": [
                        99
                    ],
                    "to": [
                        113,
                        "[Stage!]!"
                    ]
                }
            ],
            "unpublishManyReviews": [
                31,
                {
                    "where": [
                        99
                    ],
                    "from": [
                        113,
                        "[Stage!]!"
                    ]
                }
            ],
            "createVote": [
                132,
                {
                    "data": [
                        135,
                        "VoteCreateInput!"
                    ]
                }
            ],
            "updateVote": [
                132,
                {
                    "where": [
                        150,
                        "VoteWhereUniqueInput!"
                    ],
                    "data": [
                        141,
                        "VoteUpdateInput!"
                    ]
                }
            ],
            "deleteVote": [
                132,
                {
                    "where": [
                        150,
                        "VoteWhereUniqueInput!"
                    ]
                }
            ],
            "upsertVote": [
                132,
                {
                    "where": [
                        150,
                        "VoteWhereUniqueInput!"
                    ],
                    "upsert": [
                        147,
                        "VoteUpsertInput!"
                    ]
                }
            ],
            "publishVote": [
                132,
                {
                    "where": [
                        150,
                        "VoteWhereUniqueInput!"
                    ],
                    "to": [
                        113,
                        "[Stage!]!"
                    ]
                }
            ],
            "unpublishVote": [
                132,
                {
                    "where": [
                        150,
                        "VoteWhereUniqueInput!"
                    ],
                    "from": [
                        113,
                        "[Stage!]!"
                    ]
                }
            ],
            "updateManyVotesConnection": [
                134,
                {
                    "where": [
                        139
                    ],
                    "data": [
                        143,
                        "VoteUpdateManyInput!"
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ]
                }
            ],
            "deleteManyVotesConnection": [
                134,
                {
                    "where": [
                        139
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ]
                }
            ],
            "publishManyVotesConnection": [
                134,
                {
                    "where": [
                        139
                    ],
                    "from": [
                        113
                    ],
                    "to": [
                        113,
                        "[Stage!]!"
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ]
                }
            ],
            "unpublishManyVotesConnection": [
                134,
                {
                    "where": [
                        139
                    ],
                    "stage": [
                        113
                    ],
                    "from": [
                        113,
                        "[Stage!]!"
                    ],
                    "skip": [
                        48
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "before": [
                        44
                    ],
                    "after": [
                        44
                    ]
                }
            ],
            "updateManyVotes": [
                31,
                {
                    "where": [
                        139
                    ],
                    "data": [
                        143,
                        "VoteUpdateManyInput!"
                    ]
                }
            ],
            "deleteManyVotes": [
                31,
                {
                    "where": [
                        139
                    ]
                }
            ],
            "publishManyVotes": [
                31,
                {
                    "where": [
                        139
                    ],
                    "to": [
                        113,
                        "[Stage!]!"
                    ]
                }
            ],
            "unpublishManyVotes": [
                31,
                {
                    "where": [
                        139
                    ],
                    "from": [
                        113,
                        "[Stage!]!"
                    ]
                }
            ],
            "__typename": [
                114
            ]
        },
        "Node": {
            "id": [
                44
            ],
            "stage": [
                113
            ],
            "on_Asset": [
                1
            ],
            "on_Product": [
                57
            ],
            "on_Review": [
                92
            ],
            "on_User": [
                117
            ],
            "on_Vote": [
                132
            ],
            "__typename": [
                114
            ]
        },
        "PageInfo": {
            "hasNextPage": [
                32
            ],
            "hasPreviousPage": [
                32
            ],
            "startCursor": [
                114
            ],
            "endCursor": [
                114
            ],
            "pageSize": [
                48
            ],
            "__typename": [
                114
            ]
        },
        "Product": {
            "stage": [
                113
            ],
            "locale": [
                50
            ],
            "localizations": [
                57,
                {
                    "locales": [
                        50,
                        "[Locale!]!"
                    ],
                    "includeCurrent": [
                        32,
                        "Boolean!"
                    ]
                }
            ],
            "documentInStages": [
                57,
                {
                    "stages": [
                        113,
                        "[Stage!]!"
                    ],
                    "includeCurrent": [
                        32,
                        "Boolean!"
                    ],
                    "inheritLocale": [
                        32,
                        "Boolean!"
                    ]
                }
            ],
            "id": [
                44
            ],
            "createdAt": [
                37,
                {
                    "variation": [
                        115,
                        "SystemDateTimeFieldVariation!"
                    ]
                }
            ],
            "createdBy": [
                117,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "updatedAt": [
                37,
                {
                    "variation": [
                        115,
                        "SystemDateTimeFieldVariation!"
                    ]
                }
            ],
            "updatedBy": [
                117,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "publishedAt": [
                37,
                {
                    "variation": [
                        115,
                        "SystemDateTimeFieldVariation!"
                    ]
                }
            ],
            "publishedBy": [
                117,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "name": [
                114
            ],
            "slug": [
                114
            ],
            "description": [
                114
            ],
            "price": [
                48
            ],
            "reviews": [
                92,
                {
                    "where": [
                        109
                    ],
                    "orderBy": [
                        100
                    ],
                    "skip": [
                        48
                    ],
                    "after": [
                        114
                    ],
                    "before": [
                        114
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "votes": [
                132,
                {
                    "where": [
                        149
                    ],
                    "orderBy": [
                        140
                    ],
                    "skip": [
                        48
                    ],
                    "after": [
                        114
                    ],
                    "before": [
                        114
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "image": [
                1,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "content": [
                111
            ],
            "history": [
                130,
                {
                    "limit": [
                        48,
                        "Int!"
                    ],
                    "skip": [
                        48,
                        "Int!"
                    ],
                    "stageOverride": [
                        113
                    ]
                }
            ],
            "__typename": [
                114
            ]
        },
        "ProductConnectInput": {
            "where": [
                85
            ],
            "position": [
                35
            ],
            "__typename": [
                114
            ]
        },
        "ProductConnection": {
            "pageInfo": [
                56
            ],
            "edges": [
                66
            ],
            "aggregate": [
                0
            ],
            "__typename": [
                114
            ]
        },
        "ProductCreateInput": {
            "createdAt": [
                37
            ],
            "updatedAt": [
                37
            ],
            "name": [
                114
            ],
            "slug": [
                114
            ],
            "description": [
                114
            ],
            "price": [
                48
            ],
            "reviews": [
                96
            ],
            "votes": [
                136
            ],
            "image": [
                9
            ],
            "content": [
                112
            ],
            "localizations": [
                63
            ],
            "__typename": [
                114
            ]
        },
        "ProductCreateLocalizationDataInput": {
            "createdAt": [
                37
            ],
            "updatedAt": [
                37
            ],
            "name": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "ProductCreateLocalizationInput": {
            "data": [
                61
            ],
            "locale": [
                50
            ],
            "__typename": [
                114
            ]
        },
        "ProductCreateLocalizationsInput": {
            "create": [
                62
            ],
            "__typename": [
                114
            ]
        },
        "ProductCreateManyInlineInput": {
            "create": [
                60
            ],
            "connect": [
                85
            ],
            "__typename": [
                114
            ]
        },
        "ProductCreateOneInlineInput": {
            "create": [
                60
            ],
            "connect": [
                85
            ],
            "__typename": [
                114
            ]
        },
        "ProductEdge": {
            "node": [
                57
            ],
            "cursor": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "ProductManyWhereInput": {
            "_search": [
                114
            ],
            "AND": [
                84
            ],
            "OR": [
                84
            ],
            "NOT": [
                84
            ],
            "id": [
                44
            ],
            "id_not": [
                44
            ],
            "id_in": [
                44
            ],
            "id_not_in": [
                44
            ],
            "id_contains": [
                44
            ],
            "id_not_contains": [
                44
            ],
            "id_starts_with": [
                44
            ],
            "id_not_starts_with": [
                44
            ],
            "id_ends_with": [
                44
            ],
            "id_not_ends_with": [
                44
            ],
            "createdAt": [
                37
            ],
            "createdAt_not": [
                37
            ],
            "createdAt_in": [
                37
            ],
            "createdAt_not_in": [
                37
            ],
            "createdAt_lt": [
                37
            ],
            "createdAt_lte": [
                37
            ],
            "createdAt_gt": [
                37
            ],
            "createdAt_gte": [
                37
            ],
            "createdBy": [
                128
            ],
            "updatedAt": [
                37
            ],
            "updatedAt_not": [
                37
            ],
            "updatedAt_in": [
                37
            ],
            "updatedAt_not_in": [
                37
            ],
            "updatedAt_lt": [
                37
            ],
            "updatedAt_lte": [
                37
            ],
            "updatedAt_gt": [
                37
            ],
            "updatedAt_gte": [
                37
            ],
            "updatedBy": [
                128
            ],
            "publishedAt": [
                37
            ],
            "publishedAt_not": [
                37
            ],
            "publishedAt_in": [
                37
            ],
            "publishedAt_not_in": [
                37
            ],
            "publishedAt_lt": [
                37
            ],
            "publishedAt_lte": [
                37
            ],
            "publishedAt_gt": [
                37
            ],
            "publishedAt_gte": [
                37
            ],
            "publishedBy": [
                128
            ],
            "slug": [
                114
            ],
            "slug_not": [
                114
            ],
            "slug_in": [
                114
            ],
            "slug_not_in": [
                114
            ],
            "slug_contains": [
                114
            ],
            "slug_not_contains": [
                114
            ],
            "slug_starts_with": [
                114
            ],
            "slug_not_starts_with": [
                114
            ],
            "slug_ends_with": [
                114
            ],
            "slug_not_ends_with": [
                114
            ],
            "description": [
                114
            ],
            "description_not": [
                114
            ],
            "description_in": [
                114
            ],
            "description_not_in": [
                114
            ],
            "description_contains": [
                114
            ],
            "description_not_contains": [
                114
            ],
            "description_starts_with": [
                114
            ],
            "description_not_starts_with": [
                114
            ],
            "description_ends_with": [
                114
            ],
            "description_not_ends_with": [
                114
            ],
            "price": [
                48
            ],
            "price_not": [
                48
            ],
            "price_in": [
                48
            ],
            "price_not_in": [
                48
            ],
            "price_lt": [
                48
            ],
            "price_lte": [
                48
            ],
            "price_gt": [
                48
            ],
            "price_gte": [
                48
            ],
            "reviews_every": [
                109
            ],
            "reviews_some": [
                109
            ],
            "reviews_none": [
                109
            ],
            "votes_every": [
                149
            ],
            "votes_some": [
                149
            ],
            "votes_none": [
                149
            ],
            "image": [
                29
            ],
            "__typename": [
                114
            ]
        },
        "ProductOrderByInput": {},
        "ProductUpdateInput": {
            "name": [
                114
            ],
            "slug": [
                114
            ],
            "description": [
                114
            ],
            "price": [
                48
            ],
            "reviews": [
                102
            ],
            "votes": [
                142
            ],
            "image": [
                24
            ],
            "content": [
                112
            ],
            "localizations": [
                72
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpdateLocalizationDataInput": {
            "name": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpdateLocalizationInput": {
            "data": [
                70
            ],
            "locale": [
                50
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpdateLocalizationsInput": {
            "create": [
                62
            ],
            "update": [
                71
            ],
            "upsert": [
                82
            ],
            "delete": [
                50
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpdateManyInlineInput": {
            "create": [
                60
            ],
            "connect": [
                58
            ],
            "set": [
                85
            ],
            "update": [
                80
            ],
            "upsert": [
                83
            ],
            "disconnect": [
                85
            ],
            "delete": [
                85
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpdateManyInput": {
            "name": [
                114
            ],
            "description": [
                114
            ],
            "price": [
                48
            ],
            "content": [
                112
            ],
            "localizations": [
                77
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpdateManyLocalizationDataInput": {
            "name": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpdateManyLocalizationInput": {
            "data": [
                75
            ],
            "locale": [
                50
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpdateManyLocalizationsInput": {
            "update": [
                76
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpdateManyWithNestedWhereInput": {
            "where": [
                84
            ],
            "data": [
                74
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpdateOneInlineInput": {
            "create": [
                60
            ],
            "update": [
                80
            ],
            "upsert": [
                83
            ],
            "connect": [
                85
            ],
            "disconnect": [
                32
            ],
            "delete": [
                32
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpdateWithNestedWhereUniqueInput": {
            "where": [
                85
            ],
            "data": [
                69
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpsertInput": {
            "create": [
                60
            ],
            "update": [
                69
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpsertLocalizationInput": {
            "update": [
                70
            ],
            "create": [
                61
            ],
            "locale": [
                50
            ],
            "__typename": [
                114
            ]
        },
        "ProductUpsertWithNestedWhereUniqueInput": {
            "where": [
                85
            ],
            "data": [
                81
            ],
            "__typename": [
                114
            ]
        },
        "ProductWhereInput": {
            "_search": [
                114
            ],
            "AND": [
                84
            ],
            "OR": [
                84
            ],
            "NOT": [
                84
            ],
            "id": [
                44
            ],
            "id_not": [
                44
            ],
            "id_in": [
                44
            ],
            "id_not_in": [
                44
            ],
            "id_contains": [
                44
            ],
            "id_not_contains": [
                44
            ],
            "id_starts_with": [
                44
            ],
            "id_not_starts_with": [
                44
            ],
            "id_ends_with": [
                44
            ],
            "id_not_ends_with": [
                44
            ],
            "createdAt": [
                37
            ],
            "createdAt_not": [
                37
            ],
            "createdAt_in": [
                37
            ],
            "createdAt_not_in": [
                37
            ],
            "createdAt_lt": [
                37
            ],
            "createdAt_lte": [
                37
            ],
            "createdAt_gt": [
                37
            ],
            "createdAt_gte": [
                37
            ],
            "createdBy": [
                128
            ],
            "updatedAt": [
                37
            ],
            "updatedAt_not": [
                37
            ],
            "updatedAt_in": [
                37
            ],
            "updatedAt_not_in": [
                37
            ],
            "updatedAt_lt": [
                37
            ],
            "updatedAt_lte": [
                37
            ],
            "updatedAt_gt": [
                37
            ],
            "updatedAt_gte": [
                37
            ],
            "updatedBy": [
                128
            ],
            "publishedAt": [
                37
            ],
            "publishedAt_not": [
                37
            ],
            "publishedAt_in": [
                37
            ],
            "publishedAt_not_in": [
                37
            ],
            "publishedAt_lt": [
                37
            ],
            "publishedAt_lte": [
                37
            ],
            "publishedAt_gt": [
                37
            ],
            "publishedAt_gte": [
                37
            ],
            "publishedBy": [
                128
            ],
            "name": [
                114
            ],
            "name_not": [
                114
            ],
            "name_in": [
                114
            ],
            "name_not_in": [
                114
            ],
            "name_contains": [
                114
            ],
            "name_not_contains": [
                114
            ],
            "name_starts_with": [
                114
            ],
            "name_not_starts_with": [
                114
            ],
            "name_ends_with": [
                114
            ],
            "name_not_ends_with": [
                114
            ],
            "slug": [
                114
            ],
            "slug_not": [
                114
            ],
            "slug_in": [
                114
            ],
            "slug_not_in": [
                114
            ],
            "slug_contains": [
                114
            ],
            "slug_not_contains": [
                114
            ],
            "slug_starts_with": [
                114
            ],
            "slug_not_starts_with": [
                114
            ],
            "slug_ends_with": [
                114
            ],
            "slug_not_ends_with": [
                114
            ],
            "description": [
                114
            ],
            "description_not": [
                114
            ],
            "description_in": [
                114
            ],
            "description_not_in": [
                114
            ],
            "description_contains": [
                114
            ],
            "description_not_contains": [
                114
            ],
            "description_starts_with": [
                114
            ],
            "description_not_starts_with": [
                114
            ],
            "description_ends_with": [
                114
            ],
            "description_not_ends_with": [
                114
            ],
            "price": [
                48
            ],
            "price_not": [
                48
            ],
            "price_in": [
                48
            ],
            "price_not_in": [
                48
            ],
            "price_lt": [
                48
            ],
            "price_lte": [
                48
            ],
            "price_gt": [
                48
            ],
            "price_gte": [
                48
            ],
            "reviews_every": [
                109
            ],
            "reviews_some": [
                109
            ],
            "reviews_none": [
                109
            ],
            "votes_every": [
                149
            ],
            "votes_some": [
                149
            ],
            "votes_none": [
                149
            ],
            "image": [
                29
            ],
            "__typename": [
                114
            ]
        },
        "ProductWhereUniqueInput": {
            "id": [
                44
            ],
            "slug": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "PublishLocaleInput": {
            "locale": [
                50
            ],
            "stages": [
                113
            ],
            "__typename": [
                114
            ]
        },
        "Query": {
            "node": [
                55,
                {
                    "id": [
                        44,
                        "ID!"
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "assets": [
                1,
                {
                    "where": [
                        29
                    ],
                    "orderBy": [
                        12
                    ],
                    "skip": [
                        48
                    ],
                    "after": [
                        114
                    ],
                    "before": [
                        114
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "asset": [
                1,
                {
                    "where": [
                        30,
                        "AssetWhereUniqueInput!"
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "assetsConnection": [
                3,
                {
                    "where": [
                        29
                    ],
                    "orderBy": [
                        12
                    ],
                    "skip": [
                        48
                    ],
                    "after": [
                        114
                    ],
                    "before": [
                        114
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "assetVersion": [
                41,
                {
                    "where": [
                        131,
                        "VersionWhereInput!"
                    ]
                }
            ],
            "products": [
                57,
                {
                    "where": [
                        84
                    ],
                    "orderBy": [
                        68
                    ],
                    "skip": [
                        48
                    ],
                    "after": [
                        114
                    ],
                    "before": [
                        114
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "product": [
                57,
                {
                    "where": [
                        85,
                        "ProductWhereUniqueInput!"
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "productsConnection": [
                59,
                {
                    "where": [
                        84
                    ],
                    "orderBy": [
                        68
                    ],
                    "skip": [
                        48
                    ],
                    "after": [
                        114
                    ],
                    "before": [
                        114
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "productVersion": [
                41,
                {
                    "where": [
                        131,
                        "VersionWhereInput!"
                    ]
                }
            ],
            "reviews": [
                92,
                {
                    "where": [
                        109
                    ],
                    "orderBy": [
                        100
                    ],
                    "skip": [
                        48
                    ],
                    "after": [
                        114
                    ],
                    "before": [
                        114
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "review": [
                92,
                {
                    "where": [
                        110,
                        "ReviewWhereUniqueInput!"
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "reviewsConnection": [
                94,
                {
                    "where": [
                        109
                    ],
                    "orderBy": [
                        100
                    ],
                    "skip": [
                        48
                    ],
                    "after": [
                        114
                    ],
                    "before": [
                        114
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "reviewVersion": [
                41,
                {
                    "where": [
                        131,
                        "VersionWhereInput!"
                    ]
                }
            ],
            "users": [
                117,
                {
                    "where": [
                        128
                    ],
                    "orderBy": [
                        125
                    ],
                    "skip": [
                        48
                    ],
                    "after": [
                        114
                    ],
                    "before": [
                        114
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "user": [
                117,
                {
                    "where": [
                        129,
                        "UserWhereUniqueInput!"
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "usersConnection": [
                119,
                {
                    "where": [
                        128
                    ],
                    "orderBy": [
                        125
                    ],
                    "skip": [
                        48
                    ],
                    "after": [
                        114
                    ],
                    "before": [
                        114
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "votes": [
                132,
                {
                    "where": [
                        149
                    ],
                    "orderBy": [
                        140
                    ],
                    "skip": [
                        48
                    ],
                    "after": [
                        114
                    ],
                    "before": [
                        114
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "vote": [
                132,
                {
                    "where": [
                        150,
                        "VoteWhereUniqueInput!"
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "votesConnection": [
                134,
                {
                    "where": [
                        149
                    ],
                    "orderBy": [
                        140
                    ],
                    "skip": [
                        48
                    ],
                    "after": [
                        114
                    ],
                    "before": [
                        114
                    ],
                    "first": [
                        48
                    ],
                    "last": [
                        48
                    ],
                    "stage": [
                        113,
                        "Stage!"
                    ],
                    "locales": [
                        50,
                        "[Locale!]!"
                    ]
                }
            ],
            "voteVersion": [
                41,
                {
                    "where": [
                        131,
                        "VersionWhereInput!"
                    ]
                }
            ],
            "__typename": [
                114
            ]
        },
        "RGBA": {
            "r": [
                89
            ],
            "g": [
                89
            ],
            "b": [
                89
            ],
            "a": [
                91
            ],
            "__typename": [
                114
            ]
        },
        "RGBAHue": {},
        "RGBAInput": {
            "r": [
                89
            ],
            "g": [
                89
            ],
            "b": [
                89
            ],
            "a": [
                91
            ],
            "__typename": [
                114
            ]
        },
        "RGBATransparency": {},
        "Review": {
            "stage": [
                113
            ],
            "documentInStages": [
                92,
                {
                    "stages": [
                        113,
                        "[Stage!]!"
                    ],
                    "includeCurrent": [
                        32,
                        "Boolean!"
                    ],
                    "inheritLocale": [
                        32,
                        "Boolean!"
                    ]
                }
            ],
            "id": [
                44
            ],
            "createdAt": [
                37
            ],
            "createdBy": [
                117,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "updatedAt": [
                37
            ],
            "updatedBy": [
                117,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "publishedAt": [
                37
            ],
            "publishedBy": [
                117,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "name": [
                114
            ],
            "comment": [
                114
            ],
            "product": [
                57,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "history": [
                130,
                {
                    "limit": [
                        48,
                        "Int!"
                    ],
                    "skip": [
                        48,
                        "Int!"
                    ],
                    "stageOverride": [
                        113
                    ]
                }
            ],
            "__typename": [
                114
            ]
        },
        "ReviewConnectInput": {
            "where": [
                110
            ],
            "position": [
                35
            ],
            "__typename": [
                114
            ]
        },
        "ReviewConnection": {
            "pageInfo": [
                56
            ],
            "edges": [
                98
            ],
            "aggregate": [
                0
            ],
            "__typename": [
                114
            ]
        },
        "ReviewCreateInput": {
            "createdAt": [
                37
            ],
            "updatedAt": [
                37
            ],
            "name": [
                114
            ],
            "comment": [
                114
            ],
            "product": [
                65
            ],
            "__typename": [
                114
            ]
        },
        "ReviewCreateManyInlineInput": {
            "create": [
                95
            ],
            "connect": [
                110
            ],
            "__typename": [
                114
            ]
        },
        "ReviewCreateOneInlineInput": {
            "create": [
                95
            ],
            "connect": [
                110
            ],
            "__typename": [
                114
            ]
        },
        "ReviewEdge": {
            "node": [
                92
            ],
            "cursor": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "ReviewManyWhereInput": {
            "_search": [
                114
            ],
            "AND": [
                109
            ],
            "OR": [
                109
            ],
            "NOT": [
                109
            ],
            "id": [
                44
            ],
            "id_not": [
                44
            ],
            "id_in": [
                44
            ],
            "id_not_in": [
                44
            ],
            "id_contains": [
                44
            ],
            "id_not_contains": [
                44
            ],
            "id_starts_with": [
                44
            ],
            "id_not_starts_with": [
                44
            ],
            "id_ends_with": [
                44
            ],
            "id_not_ends_with": [
                44
            ],
            "createdAt": [
                37
            ],
            "createdAt_not": [
                37
            ],
            "createdAt_in": [
                37
            ],
            "createdAt_not_in": [
                37
            ],
            "createdAt_lt": [
                37
            ],
            "createdAt_lte": [
                37
            ],
            "createdAt_gt": [
                37
            ],
            "createdAt_gte": [
                37
            ],
            "createdBy": [
                128
            ],
            "updatedAt": [
                37
            ],
            "updatedAt_not": [
                37
            ],
            "updatedAt_in": [
                37
            ],
            "updatedAt_not_in": [
                37
            ],
            "updatedAt_lt": [
                37
            ],
            "updatedAt_lte": [
                37
            ],
            "updatedAt_gt": [
                37
            ],
            "updatedAt_gte": [
                37
            ],
            "updatedBy": [
                128
            ],
            "publishedAt": [
                37
            ],
            "publishedAt_not": [
                37
            ],
            "publishedAt_in": [
                37
            ],
            "publishedAt_not_in": [
                37
            ],
            "publishedAt_lt": [
                37
            ],
            "publishedAt_lte": [
                37
            ],
            "publishedAt_gt": [
                37
            ],
            "publishedAt_gte": [
                37
            ],
            "publishedBy": [
                128
            ],
            "name": [
                114
            ],
            "name_not": [
                114
            ],
            "name_in": [
                114
            ],
            "name_not_in": [
                114
            ],
            "name_contains": [
                114
            ],
            "name_not_contains": [
                114
            ],
            "name_starts_with": [
                114
            ],
            "name_not_starts_with": [
                114
            ],
            "name_ends_with": [
                114
            ],
            "name_not_ends_with": [
                114
            ],
            "comment": [
                114
            ],
            "comment_not": [
                114
            ],
            "comment_in": [
                114
            ],
            "comment_not_in": [
                114
            ],
            "comment_contains": [
                114
            ],
            "comment_not_contains": [
                114
            ],
            "comment_starts_with": [
                114
            ],
            "comment_not_starts_with": [
                114
            ],
            "comment_ends_with": [
                114
            ],
            "comment_not_ends_with": [
                114
            ],
            "product": [
                84
            ],
            "__typename": [
                114
            ]
        },
        "ReviewOrderByInput": {},
        "ReviewUpdateInput": {
            "name": [
                114
            ],
            "comment": [
                114
            ],
            "product": [
                79
            ],
            "__typename": [
                114
            ]
        },
        "ReviewUpdateManyInlineInput": {
            "create": [
                95
            ],
            "connect": [
                93
            ],
            "set": [
                110
            ],
            "update": [
                106
            ],
            "upsert": [
                108
            ],
            "disconnect": [
                110
            ],
            "delete": [
                110
            ],
            "__typename": [
                114
            ]
        },
        "ReviewUpdateManyInput": {
            "name": [
                114
            ],
            "comment": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "ReviewUpdateManyWithNestedWhereInput": {
            "where": [
                109
            ],
            "data": [
                103
            ],
            "__typename": [
                114
            ]
        },
        "ReviewUpdateOneInlineInput": {
            "create": [
                95
            ],
            "update": [
                106
            ],
            "upsert": [
                108
            ],
            "connect": [
                110
            ],
            "disconnect": [
                32
            ],
            "delete": [
                32
            ],
            "__typename": [
                114
            ]
        },
        "ReviewUpdateWithNestedWhereUniqueInput": {
            "where": [
                110
            ],
            "data": [
                101
            ],
            "__typename": [
                114
            ]
        },
        "ReviewUpsertInput": {
            "create": [
                95
            ],
            "update": [
                101
            ],
            "__typename": [
                114
            ]
        },
        "ReviewUpsertWithNestedWhereUniqueInput": {
            "where": [
                110
            ],
            "data": [
                107
            ],
            "__typename": [
                114
            ]
        },
        "ReviewWhereInput": {
            "_search": [
                114
            ],
            "AND": [
                109
            ],
            "OR": [
                109
            ],
            "NOT": [
                109
            ],
            "id": [
                44
            ],
            "id_not": [
                44
            ],
            "id_in": [
                44
            ],
            "id_not_in": [
                44
            ],
            "id_contains": [
                44
            ],
            "id_not_contains": [
                44
            ],
            "id_starts_with": [
                44
            ],
            "id_not_starts_with": [
                44
            ],
            "id_ends_with": [
                44
            ],
            "id_not_ends_with": [
                44
            ],
            "createdAt": [
                37
            ],
            "createdAt_not": [
                37
            ],
            "createdAt_in": [
                37
            ],
            "createdAt_not_in": [
                37
            ],
            "createdAt_lt": [
                37
            ],
            "createdAt_lte": [
                37
            ],
            "createdAt_gt": [
                37
            ],
            "createdAt_gte": [
                37
            ],
            "createdBy": [
                128
            ],
            "updatedAt": [
                37
            ],
            "updatedAt_not": [
                37
            ],
            "updatedAt_in": [
                37
            ],
            "updatedAt_not_in": [
                37
            ],
            "updatedAt_lt": [
                37
            ],
            "updatedAt_lte": [
                37
            ],
            "updatedAt_gt": [
                37
            ],
            "updatedAt_gte": [
                37
            ],
            "updatedBy": [
                128
            ],
            "publishedAt": [
                37
            ],
            "publishedAt_not": [
                37
            ],
            "publishedAt_in": [
                37
            ],
            "publishedAt_not_in": [
                37
            ],
            "publishedAt_lt": [
                37
            ],
            "publishedAt_lte": [
                37
            ],
            "publishedAt_gt": [
                37
            ],
            "publishedAt_gte": [
                37
            ],
            "publishedBy": [
                128
            ],
            "name": [
                114
            ],
            "name_not": [
                114
            ],
            "name_in": [
                114
            ],
            "name_not_in": [
                114
            ],
            "name_contains": [
                114
            ],
            "name_not_contains": [
                114
            ],
            "name_starts_with": [
                114
            ],
            "name_not_starts_with": [
                114
            ],
            "name_ends_with": [
                114
            ],
            "name_not_ends_with": [
                114
            ],
            "comment": [
                114
            ],
            "comment_not": [
                114
            ],
            "comment_in": [
                114
            ],
            "comment_not_in": [
                114
            ],
            "comment_contains": [
                114
            ],
            "comment_not_contains": [
                114
            ],
            "comment_starts_with": [
                114
            ],
            "comment_not_starts_with": [
                114
            ],
            "comment_ends_with": [
                114
            ],
            "comment_not_ends_with": [
                114
            ],
            "product": [
                84
            ],
            "__typename": [
                114
            ]
        },
        "ReviewWhereUniqueInput": {
            "id": [
                44
            ],
            "__typename": [
                114
            ]
        },
        "RichText": {
            "raw": [
                112
            ],
            "html": [
                114
            ],
            "markdown": [
                114
            ],
            "text": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "RichTextAST": {},
        "Stage": {},
        "String": {},
        "SystemDateTimeFieldVariation": {},
        "UnpublishLocaleInput": {
            "locale": [
                50
            ],
            "stages": [
                113
            ],
            "__typename": [
                114
            ]
        },
        "User": {
            "stage": [
                113
            ],
            "documentInStages": [
                117,
                {
                    "stages": [
                        113,
                        "[Stage!]!"
                    ],
                    "includeCurrent": [
                        32,
                        "Boolean!"
                    ],
                    "inheritLocale": [
                        32,
                        "Boolean!"
                    ]
                }
            ],
            "id": [
                44
            ],
            "createdAt": [
                37
            ],
            "updatedAt": [
                37
            ],
            "publishedAt": [
                37
            ],
            "name": [
                114
            ],
            "picture": [
                114
            ],
            "kind": [
                123
            ],
            "isActive": [
                32
            ],
            "__typename": [
                114
            ]
        },
        "UserConnectInput": {
            "where": [
                129
            ],
            "position": [
                35
            ],
            "__typename": [
                114
            ]
        },
        "UserConnection": {
            "pageInfo": [
                56
            ],
            "edges": [
                122
            ],
            "aggregate": [
                0
            ],
            "__typename": [
                114
            ]
        },
        "UserCreateManyInlineInput": {
            "connect": [
                129
            ],
            "__typename": [
                114
            ]
        },
        "UserCreateOneInlineInput": {
            "connect": [
                129
            ],
            "__typename": [
                114
            ]
        },
        "UserEdge": {
            "node": [
                117
            ],
            "cursor": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "UserKind": {},
        "UserManyWhereInput": {
            "_search": [
                114
            ],
            "AND": [
                128
            ],
            "OR": [
                128
            ],
            "NOT": [
                128
            ],
            "id": [
                44
            ],
            "id_not": [
                44
            ],
            "id_in": [
                44
            ],
            "id_not_in": [
                44
            ],
            "id_contains": [
                44
            ],
            "id_not_contains": [
                44
            ],
            "id_starts_with": [
                44
            ],
            "id_not_starts_with": [
                44
            ],
            "id_ends_with": [
                44
            ],
            "id_not_ends_with": [
                44
            ],
            "createdAt": [
                37
            ],
            "createdAt_not": [
                37
            ],
            "createdAt_in": [
                37
            ],
            "createdAt_not_in": [
                37
            ],
            "createdAt_lt": [
                37
            ],
            "createdAt_lte": [
                37
            ],
            "createdAt_gt": [
                37
            ],
            "createdAt_gte": [
                37
            ],
            "updatedAt": [
                37
            ],
            "updatedAt_not": [
                37
            ],
            "updatedAt_in": [
                37
            ],
            "updatedAt_not_in": [
                37
            ],
            "updatedAt_lt": [
                37
            ],
            "updatedAt_lte": [
                37
            ],
            "updatedAt_gt": [
                37
            ],
            "updatedAt_gte": [
                37
            ],
            "publishedAt": [
                37
            ],
            "publishedAt_not": [
                37
            ],
            "publishedAt_in": [
                37
            ],
            "publishedAt_not_in": [
                37
            ],
            "publishedAt_lt": [
                37
            ],
            "publishedAt_lte": [
                37
            ],
            "publishedAt_gt": [
                37
            ],
            "publishedAt_gte": [
                37
            ],
            "name": [
                114
            ],
            "name_not": [
                114
            ],
            "name_in": [
                114
            ],
            "name_not_in": [
                114
            ],
            "name_contains": [
                114
            ],
            "name_not_contains": [
                114
            ],
            "name_starts_with": [
                114
            ],
            "name_not_starts_with": [
                114
            ],
            "name_ends_with": [
                114
            ],
            "name_not_ends_with": [
                114
            ],
            "picture": [
                114
            ],
            "picture_not": [
                114
            ],
            "picture_in": [
                114
            ],
            "picture_not_in": [
                114
            ],
            "picture_contains": [
                114
            ],
            "picture_not_contains": [
                114
            ],
            "picture_starts_with": [
                114
            ],
            "picture_not_starts_with": [
                114
            ],
            "picture_ends_with": [
                114
            ],
            "picture_not_ends_with": [
                114
            ],
            "kind": [
                123
            ],
            "kind_not": [
                123
            ],
            "kind_in": [
                123
            ],
            "kind_not_in": [
                123
            ],
            "isActive": [
                32
            ],
            "isActive_not": [
                32
            ],
            "__typename": [
                114
            ]
        },
        "UserOrderByInput": {},
        "UserUpdateManyInlineInput": {
            "connect": [
                118
            ],
            "set": [
                129
            ],
            "disconnect": [
                129
            ],
            "__typename": [
                114
            ]
        },
        "UserUpdateOneInlineInput": {
            "connect": [
                129
            ],
            "disconnect": [
                32
            ],
            "__typename": [
                114
            ]
        },
        "UserWhereInput": {
            "_search": [
                114
            ],
            "AND": [
                128
            ],
            "OR": [
                128
            ],
            "NOT": [
                128
            ],
            "id": [
                44
            ],
            "id_not": [
                44
            ],
            "id_in": [
                44
            ],
            "id_not_in": [
                44
            ],
            "id_contains": [
                44
            ],
            "id_not_contains": [
                44
            ],
            "id_starts_with": [
                44
            ],
            "id_not_starts_with": [
                44
            ],
            "id_ends_with": [
                44
            ],
            "id_not_ends_with": [
                44
            ],
            "createdAt": [
                37
            ],
            "createdAt_not": [
                37
            ],
            "createdAt_in": [
                37
            ],
            "createdAt_not_in": [
                37
            ],
            "createdAt_lt": [
                37
            ],
            "createdAt_lte": [
                37
            ],
            "createdAt_gt": [
                37
            ],
            "createdAt_gte": [
                37
            ],
            "updatedAt": [
                37
            ],
            "updatedAt_not": [
                37
            ],
            "updatedAt_in": [
                37
            ],
            "updatedAt_not_in": [
                37
            ],
            "updatedAt_lt": [
                37
            ],
            "updatedAt_lte": [
                37
            ],
            "updatedAt_gt": [
                37
            ],
            "updatedAt_gte": [
                37
            ],
            "publishedAt": [
                37
            ],
            "publishedAt_not": [
                37
            ],
            "publishedAt_in": [
                37
            ],
            "publishedAt_not_in": [
                37
            ],
            "publishedAt_lt": [
                37
            ],
            "publishedAt_lte": [
                37
            ],
            "publishedAt_gt": [
                37
            ],
            "publishedAt_gte": [
                37
            ],
            "name": [
                114
            ],
            "name_not": [
                114
            ],
            "name_in": [
                114
            ],
            "name_not_in": [
                114
            ],
            "name_contains": [
                114
            ],
            "name_not_contains": [
                114
            ],
            "name_starts_with": [
                114
            ],
            "name_not_starts_with": [
                114
            ],
            "name_ends_with": [
                114
            ],
            "name_not_ends_with": [
                114
            ],
            "picture": [
                114
            ],
            "picture_not": [
                114
            ],
            "picture_in": [
                114
            ],
            "picture_not_in": [
                114
            ],
            "picture_contains": [
                114
            ],
            "picture_not_contains": [
                114
            ],
            "picture_starts_with": [
                114
            ],
            "picture_not_starts_with": [
                114
            ],
            "picture_ends_with": [
                114
            ],
            "picture_not_ends_with": [
                114
            ],
            "kind": [
                123
            ],
            "kind_not": [
                123
            ],
            "kind_in": [
                123
            ],
            "kind_not_in": [
                123
            ],
            "isActive": [
                32
            ],
            "isActive_not": [
                32
            ],
            "__typename": [
                114
            ]
        },
        "UserWhereUniqueInput": {
            "id": [
                44
            ],
            "__typename": [
                114
            ]
        },
        "Version": {
            "id": [
                44
            ],
            "stage": [
                113
            ],
            "revision": [
                48
            ],
            "createdAt": [
                37
            ],
            "__typename": [
                114
            ]
        },
        "VersionWhereInput": {
            "id": [
                44
            ],
            "stage": [
                113
            ],
            "revision": [
                48
            ],
            "__typename": [
                114
            ]
        },
        "Vote": {
            "stage": [
                113
            ],
            "documentInStages": [
                132,
                {
                    "stages": [
                        113,
                        "[Stage!]!"
                    ],
                    "includeCurrent": [
                        32,
                        "Boolean!"
                    ],
                    "inheritLocale": [
                        32,
                        "Boolean!"
                    ]
                }
            ],
            "id": [
                44
            ],
            "createdAt": [
                37
            ],
            "createdBy": [
                117,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "updatedAt": [
                37
            ],
            "updatedBy": [
                117,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "publishedAt": [
                37
            ],
            "publishedBy": [
                117,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "product": [
                57,
                {
                    "locales": [
                        50,
                        "[Locale!]"
                    ]
                }
            ],
            "history": [
                130,
                {
                    "limit": [
                        48,
                        "Int!"
                    ],
                    "skip": [
                        48,
                        "Int!"
                    ],
                    "stageOverride": [
                        113
                    ]
                }
            ],
            "__typename": [
                114
            ]
        },
        "VoteConnectInput": {
            "where": [
                150
            ],
            "position": [
                35
            ],
            "__typename": [
                114
            ]
        },
        "VoteConnection": {
            "pageInfo": [
                56
            ],
            "edges": [
                138
            ],
            "aggregate": [
                0
            ],
            "__typename": [
                114
            ]
        },
        "VoteCreateInput": {
            "createdAt": [
                37
            ],
            "updatedAt": [
                37
            ],
            "product": [
                65
            ],
            "__typename": [
                114
            ]
        },
        "VoteCreateManyInlineInput": {
            "create": [
                135
            ],
            "connect": [
                150
            ],
            "__typename": [
                114
            ]
        },
        "VoteCreateOneInlineInput": {
            "create": [
                135
            ],
            "connect": [
                150
            ],
            "__typename": [
                114
            ]
        },
        "VoteEdge": {
            "node": [
                132
            ],
            "cursor": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "VoteManyWhereInput": {
            "_search": [
                114
            ],
            "AND": [
                149
            ],
            "OR": [
                149
            ],
            "NOT": [
                149
            ],
            "id": [
                44
            ],
            "id_not": [
                44
            ],
            "id_in": [
                44
            ],
            "id_not_in": [
                44
            ],
            "id_contains": [
                44
            ],
            "id_not_contains": [
                44
            ],
            "id_starts_with": [
                44
            ],
            "id_not_starts_with": [
                44
            ],
            "id_ends_with": [
                44
            ],
            "id_not_ends_with": [
                44
            ],
            "createdAt": [
                37
            ],
            "createdAt_not": [
                37
            ],
            "createdAt_in": [
                37
            ],
            "createdAt_not_in": [
                37
            ],
            "createdAt_lt": [
                37
            ],
            "createdAt_lte": [
                37
            ],
            "createdAt_gt": [
                37
            ],
            "createdAt_gte": [
                37
            ],
            "createdBy": [
                128
            ],
            "updatedAt": [
                37
            ],
            "updatedAt_not": [
                37
            ],
            "updatedAt_in": [
                37
            ],
            "updatedAt_not_in": [
                37
            ],
            "updatedAt_lt": [
                37
            ],
            "updatedAt_lte": [
                37
            ],
            "updatedAt_gt": [
                37
            ],
            "updatedAt_gte": [
                37
            ],
            "updatedBy": [
                128
            ],
            "publishedAt": [
                37
            ],
            "publishedAt_not": [
                37
            ],
            "publishedAt_in": [
                37
            ],
            "publishedAt_not_in": [
                37
            ],
            "publishedAt_lt": [
                37
            ],
            "publishedAt_lte": [
                37
            ],
            "publishedAt_gt": [
                37
            ],
            "publishedAt_gte": [
                37
            ],
            "publishedBy": [
                128
            ],
            "product": [
                84
            ],
            "__typename": [
                114
            ]
        },
        "VoteOrderByInput": {},
        "VoteUpdateInput": {
            "product": [
                79
            ],
            "__typename": [
                114
            ]
        },
        "VoteUpdateManyInlineInput": {
            "create": [
                135
            ],
            "connect": [
                133
            ],
            "set": [
                150
            ],
            "update": [
                146
            ],
            "upsert": [
                148
            ],
            "disconnect": [
                150
            ],
            "delete": [
                150
            ],
            "__typename": [
                114
            ]
        },
        "VoteUpdateManyInput": {
            "_": [
                114
            ],
            "__typename": [
                114
            ]
        },
        "VoteUpdateManyWithNestedWhereInput": {
            "where": [
                149
            ],
            "data": [
                143
            ],
            "__typename": [
                114
            ]
        },
        "VoteUpdateOneInlineInput": {
            "create": [
                135
            ],
            "update": [
                146
            ],
            "upsert": [
                148
            ],
            "connect": [
                150
            ],
            "disconnect": [
                32
            ],
            "delete": [
                32
            ],
            "__typename": [
                114
            ]
        },
        "VoteUpdateWithNestedWhereUniqueInput": {
            "where": [
                150
            ],
            "data": [
                141
            ],
            "__typename": [
                114
            ]
        },
        "VoteUpsertInput": {
            "create": [
                135
            ],
            "update": [
                141
            ],
            "__typename": [
                114
            ]
        },
        "VoteUpsertWithNestedWhereUniqueInput": {
            "where": [
                150
            ],
            "data": [
                147
            ],
            "__typename": [
                114
            ]
        },
        "VoteWhereInput": {
            "_search": [
                114
            ],
            "AND": [
                149
            ],
            "OR": [
                149
            ],
            "NOT": [
                149
            ],
            "id": [
                44
            ],
            "id_not": [
                44
            ],
            "id_in": [
                44
            ],
            "id_not_in": [
                44
            ],
            "id_contains": [
                44
            ],
            "id_not_contains": [
                44
            ],
            "id_starts_with": [
                44
            ],
            "id_not_starts_with": [
                44
            ],
            "id_ends_with": [
                44
            ],
            "id_not_ends_with": [
                44
            ],
            "createdAt": [
                37
            ],
            "createdAt_not": [
                37
            ],
            "createdAt_in": [
                37
            ],
            "createdAt_not_in": [
                37
            ],
            "createdAt_lt": [
                37
            ],
            "createdAt_lte": [
                37
            ],
            "createdAt_gt": [
                37
            ],
            "createdAt_gte": [
                37
            ],
            "createdBy": [
                128
            ],
            "updatedAt": [
                37
            ],
            "updatedAt_not": [
                37
            ],
            "updatedAt_in": [
                37
            ],
            "updatedAt_not_in": [
                37
            ],
            "updatedAt_lt": [
                37
            ],
            "updatedAt_lte": [
                37
            ],
            "updatedAt_gt": [
                37
            ],
            "updatedAt_gte": [
                37
            ],
            "updatedBy": [
                128
            ],
            "publishedAt": [
                37
            ],
            "publishedAt_not": [
                37
            ],
            "publishedAt_in": [
                37
            ],
            "publishedAt_not_in": [
                37
            ],
            "publishedAt_lt": [
                37
            ],
            "publishedAt_lte": [
                37
            ],
            "publishedAt_gt": [
                37
            ],
            "publishedAt_gte": [
                37
            ],
            "publishedBy": [
                128
            ],
            "product": [
                84
            ],
            "__typename": [
                114
            ]
        },
        "VoteWhereUniqueInput": {
            "id": [
                44
            ],
            "__typename": [
                114
            ]
        },
        "_FilterKind": {},
        "_MutationInputFieldKind": {},
        "_MutationKind": {},
        "_OrderDirection": {},
        "_RelationInputCardinality": {},
        "_RelationInputKind": {},
        "_RelationKind": {},
        "_SystemDateTimeFieldVariation": {}
    }
}