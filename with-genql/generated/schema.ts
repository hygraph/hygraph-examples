import {FieldsSelection,Observable} from '@genql/runtime'

export type Scalars = {
    Boolean: boolean,
    Date: any,
    DateTime: any,
    Float: number,
    Hex: any,
    ID: string,
    Int: number,
    Json: any,
    Long: any,
    RGBAHue: any,
    RGBATransparency: any,
    RichTextAST: any,
    String: string,
}

export interface Aggregate {
    count: Scalars['Int']
    __typename: 'Aggregate'
}


/** Asset system model */
export interface Asset {
    /** System stage field */
    stage: Stage
    /** System Locale field */
    locale: Locale
    /** Get the other localizations for this document */
    localizations: Asset[]
    /** Get the document in other stages */
    documentInStages: Asset[]
    /** The unique identifier */
    id: Scalars['ID']
    /** The time the document was created */
    createdAt: Scalars['DateTime']
    /** User that created this document */
    createdBy?: User
    /** The time the document was updated */
    updatedAt: Scalars['DateTime']
    /** User that last updated this document */
    updatedBy?: User
    /** The time the document was published. Null on documents in draft stage. */
    publishedAt?: Scalars['DateTime']
    /** User that last published this document */
    publishedBy?: User
    /** The file handle */
    handle: Scalars['String']
    /** The file name */
    fileName: Scalars['String']
    /** The height of the file */
    height?: Scalars['Float']
    /** The file width */
    width?: Scalars['Float']
    /** The file size */
    size?: Scalars['Float']
    /** The mime type of the file */
    mimeType?: Scalars['String']
    productImage: Product[]
    /** List of Asset versions */
    history: Version[]
    /** Get the url for the asset with provided transformations applied. */
    url: Scalars['String']
    __typename: 'Asset'
}


/** A connection to a list of items. */
export interface AssetConnection {
    /** Information to aid in pagination. */
    pageInfo: PageInfo
    /** A list of edges. */
    edges: AssetEdge[]
    aggregate: Aggregate
    __typename: 'AssetConnection'
}


/** An edge in a connection. */
export interface AssetEdge {
    /** The item at the end of the edge. */
    node: Asset
    /** A cursor for use in pagination. */
    cursor: Scalars['String']
    __typename: 'AssetEdge'
}

export type AssetOrderByInput = 'id_ASC' | 'id_DESC' | 'createdAt_ASC' | 'createdAt_DESC' | 'updatedAt_ASC' | 'updatedAt_DESC' | 'publishedAt_ASC' | 'publishedAt_DESC' | 'handle_ASC' | 'handle_DESC' | 'fileName_ASC' | 'fileName_DESC' | 'height_ASC' | 'height_DESC' | 'width_ASC' | 'width_DESC' | 'size_ASC' | 'size_DESC' | 'mimeType_ASC' | 'mimeType_DESC'

export interface BatchPayload {
    /** The number of nodes that have been affected by the Batch operation. */
    count: Scalars['Long']
    __typename: 'BatchPayload'
}


/** Representing a color value comprising of HEX, RGBA and css color values */
export interface Color {
    hex: Scalars['Hex']
    rgba: RGBA
    css: Scalars['String']
    __typename: 'Color'
}

export type DocumentFileTypes = 'jpg' | 'odp' | 'ods' | 'odt' | 'png' | 'svg' | 'txt' | 'webp' | 'docx' | 'pdf' | 'html' | 'doc' | 'xlsx' | 'xls' | 'pptx' | 'ppt'

export interface DocumentVersion {
    id: Scalars['ID']
    stage: Stage
    revision: Scalars['Int']
    createdAt: Scalars['DateTime']
    data?: Scalars['Json']
    __typename: 'DocumentVersion'
}

export type ImageFit = 'clip' | 'crop' | 'scale' | 'max'


/** Locale system enumeration */
export type Locale = 'en' | 'de'


/** Representing a geolocation point with latitude and longitude */
export interface Location {
    latitude: Scalars['Float']
    longitude: Scalars['Float']
    distance: Scalars['Float']
    __typename: 'Location'
}

export interface Mutation {
    /**
     * @deprecated Asset mutations will be overhauled soon
     * Create one asset
     */
    createAsset?: Asset
    /** Update one asset */
    updateAsset?: Asset
    /** Delete one asset from _all_ existing stages. Returns deleted document. */
    deleteAsset?: Asset
    /** Upsert one asset */
    upsertAsset?: Asset
    /** Publish one asset */
    publishAsset?: Asset
    /** Unpublish one asset from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
    unpublishAsset?: Asset
    /** Update many Asset documents */
    updateManyAssetsConnection: AssetConnection
    /** Delete many Asset documents, return deleted documents */
    deleteManyAssetsConnection: AssetConnection
    /** Publish many Asset documents */
    publishManyAssetsConnection: AssetConnection
    /** Find many Asset documents that match criteria in specified stage and unpublish from target stages */
    unpublishManyAssetsConnection: AssetConnection
    /**
     * @deprecated Please use the new paginated many mutation (updateManyAssetsConnection)
     * Update many assets
     */
    updateManyAssets: BatchPayload
    /**
     * @deprecated Please use the new paginated many mutation (deleteManyAssetsConnection)
     * Delete many Asset documents
     */
    deleteManyAssets: BatchPayload
    /**
     * @deprecated Please use the new paginated many mutation (publishManyAssetsConnection)
     * Publish many Asset documents
     */
    publishManyAssets: BatchPayload
    /**
     * @deprecated Please use the new paginated many mutation (unpublishManyAssetsConnection)
     * Unpublish many Asset documents
     */
    unpublishManyAssets: BatchPayload
    /** Create one product */
    createProduct?: Product
    /** Update one product */
    updateProduct?: Product
    /** Delete one product from _all_ existing stages. Returns deleted document. */
    deleteProduct?: Product
    /** Upsert one product */
    upsertProduct?: Product
    /** Publish one product */
    publishProduct?: Product
    /** Unpublish one product from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
    unpublishProduct?: Product
    /** Update many Product documents */
    updateManyProductsConnection: ProductConnection
    /** Delete many Product documents, return deleted documents */
    deleteManyProductsConnection: ProductConnection
    /** Publish many Product documents */
    publishManyProductsConnection: ProductConnection
    /** Find many Product documents that match criteria in specified stage and unpublish from target stages */
    unpublishManyProductsConnection: ProductConnection
    /**
     * @deprecated Please use the new paginated many mutation (updateManyProductsConnection)
     * Update many products
     */
    updateManyProducts: BatchPayload
    /**
     * @deprecated Please use the new paginated many mutation (deleteManyProductsConnection)
     * Delete many Product documents
     */
    deleteManyProducts: BatchPayload
    /**
     * @deprecated Please use the new paginated many mutation (publishManyProductsConnection)
     * Publish many Product documents
     */
    publishManyProducts: BatchPayload
    /**
     * @deprecated Please use the new paginated many mutation (unpublishManyProductsConnection)
     * Unpublish many Product documents
     */
    unpublishManyProducts: BatchPayload
    /** Create one review */
    createReview?: Review
    /** Update one review */
    updateReview?: Review
    /** Delete one review from _all_ existing stages. Returns deleted document. */
    deleteReview?: Review
    /** Upsert one review */
    upsertReview?: Review
    /** Publish one review */
    publishReview?: Review
    /** Unpublish one review from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
    unpublishReview?: Review
    /** Update many Review documents */
    updateManyReviewsConnection: ReviewConnection
    /** Delete many Review documents, return deleted documents */
    deleteManyReviewsConnection: ReviewConnection
    /** Publish many Review documents */
    publishManyReviewsConnection: ReviewConnection
    /** Find many Review documents that match criteria in specified stage and unpublish from target stages */
    unpublishManyReviewsConnection: ReviewConnection
    /**
     * @deprecated Please use the new paginated many mutation (updateManyReviewsConnection)
     * Update many reviews
     */
    updateManyReviews: BatchPayload
    /**
     * @deprecated Please use the new paginated many mutation (deleteManyReviewsConnection)
     * Delete many Review documents
     */
    deleteManyReviews: BatchPayload
    /**
     * @deprecated Please use the new paginated many mutation (publishManyReviewsConnection)
     * Publish many Review documents
     */
    publishManyReviews: BatchPayload
    /**
     * @deprecated Please use the new paginated many mutation (unpublishManyReviewsConnection)
     * Unpublish many Review documents
     */
    unpublishManyReviews: BatchPayload
    /** Create one vote */
    createVote?: Vote
    /** Update one vote */
    updateVote?: Vote
    /** Delete one vote from _all_ existing stages. Returns deleted document. */
    deleteVote?: Vote
    /** Upsert one vote */
    upsertVote?: Vote
    /** Publish one vote */
    publishVote?: Vote
    /** Unpublish one vote from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
    unpublishVote?: Vote
    /** Update many Vote documents */
    updateManyVotesConnection: VoteConnection
    /** Delete many Vote documents, return deleted documents */
    deleteManyVotesConnection: VoteConnection
    /** Publish many Vote documents */
    publishManyVotesConnection: VoteConnection
    /** Find many Vote documents that match criteria in specified stage and unpublish from target stages */
    unpublishManyVotesConnection: VoteConnection
    /**
     * @deprecated Please use the new paginated many mutation (updateManyVotesConnection)
     * Update many votes
     */
    updateManyVotes: BatchPayload
    /**
     * @deprecated Please use the new paginated many mutation (deleteManyVotesConnection)
     * Delete many Vote documents
     */
    deleteManyVotes: BatchPayload
    /**
     * @deprecated Please use the new paginated many mutation (publishManyVotesConnection)
     * Publish many Vote documents
     */
    publishManyVotes: BatchPayload
    /**
     * @deprecated Please use the new paginated many mutation (unpublishManyVotesConnection)
     * Unpublish many Vote documents
     */
    unpublishManyVotes: BatchPayload
    __typename: 'Mutation'
}


/** An object with an ID */
export type Node = (Asset | Product | Review | User | Vote) & { __isUnion?: true }


/** Information about pagination in a connection. */
export interface PageInfo {
    /** When paginating forwards, are there more items? */
    hasNextPage: Scalars['Boolean']
    /** When paginating backwards, are there more items? */
    hasPreviousPage: Scalars['Boolean']
    /** When paginating backwards, the cursor to continue. */
    startCursor?: Scalars['String']
    /** When paginating forwards, the cursor to continue. */
    endCursor?: Scalars['String']
    /** Number of items in the current page. */
    pageSize?: Scalars['Int']
    __typename: 'PageInfo'
}

export interface Product {
    /** System stage field */
    stage: Stage
    /** System Locale field */
    locale: Locale
    /** Get the other localizations for this document */
    localizations: Product[]
    /** Get the document in other stages */
    documentInStages: Product[]
    /** The unique identifier */
    id: Scalars['ID']
    /** The time the document was created */
    createdAt: Scalars['DateTime']
    /** User that created this document */
    createdBy?: User
    /** The time the document was updated */
    updatedAt: Scalars['DateTime']
    /** User that last updated this document */
    updatedBy?: User
    /** The time the document was published. Null on documents in draft stage. */
    publishedAt?: Scalars['DateTime']
    /** User that last published this document */
    publishedBy?: User
    name: Scalars['String']
    slug: Scalars['String']
    description?: Scalars['String']
    price: Scalars['Int']
    reviews: Review[]
    votes: Vote[]
    image?: Asset
    content?: RichText
    /** List of Product versions */
    history: Version[]
    __typename: 'Product'
}


/** A connection to a list of items. */
export interface ProductConnection {
    /** Information to aid in pagination. */
    pageInfo: PageInfo
    /** A list of edges. */
    edges: ProductEdge[]
    aggregate: Aggregate
    __typename: 'ProductConnection'
}


/** An edge in a connection. */
export interface ProductEdge {
    /** The item at the end of the edge. */
    node: Product
    /** A cursor for use in pagination. */
    cursor: Scalars['String']
    __typename: 'ProductEdge'
}

export type ProductOrderByInput = 'id_ASC' | 'id_DESC' | 'createdAt_ASC' | 'createdAt_DESC' | 'updatedAt_ASC' | 'updatedAt_DESC' | 'publishedAt_ASC' | 'publishedAt_DESC' | 'name_ASC' | 'name_DESC' | 'slug_ASC' | 'slug_DESC' | 'description_ASC' | 'description_DESC' | 'price_ASC' | 'price_DESC'

export interface Query {
    /** Fetches an object given its ID */
    node?: Node
    /** Retrieve multiple assets */
    assets: Asset[]
    /** Retrieve a single asset */
    asset?: Asset
    /** Retrieve multiple assets using the Relay connection interface */
    assetsConnection: AssetConnection
    /** Retrieve document version */
    assetVersion?: DocumentVersion
    /** Retrieve multiple products */
    products: Product[]
    /** Retrieve a single product */
    product?: Product
    /** Retrieve multiple products using the Relay connection interface */
    productsConnection: ProductConnection
    /** Retrieve document version */
    productVersion?: DocumentVersion
    /** Retrieve multiple reviews */
    reviews: Review[]
    /** Retrieve a single review */
    review?: Review
    /** Retrieve multiple reviews using the Relay connection interface */
    reviewsConnection: ReviewConnection
    /** Retrieve document version */
    reviewVersion?: DocumentVersion
    /** Retrieve multiple users */
    users: User[]
    /** Retrieve a single user */
    user?: User
    /** Retrieve multiple users using the Relay connection interface */
    usersConnection: UserConnection
    /** Retrieve multiple votes */
    votes: Vote[]
    /** Retrieve a single vote */
    vote?: Vote
    /** Retrieve multiple votes using the Relay connection interface */
    votesConnection: VoteConnection
    /** Retrieve document version */
    voteVersion?: DocumentVersion
    __typename: 'Query'
}


/** Representing a RGBA color value: https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#rgb()_and_rgba() */
export interface RGBA {
    r: Scalars['RGBAHue']
    g: Scalars['RGBAHue']
    b: Scalars['RGBAHue']
    a: Scalars['RGBATransparency']
    __typename: 'RGBA'
}

export interface Review {
    /** System stage field */
    stage: Stage
    /** Get the document in other stages */
    documentInStages: Review[]
    /** The unique identifier */
    id: Scalars['ID']
    /** The time the document was created */
    createdAt: Scalars['DateTime']
    /** User that created this document */
    createdBy?: User
    /** The time the document was updated */
    updatedAt: Scalars['DateTime']
    /** User that last updated this document */
    updatedBy?: User
    /** The time the document was published. Null on documents in draft stage. */
    publishedAt?: Scalars['DateTime']
    /** User that last published this document */
    publishedBy?: User
    name?: Scalars['String']
    comment: Scalars['String']
    product?: Product
    /** List of Review versions */
    history: Version[]
    __typename: 'Review'
}


/** A connection to a list of items. */
export interface ReviewConnection {
    /** Information to aid in pagination. */
    pageInfo: PageInfo
    /** A list of edges. */
    edges: ReviewEdge[]
    aggregate: Aggregate
    __typename: 'ReviewConnection'
}


/** An edge in a connection. */
export interface ReviewEdge {
    /** The item at the end of the edge. */
    node: Review
    /** A cursor for use in pagination. */
    cursor: Scalars['String']
    __typename: 'ReviewEdge'
}

export type ReviewOrderByInput = 'id_ASC' | 'id_DESC' | 'createdAt_ASC' | 'createdAt_DESC' | 'updatedAt_ASC' | 'updatedAt_DESC' | 'publishedAt_ASC' | 'publishedAt_DESC' | 'name_ASC' | 'name_DESC' | 'comment_ASC' | 'comment_DESC'


/** Custom type representing a rich text value comprising of raw rich text ast, html, markdown and text values */
export interface RichText {
    /** Returns AST representation */
    raw: Scalars['RichTextAST']
    /** Returns HTMl representation */
    html: Scalars['String']
    /** Returns Markdown representation */
    markdown: Scalars['String']
    /** Returns plain-text contents of RichText */
    text: Scalars['String']
    __typename: 'RichText'
}


/** Stage system enumeration */
export type Stage = 'PUBLISHED' | 'DRAFT'

export type SystemDateTimeFieldVariation = 'BASE' | 'LOCALIZATION' | 'COMBINED'


/** User system model */
export interface User {
    /** System stage field */
    stage: Stage
    /** Get the document in other stages */
    documentInStages: User[]
    /** The unique identifier */
    id: Scalars['ID']
    /** The time the document was created */
    createdAt: Scalars['DateTime']
    /** The time the document was updated */
    updatedAt: Scalars['DateTime']
    /** The time the document was published. Null on documents in draft stage. */
    publishedAt?: Scalars['DateTime']
    /** The username */
    name: Scalars['String']
    /** Profile Picture url */
    picture?: Scalars['String']
    /** User Kind. Can be either MEMBER, PAT or PUBLIC */
    kind: UserKind
    /** Flag to determine if user is active or not */
    isActive: Scalars['Boolean']
    __typename: 'User'
}


/** A connection to a list of items. */
export interface UserConnection {
    /** Information to aid in pagination. */
    pageInfo: PageInfo
    /** A list of edges. */
    edges: UserEdge[]
    aggregate: Aggregate
    __typename: 'UserConnection'
}


/** An edge in a connection. */
export interface UserEdge {
    /** The item at the end of the edge. */
    node: User
    /** A cursor for use in pagination. */
    cursor: Scalars['String']
    __typename: 'UserEdge'
}


/** System User Kind */
export type UserKind = 'MEMBER' | 'PAT' | 'PUBLIC' | 'WEBHOOK'

export type UserOrderByInput = 'id_ASC' | 'id_DESC' | 'createdAt_ASC' | 'createdAt_DESC' | 'updatedAt_ASC' | 'updatedAt_DESC' | 'publishedAt_ASC' | 'publishedAt_DESC' | 'name_ASC' | 'name_DESC' | 'picture_ASC' | 'picture_DESC' | 'kind_ASC' | 'kind_DESC' | 'isActive_ASC' | 'isActive_DESC'

export interface Version {
    id: Scalars['ID']
    stage: Stage
    revision: Scalars['Int']
    createdAt: Scalars['DateTime']
    __typename: 'Version'
}

export interface Vote {
    /** System stage field */
    stage: Stage
    /** Get the document in other stages */
    documentInStages: Vote[]
    /** The unique identifier */
    id: Scalars['ID']
    /** The time the document was created */
    createdAt: Scalars['DateTime']
    /** User that created this document */
    createdBy?: User
    /** The time the document was updated */
    updatedAt: Scalars['DateTime']
    /** User that last updated this document */
    updatedBy?: User
    /** The time the document was published. Null on documents in draft stage. */
    publishedAt?: Scalars['DateTime']
    /** User that last published this document */
    publishedBy?: User
    product?: Product
    /** List of Vote versions */
    history: Version[]
    __typename: 'Vote'
}


/** A connection to a list of items. */
export interface VoteConnection {
    /** Information to aid in pagination. */
    pageInfo: PageInfo
    /** A list of edges. */
    edges: VoteEdge[]
    aggregate: Aggregate
    __typename: 'VoteConnection'
}


/** An edge in a connection. */
export interface VoteEdge {
    /** The item at the end of the edge. */
    node: Vote
    /** A cursor for use in pagination. */
    cursor: Scalars['String']
    __typename: 'VoteEdge'
}

export type VoteOrderByInput = 'id_ASC' | 'id_DESC' | 'createdAt_ASC' | 'createdAt_DESC' | 'updatedAt_ASC' | 'updatedAt_DESC' | 'publishedAt_ASC' | 'publishedAt_DESC'

export type _FilterKind = 'search' | 'AND' | 'OR' | 'NOT' | 'eq' | 'eq_not' | 'in' | 'not_in' | 'lt' | 'lte' | 'gt' | 'gte' | 'contains' | 'not_contains' | 'starts_with' | 'not_starts_with' | 'ends_with' | 'not_ends_with' | 'contains_all' | 'contains_some' | 'contains_none' | 'relational_single' | 'relational_every' | 'relational_some' | 'relational_none'

export type _MutationInputFieldKind = 'scalar' | 'richText' | 'richTextWithEmbeds' | 'enum' | 'relation' | 'union' | 'virtual'

export type _MutationKind = 'create' | 'publish' | 'unpublish' | 'update' | 'upsert' | 'delete' | 'updateMany' | 'publishMany' | 'unpublishMany' | 'deleteMany'

export type _OrderDirection = 'asc' | 'desc'

export type _RelationInputCardinality = 'one' | 'many'

export type _RelationInputKind = 'create' | 'update'

export type _RelationKind = 'regular' | 'union'

export type _SystemDateTimeFieldVariation = 'base' | 'localization' | 'combined'

export interface AggregateRequest{
    count?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}


