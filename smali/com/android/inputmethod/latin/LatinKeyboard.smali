.class public Lcom/android/inputmethod/latin/LatinKeyboard;
.super Landroid/inputmethodservice/Keyboard;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinKeyboard$HardKeyboardAction;,
        Lcom/android/inputmethod/latin/LatinKeyboard$HardKeyboardTranslator;,
        Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;,
        Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;,
        Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;
    }
.end annotation


# static fields
.field private static final DEBUG_PREFERRED_LETTER:Z = false

.field private static final MINIMUM_SCALE_OF_LANGUAGE_NAME:F = 0.8f

.field private static final OPACITY_FULLY_OPAQUE:I = 0xff

.field private static final OVERLAP_PERCENTAGE_HIGH_PROB:F = 0.85f

.field private static final OVERLAP_PERCENTAGE_LOW_PROB:F = 0.7f

.field private static final SHIFT_LOCKED:I = 0x2

.field private static final SHIFT_OFF:I = 0x0

.field private static final SHIFT_ON:I = 0x1

.field private static final SPACEBAR_DRAG_THRESHOLD:F = 0.5f

.field private static final SPACEBAR_LANGUAGE_BASELINE:F = 0.6f

.field private static final SPACEBAR_POPUP_MIN_RATIO:F = 0.4f

.field private static final SPACE_LED_LENGTH_PERCENT:I = 0x50

.field private static final TAG:Ljava/lang/String; = "LatinKeyboard"

.field public static mArrowsHight:I

.field public static mBottomPadding:I

.field public static mHintColor:I

.field public static mKeyHight:I

.field public static mRowGap:I

.field public static mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

.field public static mTextSize:I

.field public static mode_arrows:Z

.field static sMode:I

.field private static sSpacebarVerticalCorrection:I


# instance fields
.field private final NUMBER_HINT_COUNT:I

.field private m123Key:Landroid/inputmethodservice/Keyboard$Key;

.field private m123Label:Ljava/lang/CharSequence;

.field private m123MicIcon:Landroid/graphics/drawable/Drawable;

.field private m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private final mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

.field private final mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentlyInSpace:Z

.field private mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mF1Key:Landroid/inputmethodservice/Keyboard$Key;

.field private mHasVoiceButton:Z

.field private final mHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mIsAlphaKeyboard:Z

.field private mIsBlackSym:Z

.field private mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

.field private mLastY:I

.field private mLastx:I

.field private mLocale:Ljava/util/Locale;

.field private mMicIcon:Landroid/graphics/drawable/Drawable;

.field private mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mMode:I

.field private mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

.field private mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mOldShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mPrefDistance:I

.field private mPrefLetter:I

