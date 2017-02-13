// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import UIKit


/** A wrapper class for Objective-C compatibility. */
public extension Iconic {

    /** The icon font's family name. */
    @objc class var fontAwesomeIconFamilyName: NSString {
        return FontAwesomeIcon.familyName as NSString
    }
    /** The icon font's total count of available icons. */
    @objc class var fontAwesomeIconCount: Int {
        return FontAwesomeIcon.count
    }
    /**
     Creates and returns the icon font object for the specified size.
     - parameter size: The size (in points) to which the font is scaled.
     */
    @objc class func fontAwesomeIconFont(ofSize size: CGFloat) -> UIFont {
        return FontAwesomeIcon.font(ofSize: size)
    }
    /**
     Returns the icon as an attributed string with the given pointSize and color.
     - parameter pointSize: The size of the font.
     - parameter color: The tint color of the font.
     */
    @objc class func attributedString(withIcon icon: FontAwesomeIcon, pointSize: CGFloat, color: UIColor?) -> NSAttributedString {
        return icon.attributedString(ofSize: pointSize, color: color)
    }

    /**
     Returns the icon as an attributed string with the given pointSize, color and padding.
     - parameter pointSize: The size of the font.
     - parameter color: The tint color of the font.
     - parameter edgeInsets: The edge insets to be used as horizontal and vertical padding.
     */
    @objc class func attributedString(withIcon icon: FontAwesomeIcon, pointSize: CGFloat, color: UIColor?, edgeInsets: UIEdgeInsets) -> NSAttributedString {
        return icon.attributedString(ofSize: pointSize, color: color, edgeInsets: edgeInsets)
    }
    /**
     Returns the icon as an image with the given size and color.
     - parameter size: The size of the image, in points.
     - parameter color: A tint color for the image.
     */
    @objc class func image(withIcon icon: FontAwesomeIcon, size: CGSize, color: UIColor?) -> UIImage {
        return icon.image(ofSize: size, color: color)
    }

    /**
     Returns the icon as an image with the given size and color.
     - parameter size: The size of the image, in points.
     - parameter color: The tint color of the image.
     - parameter edgeInsets: The edge insets to be used as padding values.
     */
    @objc class func image(withIcon icon: FontAwesomeIcon, size: CGSize, color: UIColor?, edgeInsets: UIEdgeInsets) -> UIImage {
        return icon.image(ofSize: size, color: color, edgeInsets: edgeInsets)
    }

    /**
     Registers the icon font with the font manager.
     Note: an exception will be thrown if the resource (ttf/otf) font file is not found in the bundle.
     */
    @objc class func registerFontAwesomeIcon() {
        FontAwesomeIcon.register()
    }
    /**
     Unregisters the icon font from the font manager.
     */
    @objc class func unregisterFontAwesomeIcon() {
        FontAwesomeIcon.unregister()
    }
}


public extension UIBarButtonItem {
    /**
     Initializes a new item using the specified icon and other properties.
     - parameter icon: The icon to be used as image.
     - parameter size: The size of the image, in points.
     - parameter target: The object that receives the action message.
     - parameter action: The action to send to target when this item is selected.
     */
    convenience init(withIcon icon: FontAwesomeIcon, size: CGSize, target: AnyObject?, action: Selector) {
        let image = icon.image(ofSize: size, color: .black)
        self.init(image: image, style: .plain, target: target, action: action)
    }
}


public extension UITabBarItem {
    /**
     Initializes a new item using the specified icon and other properties.
     The tag is automatically assigned using the icon's raw integer value.
     - parameter icon: The icon to be used as image.
     - parameter size: The size of the image, in points.
     - parameter title: The item's title. If nil, a title is not displayed.
     */
    convenience init(withIcon icon: FontAwesomeIcon, size: CGSize, title: String?) {
        let image = icon.image(ofSize: size, color: .black)
        self.init(title: title, image: image, tag: icon.rawValue)
    }
}


public extension UIButton {
    /**
     Sets the icon to use for the specified state.
     - parameter icon: The icon to be used as image.
     - parameter size: The size of the image, in points.
     - parameter color: The color of the image.
     - parameter state: The state that uses the specified title. The values are described in UIControlState.
     */
    func setIconImage(withIcon icon: FontAwesomeIcon, size: CGSize, color:UIColor?, forState state: UIControlState) {
        let image = icon.image(ofSize: size, color: color ?? .black)
        setImage(image, for: state)
    }
}


/** A list with available icon glyphs from the icon font. */
@objc public enum FontAwesomeIcon: Int {
    case _279
    case _283
    case _303
    case _312
    case _317
    case _329
    case _334
    case _335
    case _366
    case _372
    case _374
    case _376
    case _378
    case _380
    case _382
    case _383
    case _384
    case _385
    case _386
    case _387
    case _388
    case _389
    case _392
    case _393
    case _395
    case _396
    case _397
    case _398
    case _399
    case _400
    case _402
    case _403
    case _404
    case _406
    case _407
    case _408
    case _409
    case _410
    case _411
    case _412
    case _413
    case _414
    case _415
    case _416
    case _417
    case _418
    case _419
    case _422
    case _423
    case _424
    case _425
    case _426
    case _427
    case _428
    case _429
    case _430
    case _431
    case _432
    case _433
    case _434
    case _438
    case _439
    case _443
    case _444
    case _445
    case _446
    case _447
    case _448
    case _449
    case _451
    case _452
    case _453
    case _454
    case _455
    case _456
    case _457
    case _458
    case _459
    case _460
    case _461
    case _462
    case _463
    case _464
    case _466
    case _467
    case _469
    case _470
    case _471
    case _472
    case _473
    case _474
    case _475
    case _476
    case _478
    case _479
    case _480
    case _481
    case _482
    case _483
    case _484
    case _485
    case _486
    case _487
    case _488
    case _489
    case _490
    case _491
    case _492
    case _493
    case _494
    case _496
    case _498
    case _499
    case _500
    case _501
    case _502
    case _503
    case _504
    case _505
    case _506
    case _507
    case _508
    case _509
    case _511
    case _512
    case _513
    case _514
    case _515
    case _516
    case _517
    case _518
    case _519
    case _520
    case _521
    case _522
    case _523
    case _524
    case _525
    case _526
    case _527
    case _528
    case _529
    case _530
    case _531
    case _532
    case _533
    case _534
    case _535
    case _536
    case _537
    case _538
    case _539
    case _540
    case _541
    case _542
    case _543
    case _544
    case _545
    case _546
    case _547
    case _548
    case _549
    case _550
    case _551
    case _552
    case _553
    case _554
    case _555
    case _556
    case _557
    case _558
    case _559
    case _560
    case _561
    case _562
    case _563
    case _564
    case _565
    case _566
    case _567
    case _568
    case _569
    case _572
    case _574
    case _575
    case _576
    case _577
    case _578
    case _579
    case _580
    case _581
    case _582
    case _583
    case _584
    case _585
    case _586
    case _587
    case _588
    case _589
    case _590
    case _591
    case _592
    case _593
    case _594
    case _595
    case _596
    case _597
    case _598
    case _602
    case _603
    case _604
    case _607
    case _608
    case _609
    case _610
    case _611
    case _612
    case _613
    case _614
    case _615
    case _616
    case _617
    case _618
    case _619
    case _620
    case _621
    case _622
    case _623
    case _624
    case _625
    case _626
    case _627
    case _628
    case _629
    case adjust
    case adn
    case alignCenter
    case alignJustify
    case alignLeft
    case alignRight
    case ambulance
    case anchor
    case android
    case angleDown
    case angleLeft
    case angleRight
    case angleUp
    case apple
    case archive
    case arrowCircleAltLeft
    case arrowDown
    case arrowLeft
    case arrowRight
    case arrowUp
    case asterisk
    case backward
    case banCircle
    case barChart
    case barcode
    case beaker
    case beer
    case bell
    case bellAlt
    case bitbucketSign
    case bold
    case bolt
    case book
    case bookmark
    case bookmarkEmpty
    case briefcase
    case btc
    case bug
    case building
    case bullhorn
    case bullseye
    case calendar
    case calendarEmpty
    case camera
    case cameraRetro
    case caretDown
    case caretLeft
    case caretRight
    case caretUp
    case certificate
    case check
    case checkEmpty
    case checkMinus
    case checkSign
    case chevronDown
    case chevronLeft
    case chevronRight
    case chevronSignDown
    case chevronSignLeft
    case chevronSignRight
    case chevronSignUp
    case chevronUp
    case circle
    case circleArrowDown
    case circleArrowLeft
    case circleArrowRight
    case circleArrowUp
    case circleBlank
    case cloud
    case cloudDownload
    case cloudUpload
    case code
    case codeFork
    case coffee
    case cog
    case cogs
    case collapse
    case collapseAlt
    case collapseTop
    case columns
    case comment
    case commentAlt
    case comments
    case commentsAlt
    case compass
    case copy
    case creditCard
    case crop
    case css3
    case cut
    case dashboard
    case desktop
    case dotCircleAlt
    case doubleAngleDown
    case doubleAngleLeft
    case doubleAngleRight
    case doubleAngleUp
    case download
    case downloadAlt
    case dribble
    case dropbox
    case edit
    case editSign
    case eject
    case ellipsisHorizontal
    case ellipsisVertical
    case envelope
    case envelopeAlt
    case eur
    case exchange
    case exclamation
    case exclamationSign
    case expandAlt
    case externalLink
    case eyeClose
    case eyeOpen
    case f0fe
    case f171
    case f1a1
    case f1a4
    case f1ab
    case f1f3
    case f1fc
    case f210
    case f212
    case f260
    case f261
    case f263
    case f27e
    case facebook
    case facebookSign
    case facetimeVideo
    case fastBackward
    case fastForward
    case female
    case fighterJet
    case file
    case fileAlt
    case fileText
    case fileTextAlt
    case film
    case filter
    case fire
    case fireExtinguisher
    case flag
    case flagAlt
    case flagCheckered
    case flickr
    case folderClose
    case folderCloseAlt
    case folderOpen
    case folderOpenAlt
    case Font
    case food
    case forward
    case foursquare
    case frown
    case fullscreen
    case gamepad
    case gbp
    case gift
    case github
    case githubAlt
    case githubSign
    case gittip
    case glass
    case globe
    case googlePlus
    case googlePlusSign
    case group
    case hSign
    case handDown
    case handLeft
    case handRight
    case handUp
    case hdd
    case headphones
    case heart
    case heartEmpty
    case home
    case hospital
    case html5
    case inbox
    case indentLeft
    case indentRight
    case infoSign
    case inr
    case instagram
    case italic
    case jpy
    case key
    case keyboard
    case krw
    case laptop
    case leaf
    case legal
    case lemon
    case lessequal
    case levelDown
    case levelUp
    case lightBulb
    case link
    case linkedin
    case linkedinSign
    case linux
    case list
    case listAlt
    case locationArrow
    case lock
    case longArrowDown
    case longArrowLeft
    case longArrowRight
    case longArrowUp
    case magic
    case magnet
    case male
    case mapMarker
    case maxcdn
    case medkit
    case meh
    case microphone
    case microphoneOff
    case minus
    case minusSign
    case minusSignAlt
    case mobilePhone
    case money
    case move
    case music
    case off
    case ok
    case okCircle
    case okSign
    case ol
    case paperClip
    case paste
    case pause
    case pencil
    case phone
    case phoneSign
    case picture
    case pinterest
    case pinterestSign
    case plane
    case play
    case playCircle
    case playSign
    case plus
    case plusSign
    case plusSquareO
    case print
    case pushpin
    case puzzlePiece
    case qrcode
    case question
    case questionSign
    case quoteLeft
    case quoteRight
    case random
    case refresh
    case remove
    case removeCircle
    case removeSign
    case renren
    case reorder
    case `repeat`
    case reply
    case replyAll
    case resizeFull
    case resizeHorizontal
    case resizeSmall
    case resizeVertical
    case retweet
    case road
    case rocket
    case rss
    case rub
    case save
    case screenshot
    case search
    case share
    case shareAlt
    case shareSign
    case shield
    case shoppingCart
    case signBlank
    case signal
    case signin
    case signout
    case sitemap
    case skype
    case smile
    case sort
    case sortByAlphabet
    case sortByAttributes
    case sortByAttributesAlt
    case sortByOrder
    case sortByOrderAlt
    case sortDown
    case sortUp
    case spinner
    case stackExchange
    case stackexchange
    case star
    case starEmpty
    case starHalf
    case starHalfEmpty
    case stepBackward
    case stepForward
    case stethoscope
    case stop
    case strikethrough
    case `subscript`
    case suitcase
    case sun
    case superscript
    case table
    case tablet
    case tag
    case tags
    case tasks
    case terminal
    case textHeight
    case textWidth
    case th
    case thLarge
    case thList
    case thumbsDownAlt
    case thumbsUpAlt
    case ticket
    case time
    case tint
    case trash
    case trello
    case trophy
    case truck
    case tumblr
    case tumblrSign
    case twitter
    case twitterSign
    case ul
    case umbrella
    case underline
    case undo
    case uniF1A0
    case uniF1B1
    case uniF1C0
    case uniF1C1
    case uniF1D0
    case uniF1D1
    case uniF1D2
    case uniF1D5
    case uniF1D6
    case uniF1D7
    case uniF1E0
    case uniF1F0
    case uniF280
    case uniF281
    case uniF285
    case uniF286
    case uniF2A0
    case uniF2A1
    case uniF2A2
    case uniF2A3
    case uniF2A4
    case uniF2A5
    case uniF2A6
    case uniF2A7
    case uniF2A8
    case uniF2A9
    case uniF2AA
    case uniF2AB
    case uniF2AC
    case uniF2AD
    case uniF2AE
    case uniF2B0
    case uniF2B1
    case uniF2B2
    case uniF2B3
    case uniF2B4
    case uniF2B5
    case uniF2B6
    case uniF2B7
    case uniF2B8
    case uniF2B9
    case uniF2BA
    case uniF2BB
    case uniF2BC
    case uniF2BD
    case uniF2BE
    case unlink
    case unlock
    case unlockAlt
    case upload
    case uploadAlt
    case usd
    case user
    case userMd
    case venus
    case vimeoSquare
    case vk
    case volumeDown
    case volumeOff
    case volumeUp
    case warningSign
    case weibo
    case windows
    case wrench
    case xing
    case xingSign
    case youtube
    case youtubePlay
    case youtubeSign
    case zoomIn
    case zoomOut