/** Asset system model */
export interface AssetRequest{
    /** System stage field */
    stage?: boolean | number
    /** System Locale field */
    locale?: boolean | number
    /** Get the other localizations for this document */
    localizations?: [{
    /** Potential locales that should be returned */
    locales: Locale[],
    /** Decides if the current locale should be included or not */
    includeCurrent: Scalars['Boolean']},AssetRequest]
    /** Get the document in other stages */
    documentInStages?: [{
    /** Potential stages that should be returned */
    stages: Stage[],
    /** Decides if the current stage should be included or not */
    includeCurrent: Scalars['Boolean'],
    /** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
    inheritLocale: Scalars['Boolean']},AssetRequest]
    /** The unique identifier */
    id?: boolean | number
    /** The time the document was created */
    createdAt?: [{
    /** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
    variation: SystemDateTimeFieldVariation}]
    /** User that created this document */
    createdBy?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `createdBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},UserRequest] | UserRequest
    /** The time the document was updated */
    updatedAt?: [{
    /** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
    variation: SystemDateTimeFieldVariation}]
    /** User that last updated this document */
    updatedBy?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `updatedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},UserRequest] | UserRequest
    /** The time the document was published. Null on documents in draft stage. */
    publishedAt?: [{
    /** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
    variation: SystemDateTimeFieldVariation}]
    /** User that last published this document */
    publishedBy?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `publishedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},UserRequest] | UserRequest
    /** The file handle */
    handle?: boolean | number
    /** The file name */
    fileName?: boolean | number
    /** The height of the file */
    height?: boolean | number
    /** The file width */
    width?: boolean | number
    /** The file size */
    size?: boolean | number
    /** The mime type of the file */
    mimeType?: boolean | number
    productImage?: [{where?: (ProductWhereInput | null),orderBy?: (ProductOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `productImage` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},ProductRequest] | ProductRequest
    /** List of Asset versions */
    history?: [{limit: Scalars['Int'],skip: Scalars['Int'],
    /** This is optional and can be used to fetch the document version history for a specific stage instead of the current one */
    stageOverride?: (Stage | null)},VersionRequest]
    /** Get the url for the asset with provided transformations applied. */
    url?: [{transformation?: (AssetTransformationInput | null)}] | boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface AssetConnectInput {
/** Document to connect */
where: AssetWhereUniqueInput,
/** Allow to specify document position in list of connected documents, will default to appending at end of list */
position?: (ConnectPositionInput | null)}


/** A connection to a list of items. */
export interface AssetConnectionRequest{
    /** Information to aid in pagination. */
    pageInfo?: PageInfoRequest
    /** A list of edges. */
    edges?: AssetEdgeRequest
    aggregate?: AggregateRequest
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface AssetCreateInput {createdAt?: (Scalars['DateTime'] | null),updatedAt?: (Scalars['DateTime'] | null),handle: Scalars['String'],fileName: Scalars['String'],height?: (Scalars['Float'] | null),width?: (Scalars['Float'] | null),size?: (Scalars['Float'] | null),mimeType?: (Scalars['String'] | null),productImage?: (ProductCreateManyInlineInput | null),
/** Inline mutations for managing document localizations excluding the default locale */
localizations?: (AssetCreateLocalizationsInput | null)}

export interface AssetCreateLocalizationDataInput {createdAt?: (Scalars['DateTime'] | null),updatedAt?: (Scalars['DateTime'] | null),handle: Scalars['String'],fileName: Scalars['String'],height?: (Scalars['Float'] | null),width?: (Scalars['Float'] | null),size?: (Scalars['Float'] | null),mimeType?: (Scalars['String'] | null)}

export interface AssetCreateLocalizationInput {
/** Localization input */
data: AssetCreateLocalizationDataInput,locale: Locale}

export interface AssetCreateLocalizationsInput {
/** Create localizations for the newly-created document */
create?: (AssetCreateLocalizationInput[] | null)}

export interface AssetCreateManyInlineInput {
/** Create and connect multiple existing Asset documents */
create?: (AssetCreateInput[] | null),
/** Connect multiple existing Asset documents */
connect?: (AssetWhereUniqueInput[] | null)}

export interface AssetCreateOneInlineInput {
/** Create and connect one Asset document */
create?: (AssetCreateInput | null),
/** Connect one existing Asset document */
connect?: (AssetWhereUniqueInput | null)}


/** An edge in a connection. */
export interface AssetEdgeRequest{
    /** The item at the end of the edge. */
    node?: AssetRequest
    /** A cursor for use in pagination. */
    cursor?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}


/** Identifies documents */
export interface AssetManyWhereInput {
/** Contains search across all appropriate fields. */
_search?: (Scalars['String'] | null),
/** Logical AND on all given filters. */
AND?: (AssetWhereInput[] | null),
/** Logical OR on all given filters. */
OR?: (AssetWhereInput[] | null),
/** Logical NOT on all given filters combined by AND. */
NOT?: (AssetWhereInput[] | null),id?: (Scalars['ID'] | null),
/** All values that are not equal to given value. */
id_not?: (Scalars['ID'] | null),
/** All values that are contained in given list. */
id_in?: (Scalars['ID'][] | null),
/** All values that are not contained in given list. */
id_not_in?: (Scalars['ID'][] | null),
/** All values containing the given string. */
id_contains?: (Scalars['ID'] | null),
/** All values not containing the given string. */
id_not_contains?: (Scalars['ID'] | null),
/** All values starting with the given string. */
id_starts_with?: (Scalars['ID'] | null),
/** All values not starting with the given string. */
id_not_starts_with?: (Scalars['ID'] | null),
/** All values ending with the given string. */
id_ends_with?: (Scalars['ID'] | null),
/** All values not ending with the given string */
id_not_ends_with?: (Scalars['ID'] | null),createdAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
createdAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
createdAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
createdAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
createdAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
createdAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
createdAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
createdAt_gte?: (Scalars['DateTime'] | null),createdBy?: (UserWhereInput | null),updatedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
updatedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
updatedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
updatedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
updatedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
updatedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
updatedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
updatedAt_gte?: (Scalars['DateTime'] | null),updatedBy?: (UserWhereInput | null),publishedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
publishedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
publishedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
publishedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
publishedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
publishedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
publishedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
publishedAt_gte?: (Scalars['DateTime'] | null),publishedBy?: (UserWhereInput | null),productImage_every?: (ProductWhereInput | null),productImage_some?: (ProductWhereInput | null),productImage_none?: (ProductWhereInput | null)}


/** Transformations for Assets */
export interface AssetTransformationInput {image?: (ImageTransformationInput | null),document?: (DocumentTransformationInput | null),
/** Pass true if you want to validate the passed transformation parameters */
validateOptions?: (Scalars['Boolean'] | null)}

export interface AssetUpdateInput {handle?: (Scalars['String'] | null),fileName?: (Scalars['String'] | null),height?: (Scalars['Float'] | null),width?: (Scalars['Float'] | null),size?: (Scalars['Float'] | null),mimeType?: (Scalars['String'] | null),productImage?: (ProductUpdateManyInlineInput | null),
/** Manage document localizations */
localizations?: (AssetUpdateLocalizationsInput | null)}

export interface AssetUpdateLocalizationDataInput {handle?: (Scalars['String'] | null),fileName?: (Scalars['String'] | null),height?: (Scalars['Float'] | null),width?: (Scalars['Float'] | null),size?: (Scalars['Float'] | null),mimeType?: (Scalars['String'] | null)}

export interface AssetUpdateLocalizationInput {data: AssetUpdateLocalizationDataInput,locale: Locale}

export interface AssetUpdateLocalizationsInput {
/** Localizations to create */
create?: (AssetCreateLocalizationInput[] | null),
/** Localizations to update */
update?: (AssetUpdateLocalizationInput[] | null),upsert?: (AssetUpsertLocalizationInput[] | null),
/** Localizations to delete */
delete?: (Locale[] | null)}

export interface AssetUpdateManyInlineInput {
/** Create and connect multiple Asset documents */
create?: (AssetCreateInput[] | null),
/** Connect multiple existing Asset documents */
connect?: (AssetConnectInput[] | null),
/** Override currently-connected documents with multiple existing Asset documents */
set?: (AssetWhereUniqueInput[] | null),
/** Update multiple Asset documents */
update?: (AssetUpdateWithNestedWhereUniqueInput[] | null),
/** Upsert multiple Asset documents */
upsert?: (AssetUpsertWithNestedWhereUniqueInput[] | null),
/** Disconnect multiple Asset documents */
disconnect?: (AssetWhereUniqueInput[] | null),
/** Delete multiple Asset documents */
delete?: (AssetWhereUniqueInput[] | null)}

export interface AssetUpdateManyInput {fileName?: (Scalars['String'] | null),height?: (Scalars['Float'] | null),width?: (Scalars['Float'] | null),size?: (Scalars['Float'] | null),mimeType?: (Scalars['String'] | null),
/** Optional updates to localizations */
localizations?: (AssetUpdateManyLocalizationsInput | null)}

export interface AssetUpdateManyLocalizationDataInput {fileName?: (Scalars['String'] | null),height?: (Scalars['Float'] | null),width?: (Scalars['Float'] | null),size?: (Scalars['Float'] | null),mimeType?: (Scalars['String'] | null)}

export interface AssetUpdateManyLocalizationInput {data: AssetUpdateManyLocalizationDataInput,locale: Locale}

export interface AssetUpdateManyLocalizationsInput {
/** Localizations to update */
update?: (AssetUpdateManyLocalizationInput[] | null)}

export interface AssetUpdateManyWithNestedWhereInput {
/** Document search */
where: AssetWhereInput,
/** Update many input */
data: AssetUpdateManyInput}

export interface AssetUpdateOneInlineInput {
/** Create and connect one Asset document */
create?: (AssetCreateInput | null),
/** Update single Asset document */
update?: (AssetUpdateWithNestedWhereUniqueInput | null),
/** Upsert single Asset document */
upsert?: (AssetUpsertWithNestedWhereUniqueInput | null),
/** Connect existing Asset document */
connect?: (AssetWhereUniqueInput | null),
/** Disconnect currently connected Asset document */
disconnect?: (Scalars['Boolean'] | null),
/** Delete currently connected Asset document */
delete?: (Scalars['Boolean'] | null)}

export interface AssetUpdateWithNestedWhereUniqueInput {
/** Unique document search */
where: AssetWhereUniqueInput,
/** Document to update */
data: AssetUpdateInput}

export interface AssetUpsertInput {
/** Create document if it didn't exist */
create: AssetCreateInput,
/** Update document if it exists */
update: AssetUpdateInput}

export interface AssetUpsertLocalizationInput {update: AssetUpdateLocalizationDataInput,create: AssetCreateLocalizationDataInput,locale: Locale}

export interface AssetUpsertWithNestedWhereUniqueInput {
/** Unique document search */
where: AssetWhereUniqueInput,
/** Upsert data */
data: AssetUpsertInput}


/** Identifies documents */
export interface AssetWhereInput {
/** Contains search across all appropriate fields. */
_search?: (Scalars['String'] | null),
/** Logical AND on all given filters. */
AND?: (AssetWhereInput[] | null),
/** Logical OR on all given filters. */
OR?: (AssetWhereInput[] | null),
/** Logical NOT on all given filters combined by AND. */
NOT?: (AssetWhereInput[] | null),id?: (Scalars['ID'] | null),
/** All values that are not equal to given value. */
id_not?: (Scalars['ID'] | null),
/** All values that are contained in given list. */
id_in?: (Scalars['ID'][] | null),
/** All values that are not contained in given list. */
id_not_in?: (Scalars['ID'][] | null),
/** All values containing the given string. */
id_contains?: (Scalars['ID'] | null),
/** All values not containing the given string. */
id_not_contains?: (Scalars['ID'] | null),
/** All values starting with the given string. */
id_starts_with?: (Scalars['ID'] | null),
/** All values not starting with the given string. */
id_not_starts_with?: (Scalars['ID'] | null),
/** All values ending with the given string. */
id_ends_with?: (Scalars['ID'] | null),
/** All values not ending with the given string */
id_not_ends_with?: (Scalars['ID'] | null),createdAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
createdAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
createdAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
createdAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
createdAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
createdAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
createdAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
createdAt_gte?: (Scalars['DateTime'] | null),createdBy?: (UserWhereInput | null),updatedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
updatedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
updatedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
updatedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
updatedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
updatedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
updatedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
updatedAt_gte?: (Scalars['DateTime'] | null),updatedBy?: (UserWhereInput | null),publishedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
publishedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
publishedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
publishedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
publishedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
publishedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
publishedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
publishedAt_gte?: (Scalars['DateTime'] | null),publishedBy?: (UserWhereInput | null),handle?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
handle_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
handle_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
handle_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
handle_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
handle_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
handle_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
handle_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
handle_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
handle_not_ends_with?: (Scalars['String'] | null),fileName?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
fileName_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
fileName_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
fileName_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
fileName_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
fileName_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
fileName_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
fileName_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
fileName_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
fileName_not_ends_with?: (Scalars['String'] | null),height?: (Scalars['Float'] | null),
/** All values that are not equal to given value. */
height_not?: (Scalars['Float'] | null),
/** All values that are contained in given list. */
height_in?: (Scalars['Float'][] | null),
/** All values that are not contained in given list. */
height_not_in?: (Scalars['Float'][] | null),
/** All values less than the given value. */
height_lt?: (Scalars['Float'] | null),
/** All values less than or equal the given value. */
height_lte?: (Scalars['Float'] | null),
/** All values greater than the given value. */
height_gt?: (Scalars['Float'] | null),
/** All values greater than or equal the given value. */
height_gte?: (Scalars['Float'] | null),width?: (Scalars['Float'] | null),
/** All values that are not equal to given value. */
width_not?: (Scalars['Float'] | null),
/** All values that are contained in given list. */
width_in?: (Scalars['Float'][] | null),
/** All values that are not contained in given list. */
width_not_in?: (Scalars['Float'][] | null),
/** All values less than the given value. */
width_lt?: (Scalars['Float'] | null),
/** All values less than or equal the given value. */
width_lte?: (Scalars['Float'] | null),
/** All values greater than the given value. */
width_gt?: (Scalars['Float'] | null),
/** All values greater than or equal the given value. */
width_gte?: (Scalars['Float'] | null),size?: (Scalars['Float'] | null),
/** All values that are not equal to given value. */
size_not?: (Scalars['Float'] | null),
/** All values that are contained in given list. */
size_in?: (Scalars['Float'][] | null),
/** All values that are not contained in given list. */
size_not_in?: (Scalars['Float'][] | null),
/** All values less than the given value. */
size_lt?: (Scalars['Float'] | null),
/** All values less than or equal the given value. */
size_lte?: (Scalars['Float'] | null),
/** All values greater than the given value. */
size_gt?: (Scalars['Float'] | null),
/** All values greater than or equal the given value. */
size_gte?: (Scalars['Float'] | null),mimeType?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
mimeType_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
mimeType_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
mimeType_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
mimeType_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
mimeType_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
mimeType_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
mimeType_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
mimeType_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
mimeType_not_ends_with?: (Scalars['String'] | null),productImage_every?: (ProductWhereInput | null),productImage_some?: (ProductWhereInput | null),productImage_none?: (ProductWhereInput | null)}


/** References Asset record uniquely */
export interface AssetWhereUniqueInput {id?: (Scalars['ID'] | null)}

export interface BatchPayloadRequest{
    /** The number of nodes that have been affected by the Batch operation. */
    count?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}


/** Representing a color value comprising of HEX, RGBA and css color values */
export interface ColorRequest{
    hex?: boolean | number
    rgba?: RGBARequest
    css?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}


/** Accepts either HEX or RGBA color value. At least one of hex or rgba value should be passed. If both are passed RGBA is used. */
export interface ColorInput {hex?: (Scalars['Hex'] | null),rgba?: (RGBAInput | null)}

export interface ConnectPositionInput {
/** Connect document after specified document */
after?: (Scalars['ID'] | null),
/** Connect document before specified document */
before?: (Scalars['ID'] | null),
/** Connect document at first position */
start?: (Scalars['Boolean'] | null),
/** Connect document at last position */
end?: (Scalars['Boolean'] | null)}

export interface DocumentOutputInput {
/**
 * Transforms a document into a desired file type.
 * See this matrix for format support:
 * 
 * PDF:	jpg, odp, ods, odt, png, svg, txt, and webp
 * DOC:	docx, html, jpg, odt, pdf, png, svg, txt, and webp
 * DOCX:	doc, html, jpg, odt, pdf, png, svg, txt, and webp
 * ODT:	doc, docx, html, jpg, pdf, png, svg, txt, and webp
 * XLS:	jpg, pdf, ods, png, svg, xlsx, and webp
 * XLSX:	jpg, pdf, ods, png, svg, xls, and webp
 * ODS:	jpg, pdf, png, xls, svg, xlsx, and webp
 * PPT:	jpg, odp, pdf, png, svg, pptx, and webp
 * PPTX:	jpg, odp, pdf, png, svg, ppt, and webp
 * ODP:	jpg, pdf, png, ppt, svg, pptx, and webp
 * BMP:	jpg, odp, ods, odt, pdf, png, svg, and webp
 * GIF:	jpg, odp, ods, odt, pdf, png, svg, and webp
 * JPG:	jpg, odp, ods, odt, pdf, png, svg, and webp
 * PNG:	jpg, odp, ods, odt, pdf, png, svg, and webp
 * WEBP:	jpg, odp, ods, odt, pdf, png, svg, and webp
 * TIFF:	jpg, odp, ods, odt, pdf, png, svg, and webp
 * AI:	    jpg, odp, ods, odt, pdf, png, svg, and webp
 * PSD:	jpg, odp, ods, odt, pdf, png, svg, and webp
 * SVG:	jpg, odp, ods, odt, pdf, png, and webp
 * HTML:	jpg, odt, pdf, svg, txt, and webp
 * TXT:	jpg, html, odt, pdf, svg, and webp
 */
format?: (DocumentFileTypes | null)}


/** Transformations for Documents */
export interface DocumentTransformationInput {
/** Changes the output for the file. */
output?: (DocumentOutputInput | null)}

export interface DocumentVersionRequest{
    id?: boolean | number
    stage?: boolean | number
    revision?: boolean | number
    createdAt?: boolean | number
    data?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface ImageResizeInput {
/** The width in pixels to resize the image to. The value must be an integer from 1 to 10000. */
width?: (Scalars['Int'] | null),
/** The height in pixels to resize the image to. The value must be an integer from 1 to 10000. */
height?: (Scalars['Int'] | null),
/** The default value for the fit parameter is fit:clip. */
fit?: (ImageFit | null)}


/** Transformations for Images */
export interface ImageTransformationInput {
/** Resizes the image */
resize?: (ImageResizeInput | null)}


/** Representing a geolocation point with latitude and longitude */
export interface LocationRequest{
    latitude?: boolean | number
    longitude?: boolean | number
    distance?: [{from: LocationInput}]
    __typename?: boolean | number
    __scalar?: boolean | number
}


/** Input for a geolocation point with latitude and longitude */
export interface LocationInput {latitude: Scalars['Float'],longitude: Scalars['Float']}

export interface MutationRequest{
    /**
     * @deprecated Asset mutations will be overhauled soon
     * Create one asset
     */
    createAsset?: [{data: AssetCreateInput},AssetRequest]
    /** Update one asset */
    updateAsset?: [{where: AssetWhereUniqueInput,data: AssetUpdateInput},AssetRequest]
    /** Delete one asset from _all_ existing stages. Returns deleted document. */
    deleteAsset?: [{
    /** Document to delete */
    where: AssetWhereUniqueInput},AssetRequest]
    /** Upsert one asset */
    upsertAsset?: [{where: AssetWhereUniqueInput,upsert: AssetUpsertInput},AssetRequest]
    /** Publish one asset */
    publishAsset?: [{
    /** Document to publish */
    where: AssetWhereUniqueInput,
    /** Optional localizations to publish */
    locales?: (Locale[] | null),
    /** Whether to publish the base document */
    publishBase?: (Scalars['Boolean'] | null),
    /** Whether to include the default locale when publishBase is set */
    withDefaultLocale?: (Scalars['Boolean'] | null),
    /** Publishing target stage */
    to: Stage[]},AssetRequest]
    /** Unpublish one asset from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
    unpublishAsset?: [{
    /** Document to unpublish */
    where: AssetWhereUniqueInput,
    /** Stages to unpublish document from */
    from: Stage[],
    /** Optional locales to unpublish. Unpublishing the default locale will completely remove the document from the selected stages */
    locales?: (Locale[] | null),
    /** Unpublish complete document including default localization and relations from stages. Can be disabled. */
    unpublishBase?: (Scalars['Boolean'] | null)},AssetRequest]
    /** Update many Asset documents */
    updateManyAssetsConnection?: [{
    /** Documents to apply update on */
    where?: (AssetManyWhereInput | null),
    /** Updates to document content */
    data: AssetUpdateManyInput,skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)},AssetConnectionRequest]
    /** Delete many Asset documents, return deleted documents */
    deleteManyAssetsConnection?: [{
    /** Documents to delete */
    where?: (AssetManyWhereInput | null),skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)},AssetConnectionRequest] | AssetConnectionRequest
    /** Publish many Asset documents */
    publishManyAssetsConnection?: [{
    /** Identifies documents in each stage to be published */
    where?: (AssetManyWhereInput | null),
    /** Stage to find matching documents in */
    from?: (Stage | null),
    /** Stages to publish documents to */
    to: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null),
    /** Document localizations to publish */
    locales?: (Locale[] | null),
    /** Whether to publish the base document */
    publishBase?: (Scalars['Boolean'] | null),
    /** Whether to include the default locale when publishBase is true */
    withDefaultLocale?: (Scalars['Boolean'] | null)},AssetConnectionRequest]
    /** Find many Asset documents that match criteria in specified stage and unpublish from target stages */
    unpublishManyAssetsConnection?: [{
    /** Identifies documents in draft stage */
    where?: (AssetManyWhereInput | null),
    /** Stage to find matching documents in */
    stage?: (Stage | null),
    /** Stages to unpublish documents from */
    from: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null),
    /** Locales to unpublish */
    locales?: (Locale[] | null),
    /** Whether to unpublish the base document and default localization */
    unpublishBase?: (Scalars['Boolean'] | null)},AssetConnectionRequest]
    /**
     * @deprecated Please use the new paginated many mutation (updateManyAssetsConnection)
     * Update many assets
     */
    updateManyAssets?: [{
    /** Documents to apply update on */
    where?: (AssetManyWhereInput | null),
    /** Updates to document content */
    data: AssetUpdateManyInput},BatchPayloadRequest]
    /**
     * @deprecated Please use the new paginated many mutation (deleteManyAssetsConnection)
     * Delete many Asset documents
     */
    deleteManyAssets?: [{
    /** Documents to delete */
    where?: (AssetManyWhereInput | null)},BatchPayloadRequest] | BatchPayloadRequest
    /**
     * @deprecated Please use the new paginated many mutation (publishManyAssetsConnection)
     * Publish many Asset documents
     */
    publishManyAssets?: [{
    /** Identifies documents in each stage to be published */
    where?: (AssetManyWhereInput | null),
    /** Stages to publish documents to */
    to: Stage[],
    /** Document localizations to publish */
    locales?: (Locale[] | null),
    /** Whether to publish the base document */
    publishBase?: (Scalars['Boolean'] | null),
    /** Whether to include the default locale when publishBase is true */
    withDefaultLocale?: (Scalars['Boolean'] | null)},BatchPayloadRequest]
    /**
     * @deprecated Please use the new paginated many mutation (unpublishManyAssetsConnection)
     * Unpublish many Asset documents
     */
    unpublishManyAssets?: [{
    /** Identifies documents in each stage */
    where?: (AssetManyWhereInput | null),
    /** Stages to unpublish documents from */
    from: Stage[],
    /** Locales to unpublish */
    locales?: (Locale[] | null),
    /** Whether to unpublish the base document and default localization */
    unpublishBase?: (Scalars['Boolean'] | null)},BatchPayloadRequest]
    /** Create one product */
    createProduct?: [{data: ProductCreateInput},ProductRequest]
    /** Update one product */
    updateProduct?: [{where: ProductWhereUniqueInput,data: ProductUpdateInput},ProductRequest]
    /** Delete one product from _all_ existing stages. Returns deleted document. */
    deleteProduct?: [{
    /** Document to delete */
    where: ProductWhereUniqueInput},ProductRequest]
    /** Upsert one product */
    upsertProduct?: [{where: ProductWhereUniqueInput,upsert: ProductUpsertInput},ProductRequest]
    /** Publish one product */
    publishProduct?: [{
    /** Document to publish */
    where: ProductWhereUniqueInput,
    /** Optional localizations to publish */
    locales?: (Locale[] | null),
    /** Whether to publish the base document */
    publishBase?: (Scalars['Boolean'] | null),
    /** Whether to include the default locale when publishBase is set */
    withDefaultLocale?: (Scalars['Boolean'] | null),
    /** Publishing target stage */
    to: Stage[]},ProductRequest]
    /** Unpublish one product from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
    unpublishProduct?: [{
    /** Document to unpublish */
    where: ProductWhereUniqueInput,
    /** Stages to unpublish document from */
    from: Stage[],
    /** Optional locales to unpublish. Unpublishing the default locale will completely remove the document from the selected stages */
    locales?: (Locale[] | null),
    /** Unpublish complete document including default localization and relations from stages. Can be disabled. */
    unpublishBase?: (Scalars['Boolean'] | null)},ProductRequest]
    /** Update many Product documents */
    updateManyProductsConnection?: [{
    /** Documents to apply update on */
    where?: (ProductManyWhereInput | null),
    /** Updates to document content */
    data: ProductUpdateManyInput,skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)},ProductConnectionRequest]
    /** Delete many Product documents, return deleted documents */
    deleteManyProductsConnection?: [{
    /** Documents to delete */
    where?: (ProductManyWhereInput | null),skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)},ProductConnectionRequest] | ProductConnectionRequest
    /** Publish many Product documents */
    publishManyProductsConnection?: [{
    /** Identifies documents in each stage to be published */
    where?: (ProductManyWhereInput | null),
    /** Stage to find matching documents in */
    from?: (Stage | null),
    /** Stages to publish documents to */
    to: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null),
    /** Document localizations to publish */
    locales?: (Locale[] | null),
    /** Whether to publish the base document */
    publishBase?: (Scalars['Boolean'] | null),
    /** Whether to include the default locale when publishBase is true */
    withDefaultLocale?: (Scalars['Boolean'] | null)},ProductConnectionRequest]
    /** Find many Product documents that match criteria in specified stage and unpublish from target stages */
    unpublishManyProductsConnection?: [{
    /** Identifies documents in draft stage */
    where?: (ProductManyWhereInput | null),
    /** Stage to find matching documents in */
    stage?: (Stage | null),
    /** Stages to unpublish documents from */
    from: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null),
    /** Locales to unpublish */
    locales?: (Locale[] | null),
    /** Whether to unpublish the base document and default localization */
    unpublishBase?: (Scalars['Boolean'] | null)},ProductConnectionRequest]
    /**
     * @deprecated Please use the new paginated many mutation (updateManyProductsConnection)
     * Update many products
     */
    updateManyProducts?: [{
    /** Documents to apply update on */
    where?: (ProductManyWhereInput | null),
    /** Updates to document content */
    data: ProductUpdateManyInput},BatchPayloadRequest]
    /**
     * @deprecated Please use the new paginated many mutation (deleteManyProductsConnection)
     * Delete many Product documents
     */
    deleteManyProducts?: [{
    /** Documents to delete */
    where?: (ProductManyWhereInput | null)},BatchPayloadRequest] | BatchPayloadRequest
    /**
     * @deprecated Please use the new paginated many mutation (publishManyProductsConnection)
     * Publish many Product documents
     */
    publishManyProducts?: [{
    /** Identifies documents in each stage to be published */
    where?: (ProductManyWhereInput | null),
    /** Stages to publish documents to */
    to: Stage[],
    /** Document localizations to publish */
    locales?: (Locale[] | null),
    /** Whether to publish the base document */
    publishBase?: (Scalars['Boolean'] | null),
    /** Whether to include the default locale when publishBase is true */
    withDefaultLocale?: (Scalars['Boolean'] | null)},BatchPayloadRequest]
    /**
     * @deprecated Please use the new paginated many mutation (unpublishManyProductsConnection)
     * Unpublish many Product documents
     */
    unpublishManyProducts?: [{
    /** Identifies documents in each stage */
    where?: (ProductManyWhereInput | null),
    /** Stages to unpublish documents from */
    from: Stage[],
    /** Locales to unpublish */
    locales?: (Locale[] | null),
    /** Whether to unpublish the base document and default localization */
    unpublishBase?: (Scalars['Boolean'] | null)},BatchPayloadRequest]
    /** Create one review */
    createReview?: [{data: ReviewCreateInput},ReviewRequest]
    /** Update one review */
    updateReview?: [{where: ReviewWhereUniqueInput,data: ReviewUpdateInput},ReviewRequest]
    /** Delete one review from _all_ existing stages. Returns deleted document. */
    deleteReview?: [{
    /** Document to delete */
    where: ReviewWhereUniqueInput},ReviewRequest]
    /** Upsert one review */
    upsertReview?: [{where: ReviewWhereUniqueInput,upsert: ReviewUpsertInput},ReviewRequest]
    /** Publish one review */
    publishReview?: [{
    /** Document to publish */
    where: ReviewWhereUniqueInput,
    /** Publishing target stage */
    to: Stage[]},ReviewRequest]
    /** Unpublish one review from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
    unpublishReview?: [{
    /** Document to unpublish */
    where: ReviewWhereUniqueInput,
    /** Stages to unpublish document from */
    from: Stage[]},ReviewRequest]
    /** Update many Review documents */
    updateManyReviewsConnection?: [{
    /** Documents to apply update on */
    where?: (ReviewManyWhereInput | null),
    /** Updates to document content */
    data: ReviewUpdateManyInput,skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)},ReviewConnectionRequest]
    /** Delete many Review documents, return deleted documents */
    deleteManyReviewsConnection?: [{
    /** Documents to delete */
    where?: (ReviewManyWhereInput | null),skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)},ReviewConnectionRequest] | ReviewConnectionRequest
    /** Publish many Review documents */
    publishManyReviewsConnection?: [{
    /** Identifies documents in each stage to be published */
    where?: (ReviewManyWhereInput | null),
    /** Stage to find matching documents in */
    from?: (Stage | null),
    /** Stages to publish documents to */
    to: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)},ReviewConnectionRequest]
    /** Find many Review documents that match criteria in specified stage and unpublish from target stages */
    unpublishManyReviewsConnection?: [{
    /** Identifies documents in draft stage */
    where?: (ReviewManyWhereInput | null),
    /** Stage to find matching documents in */
    stage?: (Stage | null),
    /** Stages to unpublish documents from */
    from: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)},ReviewConnectionRequest]
    /**
     * @deprecated Please use the new paginated many mutation (updateManyReviewsConnection)
     * Update many reviews
     */
    updateManyReviews?: [{
    /** Documents to apply update on */
    where?: (ReviewManyWhereInput | null),
    /** Updates to document content */
    data: ReviewUpdateManyInput},BatchPayloadRequest]
    /**
     * @deprecated Please use the new paginated many mutation (deleteManyReviewsConnection)
     * Delete many Review documents
     */
    deleteManyReviews?: [{
    /** Documents to delete */
    where?: (ReviewManyWhereInput | null)},BatchPayloadRequest] | BatchPayloadRequest
    /**
     * @deprecated Please use the new paginated many mutation (publishManyReviewsConnection)
     * Publish many Review documents
     */
    publishManyReviews?: [{
    /** Identifies documents in each stage to be published */
    where?: (ReviewManyWhereInput | null),
    /** Stages to publish documents to */
    to: Stage[]},BatchPayloadRequest]
    /**
     * @deprecated Please use the new paginated many mutation (unpublishManyReviewsConnection)
     * Unpublish many Review documents
     */
    unpublishManyReviews?: [{
    /** Identifies documents in each stage */
    where?: (ReviewManyWhereInput | null),
    /** Stages to unpublish documents from */
    from: Stage[]},BatchPayloadRequest]
    /** Create one vote */
    createVote?: [{data: VoteCreateInput},VoteRequest]
    /** Update one vote */
    updateVote?: [{where: VoteWhereUniqueInput,data: VoteUpdateInput},VoteRequest]
    /** Delete one vote from _all_ existing stages. Returns deleted document. */
    deleteVote?: [{
    /** Document to delete */
    where: VoteWhereUniqueInput},VoteRequest]
    /** Upsert one vote */
    upsertVote?: [{where: VoteWhereUniqueInput,upsert: VoteUpsertInput},VoteRequest]
    /** Publish one vote */
    publishVote?: [{
    /** Document to publish */
    where: VoteWhereUniqueInput,
    /** Publishing target stage */
    to: Stage[]},VoteRequest]
    /** Unpublish one vote from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
    unpublishVote?: [{
    /** Document to unpublish */
    where: VoteWhereUniqueInput,
    /** Stages to unpublish document from */
    from: Stage[]},VoteRequest]
    /** Update many Vote documents */
    updateManyVotesConnection?: [{
    /** Documents to apply update on */
    where?: (VoteManyWhereInput | null),
    /** Updates to document content */
    data: VoteUpdateManyInput,skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)},VoteConnectionRequest]
    /** Delete many Vote documents, return deleted documents */
    deleteManyVotesConnection?: [{
    /** Documents to delete */
    where?: (VoteManyWhereInput | null),skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)},VoteConnectionRequest] | VoteConnectionRequest
    /** Publish many Vote documents */
    publishManyVotesConnection?: [{
    /** Identifies documents in each stage to be published */
    where?: (VoteManyWhereInput | null),
    /** Stage to find matching documents in */
    from?: (Stage | null),
    /** Stages to publish documents to */
    to: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)},VoteConnectionRequest]
    /** Find many Vote documents that match criteria in specified stage and unpublish from target stages */
    unpublishManyVotesConnection?: [{
    /** Identifies documents in draft stage */
    where?: (VoteManyWhereInput | null),
    /** Stage to find matching documents in */
    stage?: (Stage | null),
    /** Stages to unpublish documents from */
    from: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)},VoteConnectionRequest]
    /**
     * @deprecated Please use the new paginated many mutation (updateManyVotesConnection)
     * Update many votes
     */
    updateManyVotes?: [{
    /** Documents to apply update on */
    where?: (VoteManyWhereInput | null),
    /** Updates to document content */
    data: VoteUpdateManyInput},BatchPayloadRequest]
    /**
     * @deprecated Please use the new paginated many mutation (deleteManyVotesConnection)
     * Delete many Vote documents
     */
    deleteManyVotes?: [{
    /** Documents to delete */
    where?: (VoteManyWhereInput | null)},BatchPayloadRequest] | BatchPayloadRequest
    /**
     * @deprecated Please use the new paginated many mutation (publishManyVotesConnection)
     * Publish many Vote documents
     */
    publishManyVotes?: [{
    /** Identifies documents in each stage to be published */
    where?: (VoteManyWhereInput | null),
    /** Stages to publish documents to */
    to: Stage[]},BatchPayloadRequest]
    /**
     * @deprecated Please use the new paginated many mutation (unpublishManyVotesConnection)
     * Unpublish many Vote documents
     */
    unpublishManyVotes?: [{
    /** Identifies documents in each stage */
    where?: (VoteManyWhereInput | null),
    /** Stages to unpublish documents from */
    from: Stage[]},BatchPayloadRequest]
    __typename?: boolean | number
    __scalar?: boolean | number
}


/** An object with an ID */
export interface NodeRequest{
    /** The id of the object. */
    id?: boolean | number
    /** The Stage of an object */
    stage?: boolean | number
    on_Asset?: AssetRequest
    on_Product?: ProductRequest
    on_Review?: ReviewRequest
    on_User?: UserRequest
    on_Vote?: VoteRequest
    __typename?: boolean | number
    __scalar?: boolean | number
}


/** Information about pagination in a connection. */
export interface PageInfoRequest{
    /** When paginating forwards, are there more items? */
    hasNextPage?: boolean | number
    /** When paginating backwards, are there more items? */
    hasPreviousPage?: boolean | number
    /** When paginating backwards, the cursor to continue. */
    startCursor?: boolean | number
    /** When paginating forwards, the cursor to continue. */
    endCursor?: boolean | number
    /** Number of items in the current page. */
    pageSize?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface ProductRequest{
    /** System stage field */
    stage?: boolean | number
    /** System Locale field */
    locale?: boolean | number
    /** Get the other localizations for this document */
    localizations?: [{
    /** Potential locales that should be returned */
    locales: Locale[],
    /** Decides if the current locale should be included or not */
    includeCurrent: Scalars['Boolean']},ProductRequest]
    /** Get the document in other stages */
    documentInStages?: [{
    /** Potential stages that should be returned */
    stages: Stage[],
    /** Decides if the current stage should be included or not */
    includeCurrent: Scalars['Boolean'],
    /** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
    inheritLocale: Scalars['Boolean']},ProductRequest]
    /** The unique identifier */
    id?: boolean | number
    /** The time the document was created */
    createdAt?: [{
    /** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
    variation: SystemDateTimeFieldVariation}]
    /** User that created this document */
    createdBy?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `createdBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},UserRequest] | UserRequest
    /** The time the document was updated */
    updatedAt?: [{
    /** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
    variation: SystemDateTimeFieldVariation}]
    /** User that last updated this document */
    updatedBy?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `updatedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},UserRequest] | UserRequest
    /** The time the document was published. Null on documents in draft stage. */
    publishedAt?: [{
    /** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
    variation: SystemDateTimeFieldVariation}]
    /** User that last published this document */
    publishedBy?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `publishedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},UserRequest] | UserRequest
    name?: boolean | number
    slug?: boolean | number
    description?: boolean | number
    price?: boolean | number
    reviews?: [{where?: (ReviewWhereInput | null),orderBy?: (ReviewOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `reviews` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},ReviewRequest] | ReviewRequest
    votes?: [{where?: (VoteWhereInput | null),orderBy?: (VoteOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `votes` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},VoteRequest] | VoteRequest
    image?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `image` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},AssetRequest] | AssetRequest
    content?: RichTextRequest
    /** List of Product versions */
    history?: [{limit: Scalars['Int'],skip: Scalars['Int'],
    /** This is optional and can be used to fetch the document version history for a specific stage instead of the current one */
    stageOverride?: (Stage | null)},VersionRequest]
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface ProductConnectInput {
/** Document to connect */
where: ProductWhereUniqueInput,
/** Allow to specify document position in list of connected documents, will default to appending at end of list */
position?: (ConnectPositionInput | null)}


/** A connection to a list of items. */
export interface ProductConnectionRequest{
    /** Information to aid in pagination. */
    pageInfo?: PageInfoRequest
    /** A list of edges. */
    edges?: ProductEdgeRequest
    aggregate?: AggregateRequest
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface ProductCreateInput {createdAt?: (Scalars['DateTime'] | null),updatedAt?: (Scalars['DateTime'] | null),
/** name input for default locale (en) */
name: Scalars['String'],slug: Scalars['String'],description?: (Scalars['String'] | null),price: Scalars['Int'],reviews?: (ReviewCreateManyInlineInput | null),votes?: (VoteCreateManyInlineInput | null),image?: (AssetCreateOneInlineInput | null),content?: (Scalars['RichTextAST'] | null),
/** Inline mutations for managing document localizations excluding the default locale */
localizations?: (ProductCreateLocalizationsInput | null)}

export interface ProductCreateLocalizationDataInput {createdAt?: (Scalars['DateTime'] | null),updatedAt?: (Scalars['DateTime'] | null),name: Scalars['String']}

export interface ProductCreateLocalizationInput {
/** Localization input */
data: ProductCreateLocalizationDataInput,locale: Locale}

export interface ProductCreateLocalizationsInput {
/** Create localizations for the newly-created document */
create?: (ProductCreateLocalizationInput[] | null)}

export interface ProductCreateManyInlineInput {
/** Create and connect multiple existing Product documents */
create?: (ProductCreateInput[] | null),
/** Connect multiple existing Product documents */
connect?: (ProductWhereUniqueInput[] | null)}

export interface ProductCreateOneInlineInput {
/** Create and connect one Product document */
create?: (ProductCreateInput | null),
/** Connect one existing Product document */
connect?: (ProductWhereUniqueInput | null)}


/** An edge in a connection. */
export interface ProductEdgeRequest{
    /** The item at the end of the edge. */
    node?: ProductRequest
    /** A cursor for use in pagination. */
    cursor?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}


/** Identifies documents */
export interface ProductManyWhereInput {
/** Contains search across all appropriate fields. */
_search?: (Scalars['String'] | null),
/** Logical AND on all given filters. */
AND?: (ProductWhereInput[] | null),
/** Logical OR on all given filters. */
OR?: (ProductWhereInput[] | null),
/** Logical NOT on all given filters combined by AND. */
NOT?: (ProductWhereInput[] | null),id?: (Scalars['ID'] | null),
/** All values that are not equal to given value. */
id_not?: (Scalars['ID'] | null),
/** All values that are contained in given list. */
id_in?: (Scalars['ID'][] | null),
/** All values that are not contained in given list. */
id_not_in?: (Scalars['ID'][] | null),
/** All values containing the given string. */
id_contains?: (Scalars['ID'] | null),
/** All values not containing the given string. */
id_not_contains?: (Scalars['ID'] | null),
/** All values starting with the given string. */
id_starts_with?: (Scalars['ID'] | null),
/** All values not starting with the given string. */
id_not_starts_with?: (Scalars['ID'] | null),
/** All values ending with the given string. */
id_ends_with?: (Scalars['ID'] | null),
/** All values not ending with the given string */
id_not_ends_with?: (Scalars['ID'] | null),createdAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
createdAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
createdAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
createdAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
createdAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
createdAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
createdAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
createdAt_gte?: (Scalars['DateTime'] | null),createdBy?: (UserWhereInput | null),updatedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
updatedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
updatedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
updatedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
updatedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
updatedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
updatedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
updatedAt_gte?: (Scalars['DateTime'] | null),updatedBy?: (UserWhereInput | null),publishedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
publishedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
publishedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
publishedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
publishedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
publishedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
publishedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
publishedAt_gte?: (Scalars['DateTime'] | null),publishedBy?: (UserWhereInput | null),slug?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
slug_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
slug_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
slug_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
slug_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
slug_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
slug_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
slug_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
slug_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
slug_not_ends_with?: (Scalars['String'] | null),description?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
description_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
description_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
description_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
description_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
description_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
description_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
description_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
description_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
description_not_ends_with?: (Scalars['String'] | null),price?: (Scalars['Int'] | null),
/** All values that are not equal to given value. */
price_not?: (Scalars['Int'] | null),
/** All values that are contained in given list. */
price_in?: (Scalars['Int'][] | null),
/** All values that are not contained in given list. */
price_not_in?: (Scalars['Int'][] | null),
/** All values less than the given value. */
price_lt?: (Scalars['Int'] | null),
/** All values less than or equal the given value. */
price_lte?: (Scalars['Int'] | null),
/** All values greater than the given value. */
price_gt?: (Scalars['Int'] | null),
/** All values greater than or equal the given value. */
price_gte?: (Scalars['Int'] | null),reviews_every?: (ReviewWhereInput | null),reviews_some?: (ReviewWhereInput | null),reviews_none?: (ReviewWhereInput | null),votes_every?: (VoteWhereInput | null),votes_some?: (VoteWhereInput | null),votes_none?: (VoteWhereInput | null),image?: (AssetWhereInput | null)}

export interface ProductUpdateInput {
/** name input for default locale (en) */
name?: (Scalars['String'] | null),slug?: (Scalars['String'] | null),description?: (Scalars['String'] | null),price?: (Scalars['Int'] | null),reviews?: (ReviewUpdateManyInlineInput | null),votes?: (VoteUpdateManyInlineInput | null),image?: (AssetUpdateOneInlineInput | null),content?: (Scalars['RichTextAST'] | null),
/** Manage document localizations */
localizations?: (ProductUpdateLocalizationsInput | null)}

export interface ProductUpdateLocalizationDataInput {name?: (Scalars['String'] | null)}

export interface ProductUpdateLocalizationInput {data: ProductUpdateLocalizationDataInput,locale: Locale}

export interface ProductUpdateLocalizationsInput {
/** Localizations to create */
create?: (ProductCreateLocalizationInput[] | null),
/** Localizations to update */
update?: (ProductUpdateLocalizationInput[] | null),upsert?: (ProductUpsertLocalizationInput[] | null),
/** Localizations to delete */
delete?: (Locale[] | null)}

export interface ProductUpdateManyInlineInput {
/** Create and connect multiple Product documents */
create?: (ProductCreateInput[] | null),
/** Connect multiple existing Product documents */
connect?: (ProductConnectInput[] | null),
/** Override currently-connected documents with multiple existing Product documents */
set?: (ProductWhereUniqueInput[] | null),
/** Update multiple Product documents */
update?: (ProductUpdateWithNestedWhereUniqueInput[] | null),
/** Upsert multiple Product documents */
upsert?: (ProductUpsertWithNestedWhereUniqueInput[] | null),
/** Disconnect multiple Product documents */
disconnect?: (ProductWhereUniqueInput[] | null),
/** Delete multiple Product documents */
delete?: (ProductWhereUniqueInput[] | null)}

export interface ProductUpdateManyInput {
/** name input for default locale (en) */
name?: (Scalars['String'] | null),description?: (Scalars['String'] | null),price?: (Scalars['Int'] | null),content?: (Scalars['RichTextAST'] | null),
/** Optional updates to localizations */
localizations?: (ProductUpdateManyLocalizationsInput | null)}

export interface ProductUpdateManyLocalizationDataInput {name?: (Scalars['String'] | null)}

export interface ProductUpdateManyLocalizationInput {data: ProductUpdateManyLocalizationDataInput,locale: Locale}

export interface ProductUpdateManyLocalizationsInput {
/** Localizations to update */
update?: (ProductUpdateManyLocalizationInput[] | null)}

export interface ProductUpdateManyWithNestedWhereInput {
/** Document search */
where: ProductWhereInput,
/** Update many input */
data: ProductUpdateManyInput}

export interface ProductUpdateOneInlineInput {
/** Create and connect one Product document */
create?: (ProductCreateInput | null),
/** Update single Product document */
update?: (ProductUpdateWithNestedWhereUniqueInput | null),
/** Upsert single Product document */
upsert?: (ProductUpsertWithNestedWhereUniqueInput | null),
/** Connect existing Product document */
connect?: (ProductWhereUniqueInput | null),
/** Disconnect currently connected Product document */
disconnect?: (Scalars['Boolean'] | null),
/** Delete currently connected Product document */
delete?: (Scalars['Boolean'] | null)}

export interface ProductUpdateWithNestedWhereUniqueInput {
/** Unique document search */
where: ProductWhereUniqueInput,
/** Document to update */
data: ProductUpdateInput}

export interface ProductUpsertInput {
/** Create document if it didn't exist */
create: ProductCreateInput,
/** Update document if it exists */
update: ProductUpdateInput}

export interface ProductUpsertLocalizationInput {update: ProductUpdateLocalizationDataInput,create: ProductCreateLocalizationDataInput,locale: Locale}

export interface ProductUpsertWithNestedWhereUniqueInput {
/** Unique document search */
where: ProductWhereUniqueInput,
/** Upsert data */
data: ProductUpsertInput}


/** Identifies documents */
export interface ProductWhereInput {
/** Contains search across all appropriate fields. */
_search?: (Scalars['String'] | null),
/** Logical AND on all given filters. */
AND?: (ProductWhereInput[] | null),
/** Logical OR on all given filters. */
OR?: (ProductWhereInput[] | null),
/** Logical NOT on all given filters combined by AND. */
NOT?: (ProductWhereInput[] | null),id?: (Scalars['ID'] | null),
/** All values that are not equal to given value. */
id_not?: (Scalars['ID'] | null),
/** All values that are contained in given list. */
id_in?: (Scalars['ID'][] | null),
/** All values that are not contained in given list. */
id_not_in?: (Scalars['ID'][] | null),
/** All values containing the given string. */
id_contains?: (Scalars['ID'] | null),
/** All values not containing the given string. */
id_not_contains?: (Scalars['ID'] | null),
/** All values starting with the given string. */
id_starts_with?: (Scalars['ID'] | null),
/** All values not starting with the given string. */
id_not_starts_with?: (Scalars['ID'] | null),
/** All values ending with the given string. */
id_ends_with?: (Scalars['ID'] | null),
/** All values not ending with the given string */
id_not_ends_with?: (Scalars['ID'] | null),createdAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
createdAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
createdAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
createdAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
createdAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
createdAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
createdAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
createdAt_gte?: (Scalars['DateTime'] | null),createdBy?: (UserWhereInput | null),updatedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
updatedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
updatedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
updatedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
updatedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
updatedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
updatedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
updatedAt_gte?: (Scalars['DateTime'] | null),updatedBy?: (UserWhereInput | null),publishedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
publishedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
publishedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
publishedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
publishedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
publishedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
publishedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
publishedAt_gte?: (Scalars['DateTime'] | null),publishedBy?: (UserWhereInput | null),name?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
name_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
name_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
name_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
name_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
name_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
name_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
name_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
name_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
name_not_ends_with?: (Scalars['String'] | null),slug?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
slug_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
slug_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
slug_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
slug_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
slug_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
slug_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
slug_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
slug_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
slug_not_ends_with?: (Scalars['String'] | null),description?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
description_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
description_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
description_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
description_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
description_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
description_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
description_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
description_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
description_not_ends_with?: (Scalars['String'] | null),price?: (Scalars['Int'] | null),
/** All values that are not equal to given value. */
price_not?: (Scalars['Int'] | null),
/** All values that are contained in given list. */
price_in?: (Scalars['Int'][] | null),
/** All values that are not contained in given list. */
price_not_in?: (Scalars['Int'][] | null),
/** All values less than the given value. */
price_lt?: (Scalars['Int'] | null),
/** All values less than or equal the given value. */
price_lte?: (Scalars['Int'] | null),
/** All values greater than the given value. */
price_gt?: (Scalars['Int'] | null),
/** All values greater than or equal the given value. */
price_gte?: (Scalars['Int'] | null),reviews_every?: (ReviewWhereInput | null),reviews_some?: (ReviewWhereInput | null),reviews_none?: (ReviewWhereInput | null),votes_every?: (VoteWhereInput | null),votes_some?: (VoteWhereInput | null),votes_none?: (VoteWhereInput | null),image?: (AssetWhereInput | null)}


/** References Product record uniquely */
export interface ProductWhereUniqueInput {id?: (Scalars['ID'] | null),slug?: (Scalars['String'] | null)}

export interface PublishLocaleInput {
/** Locales to publish */
locale: Locale,
/** Stages to publish selected locales to */
stages: Stage[]}

export interface QueryRequest{
    /** Fetches an object given its ID */
    node?: [{
    /** The ID of an object */
    id: Scalars['ID'],stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `Node` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},NodeRequest]
    /** Retrieve multiple assets */
    assets?: [{where?: (AssetWhereInput | null),orderBy?: (AssetOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `Asset` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
     * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},AssetRequest]
    /** Retrieve a single asset */
    asset?: [{where: AssetWhereUniqueInput,stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `Asset` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
     * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},AssetRequest]
    /** Retrieve multiple assets using the Relay connection interface */
    assetsConnection?: [{where?: (AssetWhereInput | null),orderBy?: (AssetOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `Asset` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
     * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},AssetConnectionRequest]
    /** Retrieve document version */
    assetVersion?: [{where: VersionWhereInput},DocumentVersionRequest]
    /** Retrieve multiple products */
    products?: [{where?: (ProductWhereInput | null),orderBy?: (ProductOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `Product` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
     * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},ProductRequest]
    /** Retrieve a single product */
    product?: [{where: ProductWhereUniqueInput,stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `Product` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
     * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},ProductRequest]
    /** Retrieve multiple products using the Relay connection interface */
    productsConnection?: [{where?: (ProductWhereInput | null),orderBy?: (ProductOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `Product` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
     * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},ProductConnectionRequest]
    /** Retrieve document version */
    productVersion?: [{where: VersionWhereInput},DocumentVersionRequest]
    /** Retrieve multiple reviews */
    reviews?: [{where?: (ReviewWhereInput | null),orderBy?: (ReviewOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `Review` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},ReviewRequest]
    /** Retrieve a single review */
    review?: [{where: ReviewWhereUniqueInput,stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `Review` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},ReviewRequest]
    /** Retrieve multiple reviews using the Relay connection interface */
    reviewsConnection?: [{where?: (ReviewWhereInput | null),orderBy?: (ReviewOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `Review` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},ReviewConnectionRequest]
    /** Retrieve document version */
    reviewVersion?: [{where: VersionWhereInput},DocumentVersionRequest]
    /** Retrieve multiple users */
    users?: [{where?: (UserWhereInput | null),orderBy?: (UserOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `User` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},UserRequest]
    /** Retrieve a single user */
    user?: [{where: UserWhereUniqueInput,stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `User` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},UserRequest]
    /** Retrieve multiple users using the Relay connection interface */
    usersConnection?: [{where?: (UserWhereInput | null),orderBy?: (UserOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `User` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},UserConnectionRequest]
    /** Retrieve multiple votes */
    votes?: [{where?: (VoteWhereInput | null),orderBy?: (VoteOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `Vote` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},VoteRequest]
    /** Retrieve a single vote */
    vote?: [{where: VoteWhereUniqueInput,stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `Vote` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},VoteRequest]
    /** Retrieve multiple votes using the Relay connection interface */
    votesConnection?: [{where?: (VoteWhereInput | null),orderBy?: (VoteOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
    /**
     * Defines which locales should be returned.
     * 
     * Note that `Vote` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
     */
    locales: Locale[]},VoteConnectionRequest]
    /** Retrieve document version */
    voteVersion?: [{where: VersionWhereInput},DocumentVersionRequest]
    __typename?: boolean | number
    __scalar?: boolean | number
}


/** Representing a RGBA color value: https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#rgb()_and_rgba() */
export interface RGBARequest{
    r?: boolean | number
    g?: boolean | number
    b?: boolean | number
    a?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}


/** Input type representing a RGBA color value: https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#rgb()_and_rgba() */
export interface RGBAInput {r: Scalars['RGBAHue'],g: Scalars['RGBAHue'],b: Scalars['RGBAHue'],a: Scalars['RGBATransparency']}

export interface ReviewRequest{
    /** System stage field */
    stage?: boolean | number
    /** Get the document in other stages */
    documentInStages?: [{
    /** Potential stages that should be returned */
    stages: Stage[],
    /** Decides if the current stage should be included or not */
    includeCurrent: Scalars['Boolean'],
    /** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
    inheritLocale: Scalars['Boolean']},ReviewRequest]
    /** The unique identifier */
    id?: boolean | number
    /** The time the document was created */
    createdAt?: boolean | number
    /** User that created this document */
    createdBy?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `createdBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},UserRequest] | UserRequest
    /** The time the document was updated */
    updatedAt?: boolean | number
    /** User that last updated this document */
    updatedBy?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `updatedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},UserRequest] | UserRequest
    /** The time the document was published. Null on documents in draft stage. */
    publishedAt?: boolean | number
    /** User that last published this document */
    publishedBy?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `publishedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},UserRequest] | UserRequest
    name?: boolean | number
    comment?: boolean | number
    product?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `product` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},ProductRequest] | ProductRequest
    /** List of Review versions */
    history?: [{limit: Scalars['Int'],skip: Scalars['Int'],
    /** This is optional and can be used to fetch the document version history for a specific stage instead of the current one */
    stageOverride?: (Stage | null)},VersionRequest]
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface ReviewConnectInput {
/** Document to connect */
where: ReviewWhereUniqueInput,
/** Allow to specify document position in list of connected documents, will default to appending at end of list */
position?: (ConnectPositionInput | null)}


/** A connection to a list of items. */
export interface ReviewConnectionRequest{
    /** Information to aid in pagination. */
    pageInfo?: PageInfoRequest
    /** A list of edges. */
    edges?: ReviewEdgeRequest
    aggregate?: AggregateRequest
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface ReviewCreateInput {createdAt?: (Scalars['DateTime'] | null),updatedAt?: (Scalars['DateTime'] | null),name?: (Scalars['String'] | null),comment: Scalars['String'],product?: (ProductCreateOneInlineInput | null)}

export interface ReviewCreateManyInlineInput {
/** Create and connect multiple existing Review documents */
create?: (ReviewCreateInput[] | null),
/** Connect multiple existing Review documents */
connect?: (ReviewWhereUniqueInput[] | null)}

export interface ReviewCreateOneInlineInput {
/** Create and connect one Review document */
create?: (ReviewCreateInput | null),
/** Connect one existing Review document */
connect?: (ReviewWhereUniqueInput | null)}


/** An edge in a connection. */
export interface ReviewEdgeRequest{
    /** The item at the end of the edge. */
    node?: ReviewRequest
    /** A cursor for use in pagination. */
    cursor?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}


/** Identifies documents */
export interface ReviewManyWhereInput {
/** Contains search across all appropriate fields. */
_search?: (Scalars['String'] | null),
/** Logical AND on all given filters. */
AND?: (ReviewWhereInput[] | null),
/** Logical OR on all given filters. */
OR?: (ReviewWhereInput[] | null),
/** Logical NOT on all given filters combined by AND. */
NOT?: (ReviewWhereInput[] | null),id?: (Scalars['ID'] | null),
/** All values that are not equal to given value. */
id_not?: (Scalars['ID'] | null),
/** All values that are contained in given list. */
id_in?: (Scalars['ID'][] | null),
/** All values that are not contained in given list. */
id_not_in?: (Scalars['ID'][] | null),
/** All values containing the given string. */
id_contains?: (Scalars['ID'] | null),
/** All values not containing the given string. */
id_not_contains?: (Scalars['ID'] | null),
/** All values starting with the given string. */
id_starts_with?: (Scalars['ID'] | null),
/** All values not starting with the given string. */
id_not_starts_with?: (Scalars['ID'] | null),
/** All values ending with the given string. */
id_ends_with?: (Scalars['ID'] | null),
/** All values not ending with the given string */
id_not_ends_with?: (Scalars['ID'] | null),createdAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
createdAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
createdAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
createdAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
createdAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
createdAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
createdAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
createdAt_gte?: (Scalars['DateTime'] | null),createdBy?: (UserWhereInput | null),updatedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
updatedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
updatedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
updatedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
updatedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
updatedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
updatedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
updatedAt_gte?: (Scalars['DateTime'] | null),updatedBy?: (UserWhereInput | null),publishedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
publishedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
publishedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
publishedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
publishedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
publishedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
publishedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
publishedAt_gte?: (Scalars['DateTime'] | null),publishedBy?: (UserWhereInput | null),name?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
name_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
name_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
name_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
name_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
name_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
name_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
name_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
name_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
name_not_ends_with?: (Scalars['String'] | null),comment?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
comment_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
comment_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
comment_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
comment_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
comment_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
comment_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
comment_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
comment_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
comment_not_ends_with?: (Scalars['String'] | null),product?: (ProductWhereInput | null)}

export interface ReviewUpdateInput {name?: (Scalars['String'] | null),comment?: (Scalars['String'] | null),product?: (ProductUpdateOneInlineInput | null)}

export interface ReviewUpdateManyInlineInput {
/** Create and connect multiple Review documents */
create?: (ReviewCreateInput[] | null),
/** Connect multiple existing Review documents */
connect?: (ReviewConnectInput[] | null),
/** Override currently-connected documents with multiple existing Review documents */
set?: (ReviewWhereUniqueInput[] | null),
/** Update multiple Review documents */
update?: (ReviewUpdateWithNestedWhereUniqueInput[] | null),
/** Upsert multiple Review documents */
upsert?: (ReviewUpsertWithNestedWhereUniqueInput[] | null),
/** Disconnect multiple Review documents */
disconnect?: (ReviewWhereUniqueInput[] | null),
/** Delete multiple Review documents */
delete?: (ReviewWhereUniqueInput[] | null)}

export interface ReviewUpdateManyInput {name?: (Scalars['String'] | null),comment?: (Scalars['String'] | null)}

export interface ReviewUpdateManyWithNestedWhereInput {
/** Document search */
where: ReviewWhereInput,
/** Update many input */
data: ReviewUpdateManyInput}

export interface ReviewUpdateOneInlineInput {
/** Create and connect one Review document */
create?: (ReviewCreateInput | null),
/** Update single Review document */
update?: (ReviewUpdateWithNestedWhereUniqueInput | null),
/** Upsert single Review document */
upsert?: (ReviewUpsertWithNestedWhereUniqueInput | null),
/** Connect existing Review document */
connect?: (ReviewWhereUniqueInput | null),
/** Disconnect currently connected Review document */
disconnect?: (Scalars['Boolean'] | null),
/** Delete currently connected Review document */
delete?: (Scalars['Boolean'] | null)}

export interface ReviewUpdateWithNestedWhereUniqueInput {
/** Unique document search */
where: ReviewWhereUniqueInput,
/** Document to update */
data: ReviewUpdateInput}

export interface ReviewUpsertInput {
/** Create document if it didn't exist */
create: ReviewCreateInput,
/** Update document if it exists */
update: ReviewUpdateInput}

export interface ReviewUpsertWithNestedWhereUniqueInput {
/** Unique document search */
where: ReviewWhereUniqueInput,
/** Upsert data */
data: ReviewUpsertInput}


/** Identifies documents */
export interface ReviewWhereInput {
/** Contains search across all appropriate fields. */
_search?: (Scalars['String'] | null),
/** Logical AND on all given filters. */
AND?: (ReviewWhereInput[] | null),
/** Logical OR on all given filters. */
OR?: (ReviewWhereInput[] | null),
/** Logical NOT on all given filters combined by AND. */
NOT?: (ReviewWhereInput[] | null),id?: (Scalars['ID'] | null),
/** All values that are not equal to given value. */
id_not?: (Scalars['ID'] | null),
/** All values that are contained in given list. */
id_in?: (Scalars['ID'][] | null),
/** All values that are not contained in given list. */
id_not_in?: (Scalars['ID'][] | null),
/** All values containing the given string. */
id_contains?: (Scalars['ID'] | null),
/** All values not containing the given string. */
id_not_contains?: (Scalars['ID'] | null),
/** All values starting with the given string. */
id_starts_with?: (Scalars['ID'] | null),
/** All values not starting with the given string. */
id_not_starts_with?: (Scalars['ID'] | null),
/** All values ending with the given string. */
id_ends_with?: (Scalars['ID'] | null),
/** All values not ending with the given string */
id_not_ends_with?: (Scalars['ID'] | null),createdAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
createdAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
createdAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
createdAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
createdAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
createdAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
createdAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
createdAt_gte?: (Scalars['DateTime'] | null),createdBy?: (UserWhereInput | null),updatedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
updatedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
updatedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
updatedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
updatedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
updatedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
updatedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
updatedAt_gte?: (Scalars['DateTime'] | null),updatedBy?: (UserWhereInput | null),publishedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
publishedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
publishedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
publishedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
publishedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
publishedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
publishedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
publishedAt_gte?: (Scalars['DateTime'] | null),publishedBy?: (UserWhereInput | null),name?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
name_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
name_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
name_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
name_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
name_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
name_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
name_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
name_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
name_not_ends_with?: (Scalars['String'] | null),comment?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
comment_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
comment_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
comment_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
comment_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
comment_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
comment_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
comment_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
comment_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
comment_not_ends_with?: (Scalars['String'] | null),product?: (ProductWhereInput | null)}


/** References Review record uniquely */
export interface ReviewWhereUniqueInput {id?: (Scalars['ID'] | null)}


/** Custom type representing a rich text value comprising of raw rich text ast, html, markdown and text values */
export interface RichTextRequest{
    /** Returns AST representation */
    raw?: boolean | number
    /** Returns HTMl representation */
    html?: boolean | number
    /** Returns Markdown representation */
    markdown?: boolean | number
    /** Returns plain-text contents of RichText */
    text?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface UnpublishLocaleInput {
/** Locales to unpublish */
locale: Locale,
/** Stages to unpublish selected locales from */
stages: Stage[]}


/** User system model */
export interface UserRequest{
    /** System stage field */
    stage?: boolean | number
    /** Get the document in other stages */
    documentInStages?: [{
    /** Potential stages that should be returned */
    stages: Stage[],
    /** Decides if the current stage should be included or not */
    includeCurrent: Scalars['Boolean'],
    /** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
    inheritLocale: Scalars['Boolean']},UserRequest]
    /** The unique identifier */
    id?: boolean | number
    /** The time the document was created */
    createdAt?: boolean | number
    /** The time the document was updated */
    updatedAt?: boolean | number
    /** The time the document was published. Null on documents in draft stage. */
    publishedAt?: boolean | number
    /** The username */
    name?: boolean | number
    /** Profile Picture url */
    picture?: boolean | number
    /** User Kind. Can be either MEMBER, PAT or PUBLIC */
    kind?: boolean | number
    /** Flag to determine if user is active or not */
    isActive?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface UserConnectInput {
/** Document to connect */
where: UserWhereUniqueInput,
/** Allow to specify document position in list of connected documents, will default to appending at end of list */
position?: (ConnectPositionInput | null)}


/** A connection to a list of items. */
export interface UserConnectionRequest{
    /** Information to aid in pagination. */
    pageInfo?: PageInfoRequest
    /** A list of edges. */
    edges?: UserEdgeRequest
    aggregate?: AggregateRequest
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface UserCreateManyInlineInput {
/** Connect multiple existing User documents */
connect?: (UserWhereUniqueInput[] | null)}

export interface UserCreateOneInlineInput {
/** Connect one existing User document */
connect?: (UserWhereUniqueInput | null)}


/** An edge in a connection. */
export interface UserEdgeRequest{
    /** The item at the end of the edge. */
    node?: UserRequest
    /** A cursor for use in pagination. */
    cursor?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}


/** Identifies documents */
export interface UserManyWhereInput {
/** Contains search across all appropriate fields. */
_search?: (Scalars['String'] | null),
/** Logical AND on all given filters. */
AND?: (UserWhereInput[] | null),
/** Logical OR on all given filters. */
OR?: (UserWhereInput[] | null),
/** Logical NOT on all given filters combined by AND. */
NOT?: (UserWhereInput[] | null),id?: (Scalars['ID'] | null),
/** All values that are not equal to given value. */
id_not?: (Scalars['ID'] | null),
/** All values that are contained in given list. */
id_in?: (Scalars['ID'][] | null),
/** All values that are not contained in given list. */
id_not_in?: (Scalars['ID'][] | null),
/** All values containing the given string. */
id_contains?: (Scalars['ID'] | null),
/** All values not containing the given string. */
id_not_contains?: (Scalars['ID'] | null),
/** All values starting with the given string. */
id_starts_with?: (Scalars['ID'] | null),
/** All values not starting with the given string. */
id_not_starts_with?: (Scalars['ID'] | null),
/** All values ending with the given string. */
id_ends_with?: (Scalars['ID'] | null),
/** All values not ending with the given string */
id_not_ends_with?: (Scalars['ID'] | null),createdAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
createdAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
createdAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
createdAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
createdAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
createdAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
createdAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
createdAt_gte?: (Scalars['DateTime'] | null),updatedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
updatedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
updatedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
updatedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
updatedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
updatedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
updatedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
updatedAt_gte?: (Scalars['DateTime'] | null),publishedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
publishedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
publishedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
publishedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
publishedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
publishedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
publishedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
publishedAt_gte?: (Scalars['DateTime'] | null),name?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
name_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
name_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
name_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
name_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
name_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
name_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
name_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
name_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
name_not_ends_with?: (Scalars['String'] | null),picture?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
picture_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
picture_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
picture_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
picture_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
picture_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
picture_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
picture_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
picture_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
picture_not_ends_with?: (Scalars['String'] | null),kind?: (UserKind | null),
/** All values that are not equal to given value. */
kind_not?: (UserKind | null),
/** All values that are contained in given list. */
kind_in?: (UserKind[] | null),
/** All values that are not contained in given list. */
kind_not_in?: (UserKind[] | null),isActive?: (Scalars['Boolean'] | null),
/** All values that are not equal to given value. */
isActive_not?: (Scalars['Boolean'] | null)}

export interface UserUpdateManyInlineInput {
/** Connect multiple existing User documents */
connect?: (UserConnectInput[] | null),
/** Override currently-connected documents with multiple existing User documents */
set?: (UserWhereUniqueInput[] | null),
/** Disconnect multiple User documents */
disconnect?: (UserWhereUniqueInput[] | null)}

export interface UserUpdateOneInlineInput {
/** Connect existing User document */
connect?: (UserWhereUniqueInput | null),
/** Disconnect currently connected User document */
disconnect?: (Scalars['Boolean'] | null)}


/** Identifies documents */
export interface UserWhereInput {
/** Contains search across all appropriate fields. */
_search?: (Scalars['String'] | null),
/** Logical AND on all given filters. */
AND?: (UserWhereInput[] | null),
/** Logical OR on all given filters. */
OR?: (UserWhereInput[] | null),
/** Logical NOT on all given filters combined by AND. */
NOT?: (UserWhereInput[] | null),id?: (Scalars['ID'] | null),
/** All values that are not equal to given value. */
id_not?: (Scalars['ID'] | null),
/** All values that are contained in given list. */
id_in?: (Scalars['ID'][] | null),
/** All values that are not contained in given list. */
id_not_in?: (Scalars['ID'][] | null),
/** All values containing the given string. */
id_contains?: (Scalars['ID'] | null),
/** All values not containing the given string. */
id_not_contains?: (Scalars['ID'] | null),
/** All values starting with the given string. */
id_starts_with?: (Scalars['ID'] | null),
/** All values not starting with the given string. */
id_not_starts_with?: (Scalars['ID'] | null),
/** All values ending with the given string. */
id_ends_with?: (Scalars['ID'] | null),
/** All values not ending with the given string */
id_not_ends_with?: (Scalars['ID'] | null),createdAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
createdAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
createdAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
createdAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
createdAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
createdAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
createdAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
createdAt_gte?: (Scalars['DateTime'] | null),updatedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
updatedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
updatedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
updatedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
updatedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
updatedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
updatedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
updatedAt_gte?: (Scalars['DateTime'] | null),publishedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
publishedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
publishedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
publishedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
publishedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
publishedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
publishedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
publishedAt_gte?: (Scalars['DateTime'] | null),name?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
name_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
name_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
name_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
name_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
name_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
name_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
name_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
name_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
name_not_ends_with?: (Scalars['String'] | null),picture?: (Scalars['String'] | null),
/** All values that are not equal to given value. */
picture_not?: (Scalars['String'] | null),
/** All values that are contained in given list. */
picture_in?: (Scalars['String'][] | null),
/** All values that are not contained in given list. */
picture_not_in?: (Scalars['String'][] | null),
/** All values containing the given string. */
picture_contains?: (Scalars['String'] | null),
/** All values not containing the given string. */
picture_not_contains?: (Scalars['String'] | null),
/** All values starting with the given string. */
picture_starts_with?: (Scalars['String'] | null),
/** All values not starting with the given string. */
picture_not_starts_with?: (Scalars['String'] | null),
/** All values ending with the given string. */
picture_ends_with?: (Scalars['String'] | null),
/** All values not ending with the given string */
picture_not_ends_with?: (Scalars['String'] | null),kind?: (UserKind | null),
/** All values that are not equal to given value. */
kind_not?: (UserKind | null),
/** All values that are contained in given list. */
kind_in?: (UserKind[] | null),
/** All values that are not contained in given list. */
kind_not_in?: (UserKind[] | null),isActive?: (Scalars['Boolean'] | null),
/** All values that are not equal to given value. */
isActive_not?: (Scalars['Boolean'] | null)}


/** References User record uniquely */
export interface UserWhereUniqueInput {id?: (Scalars['ID'] | null)}

export interface VersionRequest{
    id?: boolean | number
    stage?: boolean | number
    revision?: boolean | number
    createdAt?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface VersionWhereInput {id: Scalars['ID'],stage: Stage,revision: Scalars['Int']}

export interface VoteRequest{
    /** System stage field */
    stage?: boolean | number
    /** Get the document in other stages */
    documentInStages?: [{
    /** Potential stages that should be returned */
    stages: Stage[],
    /** Decides if the current stage should be included or not */
    includeCurrent: Scalars['Boolean'],
    /** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
    inheritLocale: Scalars['Boolean']},VoteRequest]
    /** The unique identifier */
    id?: boolean | number
    /** The time the document was created */
    createdAt?: boolean | number
    /** User that created this document */
    createdBy?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `createdBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},UserRequest] | UserRequest
    /** The time the document was updated */
    updatedAt?: boolean | number
    /** User that last updated this document */
    updatedBy?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `updatedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},UserRequest] | UserRequest
    /** The time the document was published. Null on documents in draft stage. */
    publishedAt?: boolean | number
    /** User that last published this document */
    publishedBy?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `publishedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},UserRequest] | UserRequest
    product?: [{
    /**
     * Allows to optionally override locale filtering behaviour in the query's subtree.
     * 
     * Note that `product` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
     * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
     * 
     * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
     */
    locales?: (Locale[] | null)},ProductRequest] | ProductRequest
    /** List of Vote versions */
    history?: [{limit: Scalars['Int'],skip: Scalars['Int'],
    /** This is optional and can be used to fetch the document version history for a specific stage instead of the current one */
    stageOverride?: (Stage | null)},VersionRequest]
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface VoteConnectInput {
/** Document to connect */
where: VoteWhereUniqueInput,
/** Allow to specify document position in list of connected documents, will default to appending at end of list */
position?: (ConnectPositionInput | null)}


/** A connection to a list of items. */
export interface VoteConnectionRequest{
    /** Information to aid in pagination. */
    pageInfo?: PageInfoRequest
    /** A list of edges. */
    edges?: VoteEdgeRequest
    aggregate?: AggregateRequest
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface VoteCreateInput {createdAt?: (Scalars['DateTime'] | null),updatedAt?: (Scalars['DateTime'] | null),product?: (ProductCreateOneInlineInput | null)}

export interface VoteCreateManyInlineInput {
/** Create and connect multiple existing Vote documents */
create?: (VoteCreateInput[] | null),
/** Connect multiple existing Vote documents */
connect?: (VoteWhereUniqueInput[] | null)}

export interface VoteCreateOneInlineInput {
/** Create and connect one Vote document */
create?: (VoteCreateInput | null),
/** Connect one existing Vote document */
connect?: (VoteWhereUniqueInput | null)}


/** An edge in a connection. */
export interface VoteEdgeRequest{
    /** The item at the end of the edge. */
    node?: VoteRequest
    /** A cursor for use in pagination. */
    cursor?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}


/** Identifies documents */
export interface VoteManyWhereInput {
/** Contains search across all appropriate fields. */
_search?: (Scalars['String'] | null),
/** Logical AND on all given filters. */
AND?: (VoteWhereInput[] | null),
/** Logical OR on all given filters. */
OR?: (VoteWhereInput[] | null),
/** Logical NOT on all given filters combined by AND. */
NOT?: (VoteWhereInput[] | null),id?: (Scalars['ID'] | null),
/** All values that are not equal to given value. */
id_not?: (Scalars['ID'] | null),
/** All values that are contained in given list. */
id_in?: (Scalars['ID'][] | null),
/** All values that are not contained in given list. */
id_not_in?: (Scalars['ID'][] | null),
/** All values containing the given string. */
id_contains?: (Scalars['ID'] | null),
/** All values not containing the given string. */
id_not_contains?: (Scalars['ID'] | null),
/** All values starting with the given string. */
id_starts_with?: (Scalars['ID'] | null),
/** All values not starting with the given string. */
id_not_starts_with?: (Scalars['ID'] | null),
/** All values ending with the given string. */
id_ends_with?: (Scalars['ID'] | null),
/** All values not ending with the given string */
id_not_ends_with?: (Scalars['ID'] | null),createdAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
createdAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
createdAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
createdAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
createdAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
createdAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
createdAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
createdAt_gte?: (Scalars['DateTime'] | null),createdBy?: (UserWhereInput | null),updatedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
updatedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
updatedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
updatedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
updatedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
updatedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
updatedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
updatedAt_gte?: (Scalars['DateTime'] | null),updatedBy?: (UserWhereInput | null),publishedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
publishedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
publishedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
publishedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
publishedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
publishedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
publishedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
publishedAt_gte?: (Scalars['DateTime'] | null),publishedBy?: (UserWhereInput | null),product?: (ProductWhereInput | null)}

export interface VoteUpdateInput {product?: (ProductUpdateOneInlineInput | null)}

export interface VoteUpdateManyInlineInput {
/** Create and connect multiple Vote documents */
create?: (VoteCreateInput[] | null),
/** Connect multiple existing Vote documents */
connect?: (VoteConnectInput[] | null),
/** Override currently-connected documents with multiple existing Vote documents */
set?: (VoteWhereUniqueInput[] | null),
/** Update multiple Vote documents */
update?: (VoteUpdateWithNestedWhereUniqueInput[] | null),
/** Upsert multiple Vote documents */
upsert?: (VoteUpsertWithNestedWhereUniqueInput[] | null),
/** Disconnect multiple Vote documents */
disconnect?: (VoteWhereUniqueInput[] | null),
/** Delete multiple Vote documents */
delete?: (VoteWhereUniqueInput[] | null)}

export interface VoteUpdateManyInput {
/** No fields in updateMany data input */
_?: (Scalars['String'] | null)}

export interface VoteUpdateManyWithNestedWhereInput {
/** Document search */
where: VoteWhereInput,
/** Update many input */
data: VoteUpdateManyInput}

export interface VoteUpdateOneInlineInput {
/** Create and connect one Vote document */
create?: (VoteCreateInput | null),
/** Update single Vote document */
update?: (VoteUpdateWithNestedWhereUniqueInput | null),
/** Upsert single Vote document */
upsert?: (VoteUpsertWithNestedWhereUniqueInput | null),
/** Connect existing Vote document */
connect?: (VoteWhereUniqueInput | null),
/** Disconnect currently connected Vote document */
disconnect?: (Scalars['Boolean'] | null),
/** Delete currently connected Vote document */
delete?: (Scalars['Boolean'] | null)}

export interface VoteUpdateWithNestedWhereUniqueInput {
/** Unique document search */
where: VoteWhereUniqueInput,
/** Document to update */
data: VoteUpdateInput}

export interface VoteUpsertInput {
/** Create document if it didn't exist */
create: VoteCreateInput,
/** Update document if it exists */
update: VoteUpdateInput}

export interface VoteUpsertWithNestedWhereUniqueInput {
/** Unique document search */
where: VoteWhereUniqueInput,
/** Upsert data */
data: VoteUpsertInput}


/** Identifies documents */
export interface VoteWhereInput {
/** Contains search across all appropriate fields. */
_search?: (Scalars['String'] | null),
/** Logical AND on all given filters. */
AND?: (VoteWhereInput[] | null),
/** Logical OR on all given filters. */
OR?: (VoteWhereInput[] | null),
/** Logical NOT on all given filters combined by AND. */
NOT?: (VoteWhereInput[] | null),id?: (Scalars['ID'] | null),
/** All values that are not equal to given value. */
id_not?: (Scalars['ID'] | null),
/** All values that are contained in given list. */
id_in?: (Scalars['ID'][] | null),
/** All values that are not contained in given list. */
id_not_in?: (Scalars['ID'][] | null),
/** All values containing the given string. */
id_contains?: (Scalars['ID'] | null),
/** All values not containing the given string. */
id_not_contains?: (Scalars['ID'] | null),
/** All values starting with the given string. */
id_starts_with?: (Scalars['ID'] | null),
/** All values not starting with the given string. */
id_not_starts_with?: (Scalars['ID'] | null),
/** All values ending with the given string. */
id_ends_with?: (Scalars['ID'] | null),
/** All values not ending with the given string */
id_not_ends_with?: (Scalars['ID'] | null),createdAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
createdAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
createdAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
createdAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
createdAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
createdAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
createdAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
createdAt_gte?: (Scalars['DateTime'] | null),createdBy?: (UserWhereInput | null),updatedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
updatedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
updatedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
updatedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
updatedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
updatedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
updatedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
updatedAt_gte?: (Scalars['DateTime'] | null),updatedBy?: (UserWhereInput | null),publishedAt?: (Scalars['DateTime'] | null),
/** All values that are not equal to given value. */
publishedAt_not?: (Scalars['DateTime'] | null),
/** All values that are contained in given list. */
publishedAt_in?: (Scalars['DateTime'][] | null),
/** All values that are not contained in given list. */
publishedAt_not_in?: (Scalars['DateTime'][] | null),
/** All values less than the given value. */
publishedAt_lt?: (Scalars['DateTime'] | null),
/** All values less than or equal the given value. */
publishedAt_lte?: (Scalars['DateTime'] | null),
/** All values greater than the given value. */
publishedAt_gt?: (Scalars['DateTime'] | null),
/** All values greater than or equal the given value. */
publishedAt_gte?: (Scalars['DateTime'] | null),publishedBy?: (UserWhereInput | null),product?: (ProductWhereInput | null)}


/** References Vote record uniquely */
export interface VoteWhereUniqueInput {id?: (Scalars['ID'] | null)}


const Aggregate_possibleTypes = ['Aggregate']
export const isAggregate = (obj?: { __typename?: any } | null): obj is Aggregate => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isAggregate"')
  return Aggregate_possibleTypes.includes(obj.__typename)
}



const Asset_possibleTypes = ['Asset']
export const isAsset = (obj?: { __typename?: any } | null): obj is Asset => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isAsset"')
  return Asset_possibleTypes.includes(obj.__typename)
}



const AssetConnection_possibleTypes = ['AssetConnection']
export const isAssetConnection = (obj?: { __typename?: any } | null): obj is AssetConnection => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isAssetConnection"')
  return AssetConnection_possibleTypes.includes(obj.__typename)
}



const AssetEdge_possibleTypes = ['AssetEdge']
export const isAssetEdge = (obj?: { __typename?: any } | null): obj is AssetEdge => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isAssetEdge"')
  return AssetEdge_possibleTypes.includes(obj.__typename)
}



const BatchPayload_possibleTypes = ['BatchPayload']
export const isBatchPayload = (obj?: { __typename?: any } | null): obj is BatchPayload => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isBatchPayload"')
  return BatchPayload_possibleTypes.includes(obj.__typename)
}



const Color_possibleTypes = ['Color']
export const isColor = (obj?: { __typename?: any } | null): obj is Color => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isColor"')
  return Color_possibleTypes.includes(obj.__typename)
}



const DocumentVersion_possibleTypes = ['DocumentVersion']
export const isDocumentVersion = (obj?: { __typename?: any } | null): obj is DocumentVersion => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isDocumentVersion"')
  return DocumentVersion_possibleTypes.includes(obj.__typename)
}



const Location_possibleTypes = ['Location']
export const isLocation = (obj?: { __typename?: any } | null): obj is Location => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isLocation"')
  return Location_possibleTypes.includes(obj.__typename)
}



const Mutation_possibleTypes = ['Mutation']
export const isMutation = (obj?: { __typename?: any } | null): obj is Mutation => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isMutation"')
  return Mutation_possibleTypes.includes(obj.__typename)
}



const Node_possibleTypes = ['Asset','Product','Review','User','Vote']
export const isNode = (obj?: { __typename?: any } | null): obj is Node => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isNode"')
  return Node_possibleTypes.includes(obj.__typename)
}



const PageInfo_possibleTypes = ['PageInfo']
export const isPageInfo = (obj?: { __typename?: any } | null): obj is PageInfo => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isPageInfo"')
  return PageInfo_possibleTypes.includes(obj.__typename)
}



const Product_possibleTypes = ['Product']
export const isProduct = (obj?: { __typename?: any } | null): obj is Product => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isProduct"')
  return Product_possibleTypes.includes(obj.__typename)
}



