.class public Lcom/android/inputmethod/latin/LatinKeyboardBaseView;
.super Landroid/view/View;
.source "LatinKeyboardBaseView.java"

# interfaces
.implements Lcom/android/inputmethod/latin/PointerTracker$UIProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;,
        Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;,
        Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;
    }
.end annotation


# static fields
.field public static CustomPunctuationPopup:[Ljava/lang/String; = null

.field public static CustomSmileys:[Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field static final NOT_A_KEY:I = -0x1

.field public static final NOT_A_TOUCH_COORDINATE:I = -0x1

.field private static final NUMBER_HINT_VERTICAL_ADJUSTMENT_PIXEL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LatinKeyboardBaseView"

.field private static mColorButton:I

.field private static mShowTouchPoints:Z

.field public static mSwipeThreshold:I

.field public static mSwipeThresholdMul:J

.field static mSymbolColorScheme:I

.field public static mTextSize:I

.field public static popularDomains:[Ljava/lang/String;


# instance fields
.field private final KEY_LABEL_HEIGHT_REFERENCE_CHAR:Ljava/lang/String;

.field private final KEY_LABEL_VERTICAL_ADJUSTMENT_FACTOR:F

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mClipRegion:Landroid/graphics/Rect;

.field private final mDelayAfterPreview:I

.field private final mDelayBeforePreview:I

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private final mDisambiguateSwipe:Z

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

.field private final mHasDistinctMultitouch:Z

.field private mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field public mKeyBackground:Landroid/graphics/drawable/Drawable;

.field protected mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

.field private mKeyHysteresisDistance:F

.field private final mKeyRepeatInterval:I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyTextStyle:Landroid/graphics/Typeface;

.field private mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeyboardVerticalGap:I

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLongPressDelay:I

.field private mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

.field private final mMiniKeyboardCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardOriginX:I

.field private mMiniKeyboardOriginY:I

.field private mMiniKeyboardParent:Landroid/view/View;

.field private mMiniKeyboardPopup:Landroid/widget/PopupWindow;

.field private mMiniKeyboardPopupTime:J

.field private final mMiniKeyboardSlideAllowance:F

.field private mMiniKeyboardTrackerId:I

.field private mOffsetInWindow:[I

.field private mOldPointerCount:I

.field private mOldPreviewKeyIndex:I

.field private final mPadding:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

.field private final mPointerTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/PointerTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupLayout:I

.field private mPopupPreviewDisplayedY:I

.field private mPopupPreviewOffsetX:I

.field private mPopupPreviewOffsetY:I

.field private mPreviewHeight:I

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private final mSwipeTracker:Lcom/android/inputmethod/latin/SwipeTracker;

.field private final mTextHeightCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalCorrection:F

.field private mWindowOffset:[I

.field private mWindowY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101023c

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->LONG_PRESSABLE_STATE_SET:[I

    .line 178
    sput v2, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSymbolColorScheme:I

    .line 269
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->popularDomains:[Ljava/lang/String;

    .line 270
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->CustomSmileys:[Ljava/lang/String;

    .line 271
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->CustomPunctuationPopup:[Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 455
    const/high16 v0, 0x7f010000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 456
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 460
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    .line 200
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 201
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowPreview:Z

    .line 214
    new-instance v14, Ljava/util/WeakHashMap;

    invoke-direct {v14}, Ljava/util/WeakHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    .line 225
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    .line 228
    new-instance v14, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-direct {v14}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    .line 231
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPointerCount:I

    .line 233
    new-instance v14, Lcom/android/inputmethod/latin/ProximityKeyDetector;

    invoke-direct {v14}, Lcom/android/inputmethod/latin/ProximityKeyDetector;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    .line 237
    new-instance v14, Lcom/android/inputmethod/latin/SwipeTracker;

    invoke-direct {v14}, Lcom/android/inputmethod/latin/SwipeTracker;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeTracker:Lcom/android/inputmethod/latin/SwipeTracker;

    .line 247
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    .line 261
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mClipRegion:Landroid/graphics/Rect;

    .line 264
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    .line 267
    const v14, 0x3f0ccccd    # 0.55f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->KEY_LABEL_VERTICAL_ADJUSTMENT_FACTOR:F

    .line 268
    const-string v14, "H"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->KEY_LABEL_HEIGHT_REFERENCE_CHAR:Ljava/lang/String;

    .line 275
    new-instance v14, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;-><init>(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    .line 463
    sget-object v14, Linputmethod/latin/perfectkeyboard/R$styleable;->LatinKeyboardBaseView:[I

    .line 464
    const/high16 v15, 0x7f0e0000

    .line 462
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 466
    .local v3, "a":Landroid/content/res/TypedArray;
    const-string v14, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 465
    check-cast v7, Landroid/view/LayoutInflater;

    .line 467
    .local v7, "inflate":Landroid/view/LayoutInflater;
    const/4 v11, 0x0

    .line 468
    .local v11, "previewLayout":I
    const/4 v8, 0x0

    .line 470
    .local v8, "keyTextSize":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .line 472
    .local v10, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v10, :cond_0

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 538
    .local v12, "res":Landroid/content/res/Resources;
    new-instance v14, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 539
    if-eqz v11, :cond_1

    .line 540
    const/4 v14, 0x0

    invoke-virtual {v7, v11, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    .line 542
    const v14, 0x7f0c0010

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    .line 541
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewTextSizeLarge:I

    .line 543
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const v15, 0x7f0e0001

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 551
    const/high16 v14, 0x7f0b0000

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 550
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDelayBeforePreview:I

    .line 553
    const v14, 0x7f0b0001

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 552
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDelayAfterPreview:I

    .line 555
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    .line 556
    new-instance v14, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    .line 557
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    const v15, 0x7f0e0002

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 560
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    .line 561
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    int-to-float v15, v8

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 563
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    const/16 v15, 0xff

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 566
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    .line 567
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 569
    const/high16 v14, 0x43fa0000    # 500.0f

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    sput v14, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThreshold:I

    .line 572
    const v14, 0x7f090003

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDisambiguateSwipe:Z

    .line 574
    const v14, 0x7f0c0013

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 573
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardSlideAllowance:F

    .line 576
    new-instance v9, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;-><init>(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V

    .line 618
    .local v9, "listener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    const/4 v6, 0x1

    .line 619
    .local v6, "ignoreMultitouch":Z
    new-instance v14, Landroid/view/GestureDetector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    .line 620
    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v9, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 619
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 621
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 623
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 624
    const-string v15, "android.hardware.touchscreen.multitouch.distinct"

    .line 623
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    .line 626
    const v14, 0x7f0b0007

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 625
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyRepeatInterval:I

    .line 627
    return-void

    .line 473
    .end local v6    # "ignoreMultitouch":Z
    .end local v9    # "listener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    .end local v12    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 474
    .local v4, "attr":I
    packed-switch v4, :pswitch_data_0

    .line 472
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 476
    :pswitch_0
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 479
    :pswitch_1
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    goto :goto_2

    .line 482
    :pswitch_2
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mVerticalCorrection:F

    goto :goto_2

    .line 485
    :pswitch_3
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 486
    goto :goto_2

    .line 488
    :pswitch_4
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewOffset:I

    goto :goto_2

    .line 491
    :pswitch_5
    const/16 v14, 0x50

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewHeight:I

    goto :goto_2

    .line 494
    :pswitch_6
    const/16 v14, 0x12

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextSize:I

    goto :goto_2

    .line 497
    :pswitch_7
    const/high16 v14, -0x1000000

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextColor:I

    goto :goto_2

    .line 500
    :pswitch_8
    const/16 v14, 0xe

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mLabelTextSize:I

    goto :goto_2

    .line 503
    :pswitch_9
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupLayout:I

    goto :goto_2

    .line 506
    :pswitch_a
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShadowColor:I

    goto :goto_2

    .line 509
    :pswitch_b
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShadowRadius:F

    goto :goto_2

    .line 513
    :pswitch_c
    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBackgroundDimAmount:F

    goto/16 :goto_2

    .line 517
    :pswitch_d
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 518
    .local v13, "textStyle":I
    packed-switch v13, :pswitch_data_1

    .line 526
    invoke-static {v13}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 520
    :pswitch_e
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 523
    :pswitch_f
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 546
    .end local v4    # "attr":I
    .end local v13    # "textStyle":I
    .restart local v12    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowPreview:Z

    goto/16 :goto_1

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 518
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;ILcom/android/inputmethod/latin/PointerTracker;)V
    .locals 0

    .prologue
    .line 1231
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->showKey(ILcom/android/inputmethod/latin/PointerTracker;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyRepeatInterval:I

    return v0
.end method

.method static synthetic access$3(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;ILcom/android/inputmethod/latin/PointerTracker;)Z
    .locals 1

    .prologue
    .line 1354
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->openPopupIfRequired(ILcom/android/inputmethod/latin/PointerTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/SwipeTracker;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeTracker:Lcom/android/inputmethod/latin/SwipeTracker;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$7(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V
    .locals 0

    .prologue
    .line 1890
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    return-void
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .locals 8
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 838
    if-nez p1, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 841
    .local v3, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v3, :cond_0

    .line 843
    array-length v4, v3

    .line 844
    .local v4, "length":I
    const/4 v0, 0x0

    .line 845
    .local v0, "dimensionSum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_2

    .line 851
    if-ltz v0, :cond_0

    if-eqz v4, :cond_0

    .line 853
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    .line 854
    int-to-float v6, v0

    const v7, 0x3fb33333    # 1.4f

    mul-float/2addr v6, v7

    int-to-float v7, v4

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/KeyDetector;->setProximityThreshold(I)V

    goto :goto_0

    .line 846
    :cond_2
    aget-object v2, v3, v1

    .line 847
    .local v2, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 848
    iget v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardVerticalGap:I

    add-int/2addr v6, v7

    .line 847
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 849
    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 845
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private dismissKeyPreview()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1196
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1198
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->showPreview(ILcom/android/inputmethod/latin/PointerTracker;)V

    .line 1199
    return-void

    .line 1196
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/PointerTracker;

    .line 1197
    .local v0, "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/PointerTracker;->updateKey(I)V

    goto :goto_0
.end method

.method private dismissPopupKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1891
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    .line 1894
    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    .line 1895
    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    .line 1896
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 1898
    :cond_0
    return-void
.end method

.method private editCustomSmile(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1939
    .local p1, "miniKeys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 1943
    return-void

    .line 1940
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    sget-object v2, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->CustomSmileys:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 1941
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    sget-object v2, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->CustomSmileys:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1939
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private editPopularDomains(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1932
    .local p1, "miniKeys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 1936
    return-void

    .line 1933
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    sget-object v2, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->popularDomains:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 1934
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    sget-object v2, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->popularDomains:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1932
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private editPunctuationPopup(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "miniKeys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v3, 0x0

    .line 1946
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 1951
    return-void

    .line 1947
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    sget-object v2, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->CustomPunctuationPopup:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    aput v2, v1, v3

    .line 1948
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    sget-object v2, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->CustomPunctuationPopup:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 1949
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1946
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;
    .locals 8
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 1648
    iget-wide v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopupTime:J

    .line 1649
    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    sub-int v2, p2, v2

    int-to-float v5, v2

    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    sub-int v2, p3, v2

    int-to-float v6, v2

    const/4 v7, 0x0

    move-wide v2, p4

    move v4, p1

    .line 1648
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static getColor()I
    .locals 1

    .prologue
    .line 1677
    sget v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mColorButton:I

    return v0
.end method

.method private getPointerTracker(I)Lcom/android/inputmethod/latin/PointerTracker;
    .locals 10
    .param p1, "id"    # I

    .prologue
    .line 1653
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    .line 1654
    .local v9, "pointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/inputmethod/latin/PointerTracker;>;"
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 1655
    .local v7, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 1659
    .local v8, "listener":Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-le v1, p1, :cond_0

    .line 1669
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/PointerTracker;

    return-object v2

    .line 1660
    :cond_0
    new-instance v0, Lcom/android/inputmethod/latin/PointerTracker;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    .line 1661
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mLongPressDelay:I

    move-object v4, p0

    .line 1660
    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/PointerTracker;-><init>(ILcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;Lcom/android/inputmethod/latin/KeyDetector;Lcom/android/inputmethod/latin/PointerTracker$UIProxy;Landroid/content/res/Resources;I)V

    .line 1662
    .local v0, "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    if-eqz v7, :cond_1

    .line 1663
    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    invoke-virtual {v0, v7, v2}, Lcom/android/inputmethod/latin/PointerTracker;->setKeyboard([Landroid/inputmethodservice/Keyboard$Key;F)V

    .line 1664
    :cond_1
    if-eqz v8, :cond_2

    .line 1665
    invoke-virtual {v0, v8}, Lcom/android/inputmethod/latin/PointerTracker;->setOnKeyboardActionListener(Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 1666
    :cond_2
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static hasMultiplePopupChars(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 2
    .param p0, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    const/4 v0, 0x1

    .line 1590
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1593
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateMiniKeyboardContainer(Landroid/inputmethodservice/Keyboard$Key;)Landroid/view/View;
    .locals 12
    .param p1, "popupKey"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    const/4 v4, 0x0

    const/high16 v11, -0x80000000

    .line 1376
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 1377
    .local v2, "popupKeyboardId":I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1378
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1377
    check-cast v8, Landroid/view/LayoutInflater;

    .line 1379
    .local v8, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupLayout:I

    invoke-virtual {v8, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1380
    .local v6, "container":Landroid/view/View;
    if-nez v6, :cond_0

    .line 1381
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1384
    :cond_0
    const v1, 0x7f080014

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1383
    check-cast v9, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    .line 1386
    .local v9, "miniKeyboard":Lcom/android/inputmethod/latin/LatinKeyboardBaseView;
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1387
    .local v7, "highlight":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/inputmethod/latin/CandidateView;->getColor()I

    move-result v1

    .line 1388
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 1387
    invoke-virtual {v7, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1391
    new-instance v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;-><init>(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V

    invoke-virtual {v9, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setOnKeyboardActionListener(Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 1430
    new-instance v1, Lcom/android/inputmethod/latin/MiniKeyboardKeyDetector;

    .line 1431
    iget v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardSlideAllowance:F

    invoke-direct {v1, v3}, Lcom/android/inputmethod/latin/MiniKeyboardKeyDetector;-><init>(F)V

    .line 1430
    iput-object v1, v9, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    .line 1433
    iput-object v4, v9, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1437
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1438
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1439
    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v5

    .line 1440
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingRight()I

    move-result v10

    add-int/2addr v5, v10

    .line 1438
    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 1444
    .local v0, "keyboard":Landroid/inputmethodservice/Keyboard;
    :goto_0
    invoke-virtual {v9, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 1445
    invoke-virtual {v9, p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setPopupParent(Landroid/view/View;)V

    .line 1447
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v1

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1448
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getHeight()I

    move-result v3

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1447
    invoke-virtual {v6, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1451
    return-object v6

    .line 1442
    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    :cond_1
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .restart local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    goto :goto_0
.end method

.method private static isAsciiDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1643
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLatinF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 1
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    instance-of v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->isF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1608
    goto :goto_0
.end method

.method private isNonMicLatinF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 1
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 1613
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isLatinF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNumberAtEdgeOfPopupChars(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 1
    .param p0, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 1617
    invoke-static {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNumberAtLeftmostPopupChar(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1618
    invoke-static {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNumberAtRightmostPopupChar(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 1617
    goto :goto_0
.end method

.method static isNumberAtLeftmostPopupChar(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 2
    .param p0, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    const/4 v0, 0x0

    .line 1622
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1623
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isAsciiDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1624
    const/4 v0, 0x1

    .line 1626
    :cond_0
    return v0
.end method

.method static isNumberAtRightmostPopupChar(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 2
    .param p0, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 1631
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1633
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 1634
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1633
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isAsciiDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1635
    const/4 v0, 0x1

    .line 1637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOneRowKeys(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v2, 0x0

    .line 1455
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1469
    :goto_0
    return v1

    .line 1457
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    iget v0, v1, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    .line 1468
    .local v0, "edgeFlags":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 1469
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1468
    goto :goto_0
.end method

.method private onBufferDraw()V
    .locals 59

    .prologue
    .line 876
    const/4 v12, 0x0

    .line 877
    .local v12, "allrayChecked":Z
    const/16 v44, 0x0

    .line 878
    .local v44, "modedColor":I
    const/16 v53, 0x0

    .line 879
    .local v53, "toMultiple":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    .line 880
    .local v46, "res":Landroid/content/res/Resources;
    sget-boolean v3, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomBackgrounColors:Z

    if-eqz v3, :cond_5

    sget v43, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    .line 882
    .local v43, "mFontColor":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardChanged:Z

    if-eqz v3, :cond_4

    .line 883
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 884
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardChanged:Z

    if-eqz v3, :cond_3

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 886
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 889
    :cond_2
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v56

    .line 890
    .local v56, "width":I
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 892
    .local v26, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 891
    move/from16 v0, v56

    move/from16 v1, v26

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    .line 893
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mCanvas:Landroid/graphics/Canvas;

    .line 895
    .end local v26    # "height":I
    .end local v56    # "width":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 896
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardChanged:Z

    .line 898
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mCanvas:Landroid/graphics/Canvas;

    .line 899
    .local v2, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v3, :cond_6

    .line 1192
    :goto_1
    return-void

    .line 880
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v43    # "mFontColor":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextColor:I

    move/from16 v43, v0

    goto/16 :goto_0

    .line 904
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v43    # "mFontColor":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    .line 905
    .local v7, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 906
    .local v33, "keyBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mClipRegion:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 907
    .local v18, "clipRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    .line 908
    .local v45, "padding":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v30

    .line 909
    .local v30, "kbdPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v31

    .line 910
    .local v31, "kbdPaddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v35, v0

    .line 911
    .local v35, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v29, v0

    .line 912
    .local v29, "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShadowColor:I

    .line 914
    .local v11, "ShadowColor":I
    move-object/from16 v0, v35

    array-length v3, v0

    const/16 v4, 0x10

    if-lt v3, v4, :cond_b

    .line 915
    move/from16 v0, v43

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 917
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShadowColor:I

    .line 922
    :goto_2
    const/16 v20, 0x0

    .line 923
    .local v20, "drawSingleKey":Z
    if-eqz v29, :cond_7

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 926
    move-object/from16 v0, v29

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int v3, v3, v30

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gt v3, v4, :cond_7

    .line 927
    move-object/from16 v0, v29

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int v3, v3, v31

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gt v3, v4, :cond_7

    .line 928
    move-object/from16 v0, v29

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move-object/from16 v0, v29

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    add-int v3, v3, v30

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-lt v3, v4, :cond_7

    .line 929
    move-object/from16 v0, v29

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move-object/from16 v0, v29

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v3, v4

    add-int v3, v3, v31

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v4, :cond_7

    .line 930
    const/16 v20, 0x1

    .line 933
    :cond_7
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 935
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v34, v0

    .line 936
    .local v34, "keyCount":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_3
    move/from16 v0, v28

    move/from16 v1, v34

    if-lt v0, v1, :cond_c

    .line 1165
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 1167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    if-eqz v3, :cond_8

    .line 1168
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBackgroundDimAmount:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x18

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1169
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1172
    :cond_8
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowTouchPoints:Z

    if-eqz v3, :cond_9

    .line 1173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v57

    :goto_4
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1190
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDrawPending:Z

    .line 1191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_1

    .line 917
    .end local v20    # "drawSingleKey":Z
    .end local v28    # "i":I
    .end local v34    # "keyCount":I
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 919
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextColor:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 937
    .restart local v20    # "drawSingleKey":Z
    .restart local v28    # "i":I
    .restart local v34    # "keyCount":I
    :cond_c
    aget-object v32, v35, v28

    .line 938
    .local v32, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v20, :cond_d

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_d

    .line 936
    :goto_5
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 942
    :cond_d
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v3, :cond_1a

    const/16 v36, 0x0

    .line 944
    .local v36, "label":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v35

    array-length v3, v0

    const/16 v4, 0x10

    if-lt v3, v4, :cond_e

    .line 948
    sget-boolean v3, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    if-eqz v3, :cond_1d

    sget-object v3, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    if-eqz v3, :cond_1d

    .line 949
    move-object/from16 v0, v32

    iget-boolean v3, v0, Landroid/inputmethodservice/Keyboard$Key;->modifier:Z

    if-eqz v3, :cond_1b

    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0xd

    if-eq v3, v4, :cond_1b

    .line 950
    sget-object v3, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v3, v3, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->btn_keyboard_key_alt:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_e

    .line 951
    sget-object v3, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v0, v3, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->btn_keyboard_key_alt:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getSymbolColorScheme()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_e

    .line 953
    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 975
    :cond_e
    :goto_7
    invoke-virtual/range {v32 .. v32}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v22

    .line 976
    .local v22, "drawableState":[I
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 977
    move-object/from16 v0, v35

    array-length v3, v0

    const/16 v4, 0x10

    if-ge v3, v4, :cond_f

    .line 979
    invoke-static {}, Lcom/android/inputmethod/latin/CandidateView;->getColor()I

    move-result v3

    .line 980
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 978
    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 984
    :cond_f
    sget-boolean v3, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomBackgrounColors:Z

    if-eqz v3, :cond_21

    .line 985
    move-object/from16 v0, v35

    array-length v3, v0

    const/16 v4, 0x10

    if-lt v3, v4, :cond_11

    .line 986
    if-nez v12, :cond_10

    .line 987
    const/4 v3, 0x3

    new-array v0, v3, [F

    move-object/from16 v27, v0

    .line 988
    .local v27, "hsv":[F
    invoke-static {}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getColor()I

    move-result v13

    .line 989
    .local v13, "baseColor":I
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 990
    .local v10, "R":I
    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 991
    .local v9, "G":I
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 992
    .local v8, "B":I
    move-object/from16 v0, v27

    invoke-static {v10, v9, v8, v0}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 993
    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    aget v5, v27, v5

    sub-float/2addr v4, v5

    aput v4, v27, v3

    .line 994
    const/4 v3, 0x2

    aget v3, v27, v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1f

    .line 995
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget v4, v27, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    aput v4, v27, v3

    .line 996
    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    aget v5, v27, v5

    sub-float/2addr v4, v5

    aput v4, v27, v3

    .line 997
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v44

    .line 1007
    .end local v8    # "B":I
    .end local v9    # "G":I
    .end local v10    # "R":I
    .end local v13    # "baseColor":I
    .end local v27    # "hsv":[F
    :cond_10
    :goto_8
    if-eqz v53, :cond_20

    .line 1009
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 1008
    move-object/from16 v0, v33

    move/from16 v1, v44

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1019
    :cond_11
    :goto_9
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 1020
    .local v15, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, v32

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v4, v15, Landroid/graphics/Rect;->right:I

    if-ne v3, v4, :cond_12

    move-object/from16 v0, v32

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v4, v15, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v4, :cond_13

    .line 1021
    :cond_12
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v32

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v32

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1023
    :cond_13
    move-object/from16 v0, v32

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int v3, v3, v30

    int-to-float v3, v3

    move-object/from16 v0, v32

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int v4, v4, v31

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1024
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1026
    const/16 v47, 0x1

    .line 1028
    .local v47, "shouldDrawIcon":Z
    if-eqz v36, :cond_18

    .line 1032
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_22

    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v3, v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_22

    .line 1033
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mLabelTextSize:I

    move/from16 v39, v0

    .line 1034
    .local v39, "labelSize":I
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1044
    :goto_a
    move/from16 v0, v39

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Integer;

    .line 1048
    .local v38, "labelHeightValue":Ljava/lang/Integer;
    if-eqz v38, :cond_24

    .line 1049
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v37

    .line 1059
    .local v37, "labelHeight":I
    :goto_b
    move-object/from16 v0, v32

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v45

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    move-object/from16 v0, v45

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v16, v3, 0x2

    .line 1060
    .local v16, "centerX":I
    move-object/from16 v0, v32

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v45

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, v45

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    div-int/lit8 v17, v3, 0x2

    .line 1061
    .local v17, "centerY":I
    move/from16 v0, v17

    int-to-float v3, v0

    move/from16 v0, v37

    int-to-float v4, v0

    .line 1062
    const v5, 0x3f0ccccd    # 0.55f

    mul-float/2addr v4, v5

    .line 1061
    add-float v14, v3, v4

    .line 1065
    .local v14, "baseline":F
    sget-boolean v3, Lcom/android/inputmethod/latin/Calibration;->mDisplayAltLables:Z

    if-eqz v3, :cond_16

    const-string v3, "."

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v3, :cond_16

    .line 1066
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_16

    .line 1068
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextSize:I

    sget v4, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mTextSize:I

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0xc8

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1069
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v55

    .line 1070
    .local v55, "typefece":Landroid/graphics/Typeface;
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1071
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1073
    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v19

    .line 1074
    .local v19, "color":I
    const-string v3, "."

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1076
    const-string v51, ","

    .line 1077
    .local v51, "symbol":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1078
    const v3, -0x7f000001

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1104
    :goto_c
    sget-boolean v3, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    if-eqz v3, :cond_15

    .line 1105
    sget-object v3, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    if-eqz v3, :cond_15

    .line 1106
    sget-object v3, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget v3, v3, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->text_color2:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1107
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShadowRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1108
    sget-object v6, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget v6, v6, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->shadow_color2:I

    .line 1107
    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1112
    :cond_15
    mul-int/lit8 v3, v16, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 1113
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v14, v4

    .line 1112
    move-object/from16 v0, v51

    invoke-virtual {v2, v0, v3, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1114
    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1115
    move/from16 v0, v39

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1116
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1120
    .end local v19    # "color":I
    .end local v51    # "symbol":Ljava/lang/String;
    .end local v55    # "typefece":Landroid/graphics/Typeface;
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShadowRadius:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v4, v5, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1121
    sget-boolean v3, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    if-eqz v3, :cond_17

    move-object/from16 v0, v35

    array-length v3, v0

    const/16 v4, 0x10

    if-lt v3, v4, :cond_17

    .line 1122
    sget-object v3, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    if-eqz v3, :cond_17

    .line 1123
    move-object/from16 v0, v32

    iget-boolean v3, v0, Landroid/inputmethodservice/Keyboard$Key;->modifier:Z

    if-nez v3, :cond_28

    .line 1124
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShadowRadius:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1125
    sget-object v6, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget v6, v6, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->shadow_color:I

    .line 1124
    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1131
    :cond_17
    :goto_d
    move/from16 v0, v16

    int-to-float v3, v0

    move-object/from16 v0, v36

    invoke-virtual {v2, v0, v3, v14, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1133
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1138
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->shouldDrawLabelAndIcon(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v47

    .line 1141
    .end local v14    # "baseline":F
    .end local v16    # "centerX":I
    .end local v17    # "centerY":I
    .end local v37    # "labelHeight":I
    .end local v38    # "labelHeightValue":Ljava/lang/Integer;
    .end local v39    # "labelSize":I
    :cond_18
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_19

    if-eqz v47, :cond_19

    .line 1147
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->shouldDrawIconFully(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1148
    move-object/from16 v0, v32

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v23, v0

    .line 1149
    .local v23, "drawableWidth":I
    move-object/from16 v0, v32

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v21, v0

    .line 1150
    .local v21, "drawableHeight":I
    const/16 v24, 0x0

    .line 1151
    .local v24, "drawableX":I
    const/16 v25, -0x1

    .line 1158
    .local v25, "drawableY":I
    :goto_e
    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1159
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1160
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1161
    move/from16 v0, v24

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v25

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1163
    .end local v21    # "drawableHeight":I
    .end local v23    # "drawableWidth":I
    .end local v24    # "drawableX":I
    .end local v25    # "drawableY":I
    :cond_19
    move-object/from16 v0, v32

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    neg-int v3, v3

    sub-int v3, v3, v30

    int-to-float v3, v3

    move-object/from16 v0, v32

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    neg-int v4, v4

    sub-int v4, v4, v31

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_5

    .line 942
    .end local v15    # "bounds":Landroid/graphics/Rect;
    .end local v22    # "drawableState":[I
    .end local v36    # "label":Ljava/lang/String;
    .end local v47    # "shouldDrawIcon":Z
    :cond_1a
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 943
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_6

    .line 956
    .restart local v36    # "label":Ljava/lang/String;
    :cond_1b
    sget-object v3, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v3, v3, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->btn_keyboard_key:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1c

    .line 957
    sget-object v3, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v0, v3, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->btn_keyboard_key:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 959
    :cond_1c
    sget-object v3, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget v3, v3, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->text_color:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_e

    sget-boolean v3, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomBackgrounColors:Z

    if-nez v3, :cond_e

    .line 960
    sget-object v3, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget v3, v3, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->text_color:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_7

    .line 965
    :cond_1d
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0xd

    if-eq v3, v4, :cond_1e

    .line 966
    sget-boolean v3, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomBackgrounColors:Z

    if-nez v3, :cond_1e

    move-object/from16 v0, v32

    iget-boolean v3, v0, Landroid/inputmethodservice/Keyboard$Key;->modifier:Z

    if-eqz v3, :cond_1e

    .line 968
    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_7

    .line 972
    :cond_1e
    move/from16 v0, v43

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_7

    .line 999
    .restart local v8    # "B":I
    .restart local v9    # "G":I
    .restart local v10    # "R":I
    .restart local v13    # "baseColor":I
    .restart local v22    # "drawableState":[I
    .restart local v27    # "hsv":[F
    :cond_1f
    const/16 v53, 0x1

    .line 1000
    const/4 v3, 0x2

    aget v4, v27, v3

    float-to-double v4, v4

    const-wide/high16 v57, 0x3fe0000000000000L    # 0.5

    sub-double v4, v4, v57

    double-to-float v4, v4

    aput v4, v27, v3

    .line 1001
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget v4, v27, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    aput v4, v27, v3

    .line 1002
    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    aget v5, v27, v5

    sub-float/2addr v4, v5

    aput v4, v27, v3

    .line 1003
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v44

    goto/16 :goto_8

    .line 1011
    .end local v8    # "B":I
    .end local v9    # "G":I
    .end local v10    # "R":I
    .end local v13    # "baseColor":I
    .end local v27    # "hsv":[F
    :cond_20
    new-instance v42, Landroid/graphics/LightingColorFilter;

    .line 1012
    const/4 v3, -0x1

    .line 1011
    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-direct {v0, v3, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 1013
    .local v42, "lcf":Landroid/graphics/LightingColorFilter;
    move-object/from16 v0, v33

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_9

    .line 1016
    .end local v42    # "lcf":Landroid/graphics/LightingColorFilter;
    :cond_21
    move-object/from16 v0, v35

    array-length v3, v0

    const/16 v4, 0x10

    if-lt v3, v4, :cond_11

    .line 1017
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto/16 :goto_9

    .line 1036
    .restart local v15    # "bounds":Landroid/graphics/Rect;
    .restart local v47    # "shouldDrawIcon":Z
    :cond_22
    sget-boolean v3, Lcom/android/inputmethod/latin/Calibration;->mSmallLabelText:Z

    if-eqz v3, :cond_23

    .line 1037
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextSize:I

    sget v4, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mTextSize:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v3, v3, 0x50

    div-int/lit8 v39, v3, 0x64

    .line 1042
    .restart local v39    # "labelSize":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_a

    .line 1040
    .end local v39    # "labelSize":I
    :cond_23
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextSize:I

    sget v4, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mTextSize:I

    mul-int/2addr v3, v4

    div-int/lit8 v39, v3, 0x64

    .restart local v39    # "labelSize":I
    goto :goto_f

    .line 1051
    .restart local v38    # "labelHeightValue":Ljava/lang/Integer;
    :cond_24
    new-instance v52, Landroid/graphics/Rect;

    invoke-direct/range {v52 .. v52}, Landroid/graphics/Rect;-><init>()V

    .line 1052
    .local v52, "textBounds":Landroid/graphics/Rect;
    const-string v3, "H"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v7, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1054
    invoke-virtual/range {v52 .. v52}, Landroid/graphics/Rect;->height()I

    move-result v37

    .line 1055
    .restart local v37    # "labelHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 1082
    .end local v52    # "textBounds":Landroid/graphics/Rect;
    .restart local v14    # "baseline":F
    .restart local v16    # "centerX":I
    .restart local v17    # "centerY":I
    .restart local v19    # "color":I
    .restart local v55    # "typefece":Landroid/graphics/Typeface;
    :cond_25
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_26

    .line 1083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v32

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    if-le v3, v4, :cond_26

    .line 1085
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1086
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v51

    .line 1093
    .restart local v51    # "symbol":Ljava/lang/String;
    :goto_10
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1094
    sget-boolean v3, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomBackgrounColors:Z

    if-eqz v3, :cond_27

    .line 1096
    const v3, -0x7f000001

    sget v4, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintColor:I

    and-int/2addr v3, v4

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_c

    .line 1088
    .end local v51    # "symbol":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v48

    .line 1089
    .local v48, "size":I
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    add-int/lit8 v4, v48, -0x1

    move/from16 v0, v48

    invoke-interface {v3, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1090
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v51

    .line 1089
    .restart local v51    # "symbol":Ljava/lang/String;
    goto :goto_10

    .line 1100
    .end local v48    # "size":I
    :cond_27
    const v3, -0x7f000001

    and-int v3, v3, v43

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_c

    .line 1127
    .end local v19    # "color":I
    .end local v51    # "symbol":Ljava/lang/String;
    .end local v55    # "typefece":Landroid/graphics/Typeface;
    :cond_28
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShadowRadius:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1128
    const/high16 v6, -0x1000000

    .line 1127
    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_d

    .line 1153
    .end local v14    # "baseline":F
    .end local v16    # "centerX":I
    .end local v17    # "centerY":I
    .end local v37    # "labelHeight":I
    .end local v38    # "labelHeightValue":Ljava/lang/Integer;
    .end local v39    # "labelSize":I
    :cond_29
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 1154
    .restart local v23    # "drawableWidth":I
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    .line 1155
    .restart local v21    # "drawableHeight":I
    move-object/from16 v0, v32

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v45

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    move-object/from16 v0, v45

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v23

    div-int/lit8 v24, v3, 0x2

    .line 1156
    .restart local v24    # "drawableX":I
    move-object/from16 v0, v32

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v45

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, v45

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v21

    div-int/lit8 v25, v3, 0x2

    .restart local v25    # "drawableY":I
    goto/16 :goto_e

    .line 1173
    .end local v15    # "bounds":Landroid/graphics/Rect;
    .end local v21    # "drawableHeight":I
    .end local v22    # "drawableState":[I
    .end local v23    # "drawableWidth":I
    .end local v24    # "drawableX":I
    .end local v25    # "drawableY":I
    .end local v32    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v36    # "label":Ljava/lang/String;
    .end local v47    # "shouldDrawIcon":Z
    :cond_2a
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/inputmethod/latin/PointerTracker;

    .line 1174
    .local v54, "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    invoke-virtual/range {v54 .. v54}, Lcom/android/inputmethod/latin/PointerTracker;->getStartX()I

    move-result v49

    .line 1175
    .local v49, "startX":I
    invoke-virtual/range {v54 .. v54}, Lcom/android/inputmethod/latin/PointerTracker;->getStartY()I

    move-result v50

    .line 1176
    .local v50, "startY":I
    invoke-virtual/range {v54 .. v54}, Lcom/android/inputmethod/latin/PointerTracker;->getLastX()I

    move-result v40

    .line 1177
    .local v40, "lastX":I
    invoke-virtual/range {v54 .. v54}, Lcom/android/inputmethod/latin/PointerTracker;->getLastY()I

    move-result v41

    .line 1178
    .local v41, "lastY":I
    const/16 v3, 0x80

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1179
    const/high16 v3, -0x10000

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1180
    move/from16 v0, v49

    int-to-float v3, v0

    move/from16 v0, v50

    int-to-float v4, v0

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1181
    move/from16 v0, v49

    int-to-float v3, v0

    move/from16 v0, v50

    int-to-float v4, v0

    move/from16 v0, v40

    int-to-float v5, v0

    move/from16 v0, v41

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1182
    const v3, -0xffff01

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1183
    move/from16 v0, v40

    int-to-float v3, v0

    move/from16 v0, v41

    int-to-float v4, v0

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1184
    const v3, -0xff0100

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1185
    add-int v3, v49, v40

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 1186
    add-int v4, v50, v41

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    .line 1185
    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method private onCancelEvent(Lcom/android/inputmethod/latin/PointerTracker;IIJ)V
    .locals 1
    .param p1, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 1850
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onCancelEvent(IIJ)V

    .line 1851
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->remove(Lcom/android/inputmethod/latin/PointerTracker;)V

    .line 1852
    return-void
.end method

.method private onDownEvent(Lcom/android/inputmethod/latin/PointerTracker;IIJ)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 1818
    invoke-virtual {p1, p2, p3}, Lcom/android/inputmethod/latin/PointerTracker;->isOnModifierKey(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p4, p5}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersExceptDontSend(Lcom/android/inputmethod/latin/PointerTracker;J)V

    .line 1824
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onDownEvent(IIJ)V

    .line 1825
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->add(Lcom/android/inputmethod/latin/PointerTracker;)V

    .line 1826
    return-void
.end method

.method private onUpEvent(Lcom/android/inputmethod/latin/PointerTracker;IIJ)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 1829
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/PointerTracker;->isModifier()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1833
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1, p4, p5}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersExcept(Lcom/android/inputmethod/latin/PointerTracker;J)V

    .line 1844
    :goto_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onUpEvent(IIJ)V

    .line 1845
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->remove(Lcom/android/inputmethod/latin/PointerTracker;)V

    .line 1846
    return-void

    .line 1835
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->lastIndexOf(Lcom/android/inputmethod/latin/PointerTracker;)I

    move-result v0

    .line 1836
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1837
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1, p4, p5}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersOlderThan(Lcom/android/inputmethod/latin/PointerTracker;J)V

    goto :goto_0

    .line 1839
    :cond_1
    const-string v1, "LatinKeyboardBaseView"

    .line 1840
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUpEvent: corresponding down event not found for pointer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1841
    iget v3, p1, Lcom/android/inputmethod/latin/PointerTracker;->mPointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1840
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1839
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openPopupIfRequired(ILcom/android/inputmethod/latin/PointerTracker;)Z
    .locals 3
    .param p1, "keyIndex"    # I
    .param p2, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;

    .prologue
    const/4 v1, 0x0

    .line 1356
    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupLayout:I

    if-nez v2, :cond_1

    .line 1372
    :cond_0
    :goto_0
    return v1

    .line 1360
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v0

    .line 1361
    .local v0, "popupKey":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v0, :cond_0

    .line 1363
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    .line 1364
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 1365
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 1366
    iget v2, p2, Lcom/android/inputmethod/latin/PointerTracker;->mPointerId:I

    iput v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardTrackerId:I

    .line 1369
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/PointerTracker;->setAlreadyProcessed()V

    .line 1370
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v2, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->remove(Lcom/android/inputmethod/latin/PointerTracker;)V

    goto :goto_0
.end method

.method public static setColor(I)V
    .locals 0
    .param p0, "color"    # I

    .prologue
    .line 1673
    sput p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mColorButton:I

    .line 1674
    return-void
.end method

.method public static setShowTouchPoints(Z)V
    .locals 0
    .param p0, "show"    # Z

    .prologue
    .line 1928
    sput-boolean p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowTouchPoints:Z

    .line 1929
    return-void
.end method

.method public static setSymbolColorScheme(I)V
    .locals 0
    .param p0, "SymbolColorScheme"    # I

    .prologue
    .line 772
    sput p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSymbolColorScheme:I

    .line 773
    return-void
.end method

.method private shouldDrawIconFully(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 2
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 1597
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNumberAtEdgeOfPopupChars(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isLatinF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    const-string v1, "enter"

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    .line 1597
    goto :goto_0
.end method

.method private shouldDrawLabelAndIcon(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 1
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 1603
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNumberAtEdgeOfPopupChars(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNonMicLatinF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1604
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->hasPuncOrSmileysPopup(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 1603
    goto :goto_0
.end method

.method private showKey(ILcom/android/inputmethod/latin/PointerTracker;)V
    .locals 12
    .param p1, "keyIndex"    # I
    .param p2, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;

    .prologue
    .line 1232
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v0

    .line 1233
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-nez v0, :cond_0

    .line 1315
    :goto_0
    return-void

    .line 1236
    :cond_0
    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 1237
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->shouldDrawLabelAndIcon(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    const-string v8, "enter"

    if-ne v7, v8, :cond_6

    .line 1238
    :cond_1
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1239
    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1238
    :goto_1
    invoke-virtual {v8, v9, v10, v11, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1240
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    :goto_2
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    .line 1256
    const/4 v9, 0x0

    .line 1255
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1256
    const/4 v9, 0x0

    .line 1257
    const/4 v10, 0x0

    .line 1256
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1255
    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->measure(II)V

    .line 1258
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 1259
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    .line 1260
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1258
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1261
    .local v5, "popupWidth":I
    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewHeight:I

    .line 1262
    .local v2, "popupHeight":I
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1263
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2

    .line 1264
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1265
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1268
    :cond_2
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    sub-int v8, v5, v8

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 1269
    .local v3, "popupPreviewX":I
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v7, v2

    iget v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewOffset:I

    add-int v4, v7, v8

    .line 1271
    .local v4, "popupPreviewY":I
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelDismissPreview()V

    .line 1272
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    if-nez v7, :cond_3

    .line 1273
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    .line 1274
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getLocationInWindow([I)V

    .line 1275
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v8, 0x0

    aget v9, v7, v8

    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupPreviewOffsetX:I

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 1276
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v8, 0x1

    aget v9, v7, v8

    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupPreviewOffsetY:I

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 1277
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 1278
    .local v6, "windowLocation":[I
    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getLocationOnScreen([I)V

    .line 1279
    const/4 v7, 0x1

    aget v7, v6, v7

    iput v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowY:I

    .line 1282
    .end local v6    # "windowLocation":[I
    :cond_3
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1283
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->LONG_PRESSABLE_STATE_SET:[I

    .line 1282
    :goto_3
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1285
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int/2addr v3, v7

    .line 1286
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v4, v7

    .line 1289
    iget v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowY:I

    add-int/2addr v7, v4

    if-gez v7, :cond_4

    .line 1294
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    if-gt v7, v8, :cond_9

    .line 1295
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v3, v7

    .line 1299
    :goto_4
    add-int/2addr v4, v2

    .line 1302
    :cond_4
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1303
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v3, v4, v5, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1313
    :goto_5
    iput v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupPreviewDisplayedY:I

    .line 1314
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1239
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "popupHeight":I
    .end local v3    # "popupPreviewX":I
    .end local v4    # "popupPreviewY":I
    .end local v5    # "popupWidth":I
    :cond_5
    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1242
    :cond_6
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1243
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Lcom/android/inputmethod/latin/PointerTracker;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v7, :cond_7

    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_7

    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    if-eqz v7, :cond_7

    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v7, v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_7

    .line 1245
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    .line 1246
    iget v9, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextSize:I

    int-to-float v9, v9

    .line 1245
    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1247
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 1249
    :cond_7
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    .line 1250
    iget v9, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewTextSizeLarge:I

    int-to-float v9, v9

    .line 1249
    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1251
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 1284
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "popupHeight":I
    .restart local v3    # "popupPreviewX":I
    .restart local v4    # "popupPreviewY":I
    .restart local v5    # "popupWidth":I
    :cond_8
    sget-object v7, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->EMPTY_STATE_SET:[I

    goto/16 :goto_3

    .line 1297
    :cond_9
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    mul-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v3, v7

    goto :goto_4

    .line 1306
    :cond_a
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1307
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1308
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    .line 1309
    const/4 v9, 0x0

    .line 1308
    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_5
.end method


# virtual methods
.method public ColorBrightness(I)I
    .locals 7
    .param p1, "color"    # I

    .prologue
    .line 1910
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    mul-int/2addr v1, v2

    int-to-double v1, v1

    const-wide v3, 0x3fced916872b020cL    # 0.241

    mul-double/2addr v1, v3

    .line 1911
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    mul-int/2addr v3, v4

    int-to-double v3, v3

    const-wide v5, 0x3fe61cac083126e9L    # 0.691

    mul-double/2addr v3, v5

    .line 1910
    add-double/2addr v1, v3

    .line 1912
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 1913
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 1911
    mul-int/2addr v3, v4

    int-to-double v3, v3

    .line 1913
    const-wide v5, 0x3fb16872b020c49cL    # 0.068

    .line 1911
    mul-double/2addr v3, v5

    .line 1910
    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 1914
    .local v0, "Brightness":I
    return v0
.end method

.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 806
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 809
    :cond_0
    return-object p1
.end method

.method public closing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1871
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1872
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelAllMessages()V

    .line 1874
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    .line 1875
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1877
    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1879
    :cond_0
    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mCanvas:Landroid/graphics/Canvas;

    .line 1880
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1881
    return-void
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    return-object v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 1689
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPointerCount:I

    return v0
.end method

.method public getSymbolColorScheme()I
    .locals 1

    .prologue
    .line 768
    sget v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSymbolColorScheme:I

    return v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1902
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    .line 1903
    const/4 v0, 0x1

    .line 1905
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDistinctMultitouch()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    return v0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1325
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDrawPending:Z

    .line 1327
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidate()V

    .line 1328
    return-void
.end method

.method public invalidateKey(Landroid/inputmethodservice/Keyboard$Key;)V
    .locals 6
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 1340
    if-nez p1, :cond_0

    .line 1352
    :goto_0
    return-void

    .line 1342
    :cond_0
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 1345
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 1346
    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    .line 1347
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1345
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1348
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onBufferDraw()V

    .line 1349
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 1350
    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v3, v4

    .line 1351
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 1349
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidate(IIII)V

    goto :goto_0
.end method

.method public isColorGray(I)Z
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/16 v5, 0xa

    .line 1919
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 1920
    .local v2, "R":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 1921
    .local v1, "G":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 1922
    .local v0, "B":I
    add-int v4, v2, v1

    add-int/2addr v4, v0

    div-int/lit8 v3, v4, 0x3

    .line 1923
    .local v3, "avrg":I
    sub-int v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v5, :cond_0

    sub-int v4, v1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v5, :cond_0

    .line 1924
    sub-int v4, v0, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    .line 1923
    goto :goto_0
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isInSlidingKeyInput()Z

    move-result v0

    .line 1684
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->isInSlidingKeyInput()Z

    move-result v0

    goto :goto_0
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyDetector;->isProximityCorrectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    .line 727
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1885
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1886
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->closing()V

    .line 1888
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 868
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 869
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onBufferDraw()V

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 873
    return-void
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 19
    .param p1, "popupKey"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 1487
    move-object/from16 v0, p1

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-nez v3, :cond_0

    .line 1488
    const/4 v3, 0x0

    .line 1586
    :goto_0
    return v3

    .line 1490
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1491
    .local v10, "container":Landroid/view/View;
    if-nez v10, :cond_1

    .line 1492
    invoke-direct/range {p0 .. p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->inflateMiniKeyboardContainer(Landroid/inputmethodservice/Keyboard$Key;)Landroid/view/View;

    move-result-object v10

    .line 1493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    :cond_1
    const v3, 0x7f080014

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    .line 1496
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    .line 1498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    if-nez v3, :cond_2

    .line 1499
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    .line 1500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getLocationInWindow([I)V

    .line 1516
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v14

    .line 1517
    .local v14, "miniKeys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    iget v13, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 1519
    .local v13, "miniKeyWidth":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1520
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->editPopularDomains(Ljava/util/List;)V

    .line 1525
    :cond_3
    move-object/from16 v0, p1

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 1536
    invoke-static/range {p1 .. p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->hasMultiplePopupChars(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v12

    .line 1538
    .local v12, "isNumberAtLeftmost":Z
    move-object/from16 v0, p1

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int v15, v3, v4

    .line 1539
    .local v15, "popupX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v15, v3

    .line 1541
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    div-int/lit8 v3, v3, 0x2

    if-ge v15, v3, :cond_6

    .line 1542
    move-object/from16 v0, p1

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    sub-int/2addr v3, v13

    add-int/2addr v15, v3

    .line 1544
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v15, v3

    .line 1550
    :goto_2
    move-object/from16 v0, p1

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int v16, v3, v4

    .line 1551
    .local v16, "popupY":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v3

    add-int v16, v16, v3

    .line 1552
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v16, v16, v3

    .line 1553
    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int v16, v16, v3

    .line 1554
    move/from16 v17, v15

    .line 1555
    .local v17, "x":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowPreview:Z

    if-eqz v3, :cond_7

    invoke-static {v14}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isOneRowKeys(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupPreviewDisplayedY:I

    move/from16 v18, v0

    .line 1558
    .local v18, "y":I
    :goto_3
    move/from16 v9, v17

    .line 1559
    .local v9, "adjustedX":I
    if-gez v17, :cond_8

    .line 1560
    const/4 v9, 0x0

    .line 1564
    :cond_4
    :goto_4
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v9

    .line 1565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v3, v4

    .line 1564
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    .line 1566
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int v3, v3, v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    .line 1567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    move/from16 v0, v18

    invoke-virtual {v3, v9, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setPopupOffset(II)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isShifted()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setShifted(Z)Z

    .line 1570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setPreviewEnabled(Z)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1577
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1578
    .local v7, "eventTime":J
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopupTime:J

    .line 1580
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    .line 1581
    move-object/from16 v0, p1

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    move-object/from16 v3, p0

    .line 1579
    invoke-direct/range {v3 .. v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object v11

    .line 1582
    .local v11, "downEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v3, v11}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1583
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 1585
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 1586
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1518
    .end local v7    # "eventTime":J
    .end local v9    # "adjustedX":I
    .end local v11    # "downEvent":Landroid/view/MotionEvent;
    .end local v12    # "isNumberAtLeftmost":Z
    .end local v13    # "miniKeyWidth":I
    .end local v15    # "popupX":I
    .end local v16    # "popupY":I
    .end local v17    # "x":I
    .end local v18    # "y":I
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1546
    .restart local v12    # "isNumberAtLeftmost":Z
    .restart local v13    # "miniKeyWidth":I
    .restart local v15    # "popupX":I
    :cond_6
    add-int/2addr v15, v13

    .line 1547
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v15, v3

    .line 1548
    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v15, v3

    goto/16 :goto_2

    .restart local v16    # "popupY":I
    .restart local v17    # "x":I
    :cond_7
    move/from16 v18, v16

    .line 1556
    goto/16 :goto_3

    .line 1561
    .restart local v9    # "adjustedX":I
    .restart local v18    # "y":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    move/from16 v0, v17

    if-le v0, v3, :cond_4

    .line 1562
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v9, v3, v4

    goto/16 :goto_4
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_0

    .line 816
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 817
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 816
    invoke-virtual {p0, v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setMeasuredDimension(II)V

    .line 827
    :goto_0
    return-void

    .line 819
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 820
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingRight()I

    move-result v2

    .line 819
    add-int v0, v1, v2

    .line 821
    .local v0, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 822
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 824
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 825
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 824
    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 860
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    .line 864
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1694
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1695
    .local v3, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v23

    .line 1696
    .local v23, "pointerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPointerCount:I

    move/from16 v22, v0

    .line 1697
    .local v22, "oldPointerCount":I
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPointerCount:I

    .line 1706
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v22

    if-le v0, v2, :cond_0

    .line 1707
    const/4 v2, 0x1

    .line 1813
    :goto_0
    return v2

    .line 1711
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeTracker:Lcom/android/inputmethod/latin/SwipeTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_1

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1717
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 1718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 1719
    const/4 v2, 0x1

    goto :goto_0

    .line 1722
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 1723
    .local v6, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    .line 1724
    .local v20, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 1725
    .local v19, "id":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v10, v2

    .line 1726
    .local v10, "x":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v11, v2

    .line 1731
    .local v11, "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    if-eqz v2, :cond_3

    .line 1733
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardTrackerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 1734
    .local v21, "miniKeyboardPointerIndex":I
    if-ltz v21, :cond_2

    .line 1735
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 1737
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v4, v2

    .line 1739
    .local v4, "miniKeyboardX":I
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v5, v2

    .local v5, "miniKeyboardY":I
    move-object/from16 v2, p0

    .line 1740
    invoke-direct/range {v2 .. v7}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object v24

    .line 1742
    .local v24, "translated":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1743
    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->recycle()V

    .line 1745
    .end local v4    # "miniKeyboardX":I
    .end local v5    # "miniKeyboardY":I
    .end local v24    # "translated":Landroid/view/MotionEvent;
    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1748
    .end local v21    # "miniKeyboardPointerIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->isInKeyRepeat()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1751
    const/4 v2, 0x2

    if-ne v3, v2, :cond_4

    .line 1752
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1754
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPointerTracker(I)Lcom/android/inputmethod/latin/PointerTracker;

    move-result-object v8

    .line 1758
    .local v8, "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    const/4 v2, 0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_5

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/PointerTracker;->isModifier()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyRepeatTimer()V

    .line 1769
    .end local v8    # "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    if-nez v2, :cond_9

    .line 1771
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPointerTracker(I)Lcom/android/inputmethod/latin/PointerTracker;

    move-result-object v8

    .line 1772
    .restart local v8    # "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_6

    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_6

    .line 1775
    invoke-virtual {v8, v10, v11, v6, v7}, Lcom/android/inputmethod/latin/PointerTracker;->onDownEvent(IIJ)V

    .line 1787
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1776
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_7

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    .line 1779
    invoke-virtual {v8}, Lcom/android/inputmethod/latin/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/PointerTracker;->getLastY()I

    move-result v9

    invoke-virtual {v8, v2, v9, v6, v7}, Lcom/android/inputmethod/latin/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_1

    .line 1781
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_8

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_8

    move v9, v3

    move-wide v12, v6

    .line 1782
    invoke-virtual/range {v8 .. v13}, Lcom/android/inputmethod/latin/PointerTracker;->onTouchEvent(IIIJ)V

    goto :goto_1

    .line 1784
    :cond_8
    const-string v2, "LatinKeyboardBaseView"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Unknown touch panel behavior: pointer count is "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1785
    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " (old "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ")"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1784
    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1790
    .end local v8    # "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    :cond_9
    const/4 v2, 0x2

    if-ne v3, v2, :cond_b

    .line 1791
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    .line 1813
    .end local v18    # "i":I
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1792
    .restart local v18    # "i":I
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPointerTracker(I)Lcom/android/inputmethod/latin/PointerTracker;

    move-result-object v8

    .line 1793
    .restart local v8    # "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v2, v9, v6, v7}, Lcom/android/inputmethod/latin/PointerTracker;->onMoveEvent(IIJ)V

    .line 1791
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1797
    .end local v8    # "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    .end local v18    # "i":I
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPointerTracker(I)Lcom/android/inputmethod/latin/PointerTracker;

    move-result-object v8

    .line 1798
    .restart local v8    # "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    move-object/from16 v12, p0

    move-object v13, v8

    move v14, v10

    move v15, v11

    move-wide/from16 v16, v6

    .line 1801
    invoke-direct/range {v12 .. v17}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onDownEvent(Lcom/android/inputmethod/latin/PointerTracker;IIJ)V

    goto :goto_3

    :pswitch_2
    move-object/from16 v12, p0

    move-object v13, v8

    move v14, v10

    move v15, v11

    move-wide/from16 v16, v6

    .line 1805
    invoke-direct/range {v12 .. v17}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onUpEvent(Lcom/android/inputmethod/latin/PointerTracker;IIJ)V

    goto :goto_3

    :pswitch_3
    move-object/from16 v12, p0

    move-object v13, v8

    move v14, v10

    move v15, v11

    move-wide/from16 v16, v6

    .line 1808
    invoke-direct/range {v12 .. v17}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onCancelEvent(Lcom/android/inputmethod/latin/PointerTracker;IIJ)V

    goto :goto_3

    .line 1798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 5
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 656
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v1, :cond_0

    .line 657
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 661
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 662
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 663
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinImeLogger;->onSetKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 664
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    .line 665
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mVerticalCorrection:F

    add-float/2addr v3, v4

    .line 664
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/inputmethod/latin/KeyDetector;->setKeyboard(Landroid/inputmethodservice/Keyboard;FF)[Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 666
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 667
    const v2, 0x7f0c0006

    .line 666
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardVerticalGap:I

    .line 668
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 671
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->requestLayout()V

    .line 673
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardChanged:Z

    .line 674
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 675
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    .line 676
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 677
    return-void

    .line 668
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/PointerTracker;

    .line 669
    .local v0, "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    invoke-virtual {v0, v2, v3}, Lcom/android/inputmethod/latin/PointerTracker;->setKeyboard([Landroid/inputmethodservice/Keyboard$Key;F)V

    goto :goto_0
.end method

.method public setLongPressDelay(I)V
    .locals 3
    .param p1, "longPressDelay"    # I

    .prologue
    .line 760
    iput p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mLongPressDelay:I

    .line 762
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 765
    return-void

    .line 762
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/PointerTracker;

    .line 763
    .local v0, "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mLongPressDelay:I

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/PointerTracker;->setLongPressKeyTimeout(I)V

    goto :goto_0
.end method

.method public setOnKeyboardActionListener(Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 632
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 635
    return-void

    .line 632
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/PointerTracker;

    .line 633
    .local v0, "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->setOnKeyboardActionListener(Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    goto :goto_0
.end method

.method public setPopupOffset(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 780
    iput p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupPreviewOffsetX:I

    .line 781
    iput p2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupPreviewOffsetY:I

    .line 782
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 783
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    .line 777
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .param p1, "previewEnabled"    # Z

    .prologue
    .line 740
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowPreview:Z

    .line 741
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/KeyDetector;->setProximityCorrectionEnabled(Z)V

    .line 795
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 710
    const/4 v0, 0x1

    .line 713
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showPreview(ILcom/android/inputmethod/latin/PointerTracker;)V
    .locals 7
    .param p1, "keyIndex"    # I
    .param p2, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1202
    iget v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 1203
    .local v3, "oldKeyIndex":I
    iput p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 1204
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    instance-of v4, v4, Lcom/android/inputmethod/latin/LatinKeyboard;

    if-eqz v4, :cond_3

    .line 1205
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    check-cast v4, Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinKeyboard;->isLanguageSwitchEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v6

    .line 1211
    .local v2, "isLanguageSwitchEnabled":Z
    :goto_0
    if-eqz p2, :cond_4

    .line 1212
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/latin/PointerTracker;->isSpaceKey(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1213
    invoke-virtual {p2, v3}, Lcom/android/inputmethod/latin/PointerTracker;->isSpaceKey(I)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v5

    .line 1215
    .local v1, "hidePreviewOrShowSpaceKeyPreview":Z
    :goto_1
    sget-boolean v4, Lcom/android/inputmethod/latin/DictionaryEditor;->mNoPopupOnSpace:Z

    if-nez v4, :cond_5

    if-eqz p2, :cond_5

    .line 1216
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/latin/PointerTracker;->isSpaceKey(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2, v3}, Lcom/android/inputmethod/latin/PointerTracker;->isSpaceKey(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v6

    .line 1220
    .local v0, "ShowSpaceKeyPreview":Z
    :goto_2
    if-ne v3, p1, :cond_0

    if-eqz v0, :cond_2

    .line 1221
    :cond_0
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowPreview:Z

    if-nez v4, :cond_1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 1222
    :cond_1
    const/4 v4, -0x1

    if-ne p1, v4, :cond_6

    .line 1223
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 1224
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    iget v5, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDelayAfterPreview:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->dismissPreview(J)V

    .line 1229
    :cond_2
    :goto_3
    return-void

    .end local v0    # "ShowSpaceKeyPreview":Z
    .end local v1    # "hidePreviewOrShowSpaceKeyPreview":Z
    .end local v2    # "isLanguageSwitchEnabled":Z
    :cond_3
    move v2, v5

    .line 1205
    goto :goto_0

    .restart local v2    # "isLanguageSwitchEnabled":Z
    :cond_4
    move v1, v6

    .line 1213
    goto :goto_1

    .restart local v1    # "hidePreviewOrShowSpaceKeyPreview":Z
    :cond_5
    move v0, v5

    .line 1216
    goto :goto_2

    .line 1225
    .restart local v0    # "ShowSpaceKeyPreview":Z
    :cond_6
    if-eqz p2, :cond_2

    if-nez v0, :cond_7

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowPreview:Z

    if-eqz v4, :cond_2

    invoke-virtual {p2, p1}, Lcom/android/inputmethod/latin/PointerTracker;->isSpaceKey(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1226
    :cond_7
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    iget v5, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDelayBeforePreview:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->popupPreview(JILcom/android/inputmethod/latin/PointerTracker;)V

    goto :goto_3
.end method

.method protected swipeDown()V
    .locals 1

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeDown()V

    .line 1868
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeLeft()V

    .line 1860
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeRight()V

    .line 1856
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeUp()V

    .line 1864
    return-void
.end method