    /** The icon font's total count of available icons. */
    public static var count: Int { return 649 }
}


extension FontAwesomeIcon : IconDrawable {
    /** The icon font's family name. */
    public static var familyName:String {
        return "FontAwesome"
    }
    /**
     Creates a new instance with the specified icon name.
     If there is no valid name is recognised, this initializer falls back to the first available icon.
     - parameter iconName: The icon name to use for the new instance.
     */
    public init(named iconName: String) {
        switch iconName.lowercased() {
        case "_279": self = ._279
        case "_283": self = ._283
        case "_303": self = ._303
        case "_312": self = ._312
        case "_317": self = ._317
        case "_329": self = ._329
        case "_334": self = ._334
        case "_335": self = ._335
        case "_366": self = ._366
        case "_372": self = ._372
        case "_374": self = ._374
        case "_376": self = ._376
        case "_378": self = ._378
        case "_380": self = ._380
        case "_382": self = ._382
        case "_383": self = ._383
        case "_384": self = ._384
        case "_385": self = ._385
        case "_386": self = ._386
        case "_387": self = ._387
        case "_388": self = ._388
        case "_389": self = ._389
        case "_392": self = ._392
        case "_393": self = ._393
        case "_395": self = ._395
        case "_396": self = ._396
        case "_397": self = ._397
        case "_398": self = ._398
        case "_399": self = ._399
        case "_400": self = ._400
        case "_402": self = ._402
        case "_403": self = ._403
        case "_404": self = ._404
        case "_406": self = ._406
        case "_407": self = ._407
        case "_408": self = ._408
        case "_409": self = ._409
        case "_410": self = ._410
        case "_411": self = ._411
        case "_412": self = ._412
        case "_413": self = ._413
        case "_414": self = ._414
        case "_415": self = ._415
        case "_416": self = ._416
        case "_417": self = ._417
        case "_418": self = ._418
        case "_419": self = ._419
        case "_422": self = ._422
        case "_423": self = ._423
        case "_424": self = ._424
        case "_425": self = ._425
        case "_426": self = ._426
        case "_427": self = ._427
        case "_428": self = ._428
        case "_429": self = ._429
        case "_430": self = ._430
        case "_431": self = ._431
        case "_432": self = ._432
        case "_433": self = ._433
        case "_434": self = ._434
        case "_438": self = ._438
        case "_439": self = ._439
        case "_443": self = ._443
        case "_444": self = ._444
        case "_445": self = ._445
        case "_446": self = ._446
        case "_447": self = ._447
        case "_448": self = ._448
        case "_449": self = ._449
        case "_451": self = ._451
        case "_452": self = ._452
        case "_453": self = ._453
        case "_454": self = ._454
        case "_455": self = ._455
        case "_456": self = ._456
        case "_457": self = ._457
        case "_458": self = ._458
        case "_459": self = ._459
        case "_460": self = ._460
        case "_461": self = ._461
        case "_462": self = ._462
        case "_463": self = ._463
        case "_464": self = ._464
        case "_466": self = ._466
        case "_467": self = ._467
        case "_469": self = ._469
        case "_470": self = ._470
        case "_471": self = ._471
        case "_472": self = ._472
        case "_473": self = ._473
        case "_474": self = ._474
        case "_475": self = ._475
        case "_476": self = ._476
        case "_478": self = ._478
        case "_479": self = ._479
        case "_480": self = ._480
        case "_481": self = ._481
        case "_482": self = ._482
        case "_483": self = ._483
        case "_484": self = ._484
        case "_485": self = ._485
        case "_486": self = ._486
        case "_487": self = ._487
        case "_488": self = ._488
        case "_489": self = ._489
        case "_490": self = ._490
        case "_491": self = ._491
        case "_492": self = ._492
        case "_493": self = ._493
        case "_494": self = ._494
        case "_496": self = ._496
        case "_498": self = ._498
        case "_499": self = ._499
        case "_500": self = ._500
        case "_501": self = ._501
        case "_502": self = ._502
        case "_503": self = ._503
        case "_504": self = ._504
        case "_505": self = ._505
        case "_506": self = ._506
        case "_507": self = ._507
        case "_508": self = ._508
        case "_509": self = ._509
        case "_511": self = ._511
        case "_512": self = ._512
        case "_513": self = ._513
        case "_514": self = ._514
        case "_515": self = ._515
        case "_516": self = ._516
        case "_517": self = ._517
        case "_518": self = ._518
        case "_519": self = ._519
        case "_520": self = ._520
        case "_521": self = ._521
        case "_522": self = ._522
        case "_523": self = ._523
        case "_524": self = ._524
        case "_525": self = ._525
        case "_526": self = ._526
        case "_527": self = ._527
        case "_528": self = ._528
        case "_529": self = ._529
        case "_530": self = ._530
        case "_531": self = ._531
        case "_532": self = ._532
        case "_533": self = ._533
        case "_534": self = ._534
        case "_535": self = ._535
        case "_536": self = ._536
        case "_537": self = ._537
        case "_538": self = ._538
        case "_539": self = ._539
        case "_540": self = ._540
        case "_541": self = ._541
        case "_542": self = ._542
        case "_543": self = ._543
        case "_544": self = ._544
        case "_545": self = ._545
        case "_546": self = ._546
        case "_547": self = ._547
        case "_548": self = ._548
        case "_549": self = ._549
        case "_550": self = ._550
        case "_551": self = ._551
        case "_552": self = ._552
        case "_553": self = ._553
        case "_554": self = ._554
        case "_555": self = ._555
        case "_556": self = ._556
        case "_557": self = ._557
        case "_558": self = ._558
        case "_559": self = ._559
        case "_560": self = ._560
        case "_561": self = ._561
        case "_562": self = ._562
        case "_563": self = ._563
        case "_564": self = ._564
        case "_565": self = ._565
        case "_566": self = ._566
        case "_567": self = ._567
        case "_568": self = ._568
        case "_569": self = ._569
        case "_572": self = ._572
        case "_574": self = ._574
        case "_575": self = ._575
        case "_576": self = ._576
        case "_577": self = ._577
        case "_578": self = ._578
        case "_579": self = ._579
        case "_580": self = ._580
        case "_581": self = ._581
        case "_582": self = ._582
        case "_583": self = ._583
        case "_584": self = ._584
        case "_585": self = ._585
        case "_586": self = ._586
        case "_587": self = ._587
        case "_588": self = ._588
        case "_589": self = ._589
        case "_590": self = ._590
        case "_591": self = ._591
        case "_592": self = ._592
        case "_593": self = ._593
        case "_594": self = ._594
        case "_595": self = ._595
        case "_596": self = ._596
        case "_597": self = ._597
        case "_598": self = ._598
        case "_602": self = ._602
        case "_603": self = ._603
        case "_604": self = ._604
        case "_607": self = ._607
        case "_608": self = ._608
        case "_609": self = ._609
        case "_610": self = ._610
        case "_611": self = ._611
        case "_612": self = ._612
        case "_613": self = ._613
        case "_614": self = ._614
        case "_615": self = ._615
        case "_616": self = ._616
        case "_617": self = ._617
        case "_618": self = ._618
        case "_619": self = ._619
        case "_620": self = ._620
        case "_621": self = ._621
        case "_622": self = ._622
        case "_623": self = ._623
        case "_624": self = ._624
        case "_625": self = ._625
        case "_626": self = ._626
        case "_627": self = ._627
        case "_628": self = ._628
        case "_629": self = ._629
        case "adjust": self = .adjust
        case "adn": self = .adn
        case "align_center": self = .alignCenter
        case "align_justify": self = .alignJustify
        case "align_left": self = .alignLeft
        case "align_right": self = .alignRight
        case "ambulance": self = .ambulance
        case "anchor": self = .anchor
        case "android": self = .android
        case "angle_down": self = .angleDown
        case "angle_left": self = .angleLeft
        case "angle_right": self = .angleRight
        case "angle_up": self = .angleUp
        case "apple": self = .apple
        case "archive": self = .archive
        case "arrow_circle_alt_left": self = .arrowCircleAltLeft
        case "arrow_down": self = .arrowDown
        case "arrow_left": self = .arrowLeft
        case "arrow_right": self = .arrowRight
        case "arrow_up": self = .arrowUp
        case "asterisk": self = .asterisk
        case "backward": self = .backward
        case "ban_circle": self = .banCircle
        case "bar_chart": self = .barChart
        case "barcode": self = .barcode
        case "beaker": self = .beaker
        case "beer": self = .beer
        case "bell": self = .bell
        case "bell_alt": self = .bellAlt
        case "bitbucket_sign": self = .bitbucketSign
        case "bold": self = .bold
        case "bolt": self = .bolt
        case "book": self = .book
        case "bookmark": self = .bookmark
        case "bookmark_empty": self = .bookmarkEmpty
        case "briefcase": self = .briefcase
        case "btc": self = .btc
        case "bug": self = .bug
        case "building": self = .building
        case "bullhorn": self = .bullhorn
        case "bullseye": self = .bullseye
        case "calendar": self = .calendar
        case "calendar_empty": self = .calendarEmpty
        case "camera": self = .camera
        case "camera_retro": self = .cameraRetro
        case "caret_down": self = .caretDown
        case "caret_left": self = .caretLeft
        case "caret_right": self = .caretRight
        case "caret_up": self = .caretUp
        case "certificate": self = .certificate
        case "check": self = .check
        case "check_empty": self = .checkEmpty
        case "check_minus": self = .checkMinus
        case "check_sign": self = .checkSign
        case "chevron_down": self = .chevronDown
        case "chevron_left": self = .chevronLeft
        case "chevron_right": self = .chevronRight
        case "chevron_sign_down": self = .chevronSignDown
        case "chevron_sign_left": self = .chevronSignLeft
        case "chevron_sign_right": self = .chevronSignRight
        case "chevron_sign_up": self = .chevronSignUp
        case "chevron_up": self = .chevronUp
        case "circle": self = .circle
        case "circle_arrow_down": self = .circleArrowDown
        case "circle_arrow_left": self = .circleArrowLeft
        case "circle_arrow_right": self = .circleArrowRight
        case "circle_arrow_up": self = .circleArrowUp
        case "circle_blank": self = .circleBlank
        case "cloud": self = .cloud
        case "cloud_download": self = .cloudDownload
        case "cloud_upload": self = .cloudUpload
        case "code": self = .code
        case "code_fork": self = .codeFork
        case "coffee": self = .coffee
        case "cog": self = .cog
        case "cogs": self = .cogs
        case "collapse": self = .collapse
        case "collapse_alt": self = .collapseAlt
        case "collapse_top": self = .collapseTop
        case "columns": self = .columns
        case "comment": self = .comment
        case "comment_alt": self = .commentAlt
        case "comments": self = .comments
        case "comments_alt": self = .commentsAlt
        case "compass": self = .compass
        case "copy": self = .copy
        case "credit_card": self = .creditCard
        case "crop": self = .crop
        case "css3": self = .css3
        case "cut": self = .cut
        case "dashboard": self = .dashboard
        case "desktop": self = .desktop
        case "dot_circle_alt": self = .dotCircleAlt
        case "double_angle_down": self = .doubleAngleDown
        case "double_angle_left": self = .doubleAngleLeft
        case "double_angle_right": self = .doubleAngleRight
        case "double_angle_up": self = .doubleAngleUp
        case "download": self = .download
        case "download_alt": self = .downloadAlt
        case "dribble": self = .dribble
        case "dropbox": self = .dropbox
        case "edit": self = .edit
        case "edit_sign": self = .editSign
        case "eject": self = .eject
        case "ellipsis_horizontal": self = .ellipsisHorizontal
        case "ellipsis_vertical": self = .ellipsisVertical
        case "envelope": self = .envelope
        case "envelope_alt": self = .envelopeAlt
        case "eur": self = .eur
        case "exchange": self = .exchange
        case "exclamation": self = .exclamation
        case "exclamation_sign": self = .exclamationSign
        case "expand_alt": self = .expandAlt
        case "external_link": self = .externalLink
        case "eye_close": self = .eyeClose
        case "eye_open": self = .eyeOpen
        case "f0fe": self = .f0fe
        case "f171": self = .f171
        case "f1a1": self = .f1a1
        case "f1a4": self = .f1a4
        case "f1ab": self = .f1ab
        case "f1f3": self = .f1f3
        case "f1fc": self = .f1fc
        case "f210": self = .f210
        case "f212": self = .f212
        case "f260": self = .f260
        case "f261": self = .f261
        case "f263": self = .f263
        case "f27e": self = .f27e
        case "facebook": self = .facebook
        case "facebook_sign": self = .facebookSign
        case "facetime_video": self = .facetimeVideo
        case "fast_backward": self = .fastBackward
        case "fast_forward": self = .fastForward
        case "female": self = .female
        case "fighter_jet": self = .fighterJet
        case "file": self = .file
        case "file_alt": self = .fileAlt
        case "file_text": self = .fileText
        case "file_text_alt": self = .fileTextAlt
        case "film": self = .film
        case "filter": self = .filter
        case "fire": self = .fire
        case "fire_extinguisher": self = .fireExtinguisher
        case "flag": self = .flag
        case "flag_alt": self = .flagAlt
        case "flag_checkered": self = .flagCheckered
        case "flickr": self = .flickr
        case "folder_close": self = .folderClose
        case "folder_close_alt": self = .folderCloseAlt
        case "folder_open": self = .folderOpen
        case "folder_open_alt": self = .folderOpenAlt
        case "font": self = .Font
        case "food": self = .food
        case "forward": self = .forward
        case "foursquare": self = .foursquare
        case "frown": self = .frown
        case "fullscreen": self = .fullscreen
        case "gamepad": self = .gamepad
        case "gbp": self = .gbp
        case "gift": self = .gift
        case "github": self = .github
        case "github_alt": self = .githubAlt
        case "github_sign": self = .githubSign
        case "gittip": self = .gittip
        case "glass": self = .glass
        case "globe": self = .globe
        case "google_plus": self = .googlePlus
        case "google_plus_sign": self = .googlePlusSign
        case "group": self = .group
        case "h_sign": self = .hSign
        case "hand_down": self = .handDown
        case "hand_left": self = .handLeft
        case "hand_right": self = .handRight
        case "hand_up": self = .handUp
        case "hdd": self = .hdd
        case "headphones": self = .headphones
        case "heart": self = .heart
        case "heart_empty": self = .heartEmpty
        case "home": self = .home
        case "hospital": self = .hospital
        case "html5": self = .html5
        case "inbox": self = .inbox
        case "indent_left": self = .indentLeft
        case "indent_right": self = .indentRight
        case "info_sign": self = .infoSign
        case "inr": self = .inr
        case "instagram": self = .instagram
        case "italic": self = .italic
        case "jpy": self = .jpy
        case "key": self = .key
        case "keyboard": self = .keyboard
        case "krw": self = .krw
        case "laptop": self = .laptop
        case "leaf": self = .leaf
        case "legal": self = .legal
        case "lemon": self = .lemon
        case "lessequal": self = .lessequal
        case "level_down": self = .levelDown
        case "level_up": self = .levelUp
        case "light_bulb": self = .lightBulb
        case "link": self = .link
        case "linkedin": self = .linkedin
        case "linkedin_sign": self = .linkedinSign
        case "linux": self = .linux
        case "list": self = .list
        case "list_alt": self = .listAlt
        case "location_arrow": self = .locationArrow
        case "lock": self = .lock
        case "long_arrow_down": self = .longArrowDown
        case "long_arrow_left": self = .longArrowLeft
        case "long_arrow_right": self = .longArrowRight
        case "long_arrow_up": self = .longArrowUp
        case "magic": self = .magic
        case "magnet": self = .magnet
        case "male": self = .male
        case "map_marker": self = .mapMarker
        case "maxcdn": self = .maxcdn
        case "medkit": self = .medkit
        case "meh": self = .meh
        case "microphone": self = .microphone
        case "microphone_off": self = .microphoneOff
        case "minus": self = .minus
        case "minus_sign": self = .minusSign
        case "minus_sign_alt": self = .minusSignAlt
        case "mobile_phone": self = .mobilePhone
        case "money": self = .money
        case "move": self = .move
        case "music": self = .music
        case "off": self = .off
        case "ok": self = .ok
        case "ok_circle": self = .okCircle
        case "ok_sign": self = .okSign
        case "ol": self = .ol
        case "paper_clip": self = .paperClip
        case "paste": self = .paste
        case "pause": self = .pause
        case "pencil": self = .pencil
        case "phone": self = .phone
        case "phone_sign": self = .phoneSign
        case "picture": self = .picture
        case "pinterest": self = .pinterest
        case "pinterest_sign": self = .pinterestSign
        case "plane": self = .plane
        case "play": self = .play
        case "play_circle": self = .playCircle
        case "play_sign": self = .playSign
        case "plus": self = .plus
        case "plus_sign": self = .plusSign
        case "plus_square_o": self = .plusSquareO
        case "print": self = .print
        case "pushpin": self = .pushpin
        case "puzzle_piece": self = .puzzlePiece
        case "qrcode": self = .qrcode
        case "question": self = .question
        case "question_sign": self = .questionSign
        case "quote_left": self = .quoteLeft
        case "quote_right": self = .quoteRight
        case "random": self = .random
        case "refresh": self = .refresh
        case "remove": self = .remove
        case "remove_circle": self = .removeCircle
        case "remove_sign": self = .removeSign
        case "renren": self = .renren
        case "reorder": self = .reorder
        case "repeat": self = .repeat
        case "reply": self = .reply
        case "reply_all": self = .replyAll
        case "resize_full": self = .resizeFull
        case "resize_horizontal": self = .resizeHorizontal
        case "resize_small": self = .resizeSmall
        case "resize_vertical": self = .resizeVertical
        case "retweet": self = .retweet
        case "road": self = .road
        case "rocket": self = .rocket
        case "rss": self = .rss
        case "rub": self = .rub
        case "save": self = .save
        case "screenshot": self = .screenshot
        case "search": self = .search
        case "share": self = .share
        case "share_alt": self = .shareAlt
        case "share_sign": self = .shareSign
        case "shield": self = .shield
        case "shopping_cart": self = .shoppingCart
        case "sign_blank": self = .signBlank
        case "signal": self = .signal
        case "signin": self = .signin
        case "signout": self = .signout
        case "sitemap": self = .sitemap
        case "skype": self = .skype
        case "smile": self = .smile
        case "sort": self = .sort
        case "sort_by_alphabet": self = .sortByAlphabet
        case "sort_by_attributes": self = .sortByAttributes
        case "sort_by_attributes_alt": self = .sortByAttributesAlt
        case "sort_by_order": self = .sortByOrder
        case "sort_by_order_alt": self = .sortByOrderAlt
        case "sort_down": self = .sortDown
        case "sort_up": self = .sortUp
        case "spinner": self = .spinner
        case "stack_exchange": self = .stackExchange
        case "stackexchange": self = .stackexchange
        case "star": self = .star
        case "star_empty": self = .starEmpty
        case "star_half": self = .starHalf
        case "star_half_empty": self = .starHalfEmpty
        case "step_backward": self = .stepBackward
        case "step_forward": self = .stepForward
        case "stethoscope": self = .stethoscope
        case "stop": self = .stop
        case "strikethrough": self = .strikethrough
        case "subscript": self = .subscript
        case "suitcase": self = .suitcase
        case "sun": self = .sun
        case "superscript": self = .superscript
        case "table": self = .table
        case "tablet": self = .tablet
        case "tag": self = .tag
        case "tags": self = .tags
        case "tasks": self = .tasks
        case "terminal": self = .terminal
        case "text_height": self = .textHeight
        case "text_width": self = .textWidth
        case "th": self = .th
        case "th_large": self = .thLarge
        case "th_list": self = .thList
        case "thumbs_down_alt": self = .thumbsDownAlt
        case "thumbs_up_alt": self = .thumbsUpAlt
        case "ticket": self = .ticket
        case "time": self = .time
        case "tint": self = .tint
        case "trash": self = .trash
        case "trello": self = .trello
        case "trophy": self = .trophy
        case "truck": self = .truck
        case "tumblr": self = .tumblr
        case "tumblr_sign": self = .tumblrSign
        case "twitter": self = .twitter
        case "twitter_sign": self = .twitterSign
        case "ul": self = .ul
        case "umbrella": self = .umbrella
        case "underline": self = .underline
        case "undo": self = .undo
        case "unif1a0": self = .uniF1A0
        case "unif1b1": self = .uniF1B1
        case "unif1c0": self = .uniF1C0
        case "unif1c1": self = .uniF1C1
        case "unif1d0": self = .uniF1D0
        case "unif1d1": self = .uniF1D1
        case "unif1d2": self = .uniF1D2
        case "unif1d5": self = .uniF1D5
        case "unif1d6": self = .uniF1D6
        case "unif1d7": self = .uniF1D7
        case "unif1e0": self = .uniF1E0
        case "unif1f0": self = .uniF1F0
        case "unif280": self = .uniF280
        case "unif281": self = .uniF281
        case "unif285": self = .uniF285
        case "unif286": self = .uniF286
        case "unif2a0": self = .uniF2A0
        case "unif2a1": self = .uniF2A1
        case "unif2a2": self = .uniF2A2
        case "unif2a3": self = .uniF2A3
        case "unif2a4": self = .uniF2A4
        case "unif2a5": self = .uniF2A5
        case "unif2a6": self = .uniF2A6
        case "unif2a7": self = .uniF2A7
        case "unif2a8": self = .uniF2A8
        case "unif2a9": self = .uniF2A9
        case "unif2aa": self = .uniF2AA
        case "unif2ab": self = .uniF2AB
        case "unif2ac": self = .uniF2AC
        case "unif2ad": self = .uniF2AD
        case "unif2ae": self = .uniF2AE
        case "unif2b0": self = .uniF2B0
        case "unif2b1": self = .uniF2B1
        case "unif2b2": self = .uniF2B2
        case "unif2b3": self = .uniF2B3
        case "unif2b4": self = .uniF2B4
        case "unif2b5": self = .uniF2B5
        case "unif2b6": self = .uniF2B6
        case "unif2b7": self = .uniF2B7
        case "unif2b8": self = .uniF2B8
        case "unif2b9": self = .uniF2B9
        case "unif2ba": self = .uniF2BA
        case "unif2bb": self = .uniF2BB
        case "unif2bc": self = .uniF2BC
        case "unif2bd": self = .uniF2BD
        case "unif2be": self = .uniF2BE
        case "unlink": self = .unlink
        case "unlock": self = .unlock
        case "unlock_alt": self = .unlockAlt
        case "upload": self = .upload
        case "upload_alt": self = .uploadAlt
        case "usd": self = .usd
        case "user": self = .user
        case "user_md": self = .userMd
        case "venus": self = .venus
        case "vimeo_square": self = .vimeoSquare
        case "vk": self = .vk
        case "volume_down": self = .volumeDown
        case "volume_off": self = .volumeOff
        case "volume_up": self = .volumeUp
        case "warning_sign": self = .warningSign
        case "weibo": self = .weibo
        case "windows": self = .windows
        case "wrench": self = .wrench
        case "xing": self = .xing
        case "xing_sign": self = .xingSign
        case "youtube": self = .youtube
        case "youtube_play": self = .youtubePlay
        case "youtube_sign": self = .youtubeSign
        case "zoom_in": self = .zoomIn
        case "zoom_out": self = .zoomOut
        default: self = FontAwesomeIcon(rawValue: 0)!
        }
    }
    /** The icon's name. */
    public var name: String {
        switch self {
        case ._279: return "_279"
        case ._283: return "_283"
        case ._303: return "_303"
        case ._312: return "_312"
        case ._317: return "_317"
        case ._329: return "_329"
        case ._334: return "_334"
        case ._335: return "_335"
        case ._366: return "_366"
        case ._372: return "_372"
        case ._374: return "_374"
        case ._376: return "_376"
        case ._378: return "_378"
        case ._380: return "_380"
        case ._382: return "_382"
        case ._383: return "_383"
        case ._384: return "_384"
        case ._385: return "_385"
        case ._386: return "_386"
        case ._387: return "_387"
        case ._388: return "_388"
        case ._389: return "_389"
        case ._392: return "_392"
        case ._393: return "_393"
        case ._395: return "_395"
        case ._396: return "_396"
        case ._397: return "_397"
        case ._398: return "_398"
        case ._399: return "_399"
        case ._400: return "_400"
        case ._402: return "_402"
        case ._403: return "_403"
        case ._404: return "_404"
        case ._406: return "_406"
        case ._407: return "_407"
        case ._408: return "_408"
        case ._409: return "_409"
        case ._410: return "_410"
        case ._411: return "_411"
        case ._412: return "_412"
        case ._413: return "_413"
        case ._414: return "_414"
        case ._415: return "_415"
        case ._416: return "_416"
        case ._417: return "_417"
        case ._418: return "_418"
        case ._419: return "_419"
        case ._422: return "_422"
        case ._423: return "_423"
        case ._424: return "_424"
        case ._425: return "_425"
        case ._426: return "_426"
        case ._427: return "_427"
        case ._428: return "_428"
        case ._429: return "_429"
        case ._430: return "_430"
        case ._431: return "_431"
        case ._432: return "_432"
        case ._433: return "_433"
        case ._434: return "_434"
        case ._438: return "_438"
        case ._439: return "_439"
        case ._443: return "_443"
        case ._444: return "_444"
        case ._445: return "_445"
        case ._446: return "_446"
        case ._447: return "_447"
        case ._448: return "_448"
        case ._449: return "_449"
        case ._451: return "_451"
        case ._452: return "_452"
        case ._453: return "_453"
        case ._454: return "_454"
        case ._455: return "_455"
        case ._456: return "_456"
        case ._457: return "_457"
        case ._458: return "_458"
        case ._459: return "_459"
        case ._460: return "_460"
        case ._461: return "_461"
        case ._462: return "_462"
        case ._463: return "_463"
        case ._464: return "_464"
        case ._466: return "_466"
        case ._467: return "_467"
        case ._469: return "_469"
        case ._470: return "_470"
        case ._471: return "_471"
        case ._472: return "_472"
        case ._473: return "_473"
        case ._474: return "_474"
        case ._475: return "_475"
        case ._476: return "_476"
        case ._478: return "_478"
        case ._479: return "_479"
        case ._480: return "_480"
        case ._481: return "_481"
        case ._482: return "_482"
        case ._483: return "_483"
        case ._484: return "_484"
        case ._485: return "_485"
        case ._486: return "_486"
        case ._487: return "_487"
        case ._488: return "_488"
        case ._489: return "_489"
        case ._490: return "_490"
        case ._491: return "_491"
        case ._492: return "_492"
        case ._493: return "_493"
        case ._494: return "_494"
        case ._496: return "_496"
        case ._498: return "_498"
        case ._499: return "_499"
        case ._500: return "_500"
        case ._501: return "_501"
        case ._502: return "_502"
        case ._503: return "_503"
        case ._504: return "_504"
        case ._505: return "_505"
        case ._506: return "_506"
        case ._507: return "_507"
        case ._508: return "_508"
        case ._509: return "_509"
        case ._511: return "_511"
        case ._512: return "_512"
        case ._513: return "_513"
        case ._514: return "_514"
        case ._515: return "_515"
        case ._516: return "_516"
        case ._517: return "_517"
        case ._518: return "_518"
        case ._519: return "_519"
        case ._520: return "_520"
        case ._521: return "_521"
        case ._522: return "_522"
        case ._523: return "_523"
        case ._524: return "_524"
        case ._525: return "_525"
        case ._526: return "_526"
        case ._527: return "_527"
        case ._528: return "_528"
        case ._529: return "_529"
        case ._530: return "_530"
        case ._531: return "_531"
        case ._532: return "_532"
        case ._533: return "_533"
        case ._534: return "_534"
        case ._535: return "_535"
        case ._536: return "_536"
        case ._537: return "_537"
        case ._538: return "_538"
        case ._539: return "_539"
        case ._540: return "_540"
        case ._541: return "_541"
        case ._542: return "_542"
        case ._543: return "_543"
        case ._544: return "_544"
        case ._545: return "_545"
        case ._546: return "_546"
        case ._547: return "_547"
        case ._548: return "_548"
        case ._549: return "_549"
        case ._550: return "_550"
        case ._551: return "_551"
        case ._552: return "_552"
        case ._553: return "_553"
        case ._554: return "_554"
        case ._555: return "_555"
        case ._556: return "_556"
        case ._557: return "_557"
        case ._558: return "_558"
        case ._559: return "_559"
        case ._560: return "_560"
        case ._561: return "_561"
        case ._562: return "_562"
        case ._563: return "_563"
        case ._564: return "_564"
        case ._565: return "_565"
        case ._566: return "_566"
        case ._567: return "_567"
        case ._568: return "_568"
        case ._569: return "_569"
        case ._572: return "_572"
        case ._574: return "_574"
        case ._575: return "_575"
        case ._576: return "_576"
        case ._577: return "_577"
        case ._578: return "_578"
        case ._579: return "_579"
        case ._580: return "_580"
        case ._581: return "_581"
        case ._582: return "_582"
        case ._583: return "_583"
        case ._584: return "_584"
        case ._585: return "_585"
        case ._586: return "_586"
        case ._587: return "_587"
        case ._588: return "_588"
        case ._589: return "_589"
        case ._590: return "_590"
        case ._591: return "_591"
        case ._592: return "_592"
        case ._593: return "_593"
        case ._594: return "_594"
        case ._595: return "_595"
        case ._596: return "_596"
        case ._597: return "_597"
        case ._598: return "_598"
        case ._602: return "_602"
        case ._603: return "_603"
        case ._604: return "_604"
        case ._607: return "_607"
        case ._608: return "_608"
        case ._609: return "_609"
        case ._610: return "_610"
        case ._611: return "_611"
        case ._612: return "_612"
        case ._613: return "_613"
        case ._614: return "_614"
        case ._615: return "_615"
        case ._616: return "_616"
        case ._617: return "_617"
        case ._618: return "_618"
        case ._619: return "_619"
        case ._620: return "_620"
        case ._621: return "_621"
        case ._622: return "_622"
        case ._623: return "_623"
        case ._624: return "_624"
        case ._625: return "_625"
        case ._626: return "_626"
        case ._627: return "_627"
        case ._628: return "_628"
        case ._629: return "_629"
        case .adjust: return "Adjust"
        case .adn: return "Adn"
        case .alignCenter: return "AlignCenter"
        case .alignJustify: return "AlignJustify"
        case .alignLeft: return "AlignLeft"
        case .alignRight: return "AlignRight"
        case .ambulance: return "Ambulance"
        case .anchor: return "Anchor"
        case .android: return "Android"
        case .angleDown: return "AngleDown"
        case .angleLeft: return "AngleLeft"
        case .angleRight: return "AngleRight"
        case .angleUp: return "AngleUp"
        case .apple: return "Apple"
        case .archive: return "Archive"
        case .arrowCircleAltLeft: return "ArrowCircleAltLeft"
        case .arrowDown: return "ArrowDown"
        case .arrowLeft: return "ArrowLeft"
        case .arrowRight: return "ArrowRight"
        case .arrowUp: return "ArrowUp"
        case .asterisk: return "Asterisk"
        case .backward: return "Backward"
        case .banCircle: return "BanCircle"
        case .barChart: return "BarChart"
        case .barcode: return "Barcode"
        case .beaker: return "Beaker"
        case .beer: return "Beer"
        case .bell: return "Bell"
        case .bellAlt: return "BellAlt"
        case .bitbucketSign: return "BitbucketSign"
        case .bold: return "Bold"
        case .bolt: return "Bolt"
        case .book: return "Book"
        case .bookmark: return "Bookmark"
        case .bookmarkEmpty: return "BookmarkEmpty"
        case .briefcase: return "Briefcase"
        case .btc: return "Btc"
        case .bug: return "Bug"
        case .building: return "Building"
        case .bullhorn: return "Bullhorn"
        case .bullseye: return "Bullseye"
        case .calendar: return "Calendar"
        case .calendarEmpty: return "CalendarEmpty"
        case .camera: return "Camera"
        case .cameraRetro: return "CameraRetro"
        case .caretDown: return "CaretDown"
        case .caretLeft: return "CaretLeft"
        case .caretRight: return "CaretRight"
        case .caretUp: return "CaretUp"
        case .certificate: return "Certificate"
        case .check: return "Check"
        case .checkEmpty: return "CheckEmpty"
        case .checkMinus: return "CheckMinus"
        case .checkSign: return "CheckSign"
        case .chevronDown: return "ChevronDown"
        case .chevronLeft: return "ChevronLeft"
        case .chevronRight: return "ChevronRight"
        case .chevronSignDown: return "ChevronSignDown"
        case .chevronSignLeft: return "ChevronSignLeft"
        case .chevronSignRight: return "ChevronSignRight"
        case .chevronSignUp: return "ChevronSignUp"
        case .chevronUp: return "ChevronUp"
        case .circle: return "Circle"
        case .circleArrowDown: return "CircleArrowDown"
        case .circleArrowLeft: return "CircleArrowLeft"
        case .circleArrowRight: return "CircleArrowRight"
        case .circleArrowUp: return "CircleArrowUp"
        case .circleBlank: return "CircleBlank"
        case .cloud: return "Cloud"
        case .cloudDownload: return "CloudDownload"
        case .cloudUpload: return "CloudUpload"
        case .code: return "Code"
        case .codeFork: return "CodeFork"
        case .coffee: return "Coffee"
        case .cog: return "Cog"
        case .cogs: return "Cogs"
        case .collapse: return "Collapse"
        case .collapseAlt: return "CollapseAlt"
        case .collapseTop: return "CollapseTop"
        case .columns: return "Columns"
        case .comment: return "Comment"
        case .commentAlt: return "CommentAlt"
        case .comments: return "Comments"
        case .commentsAlt: return "CommentsAlt"
        case .compass: return "Compass"
        case .copy: return "Copy"
        case .creditCard: return "CreditCard"
        case .crop: return "Crop"
        case .css3: return "Css3"
        case .cut: return "Cut"
        case .dashboard: return "Dashboard"
        case .desktop: return "Desktop"
        case .dotCircleAlt: return "DotCircleAlt"
        case .doubleAngleDown: return "DoubleAngleDown"
        case .doubleAngleLeft: return "DoubleAngleLeft"
        case .doubleAngleRight: return "DoubleAngleRight"
        case .doubleAngleUp: return "DoubleAngleUp"
        case .download: return "Download"
        case .downloadAlt: return "DownloadAlt"
        case .dribble: return "Dribble"
        case .dropbox: return "Dropbox"
        case .edit: return "Edit"
        case .editSign: return "EditSign"
        case .eject: return "Eject"
        case .ellipsisHorizontal: return "EllipsisHorizontal"
        case .ellipsisVertical: return "EllipsisVertical"
        case .envelope: return "Envelope"
        case .envelopeAlt: return "EnvelopeAlt"
        case .eur: return "Eur"
        case .exchange: return "Exchange"
        case .exclamation: return "Exclamation"
        case .exclamationSign: return "ExclamationSign"
        case .expandAlt: return "ExpandAlt"
        case .externalLink: return "ExternalLink"
        case .eyeClose: return "EyeClose"
        case .eyeOpen: return "EyeOpen"
        case .f0fe: return "F0fe"
        case .f171: return "F171"
        case .f1a1: return "F1a1"
        case .f1a4: return "F1a4"
        case .f1ab: return "F1ab"
        case .f1f3: return "F1f3"
        case .f1fc: return "F1fc"
        case .f210: return "F210"
        case .f212: return "F212"
        case .f260: return "F260"
        case .f261: return "F261"
        case .f263: return "F263"
        case .f27e: return "F27e"
        case .facebook: return "Facebook"
        case .facebookSign: return "FacebookSign"
        case .facetimeVideo: return "FacetimeVideo"
        case .fastBackward: return "FastBackward"
        case .fastForward: return "FastForward"
        case .female: return "Female"
        case .fighterJet: return "FighterJet"
        case .file: return "File"
        case .fileAlt: return "FileAlt"
        case .fileText: return "FileText"
        case .fileTextAlt: return "FileTextAlt"
        case .film: return "Film"
        case .filter: return "Filter"
        case .fire: return "Fire"
        case .fireExtinguisher: return "FireExtinguisher"
        case .flag: return "Flag"
        case .flagAlt: return "FlagAlt"
        case .flagCheckered: return "FlagCheckered"
        case .flickr: return "Flickr"
        case .folderClose: return "FolderClose"
        case .folderCloseAlt: return "FolderCloseAlt"
        case .folderOpen: return "FolderOpen"
        case .folderOpenAlt: return "FolderOpenAlt"
        case .Font: return "Font"
        case .food: return "Food"
        case .forward: return "Forward"
        case .foursquare: return "Foursquare"
        case .frown: return "Frown"
        case .fullscreen: return "Fullscreen"
        case .gamepad: return "Gamepad"
        case .gbp: return "Gbp"
        case .gift: return "Gift"
        case .github: return "Github"
        case .githubAlt: return "GithubAlt"
        case .githubSign: return "GithubSign"
        case .gittip: return "Gittip"
        case .glass: return "Glass"
        case .globe: return "Globe"
        case .googlePlus: return "GooglePlus"
        case .googlePlusSign: return "GooglePlusSign"
        case .group: return "Group"
        case .hSign: return "HSign"
        case .handDown: return "HandDown"
        case .handLeft: return "HandLeft"
        case .handRight: return "HandRight"
        case .handUp: return "HandUp"
        case .hdd: return "Hdd"
        case .headphones: return "Headphones"
        case .heart: return "Heart"
        case .heartEmpty: return "HeartEmpty"
        case .home: return "Home"
        case .hospital: return "Hospital"
        case .html5: return "Html5"
        case .inbox: return "Inbox"
        case .indentLeft: return "IndentLeft"
        case .indentRight: return "IndentRight"
        case .infoSign: return "InfoSign"
        case .inr: return "Inr"
        case .instagram: return "Instagram"
        case .italic: return "Italic"
        case .jpy: return "Jpy"
        case .key: return "Key"
        case .keyboard: return "Keyboard"
        case .krw: return "Krw"
        case .laptop: return "Laptop"
        case .leaf: return "Leaf"
        case .legal: return "Legal"
        case .lemon: return "Lemon"
        case .lessequal: return "Lessequal"
        case .levelDown: return "LevelDown"
        case .levelUp: return "LevelUp"
        case .lightBulb: return "LightBulb"
        case .link: return "Link"
        case .linkedin: return "Linkedin"
        case .linkedinSign: return "LinkedinSign"
        case .linux: return "Linux"
        case .list: return "List"
        case .listAlt: return "ListAlt"
        case .locationArrow: return "LocationArrow"
        case .lock: return "Lock"
        case .longArrowDown: return "LongArrowDown"
        case .longArrowLeft: return "LongArrowLeft"
        case .longArrowRight: return "LongArrowRight"
        case .longArrowUp: return "LongArrowUp"
        case .magic: return "Magic"
        case .magnet: return "Magnet"
        case .male: return "Male"
        case .mapMarker: return "MapMarker"
        case .maxcdn: return "Maxcdn"
        case .medkit: return "Medkit"
        case .meh: return "Meh"
        case .microphone: return "Microphone"
        case .microphoneOff: return "MicrophoneOff"
        case .minus: return "Minus"
        case .minusSign: return "MinusSign"
        case .minusSignAlt: return "MinusSignAlt"
        case .mobilePhone: return "MobilePhone"
        case .money: return "Money"
        case .move: return "Move"
        case .music: return "Music"
        case .off: return "Off"
        case .ok: return "Ok"
        case .okCircle: return "OkCircle"
        case .okSign: return "OkSign"
        case .ol: return "Ol"
        case .paperClip: return "PaperClip"
        case .paste: return "Paste"
        case .pause: return "Pause"
        case .pencil: return "Pencil"
        case .phone: return "Phone"
        case .phoneSign: return "PhoneSign"
        case .picture: return "Picture"
        case .pinterest: return "Pinterest"
        case .pinterestSign: return "PinterestSign"
        case .plane: return "Plane"
        case .play: return "Play"
        case .playCircle: return "PlayCircle"
        case .playSign: return "PlaySign"
        case .plus: return "Plus"
        case .plusSign: return "PlusSign"
        case .plusSquareO: return "PlusSquareO"
        case .print: return "Print"
        case .pushpin: return "Pushpin"
        case .puzzlePiece: return "PuzzlePiece"
        case .qrcode: return "Qrcode"
        case .question: return "Question"
        case .questionSign: return "QuestionSign"
        case .quoteLeft: return "QuoteLeft"
        case .quoteRight: return "QuoteRight"
        case .random: return "Random"
        case .refresh: return "Refresh"
        case .remove: return "Remove"
        case .removeCircle: return "RemoveCircle"
        case .removeSign: return "RemoveSign"
        case .renren: return "Renren"
        case .reorder: return "Reorder"
        case .repeat: return "Repeat"
        case .reply: return "Reply"
        case .replyAll: return "ReplyAll"
        case .resizeFull: return "ResizeFull"
        case .resizeHorizontal: return "ResizeHorizontal"
        case .resizeSmall: return "ResizeSmall"
        case .resizeVertical: return "ResizeVertical"
        case .retweet: return "Retweet"
        case .road: return "Road"
        case .rocket: return "Rocket"
        case .rss: return "Rss"
        case .rub: return "Rub"
        case .save: return "Save"
        case .screenshot: return "Screenshot"
        case .search: return "Search"
        case .share: return "Share"
        case .shareAlt: return "ShareAlt"
        case .shareSign: return "ShareSign"
        case .shield: return "Shield"
        case .shoppingCart: return "ShoppingCart"
        case .signBlank: return "SignBlank"
        case .signal: return "Signal"
        case .signin: return "Signin"
        case .signout: return "Signout"
        case .sitemap: return "Sitemap"
        case .skype: return "Skype"
        case .smile: return "Smile"
        case .sort: return "Sort"
        case .sortByAlphabet: return "SortByAlphabet"
        case .sortByAttributes: return "SortByAttributes"
        case .sortByAttributesAlt: return "SortByAttributesAlt"
        case .sortByOrder: return "SortByOrder"
        case .sortByOrderAlt: return "SortByOrderAlt"
        case .sortDown: return "SortDown"
        case .sortUp: return "SortUp"
        case .spinner: return "Spinner"
        case .stackExchange: return "StackExchange"
        case .stackexchange: return "Stackexchange"
        case .star: return "Star"
        case .starEmpty: return "StarEmpty"
        case .starHalf: return "StarHalf"
        case .starHalfEmpty: return "StarHalfEmpty"
        case .stepBackward: return "StepBackward"
        case .stepForward: return "StepForward"
        case .stethoscope: return "Stethoscope"
        case .stop: return "Stop"
        case .strikethrough: return "Strikethrough"
        case .subscript: return "Subscript"
        case .suitcase: return "Suitcase"
        case .sun: return "Sun"
        case .superscript: return "Superscript"
        case .table: return "Table"
        case .tablet: return "Tablet"
        case .tag: return "Tag"
        case .tags: return "Tags"
        case .tasks: return "Tasks"
        case .terminal: return "Terminal"
        case .textHeight: return "TextHeight"
        case .textWidth: return "TextWidth"
        case .th: return "Th"
        case .thLarge: return "ThLarge"
        case .thList: return "ThList"
        case .thumbsDownAlt: return "ThumbsDownAlt"
        case .thumbsUpAlt: return "ThumbsUpAlt"
        case .ticket: return "Ticket"
        case .time: return "Time"
        case .tint: return "Tint"
        case .trash: return "Trash"
        case .trello: return "Trello"
        case .trophy: return "Trophy"
        case .truck: return "Truck"
        case .tumblr: return "Tumblr"
        case .tumblrSign: return "TumblrSign"
        case .twitter: return "Twitter"
        case .twitterSign: return "TwitterSign"
        case .ul: return "Ul"
        case .umbrella: return "Umbrella"
        case .underline: return "Underline"
        case .undo: return "Undo"
        case .uniF1A0: return "UniF1A0"
        case .uniF1B1: return "UniF1B1"
        case .uniF1C0: return "UniF1C0"
        case .uniF1C1: return "UniF1C1"
        case .uniF1D0: return "UniF1D0"
        case .uniF1D1: return "UniF1D1"
        case .uniF1D2: return "UniF1D2"
        case .uniF1D5: return "UniF1D5"
        case .uniF1D6: return "UniF1D6"
        case .uniF1D7: return "UniF1D7"
        case .uniF1E0: return "UniF1E0"
        case .uniF1F0: return "UniF1F0"
        case .uniF280: return "UniF280"
        case .uniF281: return "UniF281"
        case .uniF285: return "UniF285"
        case .uniF286: return "UniF286"
        case .uniF2A0: return "UniF2A0"
        case .uniF2A1: return "UniF2A1"
        case .uniF2A2: return "UniF2A2"
        case .uniF2A3: return "UniF2A3"
        case .uniF2A4: return "UniF2A4"
        case .uniF2A5: return "UniF2A5"
        case .uniF2A6: return "UniF2A6"
        case .uniF2A7: return "UniF2A7"
        case .uniF2A8: return "UniF2A8"
        case .uniF2A9: return "UniF2A9"
        case .uniF2AA: return "UniF2AA"
        case .uniF2AB: return "UniF2AB"
        case .uniF2AC: return "UniF2AC"
        case .uniF2AD: return "UniF2AD"
        case .uniF2AE: return "UniF2AE"
        case .uniF2B0: return "UniF2B0"
        case .uniF2B1: return "UniF2B1"
        case .uniF2B2: return "UniF2B2"
        case .uniF2B3: return "UniF2B3"
        case .uniF2B4: return "UniF2B4"
        case .uniF2B5: return "UniF2B5"
        case .uniF2B6: return "UniF2B6"
        case .uniF2B7: return "UniF2B7"
        case .uniF2B8: return "UniF2B8"
        case .uniF2B9: return "UniF2B9"
        case .uniF2BA: return "UniF2BA"
        case .uniF2BB: return "UniF2BB"
        case .uniF2BC: return "UniF2BC"
        case .uniF2BD: return "UniF2BD"
        case .uniF2BE: return "UniF2BE"
        case .unlink: return "Unlink"
        case .unlock: return "Unlock"
        case .unlockAlt: return "UnlockAlt"
        case .upload: return "Upload"
        case .uploadAlt: return "UploadAlt"
        case .usd: return "Usd"
        case .user: return "User"
        case .userMd: return "UserMd"
        case .venus: return "Venus"
        case .vimeoSquare: return "VimeoSquare"
        case .vk: return "Vk"
        case .volumeDown: return "VolumeDown"
        case .volumeOff: return "VolumeOff"
        case .volumeUp: return "VolumeUp"
        case .warningSign: return "WarningSign"
        case .weibo: return "Weibo"
        case .windows: return "Windows"
        case .wrench: return "Wrench"
        case .xing: return "Xing"
        case .xingSign: return "XingSign"
        case .youtube: return "Youtube"
        case .youtubePlay: return "YoutubePlay"
        case .youtubeSign: return "YoutubeSign"
        case .zoomIn: return "ZoomIn"
        case .zoomOut: return "ZoomOut"
        }
    }
    /** The icon's unicode. */
    public var unicode:String {
        switch self {
        case ._279: return "\u{F129}"
        case ._283: return "\u{F12D}"
        case ._303: return "\u{F143}"
        case ._312: return "\u{F14C}"
        case ._317: return "\u{F152}"
        case ._329: return "\u{F15E}"
        case ._334: return "\u{F164}"
        case ._335: return "\u{F165}"
        case ._366: return "\u{F186}"
        case ._372: return "\u{F18C}"
        case ._374: return "\u{F18E}"
        case ._376: return "\u{F191}"
        case ._378: return "\u{F193}"
        case ._380: return "\u{F195}"
        case ._382: return "\u{F197}"
        case ._383: return "\u{F198}"
        case ._384: return "\u{F199}"
        case ._385: return "\u{F19A}"
        case ._386: return "\u{F19B}"
        case ._387: return "\u{F19C}"
        case ._388: return "\u{F19D}"
        case ._389: return "\u{F19E}"
        case ._392: return "\u{F1A2}"
        case ._393: return "\u{F1A3}"
        case ._395: return "\u{F1A5}"
        case ._396: return "\u{F1A6}"
        case ._397: return "\u{F1A7}"
        case ._398: return "\u{F1A8}"
        case ._399: return "\u{F1A9}"
        case ._400: return "\u{F1AA}"
        case ._402: return "\u{F1AC}"
        case ._403: return "\u{F1AD}"
        case ._404: return "\u{F1AE}"
        case ._406: return "\u{F1B1}"
        case ._407: return "\u{F1B2}"
        case ._408: return "\u{F1B3}"
        case ._409: return "\u{F1B4}"
        case ._410: return "\u{F1B5}"
        case ._411: return "\u{F1B6}"
        case ._412: return "\u{F1B7}"
        case ._413: return "\u{F1B8}"
        case ._414: return "\u{F1B9}"
        case ._415: return "\u{F1BA}"
        case ._416: return "\u{F1BB}"
        case ._417: return "\u{F1BC}"
        case ._418: return "\u{F1BD}"
        case ._419: return "\u{F1BE}"
        case ._422: return "\u{F1C2}"
        case ._423: return "\u{F1C3}"
        case ._424: return "\u{F1C4}"
        case ._425: return "\u{F1C5}"
        case ._426: return "\u{F1C6}"
        case ._427: return "\u{F1C7}"
        case ._428: return "\u{F1C8}"
        case ._429: return "\u{F1C9}"
        case ._430: return "\u{F1CA}"
        case ._431: return "\u{F1CB}"
        case ._432: return "\u{F1CC}"
        case ._433: return "\u{F1CD}"
        case ._434: return "\u{F1CE}"
        case ._438: return "\u{F1D3}"
        case ._439: return "\u{F1D4}"
        case ._443: return "\u{F1D8}"
        case ._444: return "\u{F1D9}"
        case ._445: return "\u{F1DA}"
        case ._446: return "\u{F1DB}"
        case ._447: return "\u{F1DC}"
        case ._448: return "\u{F1DD}"
        case ._449: return "\u{F1DE}"
        case ._451: return "\u{F1E1}"
        case ._452: return "\u{F1E2}"
        case ._453: return "\u{F1E3}"
        case ._454: return "\u{F1E4}"
        case ._455: return "\u{F1E5}"
        case ._456: return "\u{F1E6}"
        case ._457: return "\u{F1E7}"
        case ._458: return "\u{F1E8}"
        case ._459: return "\u{F1E9}"
        case ._460: return "\u{F1EA}"
        case ._461: return "\u{F1EB}"
        case ._462: return "\u{F1EC}"
        case ._463: return "\u{F1ED}"
        case ._464: return "\u{F1EE}"
        case ._466: return "\u{F1F1}"
        case ._467: return "\u{F1F2}"
        case ._469: return "\u{F1F4}"
        case ._470: return "\u{F1F5}"
        case ._471: return "\u{F1F6}"
        case ._472: return "\u{F1F7}"
        case ._473: return "\u{F1F8}"
        case ._474: return "\u{F1F9}"
        case ._475: return "\u{F1FA}"
        case ._476: return "\u{F1FB}"
        case ._478: return "\u{F1FD}"
        case ._479: return "\u{F1FE}"
        case ._480: return "\u{F200}"
        case ._481: return "\u{F201}"
        case ._482: return "\u{F202}"
        case ._483: return "\u{F203}"
        case ._484: return "\u{F204}"
        case ._485: return "\u{F205}"
        case ._486: return "\u{F206}"
        case ._487: return "\u{F207}"
        case ._488: return "\u{F208}"
        case ._489: return "\u{F209}"
        case ._490: return "\u{F20A}"
        case ._491: return "\u{F20B}"
        case ._492: return "\u{F20C}"
        case ._493: return "\u{F20D}"
        case ._494: return "\u{F20E}"
        case ._496: return "\u{F211}"
        case ._498: return "\u{F213}"
        case ._499: return "\u{F214}"
        case ._500: return "\u{F215}"
        case ._501: return "\u{F216}"
        case ._502: return "\u{F217}"
        case ._503: return "\u{F218}"
        case ._504: return "\u{F219}"
        case ._505: return "\u{F21A}"
        case ._506: return "\u{F21B}"
        case ._507: return "\u{F21C}"
        case ._508: return "\u{F21D}"
        case ._509: return "\u{F21E}"
        case ._511: return "\u{F222}"
        case ._512: return "\u{F223}"
        case ._513: return "\u{F224}"
        case ._514: return "\u{F225}"
        case ._515: return "\u{F226}"
        case ._516: return "\u{F227}"
        case ._517: return "\u{F228}"
        case ._518: return "\u{F229}"
        case ._519: return "\u{F22A}"
        case ._520: return "\u{F22B}"
        case ._521: return "\u{F22C}"
        case ._522: return "\u{F22D}"
        case ._523: return "\u{F22E}"
        case ._524: return "\u{F22F}"
        case ._525: return "\u{F230}"
        case ._526: return "\u{F231}"
        case ._527: return "\u{F232}"
        case ._528: return "\u{F233}"
        case ._529: return "\u{F234}"
        case ._530: return "\u{F235}"
        case ._531: return "\u{F236}"
        case ._532: return "\u{F237}"
        case ._533: return "\u{F238}"
        case ._534: return "\u{F239}"
        case ._535: return "\u{F23A}"
        case ._536: return "\u{F23B}"
        case ._537: return "\u{F23C}"
        case ._538: return "\u{F23D}"
        case ._539: return "\u{F23E}"
        case ._540: return "\u{F240}"
        case ._541: return "\u{F241}"
        case ._542: return "\u{F242}"
        case ._543: return "\u{F243}"
        case ._544: return "\u{F244}"
        case ._545: return "\u{F245}"
        case ._546: return "\u{F246}"
        case ._547: return "\u{F247}"
        case ._548: return "\u{F248}"
        case ._549: return "\u{F249}"
        case ._550: return "\u{F24A}"
        case ._551: return "\u{F24B}"
        case ._552: return "\u{F24C}"
        case ._553: return "\u{F24D}"
        case ._554: return "\u{F24E}"
        case ._555: return "\u{F250}"
        case ._556: return "\u{F251}"
        case ._557: return "\u{F252}"
        case ._558: return "\u{F253}"
        case ._559: return "\u{F254}"
        case ._560: return "\u{F255}"
        case ._561: return "\u{F256}"
        case ._562: return "\u{F257}"
        case ._563: return "\u{F258}"
        case ._564: return "\u{F259}"
        case ._565: return "\u{F25A}"
        case ._566: return "\u{F25B}"
        case ._567: return "\u{F25C}"
        case ._568: return "\u{F25D}"
        case ._569: return "\u{F25E}"
        case ._572: return "\u{F262}"
        case ._574: return "\u{F264}"
        case ._575: return "\u{F265}"
        case ._576: return "\u{F266}"
        case ._577: return "\u{F267}"
        case ._578: return "\u{F268}"
        case ._579: return "\u{F269}"
        case ._580: return "\u{F26A}"
        case ._581: return "\u{F26B}"
        case ._582: return "\u{F26C}"
        case ._583: return "\u{F26D}"
        case ._584: return "\u{F26E}"
        case ._585: return "\u{F270}"
        case ._586: return "\u{F271}"
        case ._587: return "\u{F272}"
        case ._588: return "\u{F273}"
        case ._589: return "\u{F274}"
        case ._590: return "\u{F275}"
        case ._591: return "\u{F276}"
        case ._592: return "\u{F277}"
        case ._593: return "\u{F278}"
        case ._594: return "\u{F279}"
        case ._595: return "\u{F27A}"
        case ._596: return "\u{F27B}"
        case ._597: return "\u{F27C}"
        case ._598: return "\u{F27D}"
        case ._602: return "\u{F282}"
        case ._603: return "\u{F283}"
        case ._604: return "\u{F284}"
        case ._607: return "\u{F287}"
        case ._608: return "\u{F288}"
        case ._609: return "\u{F289}"
        case ._610: return "\u{F28A}"
        case ._611: return "\u{F28B}"
        case ._612: return "\u{F28C}"
        case ._613: return "\u{F28D}"
        case ._614: return "\u{F28E}"
        case ._615: return "\u{F290}"
        case ._616: return "\u{F291}"
        case ._617: return "\u{F292}"
        case ._618: return "\u{F293}"
        case ._619: return "\u{F294}"
        case ._620: return "\u{F295}"
        case ._621: return "\u{F296}"
        case ._622: return "\u{F297}"
        case ._623: return "\u{F298}"
        case ._624: return "\u{F299}"
        case ._625: return "\u{F29A}"
        case ._626: return "\u{F29B}"
        case ._627: return "\u{F29C}"
        case ._628: return "\u{F29D}"
        case ._629: return "\u{F29E}"
        case .adjust: return "\u{F042}"
        case .adn: return "\u{F170}"
        case .alignCenter: return "\u{F037}"
        case .alignJustify: return "\u{F039}"
        case .alignLeft: return "\u{F036}"
        case .alignRight: return "\u{F038}"
        case .ambulance: return "\u{F0F9}"
        case .anchor: return "\u{F13D}"
        case .android: return "\u{F17B}"
        case .angleDown: return "\u{F107}"
        case .angleLeft: return "\u{F104}"
        case .angleRight: return "\u{F105}"
        case .angleUp: return "\u{F106}"
        case .apple: return "\u{F179}"
        case .archive: return "\u{F187}"
        case .arrowCircleAltLeft: return "\u{F190}"
        case .arrowDown: return "\u{F063}"
        case .arrowLeft: return "\u{F060}"
        case .arrowRight: return "\u{F061}"
        case .arrowUp: return "\u{F062}"
        case .asterisk: return "\u{F069}"
        case .backward: return "\u{F04A}"
        case .banCircle: return "\u{F05E}"
        case .barChart: return "\u{F080}"
        case .barcode: return "\u{F02A}"
        case .beaker: return "\u{F0C3}"
        case .beer: return "\u{F0FC}"
        case .bell: return "\u{F0A2}"
        case .bellAlt: return "\u{F0F3}"
        case .bitbucketSign: return "\u{F172}"
        case .bold: return "\u{F032}"
        case .bolt: return "\u{F0E7}"
        case .book: return "\u{F02D}"
        case .bookmark: return "\u{F02E}"
        case .bookmarkEmpty: return "\u{F097}"
        case .briefcase: return "\u{F0B1}"
        case .btc: return "\u{F15A}"
        case .bug: return "\u{F188}"
        case .building: return "\u{F0F7}"
        case .bullhorn: return "\u{F0A1}"
        case .bullseye: return "\u{F140}"
        case .calendar: return "\u{F073}"
        case .calendarEmpty: return "\u{F133}"
        case .camera: return "\u{F030}"
        case .cameraRetro: return "\u{F083}"
        case .caretDown: return "\u{F0D7}"
        case .caretLeft: return "\u{F0D9}"
        case .caretRight: return "\u{F0DA}"
        case .caretUp: return "\u{F0D8}"
        case .certificate: return "\u{F0A3}"
        case .check: return "\u{F046}"
        case .checkEmpty: return "\u{F096}"
        case .checkMinus: return "\u{F147}"
        case .checkSign: return "\u{F14A}"
        case .chevronDown: return "\u{F078}"
        case .chevronLeft: return "\u{F053}"
        case .chevronRight: return "\u{F054}"
        case .chevronSignDown: return "\u{F13A}"
        case .chevronSignLeft: return "\u{F137}"
        case .chevronSignRight: return "\u{F138}"
        case .chevronSignUp: return "\u{F139}"
        case .chevronUp: return "\u{F077}"
        case .circle: return "\u{F111}"
        case .circleArrowDown: return "\u{F0AB}"
        case .circleArrowLeft: return "\u{F0A8}"
        case .circleArrowRight: return "\u{F0A9}"
        case .circleArrowUp: return "\u{F0AA}"
        case .circleBlank: return "\u{F10C}"
        case .cloud: return "\u{F0C2}"
        case .cloudDownload: return "\u{F0ED}"
        case .cloudUpload: return "\u{F0EE}"
        case .code: return "\u{F121}"
        case .codeFork: return "\u{F126}"
        case .coffee: return "\u{F0F4}"
        case .cog: return "\u{F013}"
        case .cogs: return "\u{F085}"
        case .collapse: return "\u{F150}"
        case .collapseAlt: return "\u{F117}"
        case .collapseTop: return "\u{F151}"
        case .columns: return "\u{F0DB}"
        case .comment: return "\u{F075}"
        case .commentAlt: return "\u{F0E5}"
        case .comments: return "\u{F086}"
        case .commentsAlt: return "\u{F0E6}"
        case .compass: return "\u{F14E}"
        case .copy: return "\u{F0C5}"
        case .creditCard: return "\u{F09D}"
        case .crop: return "\u{F125}"
        case .css3: return "\u{F13C}"
        case .cut: return "\u{F0C4}"
        case .dashboard: return "\u{F0E4}"
        case .desktop: return "\u{F108}"
        case .dotCircleAlt: return "\u{F192}"
        case .doubleAngleDown: return "\u{F103}"
        case .doubleAngleLeft: return "\u{F100}"
        case .doubleAngleRight: return "\u{F101}"
        case .doubleAngleUp: return "\u{F102}"
        case .download: return "\u{F01A}"
        case .downloadAlt: return "\u{F019}"
        case .dribble: return "\u{F17D}"
        case .dropbox: return "\u{F16B}"
        case .edit: return "\u{F044}"
        case .editSign: return "\u{F14B}"
        case .eject: return "\u{F052}"
        case .ellipsisHorizontal: return "\u{F141}"
        case .ellipsisVertical: return "\u{F142}"
        case .envelope: return "\u{F003}"
        case .envelopeAlt: return "\u{F0E0}"
        case .eur: return "\u{F153}"
        case .exchange: return "\u{F0EC}"
        case .exclamation: return "\u{F12A}"
        case .exclamationSign: return "\u{F06A}"
        case .expandAlt: return "\u{F116}"
        case .externalLink: return "\u{F08E}"
        case .eyeClose: return "\u{F070}"
        case .eyeOpen: return "\u{F06E}"
        case .f0fe: return "\u{F0FE}"
        case .f171: return "\u{F171}"
        case .f1a1: return "\u{F1A1}"
        case .f1a4: return "\u{F1A4}"
        case .f1ab: return "\u{F1AB}"
        case .f1f3: return "\u{F1F3}"
        case .f1fc: return "\u{F1FC}"
        case .f210: return "\u{F210}"
        case .f212: return "\u{F212}"
        case .f260: return "\u{F260}"
        case .f261: return "\u{F261}"
        case .f263: return "\u{F263}"
        case .f27e: return "\u{F27E}"
        case .facebook: return "\u{F09A}"
        case .facebookSign: return "\u{F082}"
        case .facetimeVideo: return "\u{F03D}"
        case .fastBackward: return "\u{F049}"
        case .fastForward: return "\u{F050}"
        case .female: return "\u{F182}"
        case .fighterJet: return "\u{F0FB}"
        case .file: return "\u{F15B}"
        case .fileAlt: return "\u{F016}"
        case .fileText: return "\u{F15C}"
        case .fileTextAlt: return "\u{F0F6}"
        case .film: return "\u{F008}"
        case .filter: return "\u{F0B0}"
        case .fire: return "\u{F06D}"
        case .fireExtinguisher: return "\u{F134}"
        case .flag: return "\u{F024}"
        case .flagAlt: return "\u{F11D}"
        case .flagCheckered: return "\u{F11E}"
        case .flickr: return "\u{F16E}"
        case .folderClose: return "\u{F07B}"
        case .folderCloseAlt: return "\u{F114}"
        case .folderOpen: return "\u{F07C}"
        case .folderOpenAlt: return "\u{F115}"
        case .Font: return "\u{F031}"
        case .food: return "\u{F0F5}"
        case .forward: return "\u{F04E}"
        case .foursquare: return "\u{F180}"
        case .frown: return "\u{F119}"
        case .fullscreen: return "\u{F0B2}"
        case .gamepad: return "\u{F11B}"
        case .gbp: return "\u{F154}"
        case .gift: return "\u{F06B}"
        case .github: return "\u{F09B}"
        case .githubAlt: return "\u{F113}"
        case .githubSign: return "\u{F092}"
        case .gittip: return "\u{F184}"
        case .glass: return "\u{F000}"
        case .globe: return "\u{F0AC}"
        case .googlePlus: return "\u{F0D5}"
        case .googlePlusSign: return "\u{F0D4}"
        case .group: return "\u{F0C0}"
        case .hSign: return "\u{F0FD}"
        case .handDown: return "\u{F0A7}"
        case .handLeft: return "\u{F0A5}"
        case .handRight: return "\u{F0A4}"
        case .handUp: return "\u{F0A6}"
        case .hdd: return "\u{F0A0}"
        case .headphones: return "\u{F025}"
        case .heart: return "\u{F004}"
        case .heartEmpty: return "\u{F08A}"
        case .home: return "\u{F015}"
        case .hospital: return "\u{F0F8}"
        case .html5: return "\u{F13B}"
        case .inbox: return "\u{F01C}"
        case .indentLeft: return "\u{F03B}"
        case .indentRight: return "\u{F03C}"
        case .infoSign: return "\u{F05A}"
        case .inr: return "\u{F156}"
        case .instagram: return "\u{F16D}"
        case .italic: return "\u{F033}"
        case .jpy: return "\u{F157}"
        case .key: return "\u{F084}"
        case .keyboard: return "\u{F11C}"
        case .krw: return "\u{F159}"
        case .laptop: return "\u{F109}"
        case .leaf: return "\u{F06C}"
        case .legal: return "\u{F0E3}"
        case .lemon: return "\u{F094}"
        case .lessequal: return "\u{F500}"
        case .levelDown: return "\u{F149}"
        case .levelUp: return "\u{F148}"
        case .lightBulb: return "\u{F0EB}"
        case .link: return "\u{F0C1}"
        case .linkedin: return "\u{F0E1}"
        case .linkedinSign: return "\u{F08C}"
        case .linux: return "\u{F17C}"
        case .list: return "\u{F03A}"
        case .listAlt: return "\u{F022}"
        case .locationArrow: return "\u{F124}"
        case .lock: return "\u{F023}"
        case .longArrowDown: return "\u{F175}"
        case .longArrowLeft: return "\u{F177}"
        case .longArrowRight: return "\u{F178}"
        case .longArrowUp: return "\u{F176}"
        case .magic: return "\u{F0D0}"
        case .magnet: return "\u{F076}"
        case .male: return "\u{F183}"
        case .mapMarker: return "\u{F041}"
        case .maxcdn: return "\u{F136}"
        case .medkit: return "\u{F0FA}"
        case .meh: return "\u{F11A}"
        case .microphone: return "\u{F130}"
        case .microphoneOff: return "\u{F131}"
        case .minus: return "\u{F068}"
        case .minusSign: return "\u{F056}"
        case .minusSignAlt: return "\u{F146}"
        case .mobilePhone: return "\u{F10B}"
        case .money: return "\u{F0D6}"
        case .move: return "\u{F047}"
        case .music: return "\u{F001}"
        case .off: return "\u{F011}"
        case .ok: return "\u{F00C}"
        case .okCircle: return "\u{F05D}"
        case .okSign: return "\u{F058}"
        case .ol: return "\u{F0CB}"
        case .paperClip: return "\u{F0C6}"
        case .paste: return "\u{F0EA}"
        case .pause: return "\u{F04C}"
        case .pencil: return "\u{F040}"
        case .phone: return "\u{F095}"
        case .phoneSign: return "\u{F098}"
        case .picture: return "\u{F03E}"
        case .pinterest: return "\u{F0D2}"
        case .pinterestSign: return "\u{F0D3}"
        case .plane: return "\u{F072}"
        case .play: return "\u{F04B}"
        case .playCircle: return "\u{F01D}"
        case .playSign: return "\u{F144}"
        case .plus: return "\u{F067}"
        case .plusSign: return "\u{F055}"
        case .plusSquareO: return "\u{F196}"
        case .print: return "\u{F02F}"
        case .pushpin: return "\u{F08D}"
        case .puzzlePiece: return "\u{F12E}"
        case .qrcode: return "\u{F029}"
        case .question: return "\u{F128}"
        case .questionSign: return "\u{F059}"
        case .quoteLeft: return "\u{F10D}"
        case .quoteRight: return "\u{F10E}"
        case .random: return "\u{F074}"
        case .refresh: return "\u{F021}"
        case .remove: return "\u{F00D}"
        case .removeCircle: return "\u{F05C}"
        case .removeSign: return "\u{F057}"
        case .renren: return "\u{F18B}"
        case .reorder: return "\u{F0C9}"
        case .repeat: return "\u{F01E}"
        case .reply: return "\u{F112}"
        case .replyAll: return "\u{F122}"
        case .resizeFull: return "\u{F065}"
        case .resizeHorizontal: return "\u{F07E}"
        case .resizeSmall: return "\u{F066}"
        case .resizeVertical: return "\u{F07D}"
        case .retweet: return "\u{F079}"
        case .road: return "\u{F018}"
        case .rocket: return "\u{F135}"
        case .rss: return "\u{F09E}"
        case .rub: return "\u{F158}"
        case .save: return "\u{F0C7}"
        case .screenshot: return "\u{F05B}"
        case .search: return "\u{F002}"
        case .share: return "\u{F045}"
        case .shareAlt: return "\u{F064}"
        case .shareSign: return "\u{F14D}"
        case .shield: return "\u{F132}"
        case .shoppingCart: return "\u{F07A}"
        case .signBlank: return "\u{F0C8}"
        case .signal: return "\u{F012}"
        case .signin: return "\u{F090}"
        case .signout: return "\u{F08B}"
        case .sitemap: return "\u{F0E8}"
        case .skype: return "\u{F17E}"
        case .smile: return "\u{F118}"
        case .sort: return "\u{F0DC}"
        case .sortByAlphabet: return "\u{F15D}"
        case .sortByAttributes: return "\u{F160}"
        case .sortByAttributesAlt: return "\u{F161}"
        case .sortByOrder: return "\u{F162}"
        case .sortByOrderAlt: return "\u{F163}"
        case .sortDown: return "\u{F0DD}"
        case .sortUp: return "\u{F0DE}"
        case .spinner: return "\u{F110}"
        case .stackExchange: return "\u{F18D}"
        case .stackexchange: return "\u{F16C}"
        case .star: return "\u{F005}"
        case .starEmpty: return "\u{F006}"
        case .starHalf: return "\u{F089}"
        case .starHalfEmpty: return "\u{F123}"
        case .stepBackward: return "\u{F048}"
        case .stepForward: return "\u{F051}"
        case .stethoscope: return "\u{F0F1}"
        case .stop: return "\u{F04D}"
        case .strikethrough: return "\u{F0CC}"
        case .subscript: return "\u{F12C}"
        case .suitcase: return "\u{F0F2}"
        case .sun: return "\u{F185}"
        case .superscript: return "\u{F12B}"
        case .table: return "\u{F0CE}"
        case .tablet: return "\u{F10A}"
        case .tag: return "\u{F02B}"
        case .tags: return "\u{F02C}"
        case .tasks: return "\u{F0AE}"
        case .terminal: return "\u{F120}"
        case .textHeight: return "\u{F034}"
        case .textWidth: return "\u{F035}"
        case .th: return "\u{F00A}"
        case .thLarge: return "\u{F009}"
        case .thList: return "\u{F00B}"
        case .thumbsDownAlt: return "\u{F088}"
        case .thumbsUpAlt: return "\u{F087}"
        case .ticket: return "\u{F145}"
        case .time: return "\u{F017}"
        case .tint: return "\u{F043}"
        case .trash: return "\u{F014}"
        case .trello: return "\u{F181}"
        case .trophy: return "\u{F091}"
        case .truck: return "\u{F0D1}"
        case .tumblr: return "\u{F173}"
        case .tumblrSign: return "\u{F174}"
        case .twitter: return "\u{F099}"
        case .twitterSign: return "\u{F081}"
        case .ul: return "\u{F0CA}"
        case .umbrella: return "\u{F0E9}"
        case .underline: return "\u{F0CD}"
        case .undo: return "\u{F0E2}"
        case .uniF1A0: return "\u{F1A0}"
        case .uniF1B1: return "\u{F1B0}"
        case .uniF1C0: return "\u{F1C0}"
        case .uniF1C1: return "\u{F1C1}"
        case .uniF1D0: return "\u{F1D0}"
        case .uniF1D1: return "\u{F1D1}"
        case .uniF1D2: return "\u{F1D2}"
        case .uniF1D5: return "\u{F1D5}"
        case .uniF1D6: return "\u{F1D6}"
        case .uniF1D7: return "\u{F1D7}"
        case .uniF1E0: return "\u{F1E0}"
        case .uniF1F0: return "\u{F1F0}"
        case .uniF280: return "\u{F280}"
        case .uniF281: return "\u{F281}"
        case .uniF285: return "\u{F285}"
        case .uniF286: return "\u{F286}"
        case .uniF2A0: return "\u{F2A0}"
        case .uniF2A1: return "\u{F2A1}"
        case .uniF2A2: return "\u{F2A2}"
        case .uniF2A3: return "\u{F2A3}"
        case .uniF2A4: return "\u{F2A4}"
        case .uniF2A5: return "\u{F2A5}"
        case .uniF2A6: return "\u{F2A6}"
        case .uniF2A7: return "\u{F2A7}"
        case .uniF2A8: return "\u{F2A8}"
        case .uniF2A9: return "\u{F2A9}"
        case .uniF2AA: return "\u{F2AA}"
        case .uniF2AB: return "\u{F2AB}"
        case .uniF2AC: return "\u{F2AC}"
        case .uniF2AD: return "\u{F2AD}"
        case .uniF2AE: return "\u{F2AE}"
        case .uniF2B0: return "\u{F2B0}"
        case .uniF2B1: return "\u{F2B1}"
        case .uniF2B2: return "\u{F2B2}"
        case .uniF2B3: return "\u{F2B3}"
        case .uniF2B4: return "\u{F2B4}"
        case .uniF2B5: return "\u{F2B5}"
        case .uniF2B6: return "\u{F2B6}"
        case .uniF2B7: return "\u{F2B7}"
        case .uniF2B8: return "\u{F2B8}"
        case .uniF2B9: return "\u{F2B9}"
        case .uniF2BA: return "\u{F2BA}"
        case .uniF2BB: return "\u{F2BB}"
        case .uniF2BC: return "\u{F2BC}"
        case .uniF2BD: return "\u{F2BD}"
        case .uniF2BE: return "\u{F2BE}"
        case .unlink: return "\u{F127}"
        case .unlock: return "\u{F09C}"
        case .unlockAlt: return "\u{F13E}"
        case .upload: return "\u{F01B}"
        case .uploadAlt: return "\u{F093}"
        case .usd: return "\u{F155}"
        case .user: return "\u{F007}"
        case .userMd: return "\u{F0F0}"
        case .venus: return "\u{F221}"
        case .vimeoSquare: return "\u{F194}"
        case .vk: return "\u{F189}"
        case .volumeDown: return "\u{F027}"
        case .volumeOff: return "\u{F026}"
        case .volumeUp: return "\u{F028}"
        case .warningSign: return "\u{F071}"
        case .weibo: return "\u{F18A}"
        case .windows: return "\u{F17A}"
        case .wrench: return "\u{F0AD}"
        case .xing: return "\u{F168}"
        case .xingSign: return "\u{F169}"
        case .youtube: return "\u{F167}"
        case .youtubePlay: return "\u{F16A}"
        case .youtubeSign: return "\u{F166}"
        case .zoomIn: return "\u{F00E}"
        case .zoomOut: return "\u{F010}"
        }
    }
}