const ProductConnection_possibleTypes = ['ProductConnection']
export const isProductConnection = (obj?: { __typename?: any } | null): obj is ProductConnection => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isProductConnection"')
  return ProductConnection_possibleTypes.includes(obj.__typename)
}



const ProductEdge_possibleTypes = ['ProductEdge']
export const isProductEdge = (obj?: { __typename?: any } | null): obj is ProductEdge => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isProductEdge"')
  return ProductEdge_possibleTypes.includes(obj.__typename)
}



const Query_possibleTypes = ['Query']
export const isQuery = (obj?: { __typename?: any } | null): obj is Query => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isQuery"')
  return Query_possibleTypes.includes(obj.__typename)
}



const RGBA_possibleTypes = ['RGBA']
export const isRGBA = (obj?: { __typename?: any } | null): obj is RGBA => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isRGBA"')
  return RGBA_possibleTypes.includes(obj.__typename)
}



const Review_possibleTypes = ['Review']
export const isReview = (obj?: { __typename?: any } | null): obj is Review => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isReview"')
  return Review_possibleTypes.includes(obj.__typename)
}



const ReviewConnection_possibleTypes = ['ReviewConnection']
export const isReviewConnection = (obj?: { __typename?: any } | null): obj is ReviewConnection => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isReviewConnection"')
  return ReviewConnection_possibleTypes.includes(obj.__typename)
}