.field private mPrefLetterFrequencies:[I

.field private mPrefLetterX:I

.field private mPrefLetterY:I

.field private mProximityInfo:Lcom/android/inputmethod/latin/ProximityInfo;

.field private final mRes:Landroid/content/res/Resources;

.field private mRowHight:I

.field private mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftState:I

.field private mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

.field private mSpaceDragLastDiffX:I

.field private mSpaceDragLastDiffY:I

.field private mSpaceDragStartX:I

.field private mSpaceDragStartY:I

.field private mSpaceIcon:Landroid/graphics/drawable/Drawable;

.field private mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

.field private final mSpaceKeyIndexArray:[I

.field private mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mT9key:Landroid/inputmethodservice/Keyboard$Key;

.field public final mTouchPositionCorrection:Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;

.field private final mVerticalGap:I

.field private mVoiceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mode_arrows:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;-><init>(Landroid/content/Context;II)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "mode"    # I

    .prologue
    const v6, 0x7f050025

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-static {p1, p3}, Lcom/android/inputmethod/latin/LatinKeyboard;->a(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 75
    iput v5, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->NUMBER_HINT_COUNT:I

    .line 77
    new-array v0, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    .line 143
    iput v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    .line 258
    new-instance v0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mTouchPositionCorrection:Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 170
    .local v10, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mContext:Landroid/content/Context;

    .line 171
    iput p3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMode:I

    .line 172
    iput-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 173
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRowHight:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->setKeyHeight(I)V

    .line 175
    const v0, 0x7f0200bf

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 176
    const v0, 0x7f0200a6

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 177
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 178
    const v0, 0x7f0200c0

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 179
    const v0, 0x7f0200c1

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    .line 180
    const v0, 0x7f0200a7

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 181
    const v0, 0x7f0200ab

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    .line 182
    const v0, 0x7f02009f

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 183
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 184
    const v0, 0x7f0200a9

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    .line 185
    const v0, 0x7f0200aa

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    .line 186
    const v0, 0x7f020097

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    .line 187
    const v0, 0x7f02009a

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 188
    const v0, 0x7f020070

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    .line 189
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 191
    const v0, 0x7f0c000c

    .line 190
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/android/inputmethod/latin/LatinKeyboard;->sSpacebarVerticalCorrection:I

    .line 192
    const v0, 0x7f05001b

    if-eq p2, v0, :cond_0

    .line 193
    const v0, 0x7f050021

    if-eq p2, v0, :cond_0

    .line 194
    const v0, 0x7f050005

    if-eq p2, v0, :cond_0

    .line 195
    const v0, 0x7f050020

    if-eq p2, v0, :cond_0

    .line 196
    const v0, 0x7f05001f

    if-eq p2, v0, :cond_0

    .line 197
    const v0, 0x7f05001c

    if-eq p2, v0, :cond_0

    .line 198
    const v0, 0x7f050003

    if-eq p2, v0, :cond_0

    .line 199
    const v0, 0x7f05000b

    if-eq p2, v0, :cond_0

    .line 200
    const v0, 0x7f05001d

    if-eq p2, v0, :cond_0

    .line 201
    const v0, 0x7f05002f

    if-eq p2, v0, :cond_0

    .line 202
    const v0, 0x7f050006

    if-eq p2, v0, :cond_0

    .line 203
    const v0, 0x7f050009

    if-eq p2, v0, :cond_0

    .line 204
    const v0, 0x7f05000a

    if-eq p2, v0, :cond_0

    .line 205
    const v0, 0x7f050007

    if-eq p2, v0, :cond_0

    .line 206
    const v0, 0x7f050008

    if-eq p2, v0, :cond_0

    .line 207
    if-eq p2, v6, :cond_0

    .line 208
    if-eq p2, v6, :cond_0

    .line 209
    const v0, 0x7f050026

    if-eq p2, v0, :cond_0

    .line 210
    const v0, 0x7f050023

    if-eq p2, v0, :cond_0

    .line 211
    const v0, 0x7f050024

    if-eq p2, v0, :cond_0

    .line 212
    const v0, 0x7f05001e

    if-eq p2, v0, :cond_0

    .line 213
    const v0, 0x7f050022

    if-eq p2, v0, :cond_0

    .line 214
    const v0, 0x7f050027

    if-eq p2, v0, :cond_0

    .line 215
    const v0, 0x7f05002b

    if-eq p2, v0, :cond_0

    .line 216
    const v0, 0x7f050028

    if-eq p2, v0, :cond_0

    .line 217
    const v0, 0x7f050029

    if-eq p2, v0, :cond_0

    move v0, v3

    .line 192
    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsAlphaKeyboard:Z

    .line 220
    new-array v0, v4, [I

    const/16 v5, 0x20

    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinKeyboard;->indexOf(I)I

    move-result v5

    aput v5, v0, v3

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKeyIndexArray:[I

    .line 221
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->initializeNumberHintResources(Landroid/content/Context;)V

    .line 223
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->getVerticalGap()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mVerticalGap:I

    .line 224
    const/16 v1, 0x20

    .line 225
    .local v1, "GRID_WIDTH":I
    const/16 v2, 0x10

    .line 226
    .local v2, "GRID_HEIGHT":I
    const/16 v0, 0x9

    new-array v9, v0, [Ljava/lang/String;

    .line 228
    const-string v0, "0.0038756"

    aput-object v0, v9, v3

    .line 229
    const-string v0, "-0.0005677"

    aput-object v0, v9, v4

    const/4 v0, 0x2

    .line 230
    const-string v3, "0.1577026"

    aput-object v3, v9, v0

    const/4 v0, 0x3

    .line 233
    const-string v3, "-0.0236678"

    aput-object v3, v9, v0

    const/4 v0, 0x4

    .line 234
    const-string v3, "0.0381731"

    aput-object v3, v9, v0

    const/4 v0, 0x5

    .line 235
    const-string v3, "0.1529972"

    aput-object v3, v9, v0

    const/4 v0, 0x6

    .line 238
    const-string v3, "-0.0086827"

    aput-object v3, v9, v0

    const/4 v0, 0x7

    .line 239
    const-string v3, "0.0880847"

    aput-object v3, v9, v0

    const/16 v0, 0x8

    .line 240
    const-string v3, "0.1522819"

    aput-object v3, v9, v0

    .line 246
    .local v9, "data":[Ljava/lang/String;
    new-instance v0, Lcom/android/inputmethod/latin/ProximityInfo;

    .line 247
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getMinWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getHeight()I

    move-result v4

    .line 248
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getKeyWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getKeyHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mTouchPositionCorrection:Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;

    invoke-direct/range {v0 .. v8}, Lcom/android/inputmethod/latin/ProximityInfo;-><init>(IIIIIILjava/util/List;Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;)V

    .line 246
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mProximityInfo:Lcom/android/inputmethod/latin/ProximityInfo;

    .line 249
    return-void

    .end local v1    # "GRID_WIDTH":I
    .end local v2    # "GRID_HEIGHT":I
    .end local v9    # "data":[Ljava/lang/String;
    :cond_0
    move v0, v4

    .line 217
    goto :goto_0
.end method

.method static a(Landroid/content/Context;I)Landroid/content/Context;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 164
    sput p1, Lcom/android/inputmethod/latin/LatinKeyboard;->sMode:I

    .line 165
    return-object p0
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/LatinKeyboard;II)I
    .locals 1

    .prologue
    .line 1124
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboard;->getTextSizeFromTheme(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/inputmethod/latin/LatinKeyboard;)Lcom/android/inputmethod/latin/LanguageSwitcher;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    return-object v0
.end method

.method private distanceFrom(Landroid/inputmethodservice/Keyboard$Key;II)I
    .locals 2
    .param p1, "k"    # Landroid/inputmethodservice/Keyboard$Key;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1094
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    if-le p3, v0, :cond_0

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_0

    .line 1095
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1097
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private drawSpaceBar(IZZ)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "opacity"    # I
    .param p2, "isAutoCompletion"    # Z
    .param p3, "isBlack"    # Z

    .prologue
    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget v6, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 783
    .local v6, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 784
    .local v7, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 785
    .local v12, "buffer":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 786
    .local v13, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLocale:Ljava/util/Locale;

    if-eqz v3, :cond_1

    .line 790
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 791
    .local v2, "paint":Landroid/graphics/Paint;
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 792
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 793
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 795
    const/4 v10, 0x1

    .line 796
    .local v10, "allowVariableTextSize":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v3

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    .line 798
    const v8, 0x1030046

    const/16 v9, 0xe

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/inputmethod/latin/LatinKeyboard;->getTextSizeFromTheme(II)I

    move-result v8

    int-to-float v8, v8

    .line 799
    const/4 v9, 0x1

    .line 796
    invoke-static/range {v2 .. v9}, Lcom/android/inputmethod/latin/LatinKeyboard;->layoutSpaceBar(Landroid/graphics/Paint;Ljava/util/Locale;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFZ)Ljava/lang/String;

    move-result-object v17

    .line 802
    .local v17, "language":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    if-eqz p3, :cond_2

    .line 803
    const v3, 0x7f0a0006

    .line 802
    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    .line 805
    .local v18, "shadowColor":I
    int-to-float v3, v7

    const v4, 0x3f19999a    # 0.6f

    mul-float v11, v3, v4

    .line 806
    .local v11, "baseline":F
    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v14

    .line 808
    .local v14, "descent":F
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 809
    div-int/lit8 v3, v6, 0x2

    int-to-float v3, v3

    sub-float v4, v11, v14

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 810
    if-eqz p3, :cond_3

    .line 812
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 814
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 821
    :goto_1
    sget-boolean v4, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    sget-boolean v3, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomSuggestionColors:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    :goto_2
    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 823
    const v3, -0x7f000001

    sget-object v4, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget v4, v4, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->text_color2:I

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 824
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v8, -0x7f000001

    sget-object v9, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget v9, v9, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->shadow_color2:I

    and-int/2addr v8, v9

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget v4, v4, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->text_color2:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget v4, v4, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->text_color2:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 829
    :cond_0
    div-int/lit8 v3, v6, 0x2

    int-to-float v3, v3

    sub-float v4, v11, v14

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 839
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v10    # "allowVariableTextSize":Z
    .end local v11    # "baseline":F
    .end local v14    # "descent":F
    .end local v17    # "language":Ljava/lang/String;
    .end local v18    # "shadowColor":I
    :cond_1
    if-eqz p2, :cond_5

    .line 840
    mul-int/lit8 v3, v6, 0x50

    div-int/lit8 v16, v3, 0x64

    .line 841
    .local v16, "iconWidth":I
    sget-object v3, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 842
    .local v15, "iconHeight":I
    sub-int v3, v6, v16

    div-int/lit8 v19, v3, 0x2

    .line 843
    .local v19, "x":I
    sub-int v20, v7, v15

    .line 844
    .local v20, "y":I
    sget-object v3, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/inputmethod/latin/CandidateView;->getColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 845
    sget-object v3, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    add-int v4, v19, v16

    add-int v5, v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 846
    sget-object v3, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 855
    :goto_3
    return-object v12

    .line 804
    .end local v15    # "iconHeight":I
    .end local v16    # "iconWidth":I
    .end local v19    # "x":I
    .end local v20    # "y":I
    .restart local v2    # "paint":Landroid/graphics/Paint;
    .restart local v10    # "allowVariableTextSize":Z
    .restart local v17    # "language":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0a0005

    goto/16 :goto_0

    .line 819
    .restart local v11    # "baseline":F
    .restart local v14    # "descent":F
    .restart local v18    # "shadowColor":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 821
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 848
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v10    # "allowVariableTextSize":Z
    .end local v11    # "baseline":F
    .end local v14    # "descent":F
    .end local v17    # "language":Ljava/lang/String;
    .end local v18    # "shadowColor":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 849
    .restart local v16    # "iconWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 850
    .restart local v15    # "iconHeight":I
    sub-int v3, v6, v16

    div-int/lit8 v19, v3, 0x2

    .line 851
    .restart local v19    # "x":I
    sub-int v20, v7, v15

    .line 852
    .restart local v20    # "y":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    add-int v4, v19, v16

    add-int v5, v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3
.end method

.method private drawSynthesizedSettingsHintImage(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "mainIcon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "hintIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 711
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 712
    :cond_0
    const/4 v0, 0x0

    .line 733
    :goto_0
    return-object v0

    .line 713
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 714
    .local v4, "hintIconPadding":Landroid/graphics/Rect;
    invoke-virtual {p4, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 715
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 716
    .local v0, "buffer":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 717
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0a0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 721
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p1

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 722
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 721
    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 723
    .local v2, "drawableX":I
    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 724
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 723
    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 725
    .local v3, "drawableY":I
    invoke-direct {p0, p3}, Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 726
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 727
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 728
    neg-int v5, v2

    int-to-float v5, v5

    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 731
    invoke-virtual {p4, v7, v7, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 732
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getTextSizeFromTheme(II)I
    .locals 7
    .param p1, "style"    # I
    .param p2, "defValue"    # I

    .prologue
    const/4 v6, 0x0

    .line 1126
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1127
    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010095

    aput v5, v4, v6

    .line 1126
    invoke-virtual {v3, p1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1129
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1134
    .local v2, "textSize":I
    :goto_0
    return v2

    .line 1130
    .end local v2    # "textSize":I
    :catch_0
    move-exception v1

    .line 1132
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    move v2, p2

    .restart local v2    # "textSize":I
    goto :goto_0
.end method

.method private static getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 703
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 704
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 705
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public static hasPuncOrSmileysPopup(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 2
    .param p0, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 659
    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v1, 0x7f050036

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v1, 0x7f050037

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v1, 0x7f050039

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private inPrefList(I[I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "pref"    # [I

    .prologue
    const/4 v0, 0x0

    .line 1089
    array-length v1, p2

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    aget v1, p2, p1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1090
    :cond_0
    return v0
.end method

.method private indexOf(I)I
    .locals 5
    .param p1, "code"    # I

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 1117
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1118
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 1121
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_0
    return v1

    .line 1119
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-eq v3, p1, :cond_0

    .line 1118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initializeNumberHintResources(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 257
    .local v0, "res":Landroid/content/res/Resources;
    return-void
.end method

.method private static layoutSpaceBar(Landroid/graphics/Paint;Ljava/util/Locale;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFZ)Ljava/lang/String;
    .locals 16
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "lArrow"    # Landroid/graphics/drawable/Drawable;
    .param p3, "rArrow"    # Landroid/graphics/drawable/Drawable;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "origTextSize"    # F
    .param p7, "allowVariableTextSize"    # Z

    .prologue
    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    int-to-float v3, v13

    .line 741
    .local v3, "arrowWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    int-to-float v2, v13

    .line 742
    .local v2, "arrowHeight":F
    move/from16 v0, p4

    int-to-float v13, v0

    add-float v14, v3, v3

    sub-float v7, v13, v14

    .line 743
    .local v7, "maxTextWidth":F
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 746
    .local v5, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/inputmethod/latin/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 747
    .local v6, "language":Ljava/lang/String;
    const-string v13, "\u0639\u0631\u0628\u064a."

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    sget-boolean v13, Lcom/android/inputmethod/latin/DictionaryEditor;->mRTLEnabled:Z

    if-eqz v13, :cond_0

    .line 748
    const-string v6, "\u0639\u0631\u0628\u064a."

    .line 749
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-static {v0, v6, v1, v5}, Lcom/android/inputmethod/latin/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v10

    .line 751
    .local v10, "textWidth":I
    int-to-float v13, v10

    div-float v13, v7, v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    mul-float v9, p6, v13

    .line 754
    .local v9, "textSize":F
    if-eqz p7, :cond_3

    .line 755
    move-object/from16 v0, p0

    invoke-static {v0, v6, v9, v5}, Lcom/android/inputmethod/latin/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v10

    .line 757
    div-float v13, v9, p6

    const v14, 0x3f4ccccd    # 0.8f

    cmpg-float v13, v13, v14

    if-ltz v13, :cond_2

    .line 758
    int-to-float v13, v10

    cmpl-float v13, v13, v7

    if-gtz v13, :cond_2

    const/4 v12, 0x0

    .line 763
    .local v12, "useShortName":Z
    :goto_0
    if-eqz v12, :cond_1

    .line 764
    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/inputmethod/latin/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 765
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-static {v0, v6, v1, v5}, Lcom/android/inputmethod/latin/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v10

    .line 766
    int-to-float v13, v10

    div-float v13, v7, v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    mul-float v9, p6, v13

    .line 768
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 771
    move/from16 v0, p5

    int-to-float v13, v0

    const v14, 0x3f19999a    # 0.6f

    mul-float v4, v13, v14

    .line 772
    .local v4, "baseline":F
    sub-float v13, v4, v2

    float-to-int v11, v13

    .line 773
    .local v11, "top":I
    sub-int v13, p4, v10

    div-int/lit8 v13, v13, 0x2

    int-to-float v8, v13

    .line 774
    .local v8, "remains":F
    sub-float v13, v8, v3

    float-to-int v13, v13

    float-to-int v14, v8

    float-to-int v15, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v11, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 775
    int-to-float v13, v10

    add-float/2addr v13, v8

    float-to-int v13, v13

    int-to-float v14, v10

    add-float/2addr v14, v8

    add-float/2addr v14, v3

    float-to-int v14, v14

    .line 776
    float-to-int v15, v4

    .line 775
    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v11, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 778
    return-object v6

    .line 758
    .end local v4    # "baseline":F
    .end local v8    # "remains":F
    .end local v11    # "top":I
    .end local v12    # "useShortName":Z
    :cond_2
    const/4 v12, 0x1

    goto :goto_0

    .line 760
    :cond_3
    int-to-float v13, v10

    cmpl-float v13, v13, v7

    if-lez v13, :cond_4

    const/4 v12, 0x1

    .line 761
    .restart local v12    # "useShortName":Z
    :goto_1
    move/from16 v9, p6

    goto :goto_0

    .line 760
    .end local v12    # "useShortName":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_1
.end method

.method private setDefaultBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 571
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 572
    return-void
.end method

.method private setMicF1Key(Landroid/inputmethodservice/Keyboard$Key;)V
    .locals 6
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 634
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 635
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/inputmethod/latin/LatinKeyboard;->drawSynthesizedSettingsHintImage(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 634
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 637
    .local v0, "micWithSettingsHintDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 638
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x66

    aput v3, v1, v2

    iput-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 639
    const v1, 0x7f050035

    iput v1, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 640
    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 641
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 642
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 643
    return-void
.end method

.method private setNonMicF1Key(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "popupResId"    # I

    .prologue
    const/4 v2, 0x0

    .line 646
    iput-object p2, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 647
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput v1, v0, v2

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 648
    iput p3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 649
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 650
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 651
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 652
    return-void
.end method

.method private update123Key()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 587
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsAlphaKeyboard:Z

    if-eqz v0, :cond_0

    .line 588
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mVoiceEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHasVoiceButton:Z

    if-nez v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 590
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 591
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 594
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 595
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Label:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private updateDynamicKeys()V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->update123Key()V

    .line 582
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateF1Key()V

    .line 583
    return-void
.end method

.method private updateF1Key()V
    .locals 4

    .prologue
    const v3, 0x7f050033

    .line 602
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    if-nez v1, :cond_0

    .line 630
    :goto_0
    return-void

    .line 604
    :cond_0
    const-string v0, ","

    .line 605
    .local v0, "comma":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    const-string v0, "\u060c"

    .line 609
    :cond_1
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsAlphaKeyboard:Z

    if-eqz v1, :cond_5

    .line 610
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 612
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    const-string v2, "/"

    const v3, 0x7f050038

    invoke-direct {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboard;->setNonMicF1Key(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0

    .line 614
    :cond_2
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 615
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    const-string v2, "@"

    const v3, 0x7f050032

    invoke-direct {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboard;->setNonMicF1Key(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0

    .line 617
    :cond_3
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mVoiceEnabled:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHasVoiceButton:Z

    if-eqz v1, :cond_4

    .line 618
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setMicF1Key(Landroid/inputmethodservice/Keyboard$Key;)V

    goto :goto_0

    .line 620
    :cond_4
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {p0, v1, v0, v3}, Lcom/android/inputmethod/latin/LatinKeyboard;->setNonMicF1Key(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0

    .line 624
    :cond_5
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mVoiceEnabled:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHasVoiceButton:Z

    if-eqz v1, :cond_6

    .line 625
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setMicF1Key(Landroid/inputmethodservice/Keyboard$Key;)V

    goto :goto_0

    .line 627
    :cond_6
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {p0, v1, v0, v3}, Lcom/android/inputmethod/latin/LatinKeyboard;->setNonMicF1Key(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateLocaleDragX(I)V
    .locals 6
    .param p1, "diff"    # I

    .prologue
    const/4 v5, 0x0

    .line 859
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    if-nez v2, :cond_0

    .line 860
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget v2, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 861
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getMinWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 860
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 862
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 863
    .local v0, "height":I
    new-instance v2, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;-><init>(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/graphics/drawable/Drawable;II)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    .line 864
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    invoke-virtual {v2, v5, v5, v1, v0}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->setBounds(IIII)V

    .line 865
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    iput-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 867
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    invoke-static {v2, p1}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->access$0(Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;I)V

    .line 868
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    .line 869
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 873
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 874
    return-void

    .line 871
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    iput-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateLocaleDragY(I)V
    .locals 6
    .param p1, "diff"    # I

    .prologue
    const/4 v5, 0x0

    .line 877
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    if-nez v2, :cond_0

    .line 878
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget v2, v2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 879
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 878
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 880
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 881
    .local v0, "height":I
    new-instance v2, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;-><init>(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/graphics/drawable/Drawable;II)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    .line 882
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    invoke-virtual {v2, v5, v5, v1, v0}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->setBounds(IIII)V

    .line 883
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    iput-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 885
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    invoke-static {v2, p1}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->access$1(Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;I)V

    .line 886
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    .line 887
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 891
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 892
    return-void

    .line 889
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    iput-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateNumberHintKeys()V
    .locals 3

    .prologue
    .line 672
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 677
    return-void

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 674
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 672
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateSpaceBarForLocale(ZZ)V
    .locals 0

    return-void
.end method


# virtual methods
.method ClearColorIcons()V
    .locals 4

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 501
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 507
    return-void

    .line 503
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v3, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 504
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 505
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 501
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    .line 318
    new-instance v0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;-><init>(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 320
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v8

    sparse-switch v1, :sswitch_data_0

    .line 341
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v1, :cond_0

    .line 344
    new-array v1, v9, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 346
    :cond_0
    const/4 v7, -0x1

    .line 347
    .local v7, "hintNumber":I
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNumberAtLeftmostPopupChar(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 348
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v7, v1, -0x30

    .line 352
    :cond_1
    :goto_1
    if-ltz v7, :cond_2

    if-gt v7, v9, :cond_2

    .line 353
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aput-object v0, v1, v7

    .line 356
    :cond_2
    return-object v0

    .line 322
    .end local v7    # "hintNumber":I
    :sswitch_0
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 325
    :sswitch_1
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 328
    :sswitch_2
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 331
    :sswitch_3
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    .line 332
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 335
    :sswitch_4
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mT9key:Landroid/inputmethodservice/Keyboard$Key;

    .line 336
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mT9key:Landroid/inputmethodservice/Keyboard$Key;

    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v2

    iput-boolean v2, v1, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    goto :goto_0

    .line 349
    .restart local v7    # "hintNumber":I
    :cond_3
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNumberAtRightmostPopupChar(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v7, v1, -0x30

    goto :goto_1

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        -0x67 -> :sswitch_1
        -0xa -> :sswitch_4
        -0x2 -> :sswitch_3
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/16 v3, 0x8

    .line 369
    new-instance v0, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V

    .line 370
    .local v0, "row":Landroid/inputmethodservice/Keyboard$Row;
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    sget v2, Lcom/android/inputmethod/latin/LatinKeyboard;->mKeyHight:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    .line 371
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRowHight:I

    .line 373
    sget-boolean v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mode_arrows:Z

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    const v2, 0x7f080031

    if-ne v1, v2, :cond_1

    .line 375
    sget v1, Lcom/android/inputmethod/latin/LatinKeyboard;->sMode:I

    iput v1, v0, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    .line 376
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    sget v2, Lcom/android/inputmethod/latin/LatinKeyboard;->mArrowsHight:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    .line 384
    :cond_0
    :goto_0
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    if-ne v1, v3, :cond_2

    .line 386
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    sget v2, Lcom/android/inputmethod/latin/LatinKeyboard;->mBottomPadding:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    .line 393
    :goto_1
    return-object v0

    .line 378
    :cond_1
    sget-boolean v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mode_arrows:Z

    if-eqz v1, :cond_0

    .line 380
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    if-ne v1, v3, :cond_0

    .line 381
    const/4 v1, 0x0

    iput v1, v0, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    goto :goto_0

    .line 391
    :cond_2
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    sget v2, Lcom/android/inputmethod/latin/LatinKeyboard;->mRowGap:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    goto :goto_1
.end method

.method enableShiftLock()V
    .locals 2

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getShiftKeyIndex()I

    move-result v0

    .line 464
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 466
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    instance-of v1, v1, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;

    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->access$0(Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;)V

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mOldShiftIcon:Landroid/graphics/drawable/Drawable;

    .line 472
    :cond_1
    return-void
.end method

.method public getArraoyChangeDirection()I
    .locals 3

    .prologue
    .line 904
    sget-boolean v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mode_arrows:Z

    if-nez v1, :cond_1

    .line 906
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget v1, v1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v0, v1

    .line 912
    .local v0, "hight":F
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiffY:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    .line 913
    :cond_0
    const/4 v1, 0x0

    .line 915
    :goto_1
    return v1

    .line 910
    .end local v0    # "hight":F
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget v1, v1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v0, v1, v2

    .restart local v0    # "hight":F
    goto :goto_0

    .line 915
    :cond_2
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiffY:I

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getKeyboardMode()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMode:I

    return v0
.end method

.method public getLanguageChangeDirection()I
    .locals 3

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 896
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiffX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget v1, v1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 897
    :cond_0
    const/4 v0, 0x0

    .line 899
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiffX:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNearestKeys(II)[I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 1103
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKeyIndexArray:[I

    .line 1109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mProximityInfo:Lcom/android/inputmethod/latin/ProximityInfo;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getMinWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1110
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1109
    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/ProximityInfo;->getNearestKeys(II)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getProximityInfo()Lcom/android/inputmethod/latin/ProximityInfo;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mProximityInfo:Lcom/android/inputmethod/latin/ProximityInfo;

    return-object v0
.end method

.method isAlphaKeyboard()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsAlphaKeyboard:Z

    return v0
.end method

.method isCurrentlyInSpace()Z
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mCurrentlyInSpace:Z

    return v0
.end method

.method public isF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 1
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInside(Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;II)Z
    .locals 17
    .param p1, "key"    # Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 963
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v15}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    const/4 v11, 0x1

    .line 964
    .local v11, "morethanonelocal":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->codes:[I

    const/16 v16, 0x0

    aget v3, v15, v16

    .line 965
    .local v3, "code":I
    const/4 v15, -0x1

    if-eq v3, v15, :cond_0

    .line 966
    const/4 v15, -0x5

    if-ne v3, v15, :cond_4

    .line 967
    :cond_0
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->height:I

    div-int/lit8 v15, v15, 0xa

    sub-int p3, p3, v15

    .line 968
    const/4 v15, -0x1

    if-ne v3, v15, :cond_1

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v15, v15, 0x6

    add-int p2, p2, v15

    .line 969
    :cond_1
    const/4 v15, -0x5

    if-ne v3, v15, :cond_2

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v15, v15, 0x6

    sub-int p2, p2, v15

    .line 1083
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v15, :cond_16

    const/4 v9, 0x0

    .line 1085
    :goto_1
    return v9

    .line 963
    .end local v3    # "code":I
    .end local v11    # "morethanonelocal":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 970
    .restart local v3    # "code":I
    .restart local v11    # "morethanonelocal":Z
    :cond_4
    const/16 v15, 0x20

    if-ne v3, v15, :cond_9

    .line 971
    sget v15, Lcom/android/inputmethod/latin/LatinKeyboard;->sSpacebarVerticalCorrection:I

    add-int p3, p3, v15

    .line 972
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v15, :cond_8

    .line 973
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragStartX:I

    sub-int v4, p2, v15

    .line 974
    .local v4, "diffx":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragStartY:I

    sub-int v5, p3, v15

    .line 975
    .local v5, "diffy":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v15

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 977
    if-eqz v11, :cond_2

    .line 979
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiffX:I

    sub-int v15, v4, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    if-lez v15, :cond_5

    .line 980
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateLocaleDragX(I)V

    .line 982
    :cond_5
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiffX:I

    .line 983
    const/4 v9, 0x1

    goto :goto_1

    .line 988
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiffY:I

    sub-int v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    if-lez v15, :cond_7

    .line 989
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateLocaleDragY(I)V

    .line 991
    :cond_7
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiffY:I

    .line 992
    const/4 v9, 0x1

    goto :goto_1

    .line 996
    .end local v4    # "diffx":I
    .end local v5    # "diffy":I
    :cond_8
    invoke-virtual/range {p1 .. p3}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->isInsideSuper(II)Z

    move-result v9

    .line 997
    .local v9, "insideSpace":Z
    if-eqz v9, :cond_2

    .line 998
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mCurrentlyInSpace:Z

    .line 999
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragStartX:I

    .line 1000
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragStartY:I

    .line 1001
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateLocaleDragY(I)V

    .line 1002
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateLocaleDragX(I)V

    goto :goto_1

    .line 1006
    .end local v9    # "insideSpace":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterFrequencies:[I

    if-eqz v15, :cond_2

    .line 1008
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterX:I

    move/from16 v0, p2

    if-ne v15, v0, :cond_a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterY:I

    move/from16 v0, p3

    if-eq v15, v0, :cond_b

    .line 1009
    :cond_a
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    .line 1010
    const v15, 0x7fffffff

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefDistance:I

    .line 1013
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterFrequencies:[I

    .line 1014
    .local v14, "pref":[I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    if-lez v15, :cond_d

    .line 1020
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    if-ne v15, v3, :cond_c

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1022
    :cond_d
    invoke-virtual/range {p1 .. p3}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->isInsideSuper(II)Z

    move-result v8

    .line 1023
    .local v8, "inside":Z
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->getNearestKeys(II)[I

    move-result-object v12

    .line 1024
    .local v12, "nearby":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v13

    .line 1025
    .local v13, "nearbyKeys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    if-eqz v8, :cond_11

    .line 1027
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/android/inputmethod/latin/LatinKeyboard;->inPrefList(I[I)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 1029
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    .line 1030
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterX:I

    .line 1031
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterY:I

    .line 1032
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v15, v12

    if-lt v7, v15, :cond_e

    .line 1048
    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    if-ne v15, v3, :cond_10

    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1033
    :cond_e
    aget v15, v12, v7

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/inputmethodservice/Keyboard$Key;

    .line 1034
    .local v10, "k":Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p1

    if-eq v10, v0, :cond_f

    iget-object v15, v10, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/inputmethod/latin/LatinKeyboard;->inPrefList(I[I)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1035
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v10, v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->distanceFrom(Landroid/inputmethodservice/Keyboard$Key;II)I

    move-result v6

    .line 1036
    .local v6, "dist":I
    iget v15, v10, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v15, v15

    const v16, 0x3f333333    # 0.7f

    mul-float v15, v15, v16

    float-to-int v15, v15

    if-ge v6, v15, :cond_f

    .line 1037
    iget-object v15, v10, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    aget v15, v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    move/from16 v16, v0

    aget v16, v14, v16

    mul-int/lit8 v16, v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_f

    .line 1038
    iget-object v15, v10, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    .line 1039
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefDistance:I

    goto :goto_3

    .line 1032
    .end local v6    # "dist":I
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1048
    .end local v10    # "k":Landroid/inputmethodservice/Keyboard$Key;
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1060
    .end local v7    # "i":I
    :cond_11
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    array-length v15, v12

    if-lt v7, v15, :cond_12

    .line 1074
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    if-nez v15, :cond_14

    move v9, v8

    .line 1075
    goto/16 :goto_1

    .line 1061
    :cond_12
    aget v15, v12, v7

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/inputmethodservice/Keyboard$Key;

    .line 1062
    .restart local v10    # "k":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v15, v10, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/inputmethod/latin/LatinKeyboard;->inPrefList(I[I)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 1063
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v10, v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->distanceFrom(Landroid/inputmethodservice/Keyboard$Key;II)I

    move-result v6

    .line 1064
    .restart local v6    # "dist":I
    iget v15, v10, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v15, v15

    const v16, 0x3f59999a    # 0.85f

    mul-float v15, v15, v16

    float-to-int v15, v15

    if-ge v6, v15, :cond_13

    .line 1065
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefDistance:I

    if-ge v6, v15, :cond_13

    .line 1066
    iget-object v15, v10, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    .line 1067
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterX:I

    .line 1068
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterY:I

    .line 1069
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefDistance:I

    .line 1060
    .end local v6    # "dist":I
    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1077
    .end local v10    # "k":Landroid/inputmethodservice/Keyboard$Key;
    :cond_14
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    if-ne v15, v3, :cond_15

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1085
    .end local v7    # "i":I
    .end local v8    # "inside":Z
    .end local v12    # "nearby":[I
    .end local v13    # "nearbyKeys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    .end local v14    # "pref":[I
    :cond_16
    invoke-virtual/range {p1 .. p3}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->isInsideSuper(II)Z

    move-result v9

    goto/16 :goto_1
.end method

.method public isLanguageSwitchEnabled()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShiftLocked()Z
    .locals 2

    .prologue
    .line 509
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_1

    .line 537
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 539
    :goto_0
    return v0

    .line 537
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 539
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    goto :goto_0
.end method

.method public isT9on()Z
    .locals 2

    .prologue
    .line 1139
    const/4 v0, 0x0

    .line 1140
    .local v0, "t9":Z
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mT9key:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v1, :cond_0

    .line 1142
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mT9key:Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v0, v1, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 1144
    .end local v0    # "t9":Z
    :cond_0
    return v0
.end method

.method keyReleased()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/4 v0, 0x0

    .line 945
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mCurrentlyInSpace:Z

    .line 946
    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiffX:I

    .line 947
    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiffY:I

    .line 948
    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    .line 949
    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterX:I

    .line 950
    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterY:I

    .line 951
    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefDistance:I

    .line 952
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 953
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateLocaleDragX(I)V

    .line 954
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateLocaleDragY(I)V

    .line 956
    :cond_0
    return-void
.end method

.method public onAutoCompletionStateChanged(Z)Landroid/inputmethodservice/Keyboard$Key;
    .locals 1
    .param p1, "isAutoCompletion"    # Z

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsBlackSym:Z

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateSpaceBarForLocale(ZZ)V

    .line 668
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    return-object v0
.end method

.method setColorIcons(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 491
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 497
    return-void

    .line 493
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v3, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 494
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 495
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 491
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setColorOfSymbolIcons(ZZ)V
    .locals 5
    .param p1, "isAutoCompletion"    # Z
    .param p2, "isBlack"    # Z

    .prologue
    const v4, 0x7f0200c0

    const v3, 0x7f0200bf

    const v2, 0x7f0200ab

    const v1, 0x7f020097

    .line 548
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsBlackSym:Z

    .line 549
    if-eqz p2, :cond_1

    .line 550
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 551
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 552
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    .line 553
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    .line 554
    sget v0, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->setColorIcons(I)V

    .line 563
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateDynamicKeys()V

    .line 564
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateSpaceBarForLocale(ZZ)V

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateNumberHintKeys()V

    .line 568
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 557
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 558
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    .line 559
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    .line 560
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->ClearColorIcons()V

    goto :goto_0
.end method

.method setImeOptions(Landroid/content/res/Resources;II)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "mode"    # I
    .param p3, "options"    # I

    .prologue
    const v3, 0x400000ff    # 2.0000608f

    const v9, 0x7f050039

    const/4 v8, 0x0

    .line 397
    iput p2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMode:I

    .line 399
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v8, v1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 402
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const/4 v2, 0x0

    iput v2, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 403
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v8, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 404
    and-int v0, p3, v3

    .line 405
    .local v0, "swich":I
    and-int v1, p3, v3

    packed-switch v1, :pswitch_data_0

    .line 443
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 444
    const v2, 0x7f0200a1

    .line 443
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 445
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v2, 0x7f0200b9

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 446
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 447
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget v4, v4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget v5, v5, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v6, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/inputmethod/latin/LatinKeyboard;->drawSynthesizedSettingsHintImage(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 446
    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 448
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v8, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 449
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const-string v2, "enter"

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 451
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const-string v2, ""

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 452
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput v9, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 456
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 460
    .end local v0    # "swich":I
    :cond_0
    return-void

    .line 407
    .restart local v0    # "swich":I
    :pswitch_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v8, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 408
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v8, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 409
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v2, 0x7f0d0073

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 410
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput v9, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 414
    :pswitch_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v8, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 415
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v8, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 416
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v2, 0x7f0d0074

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 417
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput v9, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 421
    :pswitch_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v8, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 422
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v8, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 423
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v2, 0x7f0d0075

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 424
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput v9, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 428
    :pswitch_3
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 429
    const v2, 0x7f0200a2

    .line 428
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 430
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v2, 0x7f0200ba

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 431
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v8, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 432
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput v9, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 436
    :pswitch_4
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v8, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 437
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v8, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 438
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v2, 0x7f0d0076

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 439
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput v9, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto/16 :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLanguageSwitcher(Lcom/android/inputmethod/latin/LanguageSwitcher;ZZ)V
    .locals 3
    .param p1, "switcher"    # Lcom/android/inputmethod/latin/LanguageSwitcher;
    .param p2, "isAutoCompletion"    # Z
    .param p3, "isBlackSym"    # Z

    .prologue
    .line 920
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 921
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 922
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    .line 925
    .local v0, "locale":Ljava/util/Locale;
    :goto_0
    if-eqz v0, :cond_0

    .line 926
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 927
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 928
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    const/4 v0, 0x0

    .line 931
    :cond_0
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLocale:Ljava/util/Locale;

    .line 932
    invoke-virtual {p0, p2, p3}, Lcom/android/inputmethod/latin/LatinKeyboard;->setColorOfSymbolIcons(ZZ)V

    .line 933
    return-void

    .line 923
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setPopupKeyChars(Landroid/inputmethodservice/Keyboard$Key;)V
    .locals 0
    .param p1, "aKey"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 362
    return-void
.end method

.method setPreferredLetters([I)V
    .locals 1
    .param p1, "frequencies"    # [I

    .prologue
    .line 940
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterFrequencies:[I

    .line 941
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    .line 942
    return-void
.end method

.method setShiftLocked(Z)V
    .locals 3
    .param p1, "shiftLocked"    # Z

    .prologue
    const/4 v2, 0x1

    .line 475
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 476
    if-eqz p1, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 478
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 479
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 482
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 483
    iput v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    goto :goto_0
.end method

.method public setShifted(Z)Z
    .locals 4
    .param p1, "shiftState"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "shiftChanged":Z
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v3, :cond_4

    .line 516
    if-nez p1, :cond_2

    .line 517
    iget v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    if-eqz v3, :cond_1

    move v0, v1

    .line 518
    :goto_0
    iput v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    .line 519
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v1, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 520
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mOldShiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_1
    move v1, v0

    .line 531
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 517
    goto :goto_0

    .line 522
    :cond_2
    iget v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    if-nez v3, :cond_0

    .line 523
    iget v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    if-nez v3, :cond_3

    move v0, v1

    .line 524
    :goto_3
    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    .line 525
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    move v0, v2

    .line 523
    goto :goto_3

    .line 529
    :cond_4
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v1

    goto :goto_2
.end method

.method public setVoiceMode(ZZ)V
    .locals 0
    .param p1, "hasVoiceButton"    # Z
    .param p2, "hasVoice"    # Z

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHasVoiceButton:Z

    .line 576
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mVoiceEnabled:Z

    .line 577
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateDynamicKeys()V

    .line 578
    return-void
.end method