const ReviewEdge_possibleTypes = ['ReviewEdge']
export const isReviewEdge = (obj?: { __typename?: any } | null): obj is ReviewEdge => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isReviewEdge"')
  return ReviewEdge_possibleTypes.includes(obj.__typename)
}



const RichText_possibleTypes = ['RichText']
export const isRichText = (obj?: { __typename?: any } | null): obj is RichText => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isRichText"')
  return RichText_possibleTypes.includes(obj.__typename)
}



const User_possibleTypes = ['User']
export const isUser = (obj?: { __typename?: any } | null): obj is User => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isUser"')
  return User_possibleTypes.includes(obj.__typename)
}



const UserConnection_possibleTypes = ['UserConnection']
export const isUserConnection = (obj?: { __typename?: any } | null): obj is UserConnection => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isUserConnection"')
  return UserConnection_possibleTypes.includes(obj.__typename)
}



const UserEdge_possibleTypes = ['UserEdge']
export const isUserEdge = (obj?: { __typename?: any } | null): obj is UserEdge => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isUserEdge"')
  return UserEdge_possibleTypes.includes(obj.__typename)
}



const Version_possibleTypes = ['Version']
export const isVersion = (obj?: { __typename?: any } | null): obj is Version => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isVersion"')
  return Version_possibleTypes.includes(obj.__typename)
}



const Vote_possibleTypes = ['Vote']
export const isVote = (obj?: { __typename?: any } | null): obj is Vote => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isVote"')
  return Vote_possibleTypes.includes(obj.__typename)
}



const VoteConnection_possibleTypes = ['VoteConnection']
export const isVoteConnection = (obj?: { __typename?: any } | null): obj is VoteConnection => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isVoteConnection"')
  return VoteConnection_possibleTypes.includes(obj.__typename)
}



const VoteEdge_possibleTypes = ['VoteEdge']
export const isVoteEdge = (obj?: { __typename?: any } | null): obj is VoteEdge => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isVoteEdge"')
  return VoteEdge_possibleTypes.includes(obj.__typename)
}


export interface AggregatePromiseChain{
    count: ({get: (request?: boolean|number, defaultValue?: Scalars['Int']) => Promise<Scalars['Int']>})
}

export interface AggregateObservableChain{
    count: ({get: (request?: boolean|number, defaultValue?: Scalars['Int']) => Observable<Scalars['Int']>})
}


/** Asset system model */
export interface AssetPromiseChain{
    
/** System stage field */
stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Promise<Stage>}),
    
/** System Locale field */
locale: ({get: (request?: boolean|number, defaultValue?: Locale) => Promise<Locale>}),
    
/** Get the other localizations for this document */
localizations: ((args: {
/** Potential locales that should be returned */
locales: Locale[],
/** Decides if the current locale should be included or not */
includeCurrent: Scalars['Boolean']}) => {get: <R extends AssetRequest>(request: R, defaultValue?: FieldsSelection<Asset, R>[]) => Promise<FieldsSelection<Asset, R>[]>}),
    
/** Get the document in other stages */
documentInStages: ((args: {
/** Potential stages that should be returned */
stages: Stage[],
/** Decides if the current stage should be included or not */
includeCurrent: Scalars['Boolean'],
/** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
inheritLocale: Scalars['Boolean']}) => {get: <R extends AssetRequest>(request: R, defaultValue?: FieldsSelection<Asset, R>[]) => Promise<FieldsSelection<Asset, R>[]>}),
    
/** The unique identifier */
id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Promise<Scalars['ID']>}),
    
/** The time the document was created */
createdAt: ((args: {
/** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
variation: SystemDateTimeFieldVariation}) => {get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Promise<Scalars['DateTime']>}),
    
/** User that created this document */
createdBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `createdBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>})&(UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was updated */
updatedAt: ((args: {
/** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
variation: SystemDateTimeFieldVariation}) => {get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Promise<Scalars['DateTime']>}),
    
/** User that last updated this document */
updatedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `updatedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>})&(UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was published. Null on documents in draft stage. */
publishedAt: ((args: {
/** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
variation: SystemDateTimeFieldVariation}) => {get: (request?: boolean|number, defaultValue?: (Scalars['DateTime'] | undefined)) => Promise<(Scalars['DateTime'] | undefined)>}),
    
/** User that last published this document */
publishedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `publishedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>})&(UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>}),
    
/** The file handle */
handle: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>}),
    
/** The file name */
fileName: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>}),
    
/** The height of the file */
height: ({get: (request?: boolean|number, defaultValue?: (Scalars['Float'] | undefined)) => Promise<(Scalars['Float'] | undefined)>}),
    
/** The file width */
width: ({get: (request?: boolean|number, defaultValue?: (Scalars['Float'] | undefined)) => Promise<(Scalars['Float'] | undefined)>}),
    
/** The file size */
size: ({get: (request?: boolean|number, defaultValue?: (Scalars['Float'] | undefined)) => Promise<(Scalars['Float'] | undefined)>}),
    
/** The mime type of the file */
mimeType: ({get: (request?: boolean|number, defaultValue?: (Scalars['String'] | undefined)) => Promise<(Scalars['String'] | undefined)>}),
    productImage: ((args?: {where?: (ProductWhereInput | null),orderBy?: (ProductOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `productImage` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => {get: <R extends ProductRequest>(request: R, defaultValue?: FieldsSelection<Product, R>[]) => Promise<FieldsSelection<Product, R>[]>})&({get: <R extends ProductRequest>(request: R, defaultValue?: FieldsSelection<Product, R>[]) => Promise<FieldsSelection<Product, R>[]>}),
    
/** List of Asset versions */
history: ((args: {limit: Scalars['Int'],skip: Scalars['Int'],
/** This is optional and can be used to fetch the document version history for a specific stage instead of the current one */
stageOverride?: (Stage | null)}) => {get: <R extends VersionRequest>(request: R, defaultValue?: FieldsSelection<Version, R>[]) => Promise<FieldsSelection<Version, R>[]>}),
    
/** Get the url for the asset with provided transformations applied. */
url: ((args?: {transformation?: (AssetTransformationInput | null)}) => {get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>})&({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>})
}


/** Asset system model */
export interface AssetObservableChain{
    
/** System stage field */
stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Observable<Stage>}),
    
/** System Locale field */
locale: ({get: (request?: boolean|number, defaultValue?: Locale) => Observable<Locale>}),
    
/** Get the other localizations for this document */
localizations: ((args: {
/** Potential locales that should be returned */
locales: Locale[],
/** Decides if the current locale should be included or not */
includeCurrent: Scalars['Boolean']}) => {get: <R extends AssetRequest>(request: R, defaultValue?: FieldsSelection<Asset, R>[]) => Observable<FieldsSelection<Asset, R>[]>}),
    
/** Get the document in other stages */
documentInStages: ((args: {
/** Potential stages that should be returned */
stages: Stage[],
/** Decides if the current stage should be included or not */
includeCurrent: Scalars['Boolean'],
/** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
inheritLocale: Scalars['Boolean']}) => {get: <R extends AssetRequest>(request: R, defaultValue?: FieldsSelection<Asset, R>[]) => Observable<FieldsSelection<Asset, R>[]>}),
    
/** The unique identifier */
id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Observable<Scalars['ID']>}),
    
/** The time the document was created */
createdAt: ((args: {
/** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
variation: SystemDateTimeFieldVariation}) => {get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Observable<Scalars['DateTime']>}),
    
/** User that created this document */
createdBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `createdBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>})&(UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was updated */
updatedAt: ((args: {
/** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
variation: SystemDateTimeFieldVariation}) => {get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Observable<Scalars['DateTime']>}),
    
/** User that last updated this document */
updatedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `updatedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>})&(UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was published. Null on documents in draft stage. */
publishedAt: ((args: {
/** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
variation: SystemDateTimeFieldVariation}) => {get: (request?: boolean|number, defaultValue?: (Scalars['DateTime'] | undefined)) => Observable<(Scalars['DateTime'] | undefined)>}),
    
/** User that last published this document */
publishedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `publishedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>})&(UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>}),
    
/** The file handle */
handle: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>}),
    
/** The file name */
fileName: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>}),
    
/** The height of the file */
height: ({get: (request?: boolean|number, defaultValue?: (Scalars['Float'] | undefined)) => Observable<(Scalars['Float'] | undefined)>}),
    
/** The file width */
width: ({get: (request?: boolean|number, defaultValue?: (Scalars['Float'] | undefined)) => Observable<(Scalars['Float'] | undefined)>}),
    
/** The file size */
size: ({get: (request?: boolean|number, defaultValue?: (Scalars['Float'] | undefined)) => Observable<(Scalars['Float'] | undefined)>}),
    
/** The mime type of the file */
mimeType: ({get: (request?: boolean|number, defaultValue?: (Scalars['String'] | undefined)) => Observable<(Scalars['String'] | undefined)>}),
    productImage: ((args?: {where?: (ProductWhereInput | null),orderBy?: (ProductOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `productImage` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => {get: <R extends ProductRequest>(request: R, defaultValue?: FieldsSelection<Product, R>[]) => Observable<FieldsSelection<Product, R>[]>})&({get: <R extends ProductRequest>(request: R, defaultValue?: FieldsSelection<Product, R>[]) => Observable<FieldsSelection<Product, R>[]>}),
    
/** List of Asset versions */
history: ((args: {limit: Scalars['Int'],skip: Scalars['Int'],
/** This is optional and can be used to fetch the document version history for a specific stage instead of the current one */
stageOverride?: (Stage | null)}) => {get: <R extends VersionRequest>(request: R, defaultValue?: FieldsSelection<Version, R>[]) => Observable<FieldsSelection<Version, R>[]>}),
    
/** Get the url for the asset with provided transformations applied. */
url: ((args?: {transformation?: (AssetTransformationInput | null)}) => {get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>})&({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>})
}


/** A connection to a list of items. */
export interface AssetConnectionPromiseChain{
    
/** Information to aid in pagination. */
pageInfo: (PageInfoPromiseChain & {get: <R extends PageInfoRequest>(request: R, defaultValue?: FieldsSelection<PageInfo, R>) => Promise<FieldsSelection<PageInfo, R>>}),
    
/** A list of edges. */
edges: ({get: <R extends AssetEdgeRequest>(request: R, defaultValue?: FieldsSelection<AssetEdge, R>[]) => Promise<FieldsSelection<AssetEdge, R>[]>}),
    aggregate: (AggregatePromiseChain & {get: <R extends AggregateRequest>(request: R, defaultValue?: FieldsSelection<Aggregate, R>) => Promise<FieldsSelection<Aggregate, R>>})
}


/** A connection to a list of items. */
export interface AssetConnectionObservableChain{
    
/** Information to aid in pagination. */
pageInfo: (PageInfoObservableChain & {get: <R extends PageInfoRequest>(request: R, defaultValue?: FieldsSelection<PageInfo, R>) => Observable<FieldsSelection<PageInfo, R>>}),
    
/** A list of edges. */
edges: ({get: <R extends AssetEdgeRequest>(request: R, defaultValue?: FieldsSelection<AssetEdge, R>[]) => Observable<FieldsSelection<AssetEdge, R>[]>}),
    aggregate: (AggregateObservableChain & {get: <R extends AggregateRequest>(request: R, defaultValue?: FieldsSelection<Aggregate, R>) => Observable<FieldsSelection<Aggregate, R>>})
}


/** An edge in a connection. */
export interface AssetEdgePromiseChain{
    
/** The item at the end of the edge. */
node: (AssetPromiseChain & {get: <R extends AssetRequest>(request: R, defaultValue?: FieldsSelection<Asset, R>) => Promise<FieldsSelection<Asset, R>>}),
    
/** A cursor for use in pagination. */
cursor: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>})
}


/** An edge in a connection. */
export interface AssetEdgeObservableChain{
    
/** The item at the end of the edge. */
node: (AssetObservableChain & {get: <R extends AssetRequest>(request: R, defaultValue?: FieldsSelection<Asset, R>) => Observable<FieldsSelection<Asset, R>>}),
    
/** A cursor for use in pagination. */
cursor: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>})
}

export interface BatchPayloadPromiseChain{
    
/** The number of nodes that have been affected by the Batch operation. */
count: ({get: (request?: boolean|number, defaultValue?: Scalars['Long']) => Promise<Scalars['Long']>})
}

export interface BatchPayloadObservableChain{
    
/** The number of nodes that have been affected by the Batch operation. */
count: ({get: (request?: boolean|number, defaultValue?: Scalars['Long']) => Observable<Scalars['Long']>})
}


/** Representing a color value comprising of HEX, RGBA and css color values */
export interface ColorPromiseChain{
    hex: ({get: (request?: boolean|number, defaultValue?: Scalars['Hex']) => Promise<Scalars['Hex']>}),
    rgba: (RGBAPromiseChain & {get: <R extends RGBARequest>(request: R, defaultValue?: FieldsSelection<RGBA, R>) => Promise<FieldsSelection<RGBA, R>>}),
    css: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>})
}


/** Representing a color value comprising of HEX, RGBA and css color values */
export interface ColorObservableChain{
    hex: ({get: (request?: boolean|number, defaultValue?: Scalars['Hex']) => Observable<Scalars['Hex']>}),
    rgba: (RGBAObservableChain & {get: <R extends RGBARequest>(request: R, defaultValue?: FieldsSelection<RGBA, R>) => Observable<FieldsSelection<RGBA, R>>}),
    css: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>})
}

export interface DocumentVersionPromiseChain{
    id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Promise<Scalars['ID']>}),
    stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Promise<Stage>}),
    revision: ({get: (request?: boolean|number, defaultValue?: Scalars['Int']) => Promise<Scalars['Int']>}),
    createdAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Promise<Scalars['DateTime']>}),
    data: ({get: (request?: boolean|number, defaultValue?: (Scalars['Json'] | undefined)) => Promise<(Scalars['Json'] | undefined)>})
}

export interface DocumentVersionObservableChain{
    id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Observable<Scalars['ID']>}),
    stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Observable<Stage>}),
    revision: ({get: (request?: boolean|number, defaultValue?: Scalars['Int']) => Observable<Scalars['Int']>}),
    createdAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Observable<Scalars['DateTime']>}),
    data: ({get: (request?: boolean|number, defaultValue?: (Scalars['Json'] | undefined)) => Observable<(Scalars['Json'] | undefined)>})
}


/** Representing a geolocation point with latitude and longitude */
export interface LocationPromiseChain{
    latitude: ({get: (request?: boolean|number, defaultValue?: Scalars['Float']) => Promise<Scalars['Float']>}),
    longitude: ({get: (request?: boolean|number, defaultValue?: Scalars['Float']) => Promise<Scalars['Float']>}),
    distance: ((args: {from: LocationInput}) => {get: (request?: boolean|number, defaultValue?: Scalars['Float']) => Promise<Scalars['Float']>})
}


/** Representing a geolocation point with latitude and longitude */
export interface LocationObservableChain{
    latitude: ({get: (request?: boolean|number, defaultValue?: Scalars['Float']) => Observable<Scalars['Float']>}),
    longitude: ({get: (request?: boolean|number, defaultValue?: Scalars['Float']) => Observable<Scalars['Float']>}),
    distance: ((args: {from: LocationInput}) => {get: (request?: boolean|number, defaultValue?: Scalars['Float']) => Observable<Scalars['Float']>})
}

export interface MutationPromiseChain{
    
/**
 * @deprecated Asset mutations will be overhauled soon
 * Create one asset
 */
createAsset: ((args: {data: AssetCreateInput}) => AssetPromiseChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Promise<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Update one asset */
updateAsset: ((args: {where: AssetWhereUniqueInput,data: AssetUpdateInput}) => AssetPromiseChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Promise<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Delete one asset from _all_ existing stages. Returns deleted document. */
deleteAsset: ((args: {
/** Document to delete */
where: AssetWhereUniqueInput}) => AssetPromiseChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Promise<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Upsert one asset */
upsertAsset: ((args: {where: AssetWhereUniqueInput,upsert: AssetUpsertInput}) => AssetPromiseChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Promise<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Publish one asset */
publishAsset: ((args: {
/** Document to publish */
where: AssetWhereUniqueInput,
/** Optional localizations to publish */
locales?: (Locale[] | null),
/** Whether to publish the base document */
publishBase?: (Scalars['Boolean'] | null),
/** Whether to include the default locale when publishBase is set */
withDefaultLocale?: (Scalars['Boolean'] | null),
/** Publishing target stage */
to: Stage[]}) => AssetPromiseChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Promise<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Unpublish one asset from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
unpublishAsset: ((args: {
/** Document to unpublish */
where: AssetWhereUniqueInput,
/** Stages to unpublish document from */
from: Stage[],
/** Optional locales to unpublish. Unpublishing the default locale will completely remove the document from the selected stages */
locales?: (Locale[] | null),
/** Unpublish complete document including default localization and relations from stages. Can be disabled. */
unpublishBase?: (Scalars['Boolean'] | null)}) => AssetPromiseChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Promise<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Update many Asset documents */
updateManyAssetsConnection: ((args: {
/** Documents to apply update on */
where?: (AssetManyWhereInput | null),
/** Updates to document content */
data: AssetUpdateManyInput,skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => AssetConnectionPromiseChain & {get: <R extends AssetConnectionRequest>(request: R, defaultValue?: FieldsSelection<AssetConnection, R>) => Promise<FieldsSelection<AssetConnection, R>>}),
    
/** Delete many Asset documents, return deleted documents */
deleteManyAssetsConnection: ((args?: {
/** Documents to delete */
where?: (AssetManyWhereInput | null),skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => AssetConnectionPromiseChain & {get: <R extends AssetConnectionRequest>(request: R, defaultValue?: FieldsSelection<AssetConnection, R>) => Promise<FieldsSelection<AssetConnection, R>>})&(AssetConnectionPromiseChain & {get: <R extends AssetConnectionRequest>(request: R, defaultValue?: FieldsSelection<AssetConnection, R>) => Promise<FieldsSelection<AssetConnection, R>>}),
    
/** Publish many Asset documents */
publishManyAssetsConnection: ((args: {
/** Identifies documents in each stage to be published */
where?: (AssetManyWhereInput | null),
/** Stage to find matching documents in */
from?: (Stage | null),
/** Stages to publish documents to */
to: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null),
/** Document localizations to publish */
locales?: (Locale[] | null),
/** Whether to publish the base document */
publishBase?: (Scalars['Boolean'] | null),
/** Whether to include the default locale when publishBase is true */
withDefaultLocale?: (Scalars['Boolean'] | null)}) => AssetConnectionPromiseChain & {get: <R extends AssetConnectionRequest>(request: R, defaultValue?: FieldsSelection<AssetConnection, R>) => Promise<FieldsSelection<AssetConnection, R>>}),
    
/** Find many Asset documents that match criteria in specified stage and unpublish from target stages */
unpublishManyAssetsConnection: ((args: {
/** Identifies documents in draft stage */
where?: (AssetManyWhereInput | null),
/** Stage to find matching documents in */
stage?: (Stage | null),
/** Stages to unpublish documents from */
from: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null),
/** Locales to unpublish */
locales?: (Locale[] | null),
/** Whether to unpublish the base document and default localization */
unpublishBase?: (Scalars['Boolean'] | null)}) => AssetConnectionPromiseChain & {get: <R extends AssetConnectionRequest>(request: R, defaultValue?: FieldsSelection<AssetConnection, R>) => Promise<FieldsSelection<AssetConnection, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (updateManyAssetsConnection)
 * Update many assets
 */
updateManyAssets: ((args: {
/** Documents to apply update on */
where?: (AssetManyWhereInput | null),
/** Updates to document content */
data: AssetUpdateManyInput}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (deleteManyAssetsConnection)
 * Delete many Asset documents
 */
deleteManyAssets: ((args?: {
/** Documents to delete */
where?: (AssetManyWhereInput | null)}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>})&(BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (publishManyAssetsConnection)
 * Publish many Asset documents
 */
publishManyAssets: ((args: {
/** Identifies documents in each stage to be published */
where?: (AssetManyWhereInput | null),
/** Stages to publish documents to */
to: Stage[],
/** Document localizations to publish */
locales?: (Locale[] | null),
/** Whether to publish the base document */
publishBase?: (Scalars['Boolean'] | null),
/** Whether to include the default locale when publishBase is true */
withDefaultLocale?: (Scalars['Boolean'] | null)}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (unpublishManyAssetsConnection)
 * Unpublish many Asset documents
 */
unpublishManyAssets: ((args: {
/** Identifies documents in each stage */
where?: (AssetManyWhereInput | null),
/** Stages to unpublish documents from */
from: Stage[],
/** Locales to unpublish */
locales?: (Locale[] | null),
/** Whether to unpublish the base document and default localization */
unpublishBase?: (Scalars['Boolean'] | null)}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/** Create one product */
createProduct: ((args: {data: ProductCreateInput}) => ProductPromiseChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Promise<(FieldsSelection<Product, R> | undefined)>}),
    
/** Update one product */
updateProduct: ((args: {where: ProductWhereUniqueInput,data: ProductUpdateInput}) => ProductPromiseChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Promise<(FieldsSelection<Product, R> | undefined)>}),
    
/** Delete one product from _all_ existing stages. Returns deleted document. */
deleteProduct: ((args: {
/** Document to delete */
where: ProductWhereUniqueInput}) => ProductPromiseChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Promise<(FieldsSelection<Product, R> | undefined)>}),
    
/** Upsert one product */
upsertProduct: ((args: {where: ProductWhereUniqueInput,upsert: ProductUpsertInput}) => ProductPromiseChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Promise<(FieldsSelection<Product, R> | undefined)>}),
    
/** Publish one product */
publishProduct: ((args: {
/** Document to publish */
where: ProductWhereUniqueInput,
/** Optional localizations to publish */
locales?: (Locale[] | null),
/** Whether to publish the base document */
publishBase?: (Scalars['Boolean'] | null),
/** Whether to include the default locale when publishBase is set */
withDefaultLocale?: (Scalars['Boolean'] | null),
/** Publishing target stage */
to: Stage[]}) => ProductPromiseChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Promise<(FieldsSelection<Product, R> | undefined)>}),
    
/** Unpublish one product from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
unpublishProduct: ((args: {
/** Document to unpublish */
where: ProductWhereUniqueInput,
/** Stages to unpublish document from */
from: Stage[],
/** Optional locales to unpublish. Unpublishing the default locale will completely remove the document from the selected stages */
locales?: (Locale[] | null),
/** Unpublish complete document including default localization and relations from stages. Can be disabled. */
unpublishBase?: (Scalars['Boolean'] | null)}) => ProductPromiseChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Promise<(FieldsSelection<Product, R> | undefined)>}),
    
/** Update many Product documents */
updateManyProductsConnection: ((args: {
/** Documents to apply update on */
where?: (ProductManyWhereInput | null),
/** Updates to document content */
data: ProductUpdateManyInput,skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => ProductConnectionPromiseChain & {get: <R extends ProductConnectionRequest>(request: R, defaultValue?: FieldsSelection<ProductConnection, R>) => Promise<FieldsSelection<ProductConnection, R>>}),
    
/** Delete many Product documents, return deleted documents */
deleteManyProductsConnection: ((args?: {
/** Documents to delete */
where?: (ProductManyWhereInput | null),skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => ProductConnectionPromiseChain & {get: <R extends ProductConnectionRequest>(request: R, defaultValue?: FieldsSelection<ProductConnection, R>) => Promise<FieldsSelection<ProductConnection, R>>})&(ProductConnectionPromiseChain & {get: <R extends ProductConnectionRequest>(request: R, defaultValue?: FieldsSelection<ProductConnection, R>) => Promise<FieldsSelection<ProductConnection, R>>}),
    
/** Publish many Product documents */
publishManyProductsConnection: ((args: {
/** Identifies documents in each stage to be published */
where?: (ProductManyWhereInput | null),
/** Stage to find matching documents in */
from?: (Stage | null),
/** Stages to publish documents to */
to: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null),
/** Document localizations to publish */
locales?: (Locale[] | null),
/** Whether to publish the base document */
publishBase?: (Scalars['Boolean'] | null),
/** Whether to include the default locale when publishBase is true */
withDefaultLocale?: (Scalars['Boolean'] | null)}) => ProductConnectionPromiseChain & {get: <R extends ProductConnectionRequest>(request: R, defaultValue?: FieldsSelection<ProductConnection, R>) => Promise<FieldsSelection<ProductConnection, R>>}),
    
/** Find many Product documents that match criteria in specified stage and unpublish from target stages */
unpublishManyProductsConnection: ((args: {
/** Identifies documents in draft stage */
where?: (ProductManyWhereInput | null),
/** Stage to find matching documents in */
stage?: (Stage | null),
/** Stages to unpublish documents from */
from: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null),
/** Locales to unpublish */
locales?: (Locale[] | null),
/** Whether to unpublish the base document and default localization */
unpublishBase?: (Scalars['Boolean'] | null)}) => ProductConnectionPromiseChain & {get: <R extends ProductConnectionRequest>(request: R, defaultValue?: FieldsSelection<ProductConnection, R>) => Promise<FieldsSelection<ProductConnection, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (updateManyProductsConnection)
 * Update many products
 */
updateManyProducts: ((args: {
/** Documents to apply update on */
where?: (ProductManyWhereInput | null),
/** Updates to document content */
data: ProductUpdateManyInput}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (deleteManyProductsConnection)
 * Delete many Product documents
 */
deleteManyProducts: ((args?: {
/** Documents to delete */
where?: (ProductManyWhereInput | null)}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>})&(BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (publishManyProductsConnection)
 * Publish many Product documents
 */
publishManyProducts: ((args: {
/** Identifies documents in each stage to be published */
where?: (ProductManyWhereInput | null),
/** Stages to publish documents to */
to: Stage[],
/** Document localizations to publish */
locales?: (Locale[] | null),
/** Whether to publish the base document */
publishBase?: (Scalars['Boolean'] | null),
/** Whether to include the default locale when publishBase is true */
withDefaultLocale?: (Scalars['Boolean'] | null)}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (unpublishManyProductsConnection)
 * Unpublish many Product documents
 */
unpublishManyProducts: ((args: {
/** Identifies documents in each stage */
where?: (ProductManyWhereInput | null),
/** Stages to unpublish documents from */
from: Stage[],
/** Locales to unpublish */
locales?: (Locale[] | null),
/** Whether to unpublish the base document and default localization */
unpublishBase?: (Scalars['Boolean'] | null)}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/** Create one review */
createReview: ((args: {data: ReviewCreateInput}) => ReviewPromiseChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Promise<(FieldsSelection<Review, R> | undefined)>}),
    
/** Update one review */
updateReview: ((args: {where: ReviewWhereUniqueInput,data: ReviewUpdateInput}) => ReviewPromiseChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Promise<(FieldsSelection<Review, R> | undefined)>}),
    
/** Delete one review from _all_ existing stages. Returns deleted document. */
deleteReview: ((args: {
/** Document to delete */
where: ReviewWhereUniqueInput}) => ReviewPromiseChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Promise<(FieldsSelection<Review, R> | undefined)>}),
    
/** Upsert one review */
upsertReview: ((args: {where: ReviewWhereUniqueInput,upsert: ReviewUpsertInput}) => ReviewPromiseChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Promise<(FieldsSelection<Review, R> | undefined)>}),
    
/** Publish one review */
publishReview: ((args: {
/** Document to publish */
where: ReviewWhereUniqueInput,
/** Publishing target stage */
to: Stage[]}) => ReviewPromiseChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Promise<(FieldsSelection<Review, R> | undefined)>}),
    
/** Unpublish one review from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
unpublishReview: ((args: {
/** Document to unpublish */
where: ReviewWhereUniqueInput,
/** Stages to unpublish document from */
from: Stage[]}) => ReviewPromiseChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Promise<(FieldsSelection<Review, R> | undefined)>}),
    
/** Update many Review documents */
updateManyReviewsConnection: ((args: {
/** Documents to apply update on */
where?: (ReviewManyWhereInput | null),
/** Updates to document content */
data: ReviewUpdateManyInput,skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => ReviewConnectionPromiseChain & {get: <R extends ReviewConnectionRequest>(request: R, defaultValue?: FieldsSelection<ReviewConnection, R>) => Promise<FieldsSelection<ReviewConnection, R>>}),
    
/** Delete many Review documents, return deleted documents */
deleteManyReviewsConnection: ((args?: {
/** Documents to delete */
where?: (ReviewManyWhereInput | null),skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => ReviewConnectionPromiseChain & {get: <R extends ReviewConnectionRequest>(request: R, defaultValue?: FieldsSelection<ReviewConnection, R>) => Promise<FieldsSelection<ReviewConnection, R>>})&(ReviewConnectionPromiseChain & {get: <R extends ReviewConnectionRequest>(request: R, defaultValue?: FieldsSelection<ReviewConnection, R>) => Promise<FieldsSelection<ReviewConnection, R>>}),
    
/** Publish many Review documents */
publishManyReviewsConnection: ((args: {
/** Identifies documents in each stage to be published */
where?: (ReviewManyWhereInput | null),
/** Stage to find matching documents in */
from?: (Stage | null),
/** Stages to publish documents to */
to: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => ReviewConnectionPromiseChain & {get: <R extends ReviewConnectionRequest>(request: R, defaultValue?: FieldsSelection<ReviewConnection, R>) => Promise<FieldsSelection<ReviewConnection, R>>}),
    
/** Find many Review documents that match criteria in specified stage and unpublish from target stages */
unpublishManyReviewsConnection: ((args: {
/** Identifies documents in draft stage */
where?: (ReviewManyWhereInput | null),
/** Stage to find matching documents in */
stage?: (Stage | null),
/** Stages to unpublish documents from */
from: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => ReviewConnectionPromiseChain & {get: <R extends ReviewConnectionRequest>(request: R, defaultValue?: FieldsSelection<ReviewConnection, R>) => Promise<FieldsSelection<ReviewConnection, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (updateManyReviewsConnection)
 * Update many reviews
 */
updateManyReviews: ((args: {
/** Documents to apply update on */
where?: (ReviewManyWhereInput | null),
/** Updates to document content */
data: ReviewUpdateManyInput}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (deleteManyReviewsConnection)
 * Delete many Review documents
 */
deleteManyReviews: ((args?: {
/** Documents to delete */
where?: (ReviewManyWhereInput | null)}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>})&(BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (publishManyReviewsConnection)
 * Publish many Review documents
 */
publishManyReviews: ((args: {
/** Identifies documents in each stage to be published */
where?: (ReviewManyWhereInput | null),
/** Stages to publish documents to */
to: Stage[]}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (unpublishManyReviewsConnection)
 * Unpublish many Review documents
 */
unpublishManyReviews: ((args: {
/** Identifies documents in each stage */
where?: (ReviewManyWhereInput | null),
/** Stages to unpublish documents from */
from: Stage[]}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/** Create one vote */
createVote: ((args: {data: VoteCreateInput}) => VotePromiseChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Promise<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Update one vote */
updateVote: ((args: {where: VoteWhereUniqueInput,data: VoteUpdateInput}) => VotePromiseChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Promise<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Delete one vote from _all_ existing stages. Returns deleted document. */
deleteVote: ((args: {
/** Document to delete */
where: VoteWhereUniqueInput}) => VotePromiseChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Promise<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Upsert one vote */
upsertVote: ((args: {where: VoteWhereUniqueInput,upsert: VoteUpsertInput}) => VotePromiseChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Promise<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Publish one vote */
publishVote: ((args: {
/** Document to publish */
where: VoteWhereUniqueInput,
/** Publishing target stage */
to: Stage[]}) => VotePromiseChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Promise<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Unpublish one vote from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
unpublishVote: ((args: {
/** Document to unpublish */
where: VoteWhereUniqueInput,
/** Stages to unpublish document from */
from: Stage[]}) => VotePromiseChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Promise<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Update many Vote documents */
updateManyVotesConnection: ((args: {
/** Documents to apply update on */
where?: (VoteManyWhereInput | null),
/** Updates to document content */
data: VoteUpdateManyInput,skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => VoteConnectionPromiseChain & {get: <R extends VoteConnectionRequest>(request: R, defaultValue?: FieldsSelection<VoteConnection, R>) => Promise<FieldsSelection<VoteConnection, R>>}),
    
/** Delete many Vote documents, return deleted documents */
deleteManyVotesConnection: ((args?: {
/** Documents to delete */
where?: (VoteManyWhereInput | null),skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => VoteConnectionPromiseChain & {get: <R extends VoteConnectionRequest>(request: R, defaultValue?: FieldsSelection<VoteConnection, R>) => Promise<FieldsSelection<VoteConnection, R>>})&(VoteConnectionPromiseChain & {get: <R extends VoteConnectionRequest>(request: R, defaultValue?: FieldsSelection<VoteConnection, R>) => Promise<FieldsSelection<VoteConnection, R>>}),
    
/** Publish many Vote documents */
publishManyVotesConnection: ((args: {
/** Identifies documents in each stage to be published */
where?: (VoteManyWhereInput | null),
/** Stage to find matching documents in */
from?: (Stage | null),
/** Stages to publish documents to */
to: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => VoteConnectionPromiseChain & {get: <R extends VoteConnectionRequest>(request: R, defaultValue?: FieldsSelection<VoteConnection, R>) => Promise<FieldsSelection<VoteConnection, R>>}),
    
/** Find many Vote documents that match criteria in specified stage and unpublish from target stages */
unpublishManyVotesConnection: ((args: {
/** Identifies documents in draft stage */
where?: (VoteManyWhereInput | null),
/** Stage to find matching documents in */
stage?: (Stage | null),
/** Stages to unpublish documents from */
from: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => VoteConnectionPromiseChain & {get: <R extends VoteConnectionRequest>(request: R, defaultValue?: FieldsSelection<VoteConnection, R>) => Promise<FieldsSelection<VoteConnection, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (updateManyVotesConnection)
 * Update many votes
 */
updateManyVotes: ((args: {
/** Documents to apply update on */
where?: (VoteManyWhereInput | null),
/** Updates to document content */
data: VoteUpdateManyInput}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (deleteManyVotesConnection)
 * Delete many Vote documents
 */
deleteManyVotes: ((args?: {
/** Documents to delete */
where?: (VoteManyWhereInput | null)}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>})&(BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (publishManyVotesConnection)
 * Publish many Vote documents
 */
publishManyVotes: ((args: {
/** Identifies documents in each stage to be published */
where?: (VoteManyWhereInput | null),
/** Stages to publish documents to */
to: Stage[]}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (unpublishManyVotesConnection)
 * Unpublish many Vote documents
 */
unpublishManyVotes: ((args: {
/** Identifies documents in each stage */
where?: (VoteManyWhereInput | null),
/** Stages to unpublish documents from */
from: Stage[]}) => BatchPayloadPromiseChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Promise<FieldsSelection<BatchPayload, R>>})
}

export interface MutationObservableChain{
    
/**
 * @deprecated Asset mutations will be overhauled soon
 * Create one asset
 */
createAsset: ((args: {data: AssetCreateInput}) => AssetObservableChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Observable<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Update one asset */
updateAsset: ((args: {where: AssetWhereUniqueInput,data: AssetUpdateInput}) => AssetObservableChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Observable<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Delete one asset from _all_ existing stages. Returns deleted document. */
deleteAsset: ((args: {
/** Document to delete */
where: AssetWhereUniqueInput}) => AssetObservableChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Observable<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Upsert one asset */
upsertAsset: ((args: {where: AssetWhereUniqueInput,upsert: AssetUpsertInput}) => AssetObservableChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Observable<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Publish one asset */
publishAsset: ((args: {
/** Document to publish */
where: AssetWhereUniqueInput,
/** Optional localizations to publish */
locales?: (Locale[] | null),
/** Whether to publish the base document */
publishBase?: (Scalars['Boolean'] | null),
/** Whether to include the default locale when publishBase is set */
withDefaultLocale?: (Scalars['Boolean'] | null),
/** Publishing target stage */
to: Stage[]}) => AssetObservableChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Observable<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Unpublish one asset from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
unpublishAsset: ((args: {
/** Document to unpublish */
where: AssetWhereUniqueInput,
/** Stages to unpublish document from */
from: Stage[],
/** Optional locales to unpublish. Unpublishing the default locale will completely remove the document from the selected stages */
locales?: (Locale[] | null),
/** Unpublish complete document including default localization and relations from stages. Can be disabled. */
unpublishBase?: (Scalars['Boolean'] | null)}) => AssetObservableChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Observable<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Update many Asset documents */
updateManyAssetsConnection: ((args: {
/** Documents to apply update on */
where?: (AssetManyWhereInput | null),
/** Updates to document content */
data: AssetUpdateManyInput,skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => AssetConnectionObservableChain & {get: <R extends AssetConnectionRequest>(request: R, defaultValue?: FieldsSelection<AssetConnection, R>) => Observable<FieldsSelection<AssetConnection, R>>}),
    
/** Delete many Asset documents, return deleted documents */
deleteManyAssetsConnection: ((args?: {
/** Documents to delete */
where?: (AssetManyWhereInput | null),skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => AssetConnectionObservableChain & {get: <R extends AssetConnectionRequest>(request: R, defaultValue?: FieldsSelection<AssetConnection, R>) => Observable<FieldsSelection<AssetConnection, R>>})&(AssetConnectionObservableChain & {get: <R extends AssetConnectionRequest>(request: R, defaultValue?: FieldsSelection<AssetConnection, R>) => Observable<FieldsSelection<AssetConnection, R>>}),
    
/** Publish many Asset documents */
publishManyAssetsConnection: ((args: {
/** Identifies documents in each stage to be published */
where?: (AssetManyWhereInput | null),
/** Stage to find matching documents in */
from?: (Stage | null),
/** Stages to publish documents to */
to: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null),
/** Document localizations to publish */
locales?: (Locale[] | null),
/** Whether to publish the base document */
publishBase?: (Scalars['Boolean'] | null),
/** Whether to include the default locale when publishBase is true */
withDefaultLocale?: (Scalars['Boolean'] | null)}) => AssetConnectionObservableChain & {get: <R extends AssetConnectionRequest>(request: R, defaultValue?: FieldsSelection<AssetConnection, R>) => Observable<FieldsSelection<AssetConnection, R>>}),
    
/** Find many Asset documents that match criteria in specified stage and unpublish from target stages */
unpublishManyAssetsConnection: ((args: {
/** Identifies documents in draft stage */
where?: (AssetManyWhereInput | null),
/** Stage to find matching documents in */
stage?: (Stage | null),
/** Stages to unpublish documents from */
from: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null),
/** Locales to unpublish */
locales?: (Locale[] | null),
/** Whether to unpublish the base document and default localization */
unpublishBase?: (Scalars['Boolean'] | null)}) => AssetConnectionObservableChain & {get: <R extends AssetConnectionRequest>(request: R, defaultValue?: FieldsSelection<AssetConnection, R>) => Observable<FieldsSelection<AssetConnection, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (updateManyAssetsConnection)
 * Update many assets
 */
updateManyAssets: ((args: {
/** Documents to apply update on */
where?: (AssetManyWhereInput | null),
/** Updates to document content */
data: AssetUpdateManyInput}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (deleteManyAssetsConnection)
 * Delete many Asset documents
 */
deleteManyAssets: ((args?: {
/** Documents to delete */
where?: (AssetManyWhereInput | null)}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>})&(BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (publishManyAssetsConnection)
 * Publish many Asset documents
 */
publishManyAssets: ((args: {
/** Identifies documents in each stage to be published */
where?: (AssetManyWhereInput | null),
/** Stages to publish documents to */
to: Stage[],
/** Document localizations to publish */
locales?: (Locale[] | null),
/** Whether to publish the base document */
publishBase?: (Scalars['Boolean'] | null),
/** Whether to include the default locale when publishBase is true */
withDefaultLocale?: (Scalars['Boolean'] | null)}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (unpublishManyAssetsConnection)
 * Unpublish many Asset documents
 */
unpublishManyAssets: ((args: {
/** Identifies documents in each stage */
where?: (AssetManyWhereInput | null),
/** Stages to unpublish documents from */
from: Stage[],
/** Locales to unpublish */
locales?: (Locale[] | null),
/** Whether to unpublish the base document and default localization */
unpublishBase?: (Scalars['Boolean'] | null)}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/** Create one product */
createProduct: ((args: {data: ProductCreateInput}) => ProductObservableChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Observable<(FieldsSelection<Product, R> | undefined)>}),
    
/** Update one product */
updateProduct: ((args: {where: ProductWhereUniqueInput,data: ProductUpdateInput}) => ProductObservableChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Observable<(FieldsSelection<Product, R> | undefined)>}),
    
/** Delete one product from _all_ existing stages. Returns deleted document. */
deleteProduct: ((args: {
/** Document to delete */
where: ProductWhereUniqueInput}) => ProductObservableChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Observable<(FieldsSelection<Product, R> | undefined)>}),
    
/** Upsert one product */
upsertProduct: ((args: {where: ProductWhereUniqueInput,upsert: ProductUpsertInput}) => ProductObservableChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Observable<(FieldsSelection<Product, R> | undefined)>}),
    
/** Publish one product */
publishProduct: ((args: {
/** Document to publish */
where: ProductWhereUniqueInput,
/** Optional localizations to publish */
locales?: (Locale[] | null),
/** Whether to publish the base document */
publishBase?: (Scalars['Boolean'] | null),
/** Whether to include the default locale when publishBase is set */
withDefaultLocale?: (Scalars['Boolean'] | null),
/** Publishing target stage */
to: Stage[]}) => ProductObservableChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Observable<(FieldsSelection<Product, R> | undefined)>}),
    
/** Unpublish one product from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
unpublishProduct: ((args: {
/** Document to unpublish */
where: ProductWhereUniqueInput,
/** Stages to unpublish document from */
from: Stage[],
/** Optional locales to unpublish. Unpublishing the default locale will completely remove the document from the selected stages */
locales?: (Locale[] | null),
/** Unpublish complete document including default localization and relations from stages. Can be disabled. */
unpublishBase?: (Scalars['Boolean'] | null)}) => ProductObservableChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Observable<(FieldsSelection<Product, R> | undefined)>}),
    
/** Update many Product documents */
updateManyProductsConnection: ((args: {
/** Documents to apply update on */
where?: (ProductManyWhereInput | null),
/** Updates to document content */
data: ProductUpdateManyInput,skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => ProductConnectionObservableChain & {get: <R extends ProductConnectionRequest>(request: R, defaultValue?: FieldsSelection<ProductConnection, R>) => Observable<FieldsSelection<ProductConnection, R>>}),
    
/** Delete many Product documents, return deleted documents */
deleteManyProductsConnection: ((args?: {
/** Documents to delete */
where?: (ProductManyWhereInput | null),skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => ProductConnectionObservableChain & {get: <R extends ProductConnectionRequest>(request: R, defaultValue?: FieldsSelection<ProductConnection, R>) => Observable<FieldsSelection<ProductConnection, R>>})&(ProductConnectionObservableChain & {get: <R extends ProductConnectionRequest>(request: R, defaultValue?: FieldsSelection<ProductConnection, R>) => Observable<FieldsSelection<ProductConnection, R>>}),
    
/** Publish many Product documents */
publishManyProductsConnection: ((args: {
/** Identifies documents in each stage to be published */
where?: (ProductManyWhereInput | null),
/** Stage to find matching documents in */
from?: (Stage | null),
/** Stages to publish documents to */
to: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null),
/** Document localizations to publish */
locales?: (Locale[] | null),
/** Whether to publish the base document */
publishBase?: (Scalars['Boolean'] | null),
/** Whether to include the default locale when publishBase is true */
withDefaultLocale?: (Scalars['Boolean'] | null)}) => ProductConnectionObservableChain & {get: <R extends ProductConnectionRequest>(request: R, defaultValue?: FieldsSelection<ProductConnection, R>) => Observable<FieldsSelection<ProductConnection, R>>}),
    
/** Find many Product documents that match criteria in specified stage and unpublish from target stages */
unpublishManyProductsConnection: ((args: {
/** Identifies documents in draft stage */
where?: (ProductManyWhereInput | null),
/** Stage to find matching documents in */
stage?: (Stage | null),
/** Stages to unpublish documents from */
from: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null),
/** Locales to unpublish */
locales?: (Locale[] | null),
/** Whether to unpublish the base document and default localization */
unpublishBase?: (Scalars['Boolean'] | null)}) => ProductConnectionObservableChain & {get: <R extends ProductConnectionRequest>(request: R, defaultValue?: FieldsSelection<ProductConnection, R>) => Observable<FieldsSelection<ProductConnection, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (updateManyProductsConnection)
 * Update many products
 */
updateManyProducts: ((args: {
/** Documents to apply update on */
where?: (ProductManyWhereInput | null),
/** Updates to document content */
data: ProductUpdateManyInput}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (deleteManyProductsConnection)
 * Delete many Product documents
 */
deleteManyProducts: ((args?: {
/** Documents to delete */
where?: (ProductManyWhereInput | null)}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>})&(BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (publishManyProductsConnection)
 * Publish many Product documents
 */
publishManyProducts: ((args: {
/** Identifies documents in each stage to be published */
where?: (ProductManyWhereInput | null),
/** Stages to publish documents to */
to: Stage[],
/** Document localizations to publish */
locales?: (Locale[] | null),
/** Whether to publish the base document */
publishBase?: (Scalars['Boolean'] | null),
/** Whether to include the default locale when publishBase is true */
withDefaultLocale?: (Scalars['Boolean'] | null)}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (unpublishManyProductsConnection)
 * Unpublish many Product documents
 */
unpublishManyProducts: ((args: {
/** Identifies documents in each stage */
where?: (ProductManyWhereInput | null),
/** Stages to unpublish documents from */
from: Stage[],
/** Locales to unpublish */
locales?: (Locale[] | null),
/** Whether to unpublish the base document and default localization */
unpublishBase?: (Scalars['Boolean'] | null)}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/** Create one review */
createReview: ((args: {data: ReviewCreateInput}) => ReviewObservableChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Observable<(FieldsSelection<Review, R> | undefined)>}),
    
/** Update one review */
updateReview: ((args: {where: ReviewWhereUniqueInput,data: ReviewUpdateInput}) => ReviewObservableChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Observable<(FieldsSelection<Review, R> | undefined)>}),
    
/** Delete one review from _all_ existing stages. Returns deleted document. */
deleteReview: ((args: {
/** Document to delete */
where: ReviewWhereUniqueInput}) => ReviewObservableChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Observable<(FieldsSelection<Review, R> | undefined)>}),
    
/** Upsert one review */
upsertReview: ((args: {where: ReviewWhereUniqueInput,upsert: ReviewUpsertInput}) => ReviewObservableChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Observable<(FieldsSelection<Review, R> | undefined)>}),
    
/** Publish one review */
publishReview: ((args: {
/** Document to publish */
where: ReviewWhereUniqueInput,
/** Publishing target stage */
to: Stage[]}) => ReviewObservableChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Observable<(FieldsSelection<Review, R> | undefined)>}),
    
/** Unpublish one review from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
unpublishReview: ((args: {
/** Document to unpublish */
where: ReviewWhereUniqueInput,
/** Stages to unpublish document from */
from: Stage[]}) => ReviewObservableChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Observable<(FieldsSelection<Review, R> | undefined)>}),
    
/** Update many Review documents */
updateManyReviewsConnection: ((args: {
/** Documents to apply update on */
where?: (ReviewManyWhereInput | null),
/** Updates to document content */
data: ReviewUpdateManyInput,skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => ReviewConnectionObservableChain & {get: <R extends ReviewConnectionRequest>(request: R, defaultValue?: FieldsSelection<ReviewConnection, R>) => Observable<FieldsSelection<ReviewConnection, R>>}),
    
/** Delete many Review documents, return deleted documents */
deleteManyReviewsConnection: ((args?: {
/** Documents to delete */
where?: (ReviewManyWhereInput | null),skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => ReviewConnectionObservableChain & {get: <R extends ReviewConnectionRequest>(request: R, defaultValue?: FieldsSelection<ReviewConnection, R>) => Observable<FieldsSelection<ReviewConnection, R>>})&(ReviewConnectionObservableChain & {get: <R extends ReviewConnectionRequest>(request: R, defaultValue?: FieldsSelection<ReviewConnection, R>) => Observable<FieldsSelection<ReviewConnection, R>>}),
    
/** Publish many Review documents */
publishManyReviewsConnection: ((args: {
/** Identifies documents in each stage to be published */
where?: (ReviewManyWhereInput | null),
/** Stage to find matching documents in */
from?: (Stage | null),
/** Stages to publish documents to */
to: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => ReviewConnectionObservableChain & {get: <R extends ReviewConnectionRequest>(request: R, defaultValue?: FieldsSelection<ReviewConnection, R>) => Observable<FieldsSelection<ReviewConnection, R>>}),
    
/** Find many Review documents that match criteria in specified stage and unpublish from target stages */
unpublishManyReviewsConnection: ((args: {
/** Identifies documents in draft stage */
where?: (ReviewManyWhereInput | null),
/** Stage to find matching documents in */
stage?: (Stage | null),
/** Stages to unpublish documents from */
from: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => ReviewConnectionObservableChain & {get: <R extends ReviewConnectionRequest>(request: R, defaultValue?: FieldsSelection<ReviewConnection, R>) => Observable<FieldsSelection<ReviewConnection, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (updateManyReviewsConnection)
 * Update many reviews
 */
updateManyReviews: ((args: {
/** Documents to apply update on */
where?: (ReviewManyWhereInput | null),
/** Updates to document content */
data: ReviewUpdateManyInput}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (deleteManyReviewsConnection)
 * Delete many Review documents
 */
deleteManyReviews: ((args?: {
/** Documents to delete */
where?: (ReviewManyWhereInput | null)}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>})&(BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (publishManyReviewsConnection)
 * Publish many Review documents
 */
publishManyReviews: ((args: {
/** Identifies documents in each stage to be published */
where?: (ReviewManyWhereInput | null),
/** Stages to publish documents to */
to: Stage[]}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (unpublishManyReviewsConnection)
 * Unpublish many Review documents
 */
unpublishManyReviews: ((args: {
/** Identifies documents in each stage */
where?: (ReviewManyWhereInput | null),
/** Stages to unpublish documents from */
from: Stage[]}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/** Create one vote */
createVote: ((args: {data: VoteCreateInput}) => VoteObservableChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Observable<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Update one vote */
updateVote: ((args: {where: VoteWhereUniqueInput,data: VoteUpdateInput}) => VoteObservableChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Observable<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Delete one vote from _all_ existing stages. Returns deleted document. */
deleteVote: ((args: {
/** Document to delete */
where: VoteWhereUniqueInput}) => VoteObservableChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Observable<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Upsert one vote */
upsertVote: ((args: {where: VoteWhereUniqueInput,upsert: VoteUpsertInput}) => VoteObservableChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Observable<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Publish one vote */
publishVote: ((args: {
/** Document to publish */
where: VoteWhereUniqueInput,
/** Publishing target stage */
to: Stage[]}) => VoteObservableChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Observable<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Unpublish one vote from selected stages. Unpublish either the complete document with its relations, localizations and base data or specific localizations only. */
unpublishVote: ((args: {
/** Document to unpublish */
where: VoteWhereUniqueInput,
/** Stages to unpublish document from */
from: Stage[]}) => VoteObservableChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Observable<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Update many Vote documents */
updateManyVotesConnection: ((args: {
/** Documents to apply update on */
where?: (VoteManyWhereInput | null),
/** Updates to document content */
data: VoteUpdateManyInput,skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => VoteConnectionObservableChain & {get: <R extends VoteConnectionRequest>(request: R, defaultValue?: FieldsSelection<VoteConnection, R>) => Observable<FieldsSelection<VoteConnection, R>>}),
    
/** Delete many Vote documents, return deleted documents */
deleteManyVotesConnection: ((args?: {
/** Documents to delete */
where?: (VoteManyWhereInput | null),skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => VoteConnectionObservableChain & {get: <R extends VoteConnectionRequest>(request: R, defaultValue?: FieldsSelection<VoteConnection, R>) => Observable<FieldsSelection<VoteConnection, R>>})&(VoteConnectionObservableChain & {get: <R extends VoteConnectionRequest>(request: R, defaultValue?: FieldsSelection<VoteConnection, R>) => Observable<FieldsSelection<VoteConnection, R>>}),
    
/** Publish many Vote documents */
publishManyVotesConnection: ((args: {
/** Identifies documents in each stage to be published */
where?: (VoteManyWhereInput | null),
/** Stage to find matching documents in */
from?: (Stage | null),
/** Stages to publish documents to */
to: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => VoteConnectionObservableChain & {get: <R extends VoteConnectionRequest>(request: R, defaultValue?: FieldsSelection<VoteConnection, R>) => Observable<FieldsSelection<VoteConnection, R>>}),
    
/** Find many Vote documents that match criteria in specified stage and unpublish from target stages */
unpublishManyVotesConnection: ((args: {
/** Identifies documents in draft stage */
where?: (VoteManyWhereInput | null),
/** Stage to find matching documents in */
stage?: (Stage | null),
/** Stages to unpublish documents from */
from: Stage[],skip?: (Scalars['Int'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),before?: (Scalars['ID'] | null),after?: (Scalars['ID'] | null)}) => VoteConnectionObservableChain & {get: <R extends VoteConnectionRequest>(request: R, defaultValue?: FieldsSelection<VoteConnection, R>) => Observable<FieldsSelection<VoteConnection, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (updateManyVotesConnection)
 * Update many votes
 */
updateManyVotes: ((args: {
/** Documents to apply update on */
where?: (VoteManyWhereInput | null),
/** Updates to document content */
data: VoteUpdateManyInput}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (deleteManyVotesConnection)
 * Delete many Vote documents
 */
deleteManyVotes: ((args?: {
/** Documents to delete */
where?: (VoteManyWhereInput | null)}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>})&(BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (publishManyVotesConnection)
 * Publish many Vote documents
 */
publishManyVotes: ((args: {
/** Identifies documents in each stage to be published */
where?: (VoteManyWhereInput | null),
/** Stages to publish documents to */
to: Stage[]}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>}),
    
/**
 * @deprecated Please use the new paginated many mutation (unpublishManyVotesConnection)
 * Unpublish many Vote documents
 */
unpublishManyVotes: ((args: {
/** Identifies documents in each stage */
where?: (VoteManyWhereInput | null),
/** Stages to unpublish documents from */
from: Stage[]}) => BatchPayloadObservableChain & {get: <R extends BatchPayloadRequest>(request: R, defaultValue?: FieldsSelection<BatchPayload, R>) => Observable<FieldsSelection<BatchPayload, R>>})
}


/** An object with an ID */
export interface NodePromiseChain{
    
/** The id of the object. */
id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Promise<Scalars['ID']>}),
    
/** The Stage of an object */
stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Promise<Stage>})
}


/** An object with an ID */
export interface NodeObservableChain{
    
/** The id of the object. */
id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Observable<Scalars['ID']>}),
    
/** The Stage of an object */
stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Observable<Stage>})
}


/** Information about pagination in a connection. */
export interface PageInfoPromiseChain{
    
/** When paginating forwards, are there more items? */
hasNextPage: ({get: (request?: boolean|number, defaultValue?: Scalars['Boolean']) => Promise<Scalars['Boolean']>}),
    
/** When paginating backwards, are there more items? */
hasPreviousPage: ({get: (request?: boolean|number, defaultValue?: Scalars['Boolean']) => Promise<Scalars['Boolean']>}),
    
/** When paginating backwards, the cursor to continue. */
startCursor: ({get: (request?: boolean|number, defaultValue?: (Scalars['String'] | undefined)) => Promise<(Scalars['String'] | undefined)>}),
    
/** When paginating forwards, the cursor to continue. */
endCursor: ({get: (request?: boolean|number, defaultValue?: (Scalars['String'] | undefined)) => Promise<(Scalars['String'] | undefined)>}),
    
/** Number of items in the current page. */
pageSize: ({get: (request?: boolean|number, defaultValue?: (Scalars['Int'] | undefined)) => Promise<(Scalars['Int'] | undefined)>})
}


/** Information about pagination in a connection. */
export interface PageInfoObservableChain{
    
/** When paginating forwards, are there more items? */
hasNextPage: ({get: (request?: boolean|number, defaultValue?: Scalars['Boolean']) => Observable<Scalars['Boolean']>}),
    
/** When paginating backwards, are there more items? */
hasPreviousPage: ({get: (request?: boolean|number, defaultValue?: Scalars['Boolean']) => Observable<Scalars['Boolean']>}),
    
/** When paginating backwards, the cursor to continue. */
startCursor: ({get: (request?: boolean|number, defaultValue?: (Scalars['String'] | undefined)) => Observable<(Scalars['String'] | undefined)>}),
    
/** When paginating forwards, the cursor to continue. */
endCursor: ({get: (request?: boolean|number, defaultValue?: (Scalars['String'] | undefined)) => Observable<(Scalars['String'] | undefined)>}),
    
/** Number of items in the current page. */
pageSize: ({get: (request?: boolean|number, defaultValue?: (Scalars['Int'] | undefined)) => Observable<(Scalars['Int'] | undefined)>})
}

export interface ProductPromiseChain{
    
/** System stage field */
stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Promise<Stage>}),
    
/** System Locale field */
locale: ({get: (request?: boolean|number, defaultValue?: Locale) => Promise<Locale>}),
    
/** Get the other localizations for this document */
localizations: ((args: {
/** Potential locales that should be returned */
locales: Locale[],
/** Decides if the current locale should be included or not */
includeCurrent: Scalars['Boolean']}) => {get: <R extends ProductRequest>(request: R, defaultValue?: FieldsSelection<Product, R>[]) => Promise<FieldsSelection<Product, R>[]>}),
    
/** Get the document in other stages */
documentInStages: ((args: {
/** Potential stages that should be returned */
stages: Stage[],
/** Decides if the current stage should be included or not */
includeCurrent: Scalars['Boolean'],
/** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
inheritLocale: Scalars['Boolean']}) => {get: <R extends ProductRequest>(request: R, defaultValue?: FieldsSelection<Product, R>[]) => Promise<FieldsSelection<Product, R>[]>}),
    
/** The unique identifier */
id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Promise<Scalars['ID']>}),
    
/** The time the document was created */
createdAt: ((args: {
/** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
variation: SystemDateTimeFieldVariation}) => {get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Promise<Scalars['DateTime']>}),
    
/** User that created this document */
createdBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `createdBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>})&(UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was updated */
updatedAt: ((args: {
/** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
variation: SystemDateTimeFieldVariation}) => {get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Promise<Scalars['DateTime']>}),
    
/** User that last updated this document */
updatedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `updatedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>})&(UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was published. Null on documents in draft stage. */
publishedAt: ((args: {
/** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
variation: SystemDateTimeFieldVariation}) => {get: (request?: boolean|number, defaultValue?: (Scalars['DateTime'] | undefined)) => Promise<(Scalars['DateTime'] | undefined)>}),
    
/** User that last published this document */
publishedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `publishedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>})&(UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>}),
    name: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>}),
    slug: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>}),
    description: ({get: (request?: boolean|number, defaultValue?: (Scalars['String'] | undefined)) => Promise<(Scalars['String'] | undefined)>}),
    price: ({get: (request?: boolean|number, defaultValue?: Scalars['Int']) => Promise<Scalars['Int']>}),
    reviews: ((args?: {where?: (ReviewWhereInput | null),orderBy?: (ReviewOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `reviews` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => {get: <R extends ReviewRequest>(request: R, defaultValue?: FieldsSelection<Review, R>[]) => Promise<FieldsSelection<Review, R>[]>})&({get: <R extends ReviewRequest>(request: R, defaultValue?: FieldsSelection<Review, R>[]) => Promise<FieldsSelection<Review, R>[]>}),
    votes: ((args?: {where?: (VoteWhereInput | null),orderBy?: (VoteOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `votes` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => {get: <R extends VoteRequest>(request: R, defaultValue?: FieldsSelection<Vote, R>[]) => Promise<FieldsSelection<Vote, R>[]>})&({get: <R extends VoteRequest>(request: R, defaultValue?: FieldsSelection<Vote, R>[]) => Promise<FieldsSelection<Vote, R>[]>}),
    image: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `image` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => AssetPromiseChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Promise<(FieldsSelection<Asset, R> | undefined)>})&(AssetPromiseChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Promise<(FieldsSelection<Asset, R> | undefined)>}),
    content: (RichTextPromiseChain & {get: <R extends RichTextRequest>(request: R, defaultValue?: (FieldsSelection<RichText, R> | undefined)) => Promise<(FieldsSelection<RichText, R> | undefined)>}),
    
/** List of Product versions */
history: ((args: {limit: Scalars['Int'],skip: Scalars['Int'],
/** This is optional and can be used to fetch the document version history for a specific stage instead of the current one */
stageOverride?: (Stage | null)}) => {get: <R extends VersionRequest>(request: R, defaultValue?: FieldsSelection<Version, R>[]) => Promise<FieldsSelection<Version, R>[]>})
}

export interface ProductObservableChain{
    
/** System stage field */
stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Observable<Stage>}),
    
/** System Locale field */
locale: ({get: (request?: boolean|number, defaultValue?: Locale) => Observable<Locale>}),
    
/** Get the other localizations for this document */
localizations: ((args: {
/** Potential locales that should be returned */
locales: Locale[],
/** Decides if the current locale should be included or not */
includeCurrent: Scalars['Boolean']}) => {get: <R extends ProductRequest>(request: R, defaultValue?: FieldsSelection<Product, R>[]) => Observable<FieldsSelection<Product, R>[]>}),
    
/** Get the document in other stages */
documentInStages: ((args: {
/** Potential stages that should be returned */
stages: Stage[],
/** Decides if the current stage should be included or not */
includeCurrent: Scalars['Boolean'],
/** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
inheritLocale: Scalars['Boolean']}) => {get: <R extends ProductRequest>(request: R, defaultValue?: FieldsSelection<Product, R>[]) => Observable<FieldsSelection<Product, R>[]>}),
    
/** The unique identifier */
id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Observable<Scalars['ID']>}),
    
/** The time the document was created */
createdAt: ((args: {
/** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
variation: SystemDateTimeFieldVariation}) => {get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Observable<Scalars['DateTime']>}),
    
/** User that created this document */
createdBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `createdBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>})&(UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was updated */
updatedAt: ((args: {
/** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
variation: SystemDateTimeFieldVariation}) => {get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Observable<Scalars['DateTime']>}),
    
/** User that last updated this document */
updatedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `updatedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>})&(UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was published. Null on documents in draft stage. */
publishedAt: ((args: {
/** Variation of DateTime field to return, allows value from base document, current localization, or combined by returning the newer value of both */
variation: SystemDateTimeFieldVariation}) => {get: (request?: boolean|number, defaultValue?: (Scalars['DateTime'] | undefined)) => Observable<(Scalars['DateTime'] | undefined)>}),
    
/** User that last published this document */
publishedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `publishedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>})&(UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>}),
    name: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>}),
    slug: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>}),
    description: ({get: (request?: boolean|number, defaultValue?: (Scalars['String'] | undefined)) => Observable<(Scalars['String'] | undefined)>}),
    price: ({get: (request?: boolean|number, defaultValue?: Scalars['Int']) => Observable<Scalars['Int']>}),
    reviews: ((args?: {where?: (ReviewWhereInput | null),orderBy?: (ReviewOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `reviews` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => {get: <R extends ReviewRequest>(request: R, defaultValue?: FieldsSelection<Review, R>[]) => Observable<FieldsSelection<Review, R>[]>})&({get: <R extends ReviewRequest>(request: R, defaultValue?: FieldsSelection<Review, R>[]) => Observable<FieldsSelection<Review, R>[]>}),
    votes: ((args?: {where?: (VoteWhereInput | null),orderBy?: (VoteOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `votes` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => {get: <R extends VoteRequest>(request: R, defaultValue?: FieldsSelection<Vote, R>[]) => Observable<FieldsSelection<Vote, R>[]>})&({get: <R extends VoteRequest>(request: R, defaultValue?: FieldsSelection<Vote, R>[]) => Observable<FieldsSelection<Vote, R>[]>}),
    image: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `image` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => AssetObservableChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Observable<(FieldsSelection<Asset, R> | undefined)>})&(AssetObservableChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Observable<(FieldsSelection<Asset, R> | undefined)>}),
    content: (RichTextObservableChain & {get: <R extends RichTextRequest>(request: R, defaultValue?: (FieldsSelection<RichText, R> | undefined)) => Observable<(FieldsSelection<RichText, R> | undefined)>}),
    
/** List of Product versions */
history: ((args: {limit: Scalars['Int'],skip: Scalars['Int'],
/** This is optional and can be used to fetch the document version history for a specific stage instead of the current one */
stageOverride?: (Stage | null)}) => {get: <R extends VersionRequest>(request: R, defaultValue?: FieldsSelection<Version, R>[]) => Observable<FieldsSelection<Version, R>[]>})
}


/** A connection to a list of items. */
export interface ProductConnectionPromiseChain{
    
/** Information to aid in pagination. */
pageInfo: (PageInfoPromiseChain & {get: <R extends PageInfoRequest>(request: R, defaultValue?: FieldsSelection<PageInfo, R>) => Promise<FieldsSelection<PageInfo, R>>}),
    
/** A list of edges. */
edges: ({get: <R extends ProductEdgeRequest>(request: R, defaultValue?: FieldsSelection<ProductEdge, R>[]) => Promise<FieldsSelection<ProductEdge, R>[]>}),
    aggregate: (AggregatePromiseChain & {get: <R extends AggregateRequest>(request: R, defaultValue?: FieldsSelection<Aggregate, R>) => Promise<FieldsSelection<Aggregate, R>>})
}


/** A connection to a list of items. */
export interface ProductConnectionObservableChain{
    
/** Information to aid in pagination. */
pageInfo: (PageInfoObservableChain & {get: <R extends PageInfoRequest>(request: R, defaultValue?: FieldsSelection<PageInfo, R>) => Observable<FieldsSelection<PageInfo, R>>}),
    
/** A list of edges. */
edges: ({get: <R extends ProductEdgeRequest>(request: R, defaultValue?: FieldsSelection<ProductEdge, R>[]) => Observable<FieldsSelection<ProductEdge, R>[]>}),
    aggregate: (AggregateObservableChain & {get: <R extends AggregateRequest>(request: R, defaultValue?: FieldsSelection<Aggregate, R>) => Observable<FieldsSelection<Aggregate, R>>})
}


/** An edge in a connection. */
export interface ProductEdgePromiseChain{
    
/** The item at the end of the edge. */
node: (ProductPromiseChain & {get: <R extends ProductRequest>(request: R, defaultValue?: FieldsSelection<Product, R>) => Promise<FieldsSelection<Product, R>>}),
    
/** A cursor for use in pagination. */
cursor: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>})
}


/** An edge in a connection. */
export interface ProductEdgeObservableChain{
    
/** The item at the end of the edge. */
node: (ProductObservableChain & {get: <R extends ProductRequest>(request: R, defaultValue?: FieldsSelection<Product, R>) => Observable<FieldsSelection<Product, R>>}),
    
/** A cursor for use in pagination. */
cursor: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>})
}

export interface QueryPromiseChain{
    
/** Fetches an object given its ID */
node: ((args: {
/** The ID of an object */
id: Scalars['ID'],stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Node` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => NodePromiseChain & {get: <R extends NodeRequest>(request: R, defaultValue?: (FieldsSelection<Node, R> | undefined)) => Promise<(FieldsSelection<Node, R> | undefined)>}),
    
/** Retrieve multiple assets */
assets: ((args: {where?: (AssetWhereInput | null),orderBy?: (AssetOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Asset` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
 * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => {get: <R extends AssetRequest>(request: R, defaultValue?: FieldsSelection<Asset, R>[]) => Promise<FieldsSelection<Asset, R>[]>}),
    
/** Retrieve a single asset */
asset: ((args: {where: AssetWhereUniqueInput,stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Asset` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
 * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => AssetPromiseChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Promise<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Retrieve multiple assets using the Relay connection interface */
assetsConnection: ((args: {where?: (AssetWhereInput | null),orderBy?: (AssetOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Asset` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
 * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => AssetConnectionPromiseChain & {get: <R extends AssetConnectionRequest>(request: R, defaultValue?: FieldsSelection<AssetConnection, R>) => Promise<FieldsSelection<AssetConnection, R>>}),
    
/** Retrieve document version */
assetVersion: ((args: {where: VersionWhereInput}) => DocumentVersionPromiseChain & {get: <R extends DocumentVersionRequest>(request: R, defaultValue?: (FieldsSelection<DocumentVersion, R> | undefined)) => Promise<(FieldsSelection<DocumentVersion, R> | undefined)>}),
    
/** Retrieve multiple products */
products: ((args: {where?: (ProductWhereInput | null),orderBy?: (ProductOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Product` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
 * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => {get: <R extends ProductRequest>(request: R, defaultValue?: FieldsSelection<Product, R>[]) => Promise<FieldsSelection<Product, R>[]>}),
    
/** Retrieve a single product */
product: ((args: {where: ProductWhereUniqueInput,stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Product` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
 * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => ProductPromiseChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Promise<(FieldsSelection<Product, R> | undefined)>}),
    
/** Retrieve multiple products using the Relay connection interface */
productsConnection: ((args: {where?: (ProductWhereInput | null),orderBy?: (ProductOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Product` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
 * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => ProductConnectionPromiseChain & {get: <R extends ProductConnectionRequest>(request: R, defaultValue?: FieldsSelection<ProductConnection, R>) => Promise<FieldsSelection<ProductConnection, R>>}),
    
/** Retrieve document version */
productVersion: ((args: {where: VersionWhereInput}) => DocumentVersionPromiseChain & {get: <R extends DocumentVersionRequest>(request: R, defaultValue?: (FieldsSelection<DocumentVersion, R> | undefined)) => Promise<(FieldsSelection<DocumentVersion, R> | undefined)>}),
    
/** Retrieve multiple reviews */
reviews: ((args: {where?: (ReviewWhereInput | null),orderBy?: (ReviewOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Review` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => {get: <R extends ReviewRequest>(request: R, defaultValue?: FieldsSelection<Review, R>[]) => Promise<FieldsSelection<Review, R>[]>}),
    
/** Retrieve a single review */
review: ((args: {where: ReviewWhereUniqueInput,stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Review` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => ReviewPromiseChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Promise<(FieldsSelection<Review, R> | undefined)>}),
    
/** Retrieve multiple reviews using the Relay connection interface */
reviewsConnection: ((args: {where?: (ReviewWhereInput | null),orderBy?: (ReviewOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Review` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => ReviewConnectionPromiseChain & {get: <R extends ReviewConnectionRequest>(request: R, defaultValue?: FieldsSelection<ReviewConnection, R>) => Promise<FieldsSelection<ReviewConnection, R>>}),
    
/** Retrieve document version */
reviewVersion: ((args: {where: VersionWhereInput}) => DocumentVersionPromiseChain & {get: <R extends DocumentVersionRequest>(request: R, defaultValue?: (FieldsSelection<DocumentVersion, R> | undefined)) => Promise<(FieldsSelection<DocumentVersion, R> | undefined)>}),
    
/** Retrieve multiple users */
users: ((args: {where?: (UserWhereInput | null),orderBy?: (UserOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `User` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => {get: <R extends UserRequest>(request: R, defaultValue?: FieldsSelection<User, R>[]) => Promise<FieldsSelection<User, R>[]>}),
    
/** Retrieve a single user */
user: ((args: {where: UserWhereUniqueInput,stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `User` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>}),
    
/** Retrieve multiple users using the Relay connection interface */
usersConnection: ((args: {where?: (UserWhereInput | null),orderBy?: (UserOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `User` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => UserConnectionPromiseChain & {get: <R extends UserConnectionRequest>(request: R, defaultValue?: FieldsSelection<UserConnection, R>) => Promise<FieldsSelection<UserConnection, R>>}),
    
/** Retrieve multiple votes */
votes: ((args: {where?: (VoteWhereInput | null),orderBy?: (VoteOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Vote` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => {get: <R extends VoteRequest>(request: R, defaultValue?: FieldsSelection<Vote, R>[]) => Promise<FieldsSelection<Vote, R>[]>}),
    
/** Retrieve a single vote */
vote: ((args: {where: VoteWhereUniqueInput,stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Vote` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => VotePromiseChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Promise<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Retrieve multiple votes using the Relay connection interface */
votesConnection: ((args: {where?: (VoteWhereInput | null),orderBy?: (VoteOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Vote` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => VoteConnectionPromiseChain & {get: <R extends VoteConnectionRequest>(request: R, defaultValue?: FieldsSelection<VoteConnection, R>) => Promise<FieldsSelection<VoteConnection, R>>}),
    
/** Retrieve document version */
voteVersion: ((args: {where: VersionWhereInput}) => DocumentVersionPromiseChain & {get: <R extends DocumentVersionRequest>(request: R, defaultValue?: (FieldsSelection<DocumentVersion, R> | undefined)) => Promise<(FieldsSelection<DocumentVersion, R> | undefined)>})
}

export interface QueryObservableChain{
    
/** Fetches an object given its ID */
node: ((args: {
/** The ID of an object */
id: Scalars['ID'],stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Node` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => NodeObservableChain & {get: <R extends NodeRequest>(request: R, defaultValue?: (FieldsSelection<Node, R> | undefined)) => Observable<(FieldsSelection<Node, R> | undefined)>}),
    
/** Retrieve multiple assets */
assets: ((args: {where?: (AssetWhereInput | null),orderBy?: (AssetOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Asset` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
 * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => {get: <R extends AssetRequest>(request: R, defaultValue?: FieldsSelection<Asset, R>[]) => Observable<FieldsSelection<Asset, R>[]>}),
    
/** Retrieve a single asset */
asset: ((args: {where: AssetWhereUniqueInput,stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Asset` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
 * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => AssetObservableChain & {get: <R extends AssetRequest>(request: R, defaultValue?: (FieldsSelection<Asset, R> | undefined)) => Observable<(FieldsSelection<Asset, R> | undefined)>}),
    
/** Retrieve multiple assets using the Relay connection interface */
assetsConnection: ((args: {where?: (AssetWhereInput | null),orderBy?: (AssetOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Asset` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
 * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => AssetConnectionObservableChain & {get: <R extends AssetConnectionRequest>(request: R, defaultValue?: FieldsSelection<AssetConnection, R>) => Observable<FieldsSelection<AssetConnection, R>>}),
    
/** Retrieve document version */
assetVersion: ((args: {where: VersionWhereInput}) => DocumentVersionObservableChain & {get: <R extends DocumentVersionRequest>(request: R, defaultValue?: (FieldsSelection<DocumentVersion, R> | undefined)) => Observable<(FieldsSelection<DocumentVersion, R> | undefined)>}),
    
/** Retrieve multiple products */
products: ((args: {where?: (ProductWhereInput | null),orderBy?: (ProductOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Product` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
 * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => {get: <R extends ProductRequest>(request: R, defaultValue?: FieldsSelection<Product, R>[]) => Observable<FieldsSelection<Product, R>[]>}),
    
/** Retrieve a single product */
product: ((args: {where: ProductWhereUniqueInput,stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Product` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
 * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => ProductObservableChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Observable<(FieldsSelection<Product, R> | undefined)>}),
    
/** Retrieve multiple products using the Relay connection interface */
productsConnection: ((args: {where?: (ProductWhereInput | null),orderBy?: (ProductOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Product` will be affected directly by this argument, as well as any other related models with localized fields in the query's subtree.
 * The first locale matching the provided list will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => ProductConnectionObservableChain & {get: <R extends ProductConnectionRequest>(request: R, defaultValue?: FieldsSelection<ProductConnection, R>) => Observable<FieldsSelection<ProductConnection, R>>}),
    
/** Retrieve document version */
productVersion: ((args: {where: VersionWhereInput}) => DocumentVersionObservableChain & {get: <R extends DocumentVersionRequest>(request: R, defaultValue?: (FieldsSelection<DocumentVersion, R> | undefined)) => Observable<(FieldsSelection<DocumentVersion, R> | undefined)>}),
    
/** Retrieve multiple reviews */
reviews: ((args: {where?: (ReviewWhereInput | null),orderBy?: (ReviewOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Review` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => {get: <R extends ReviewRequest>(request: R, defaultValue?: FieldsSelection<Review, R>[]) => Observable<FieldsSelection<Review, R>[]>}),
    
/** Retrieve a single review */
review: ((args: {where: ReviewWhereUniqueInput,stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Review` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => ReviewObservableChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: (FieldsSelection<Review, R> | undefined)) => Observable<(FieldsSelection<Review, R> | undefined)>}),
    
/** Retrieve multiple reviews using the Relay connection interface */
reviewsConnection: ((args: {where?: (ReviewWhereInput | null),orderBy?: (ReviewOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Review` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => ReviewConnectionObservableChain & {get: <R extends ReviewConnectionRequest>(request: R, defaultValue?: FieldsSelection<ReviewConnection, R>) => Observable<FieldsSelection<ReviewConnection, R>>}),
    
/** Retrieve document version */
reviewVersion: ((args: {where: VersionWhereInput}) => DocumentVersionObservableChain & {get: <R extends DocumentVersionRequest>(request: R, defaultValue?: (FieldsSelection<DocumentVersion, R> | undefined)) => Observable<(FieldsSelection<DocumentVersion, R> | undefined)>}),
    
/** Retrieve multiple users */
users: ((args: {where?: (UserWhereInput | null),orderBy?: (UserOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `User` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => {get: <R extends UserRequest>(request: R, defaultValue?: FieldsSelection<User, R>[]) => Observable<FieldsSelection<User, R>[]>}),
    
/** Retrieve a single user */
user: ((args: {where: UserWhereUniqueInput,stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `User` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>}),
    
/** Retrieve multiple users using the Relay connection interface */
usersConnection: ((args: {where?: (UserWhereInput | null),orderBy?: (UserOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `User` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => UserConnectionObservableChain & {get: <R extends UserConnectionRequest>(request: R, defaultValue?: FieldsSelection<UserConnection, R>) => Observable<FieldsSelection<UserConnection, R>>}),
    
/** Retrieve multiple votes */
votes: ((args: {where?: (VoteWhereInput | null),orderBy?: (VoteOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Vote` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => {get: <R extends VoteRequest>(request: R, defaultValue?: FieldsSelection<Vote, R>[]) => Observable<FieldsSelection<Vote, R>[]>}),
    
/** Retrieve a single vote */
vote: ((args: {where: VoteWhereUniqueInput,stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Vote` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => VoteObservableChain & {get: <R extends VoteRequest>(request: R, defaultValue?: (FieldsSelection<Vote, R> | undefined)) => Observable<(FieldsSelection<Vote, R> | undefined)>}),
    
/** Retrieve multiple votes using the Relay connection interface */
votesConnection: ((args: {where?: (VoteWhereInput | null),orderBy?: (VoteOrderByInput | null),skip?: (Scalars['Int'] | null),after?: (Scalars['String'] | null),before?: (Scalars['String'] | null),first?: (Scalars['Int'] | null),last?: (Scalars['Int'] | null),stage: Stage,
/**
 * Defines which locales should be returned.
 * 
 * Note that `Vote` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument may be overwritten by another locales definition in a relational child field, this will effectively use the overwritten argument for the affected query's subtree.
 */
locales: Locale[]}) => VoteConnectionObservableChain & {get: <R extends VoteConnectionRequest>(request: R, defaultValue?: FieldsSelection<VoteConnection, R>) => Observable<FieldsSelection<VoteConnection, R>>}),
    
/** Retrieve document version */
voteVersion: ((args: {where: VersionWhereInput}) => DocumentVersionObservableChain & {get: <R extends DocumentVersionRequest>(request: R, defaultValue?: (FieldsSelection<DocumentVersion, R> | undefined)) => Observable<(FieldsSelection<DocumentVersion, R> | undefined)>})
}


/** Representing a RGBA color value: https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#rgb()_and_rgba() */
export interface RGBAPromiseChain{
    r: ({get: (request?: boolean|number, defaultValue?: Scalars['RGBAHue']) => Promise<Scalars['RGBAHue']>}),
    g: ({get: (request?: boolean|number, defaultValue?: Scalars['RGBAHue']) => Promise<Scalars['RGBAHue']>}),
    b: ({get: (request?: boolean|number, defaultValue?: Scalars['RGBAHue']) => Promise<Scalars['RGBAHue']>}),
    a: ({get: (request?: boolean|number, defaultValue?: Scalars['RGBATransparency']) => Promise<Scalars['RGBATransparency']>})
}


/** Representing a RGBA color value: https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#rgb()_and_rgba() */
export interface RGBAObservableChain{
    r: ({get: (request?: boolean|number, defaultValue?: Scalars['RGBAHue']) => Observable<Scalars['RGBAHue']>}),
    g: ({get: (request?: boolean|number, defaultValue?: Scalars['RGBAHue']) => Observable<Scalars['RGBAHue']>}),
    b: ({get: (request?: boolean|number, defaultValue?: Scalars['RGBAHue']) => Observable<Scalars['RGBAHue']>}),
    a: ({get: (request?: boolean|number, defaultValue?: Scalars['RGBATransparency']) => Observable<Scalars['RGBATransparency']>})
}

export interface ReviewPromiseChain{
    
/** System stage field */
stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Promise<Stage>}),
    
/** Get the document in other stages */
documentInStages: ((args: {
/** Potential stages that should be returned */
stages: Stage[],
/** Decides if the current stage should be included or not */
includeCurrent: Scalars['Boolean'],
/** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
inheritLocale: Scalars['Boolean']}) => {get: <R extends ReviewRequest>(request: R, defaultValue?: FieldsSelection<Review, R>[]) => Promise<FieldsSelection<Review, R>[]>}),
    
/** The unique identifier */
id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Promise<Scalars['ID']>}),
    
/** The time the document was created */
createdAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Promise<Scalars['DateTime']>}),
    
/** User that created this document */
createdBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `createdBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>})&(UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was updated */
updatedAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Promise<Scalars['DateTime']>}),
    
/** User that last updated this document */
updatedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `updatedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>})&(UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was published. Null on documents in draft stage. */
publishedAt: ({get: (request?: boolean|number, defaultValue?: (Scalars['DateTime'] | undefined)) => Promise<(Scalars['DateTime'] | undefined)>}),
    
/** User that last published this document */
publishedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `publishedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>})&(UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>}),
    name: ({get: (request?: boolean|number, defaultValue?: (Scalars['String'] | undefined)) => Promise<(Scalars['String'] | undefined)>}),
    comment: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>}),
    product: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `product` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => ProductPromiseChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Promise<(FieldsSelection<Product, R> | undefined)>})&(ProductPromiseChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Promise<(FieldsSelection<Product, R> | undefined)>}),
    
/** List of Review versions */
history: ((args: {limit: Scalars['Int'],skip: Scalars['Int'],
/** This is optional and can be used to fetch the document version history for a specific stage instead of the current one */
stageOverride?: (Stage | null)}) => {get: <R extends VersionRequest>(request: R, defaultValue?: FieldsSelection<Version, R>[]) => Promise<FieldsSelection<Version, R>[]>})
}

export interface ReviewObservableChain{
    
/** System stage field */
stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Observable<Stage>}),
    
/** Get the document in other stages */
documentInStages: ((args: {
/** Potential stages that should be returned */
stages: Stage[],
/** Decides if the current stage should be included or not */
includeCurrent: Scalars['Boolean'],
/** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
inheritLocale: Scalars['Boolean']}) => {get: <R extends ReviewRequest>(request: R, defaultValue?: FieldsSelection<Review, R>[]) => Observable<FieldsSelection<Review, R>[]>}),
    
/** The unique identifier */
id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Observable<Scalars['ID']>}),
    
/** The time the document was created */
createdAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Observable<Scalars['DateTime']>}),
    
/** User that created this document */
createdBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `createdBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>})&(UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was updated */
updatedAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Observable<Scalars['DateTime']>}),
    
/** User that last updated this document */
updatedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `updatedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>})&(UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was published. Null on documents in draft stage. */
publishedAt: ({get: (request?: boolean|number, defaultValue?: (Scalars['DateTime'] | undefined)) => Observable<(Scalars['DateTime'] | undefined)>}),
    
/** User that last published this document */
publishedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `publishedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>})&(UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>}),
    name: ({get: (request?: boolean|number, defaultValue?: (Scalars['String'] | undefined)) => Observable<(Scalars['String'] | undefined)>}),
    comment: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>}),
    product: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `product` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => ProductObservableChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Observable<(FieldsSelection<Product, R> | undefined)>})&(ProductObservableChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Observable<(FieldsSelection<Product, R> | undefined)>}),
    
/** List of Review versions */
history: ((args: {limit: Scalars['Int'],skip: Scalars['Int'],
/** This is optional and can be used to fetch the document version history for a specific stage instead of the current one */
stageOverride?: (Stage | null)}) => {get: <R extends VersionRequest>(request: R, defaultValue?: FieldsSelection<Version, R>[]) => Observable<FieldsSelection<Version, R>[]>})
}


/** A connection to a list of items. */
export interface ReviewConnectionPromiseChain{
    
/** Information to aid in pagination. */
pageInfo: (PageInfoPromiseChain & {get: <R extends PageInfoRequest>(request: R, defaultValue?: FieldsSelection<PageInfo, R>) => Promise<FieldsSelection<PageInfo, R>>}),
    
/** A list of edges. */
edges: ({get: <R extends ReviewEdgeRequest>(request: R, defaultValue?: FieldsSelection<ReviewEdge, R>[]) => Promise<FieldsSelection<ReviewEdge, R>[]>}),
    aggregate: (AggregatePromiseChain & {get: <R extends AggregateRequest>(request: R, defaultValue?: FieldsSelection<Aggregate, R>) => Promise<FieldsSelection<Aggregate, R>>})
}


/** A connection to a list of items. */
export interface ReviewConnectionObservableChain{
    
/** Information to aid in pagination. */
pageInfo: (PageInfoObservableChain & {get: <R extends PageInfoRequest>(request: R, defaultValue?: FieldsSelection<PageInfo, R>) => Observable<FieldsSelection<PageInfo, R>>}),
    
/** A list of edges. */
edges: ({get: <R extends ReviewEdgeRequest>(request: R, defaultValue?: FieldsSelection<ReviewEdge, R>[]) => Observable<FieldsSelection<ReviewEdge, R>[]>}),
    aggregate: (AggregateObservableChain & {get: <R extends AggregateRequest>(request: R, defaultValue?: FieldsSelection<Aggregate, R>) => Observable<FieldsSelection<Aggregate, R>>})
}


/** An edge in a connection. */
export interface ReviewEdgePromiseChain{
    
/** The item at the end of the edge. */
node: (ReviewPromiseChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: FieldsSelection<Review, R>) => Promise<FieldsSelection<Review, R>>}),
    
/** A cursor for use in pagination. */
cursor: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>})
}


/** An edge in a connection. */
export interface ReviewEdgeObservableChain{
    
/** The item at the end of the edge. */
node: (ReviewObservableChain & {get: <R extends ReviewRequest>(request: R, defaultValue?: FieldsSelection<Review, R>) => Observable<FieldsSelection<Review, R>>}),
    
/** A cursor for use in pagination. */
cursor: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>})
}


/** Custom type representing a rich text value comprising of raw rich text ast, html, markdown and text values */
export interface RichTextPromiseChain{
    
/** Returns AST representation */
raw: ({get: (request?: boolean|number, defaultValue?: Scalars['RichTextAST']) => Promise<Scalars['RichTextAST']>}),
    
/** Returns HTMl representation */
html: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>}),
    
/** Returns Markdown representation */
markdown: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>}),
    
/** Returns plain-text contents of RichText */
text: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>})
}


/** Custom type representing a rich text value comprising of raw rich text ast, html, markdown and text values */
export interface RichTextObservableChain{
    
/** Returns AST representation */
raw: ({get: (request?: boolean|number, defaultValue?: Scalars['RichTextAST']) => Observable<Scalars['RichTextAST']>}),
    
/** Returns HTMl representation */
html: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>}),
    
/** Returns Markdown representation */
markdown: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>}),
    
/** Returns plain-text contents of RichText */
text: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>})
}


/** User system model */
export interface UserPromiseChain{
    
/** System stage field */
stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Promise<Stage>}),
    
/** Get the document in other stages */
documentInStages: ((args: {
/** Potential stages that should be returned */
stages: Stage[],
/** Decides if the current stage should be included or not */
includeCurrent: Scalars['Boolean'],
/** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
inheritLocale: Scalars['Boolean']}) => {get: <R extends UserRequest>(request: R, defaultValue?: FieldsSelection<User, R>[]) => Promise<FieldsSelection<User, R>[]>}),
    
/** The unique identifier */
id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Promise<Scalars['ID']>}),
    
/** The time the document was created */
createdAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Promise<Scalars['DateTime']>}),
    
/** The time the document was updated */
updatedAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Promise<Scalars['DateTime']>}),
    
/** The time the document was published. Null on documents in draft stage. */
publishedAt: ({get: (request?: boolean|number, defaultValue?: (Scalars['DateTime'] | undefined)) => Promise<(Scalars['DateTime'] | undefined)>}),
    
/** The username */
name: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>}),
    
/** Profile Picture url */
picture: ({get: (request?: boolean|number, defaultValue?: (Scalars['String'] | undefined)) => Promise<(Scalars['String'] | undefined)>}),
    
/** User Kind. Can be either MEMBER, PAT or PUBLIC */
kind: ({get: (request?: boolean|number, defaultValue?: UserKind) => Promise<UserKind>}),
    
/** Flag to determine if user is active or not */
isActive: ({get: (request?: boolean|number, defaultValue?: Scalars['Boolean']) => Promise<Scalars['Boolean']>})
}


/** User system model */
export interface UserObservableChain{
    
/** System stage field */
stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Observable<Stage>}),
    
/** Get the document in other stages */
documentInStages: ((args: {
/** Potential stages that should be returned */
stages: Stage[],
/** Decides if the current stage should be included or not */
includeCurrent: Scalars['Boolean'],
/** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
inheritLocale: Scalars['Boolean']}) => {get: <R extends UserRequest>(request: R, defaultValue?: FieldsSelection<User, R>[]) => Observable<FieldsSelection<User, R>[]>}),
    
/** The unique identifier */
id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Observable<Scalars['ID']>}),
    
/** The time the document was created */
createdAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Observable<Scalars['DateTime']>}),
    
/** The time the document was updated */
updatedAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Observable<Scalars['DateTime']>}),
    
/** The time the document was published. Null on documents in draft stage. */
publishedAt: ({get: (request?: boolean|number, defaultValue?: (Scalars['DateTime'] | undefined)) => Observable<(Scalars['DateTime'] | undefined)>}),
    
/** The username */
name: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>}),
    
/** Profile Picture url */
picture: ({get: (request?: boolean|number, defaultValue?: (Scalars['String'] | undefined)) => Observable<(Scalars['String'] | undefined)>}),
    
/** User Kind. Can be either MEMBER, PAT or PUBLIC */
kind: ({get: (request?: boolean|number, defaultValue?: UserKind) => Observable<UserKind>}),
    
/** Flag to determine if user is active or not */
isActive: ({get: (request?: boolean|number, defaultValue?: Scalars['Boolean']) => Observable<Scalars['Boolean']>})
}


/** A connection to a list of items. */
export interface UserConnectionPromiseChain{
    
/** Information to aid in pagination. */
pageInfo: (PageInfoPromiseChain & {get: <R extends PageInfoRequest>(request: R, defaultValue?: FieldsSelection<PageInfo, R>) => Promise<FieldsSelection<PageInfo, R>>}),
    
/** A list of edges. */
edges: ({get: <R extends UserEdgeRequest>(request: R, defaultValue?: FieldsSelection<UserEdge, R>[]) => Promise<FieldsSelection<UserEdge, R>[]>}),
    aggregate: (AggregatePromiseChain & {get: <R extends AggregateRequest>(request: R, defaultValue?: FieldsSelection<Aggregate, R>) => Promise<FieldsSelection<Aggregate, R>>})
}


/** A connection to a list of items. */
export interface UserConnectionObservableChain{
    
/** Information to aid in pagination. */
pageInfo: (PageInfoObservableChain & {get: <R extends PageInfoRequest>(request: R, defaultValue?: FieldsSelection<PageInfo, R>) => Observable<FieldsSelection<PageInfo, R>>}),
    
/** A list of edges. */
edges: ({get: <R extends UserEdgeRequest>(request: R, defaultValue?: FieldsSelection<UserEdge, R>[]) => Observable<FieldsSelection<UserEdge, R>[]>}),
    aggregate: (AggregateObservableChain & {get: <R extends AggregateRequest>(request: R, defaultValue?: FieldsSelection<Aggregate, R>) => Observable<FieldsSelection<Aggregate, R>>})
}


/** An edge in a connection. */
export interface UserEdgePromiseChain{
    
/** The item at the end of the edge. */
node: (UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: FieldsSelection<User, R>) => Promise<FieldsSelection<User, R>>}),
    
/** A cursor for use in pagination. */
cursor: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>})
}


/** An edge in a connection. */
export interface UserEdgeObservableChain{
    
/** The item at the end of the edge. */
node: (UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: FieldsSelection<User, R>) => Observable<FieldsSelection<User, R>>}),
    
/** A cursor for use in pagination. */
cursor: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>})
}

export interface VersionPromiseChain{
    id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Promise<Scalars['ID']>}),
    stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Promise<Stage>}),
    revision: ({get: (request?: boolean|number, defaultValue?: Scalars['Int']) => Promise<Scalars['Int']>}),
    createdAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Promise<Scalars['DateTime']>})
}

export interface VersionObservableChain{
    id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Observable<Scalars['ID']>}),
    stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Observable<Stage>}),
    revision: ({get: (request?: boolean|number, defaultValue?: Scalars['Int']) => Observable<Scalars['Int']>}),
    createdAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Observable<Scalars['DateTime']>})
}

export interface VotePromiseChain{
    
/** System stage field */
stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Promise<Stage>}),
    
/** Get the document in other stages */
documentInStages: ((args: {
/** Potential stages that should be returned */
stages: Stage[],
/** Decides if the current stage should be included or not */
includeCurrent: Scalars['Boolean'],
/** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
inheritLocale: Scalars['Boolean']}) => {get: <R extends VoteRequest>(request: R, defaultValue?: FieldsSelection<Vote, R>[]) => Promise<FieldsSelection<Vote, R>[]>}),
    
/** The unique identifier */
id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Promise<Scalars['ID']>}),
    
/** The time the document was created */
createdAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Promise<Scalars['DateTime']>}),
    
/** User that created this document */
createdBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `createdBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>})&(UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was updated */
updatedAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Promise<Scalars['DateTime']>}),
    
/** User that last updated this document */
updatedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `updatedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>})&(UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was published. Null on documents in draft stage. */
publishedAt: ({get: (request?: boolean|number, defaultValue?: (Scalars['DateTime'] | undefined)) => Promise<(Scalars['DateTime'] | undefined)>}),
    
/** User that last published this document */
publishedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `publishedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>})&(UserPromiseChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Promise<(FieldsSelection<User, R> | undefined)>}),
    product: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `product` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => ProductPromiseChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Promise<(FieldsSelection<Product, R> | undefined)>})&(ProductPromiseChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Promise<(FieldsSelection<Product, R> | undefined)>}),
    
/** List of Vote versions */
history: ((args: {limit: Scalars['Int'],skip: Scalars['Int'],
/** This is optional and can be used to fetch the document version history for a specific stage instead of the current one */
stageOverride?: (Stage | null)}) => {get: <R extends VersionRequest>(request: R, defaultValue?: FieldsSelection<Version, R>[]) => Promise<FieldsSelection<Version, R>[]>})
}

export interface VoteObservableChain{
    
/** System stage field */
stage: ({get: (request?: boolean|number, defaultValue?: Stage) => Observable<Stage>}),
    
/** Get the document in other stages */
documentInStages: ((args: {
/** Potential stages that should be returned */
stages: Stage[],
/** Decides if the current stage should be included or not */
includeCurrent: Scalars['Boolean'],
/** Decides if the documents should match the parent documents locale or should use the fallback order defined in the tree */
inheritLocale: Scalars['Boolean']}) => {get: <R extends VoteRequest>(request: R, defaultValue?: FieldsSelection<Vote, R>[]) => Observable<FieldsSelection<Vote, R>[]>}),
    
/** The unique identifier */
id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Observable<Scalars['ID']>}),
    
/** The time the document was created */
createdAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Observable<Scalars['DateTime']>}),
    
/** User that created this document */
createdBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `createdBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>})&(UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was updated */
updatedAt: ({get: (request?: boolean|number, defaultValue?: Scalars['DateTime']) => Observable<Scalars['DateTime']>}),
    
/** User that last updated this document */
updatedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `updatedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>})&(UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>}),
    
/** The time the document was published. Null on documents in draft stage. */
publishedAt: ({get: (request?: boolean|number, defaultValue?: (Scalars['DateTime'] | undefined)) => Observable<(Scalars['DateTime'] | undefined)>}),
    
/** User that last published this document */
publishedBy: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `publishedBy` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>})&(UserObservableChain & {get: <R extends UserRequest>(request: R, defaultValue?: (FieldsSelection<User, R> | undefined)) => Observable<(FieldsSelection<User, R> | undefined)>}),
    product: ((args?: {
/**
 * Allows to optionally override locale filtering behaviour in the query's subtree.
 * 
 * Note that `product` is a model without localized fields and will not be affected directly by this argument, however the locales will be passed on to any relational fields in the query's subtree for filtering.
 * For related models with localized fields in the query's subtree, the first locale matching the provided list of locales will be returned, entries with non matching locales will be filtered out.
 * 
 * This argument will overwrite any existing locale filtering defined in the query's tree for the subtree.
 */
locales?: (Locale[] | null)}) => ProductObservableChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Observable<(FieldsSelection<Product, R> | undefined)>})&(ProductObservableChain & {get: <R extends ProductRequest>(request: R, defaultValue?: (FieldsSelection<Product, R> | undefined)) => Observable<(FieldsSelection<Product, R> | undefined)>}),
    
/** List of Vote versions */
history: ((args: {limit: Scalars['Int'],skip: Scalars['Int'],
/** This is optional and can be used to fetch the document version history for a specific stage instead of the current one */
stageOverride?: (Stage | null)}) => {get: <R extends VersionRequest>(request: R, defaultValue?: FieldsSelection<Version, R>[]) => Observable<FieldsSelection<Version, R>[]>})
}


/** A connection to a list of items. */
export interface VoteConnectionPromiseChain{
    
/** Information to aid in pagination. */
pageInfo: (PageInfoPromiseChain & {get: <R extends PageInfoRequest>(request: R, defaultValue?: FieldsSelection<PageInfo, R>) => Promise<FieldsSelection<PageInfo, R>>}),
    
/** A list of edges. */
edges: ({get: <R extends VoteEdgeRequest>(request: R, defaultValue?: FieldsSelection<VoteEdge, R>[]) => Promise<FieldsSelection<VoteEdge, R>[]>}),
    aggregate: (AggregatePromiseChain & {get: <R extends AggregateRequest>(request: R, defaultValue?: FieldsSelection<Aggregate, R>) => Promise<FieldsSelection<Aggregate, R>>})
}


/** A connection to a list of items. */
export interface VoteConnectionObservableChain{
    
/** Information to aid in pagination. */
pageInfo: (PageInfoObservableChain & {get: <R extends PageInfoRequest>(request: R, defaultValue?: FieldsSelection<PageInfo, R>) => Observable<FieldsSelection<PageInfo, R>>}),
    
/** A list of edges. */
edges: ({get: <R extends VoteEdgeRequest>(request: R, defaultValue?: FieldsSelection<VoteEdge, R>[]) => Observable<FieldsSelection<VoteEdge, R>[]>}),
    aggregate: (AggregateObservableChain & {get: <R extends AggregateRequest>(request: R, defaultValue?: FieldsSelection<Aggregate, R>) => Observable<FieldsSelection<Aggregate, R>>})
}


/** An edge in a connection. */
export interface VoteEdgePromiseChain{
    
/** The item at the end of the edge. */
node: (VotePromiseChain & {get: <R extends VoteRequest>(request: R, defaultValue?: FieldsSelection<Vote, R>) => Promise<FieldsSelection<Vote, R>>}),
    
/** A cursor for use in pagination. */
cursor: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Promise<Scalars['String']>})
}


/** An edge in a connection. */
export interface VoteEdgeObservableChain{
    
/** The item at the end of the edge. */
node: (VoteObservableChain & {get: <R extends VoteRequest>(request: R, defaultValue?: FieldsSelection<Vote, R>) => Observable<FieldsSelection<Vote, R>>}),
    
/** A cursor for use in pagination. */
cursor: ({get: (request?: boolean|number, defaultValue?: Scalars['String']) => Observable<Scalars['String']>})
}