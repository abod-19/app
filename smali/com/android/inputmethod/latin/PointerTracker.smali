.class public Lcom/android/inputmethod/latin/PointerTracker;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/PointerTracker$KeyState;,
        Lcom/android/inputmethod/latin/PointerTracker$UIProxy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_MOVE:Z = false

.field private static final KEY_DELETE:[I

.field private static final NOT_A_KEY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PointerTracker"


# instance fields
.field private final mCalibration:Lcom/android/inputmethod/latin/Calibration;

.field private final mDelayBeforeKeyRepeatStart:I

.field private final mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

.field private final mHasDistinctMultitouch:Z

.field private mInMultiTap:Z

.field private mIsInSlidingKeyInput:Z

.field private mIsRepeatableKey:Z

.field private mKeyAlreadyProcessed:Z

.field private final mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

.field private mKeyHysteresisDistanceSquared:I

.field private final mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

.field private mKeyboardLayoutHasBeenChanged:Z

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

.field private mLongPressKeyTimeout:I

.field private final mMultiTapKeyTimeout:I

.field public final mPointerId:I

.field private final mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviousKey:I

.field private final mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

.field private mTapCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/PointerTracker;->DEBUG:Z

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x5

    aput v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/PointerTracker;->KEY_DELETE:[I

    .line 29
    return-void
.end method

.method public constructor <init>(ILcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;Lcom/android/inputmethod/latin/KeyDetector;Lcom/android/inputmethod/latin/PointerTracker$UIProxy;Landroid/content/res/Resources;I)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "handler"    # Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;
    .param p3, "keyDetector"    # Lcom/android/inputmethod/latin/KeyDetector;
    .param p4, "proxy"    # Lcom/android/inputmethod/latin/PointerTracker$UIProxy;
    .param p5, "res"    # Landroid/content/res/Resources;
    .param p6, "longPressDelay"    # I

    .prologue
    const/4 v2, -0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyHysteresisDistanceSquared:I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 83
    iput v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviousKey:I

    .line 172
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 174
    :cond_1
    iput p1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPointerId:I

    .line 175
    iput-object p4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    .line 176
    iput-object p2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    .line 177
    iput-object p3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    .line 178
    invoke-static {}, Lcom/android/inputmethod/latin/Calibration;->getInstance()Lcom/android/inputmethod/latin/Calibration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    .line 179
    new-instance v0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-direct {v0, p3}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;-><init>(Lcom/android/inputmethod/latin/KeyDetector;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    .line 180
    invoke-interface {p4}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->hasDistinctMultitouch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHasDistinctMultitouch:Z

    .line 181
    const v0, 0x7f0b0006

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mDelayBeforeKeyRepeatStart:I

    .line 182
    iput p6, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLongPressKeyTimeout:I

    .line 183
    sget-boolean v0, Lcom/android/inputmethod/latin/PointerTracker;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "PointerTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLongPressKeyTimeout = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLongPressKeyTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    const v0, 0x7f0b000a

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mMultiTapKeyTimeout:I

    .line 185
    invoke-direct {p0}, Lcom/android/inputmethod/latin/PointerTracker;->resetMultiTap()V

    .line 186
    return-void
.end method

.method private checkMultiTap(JI)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "keyIndex"    # I

    .prologue
    const/4 v2, 0x1

    .line 596
    invoke-virtual {p0, p3}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v1

    .line 597
    .local v1, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-nez v1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-wide v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLastTapTime:J

    iget v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mMultiTapKeyTimeout:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-gez v3, :cond_2

    iget v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLastSentIndex:I

    if-ne p3, v3, :cond_2

    move v0, v2

    .line 602
    .local v0, "isMultiTap":Z
    :goto_1
    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v3, v3

    if-le v3, v2, :cond_4

    .line 603
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mInMultiTap:Z

    .line 604
    if-eqz v0, :cond_3

    .line 605
    iget v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    goto :goto_0

    .line 601
    .end local v0    # "isMultiTap":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 608
    .restart local v0    # "isMultiTap":Z
    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    goto :goto_0

    .line 612
    :cond_4
    if-nez v0, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/android/inputmethod/latin/PointerTracker;->resetMultiTap()V

    goto :goto_0
.end method

.method private debugLog(Ljava/lang/String;II)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 618
    iget-object v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p3, v5}, Lcom/android/inputmethod/latin/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v2

    .line 619
    .local v2, "keyIndex":I
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v1

    .line 621
    .local v1, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-nez v1, :cond_1

    .line 622
    const-string v0, "----"

    .line 627
    .local v0, "code":Ljava/lang/String;
    :goto_0
    sget-boolean v4, Lcom/android/inputmethod/latin/PointerTracker;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v5, "PointerTracker"

    const-string v6, "%s%s[%d] %3d,%3d %3d(%s) %s"

    const/16 v4, 0x8

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p1, v7, v8

    .line 628
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v4, :cond_3

    const-string v4, "-"

    :goto_1
    aput-object v4, v7, v9

    const/4 v4, 0x2

    iget v8, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPointerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x6

    aput-object v0, v7, v4

    const/4 v8, 0x7

    .line 629
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/PointerTracker;->isModifier()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "modifier"

    :goto_2
    aput-object v4, v7, v8

    .line 627
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    return-void

    .line 624
    .end local v0    # "code":Ljava/lang/String;
    :cond_1
    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v4, v8

    .line 625
    .local v3, "primaryCode":I
    if-gez v3, :cond_2

    const-string v4, "%4d"

    :goto_3
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "code":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "code":Ljava/lang/String;
    :cond_2
    const-string v4, "0x%02x"

    goto :goto_3

    .line 628
    .end local v3    # "primaryCode":I
    .restart local v0    # "code":Ljava/lang/String;
    :cond_3
    const-string v4, " "

    goto :goto_1

    .line 629
    :cond_4
    const-string v4, ""

    goto :goto_2
.end method

.method private detectAndSendKey(IIIJ)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 499
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 500
    .local v3, "listener":Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v2

    .line 501
    .local v2, "key":Landroid/inputmethodservice/Keyboard$Key;
    const/4 v4, 0x0

    .line 503
    .local v4, "sent":Z
    if-nez v2, :cond_1

    .line 504
    if-eqz v3, :cond_0

    .line 505
    invoke-interface {v3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onCancel()V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v5, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    iget-object v5, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    const-string v6, "enter"

    if-eq v5, v6, :cond_3

    .line 508
    if-eqz v3, :cond_2

    .line 509
    iget-object v5, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v5}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 510
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    .line 559
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLastSentIndex:I

    .line 560
    iput-wide p4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLastTapTime:J

    goto :goto_0

    .line 513
    :cond_3
    iget-object v5, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v0, v5, v6

    .line 514
    .local v0, "code":I
    iget-object v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/KeyDetector;->newCodeArray()[I

    move-result-object v1

    .line 515
    .local v1, "codes":[I
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 518
    iget-object v5, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v8, v8

    invoke-static {v5, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    .line 526
    :goto_2
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mInMultiTap:Z

    if-eqz v5, :cond_4

    .line 527
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v5

    if-nez v5, :cond_9

    .line 529
    iget v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    iget v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    if-lez v5, :cond_8

    iget v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    iget-object v6, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v6, v6

    if-ge v5, v6, :cond_8

    .line 532
    iget-object v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    const/16 v6, -0x9

    iget-object v7, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v8, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    aget v7, v7, v8

    invoke-interface {v5, v6, v1, v7, p3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 533
    const/4 v4, 0x1

    .line 537
    :goto_3
    iget-object v5, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v6, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    aget v0, v5, v6

    .line 549
    :cond_4
    :goto_4
    array-length v5, v1

    const/4 v6, 0x2

    if-lt v5, v6, :cond_5

    const/4 v5, 0x0

    aget v5, v1, v5

    if-eq v5, v0, :cond_5

    const/4 v5, 0x1

    aget v5, v1, v5

    if-ne v5, v0, :cond_5

    .line 550
    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v1, v6

    aput v6, v1, v5

    .line 551
    const/4 v5, 0x0

    aput v0, v1, v5

    .line 553
    :cond_5
    if-eqz v3, :cond_2

    .line 555
    if-nez v4, :cond_6

    invoke-interface {v3, v0, v1, p2, p3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 556
    :cond_6
    invoke-interface {v3, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_1

    .line 523
    :cond_7
    iget-object v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    invoke-virtual {v5, p2, p3, v1}, Lcom/android/inputmethod/latin/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    goto :goto_2

    .line 535
    :cond_8
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    goto :goto_3

    .line 541
    :cond_9
    iget-object v5, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v0, v5, v6

    goto :goto_4
.end method

.method private static getSquareDistanceToKeyEdge(IILandroid/inputmethodservice/Keyboard$Key;)I
    .locals 10
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 466
    iget v5, p2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 467
    .local v5, "left":I
    iget v8, p2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v9, p2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int v6, v8, v9

    .line 468
    .local v6, "right":I
    iget v7, p2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 469
    .local v7, "top":I
    iget v8, p2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v9, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int v0, v8, v9

    .line 470
    .local v0, "bottom":I
    if-ge p0, v5, :cond_0

    move v3, v5

    .line 471
    .local v3, "edgeX":I
    :goto_0
    if-ge p1, v7, :cond_2

    move v4, v7

    .line 472
    .local v4, "edgeY":I
    :goto_1
    sub-int v1, p0, v3

    .line 473
    .local v1, "dx":I
    sub-int v2, p1, v4

    .line 474
    .local v2, "dy":I
    mul-int v8, v1, v1

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    return v8

    .line 470
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    .end local v3    # "edgeX":I
    .end local v4    # "edgeY":I
    :cond_0
    if-le p0, v6, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, p0

    goto :goto_0

    .line 471
    .restart local v3    # "edgeX":I
    :cond_2
    if-le p1, v0, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, p1

    goto :goto_1
.end method

.method private isMinorMoveBounce(III)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "newKey"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 453
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyHysteresisDistanceSquared:I

    if-gez v3, :cond_1

    .line 454
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "keyboard and/or hysteresis not set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    .line 456
    .local v0, "curKey":I
    if-ne p3, v0, :cond_3

    .line 461
    :cond_2
    :goto_0
    return v1

    .line 458
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 459
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v0

    invoke-static {p1, p2, v3}, Lcom/android/inputmethod/latin/PointerTracker;->getSquareDistanceToKeyEdge(IILandroid/inputmethodservice/Keyboard$Key;)I

    move-result v3

    iget v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyHysteresisDistanceSquared:I

    if-lt v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 461
    goto :goto_0
.end method

.method private isModifierInternal(I)Z
    .locals 4
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v0

    .line 220
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v2

    .line 222
    :cond_1
    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v3, v2

    .line 223
    .local v1, "primaryCode":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 224
    const/4 v3, -0x2

    if-ne v1, v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    .line 223
    goto :goto_0
.end method

.method private isValidKeyIndex(I)Z
    .locals 1
    .param p1, "keyIndex"    # I

    .prologue
    .line 206
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetMultiTap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 589
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLastSentIndex:I

    .line 590
    iput v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    .line 591
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLastTapTime:J

    .line 592
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mInMultiTap:Z

    .line 593
    return-void
.end method

.method private showKeyPreviewAndUpdateKey(I)V
    .locals 2
    .param p1, "keyIndex"    # I

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->updateKey(I)V

    .line 482
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHasDistinctMultitouch:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/PointerTracker;->isModifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p0}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->showPreview(ILcom/android/inputmethod/latin/PointerTracker;)V

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    invoke-interface {v0, p1, p0}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->showPreview(ILcom/android/inputmethod/latin/PointerTracker;)V

    goto :goto_0
.end method

.method private startLongPressTimer(I)V
    .locals 3
    .param p1, "keyIndex"    # I

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->isInMomentaryAutoModeSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    iget v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLongPressKeyTimeout:I

    mul-int/lit8 v1, v1, 0x3

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->startLongPressTimer(JILcom/android/inputmethod/latin/PointerTracker;)V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    iget v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLongPressKeyTimeout:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->startLongPressTimer(JILcom/android/inputmethod/latin/PointerTracker;)V

    goto :goto_0
.end method


# virtual methods
.method public getDownTime()J
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getDownTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKey(I)Landroid/inputmethodservice/Keyboard$Key;
    .locals 1
    .param p1, "keyIndex"    # I

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastX()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getLastX()I

    move-result v0

    return v0
.end method

.method public getLastY()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getLastY()I

    move-result v0

    return v0
.end method

.method public getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    const/4 v1, 0x0

    .line 568
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 571
    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 584
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 574
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "i":I
    :cond_1
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mInMultiTap:Z

    if-eqz v2, :cond_4

    .line 580
    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 581
    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    iget-object v5, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3

    :cond_2
    :goto_2
    aget v1, v3, v1

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    goto :goto_1

    .line 581
    :cond_3
    iget v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    goto :goto_2

    .line 584
    :cond_4
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method getStartX()I
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getStartX()I

    move-result v0

    return v0
.end method

.method getStartY()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getStartY()I

    move-result v0

    return v0
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsInSlidingKeyInput:Z

    return v0
.end method

.method public isModifier()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method public isOnModifierKey(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/latin/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method public isSpaceKey(I)Z
    .locals 4
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v0

    .line 237
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onCancelEvent(IIJ)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 411
    sget-boolean v1, Lcom/android/inputmethod/latin/PointerTracker;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 412
    const-string v1, "onCancelEvt:"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker;->debugLog(Ljava/lang/String;II)V

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 414
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 415
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/PointerTracker;->showKeyPreviewAndUpdateKey(I)V

    .line 416
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 417
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    .line 418
    .local v0, "keyIndex":I
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->invalidateKey(Landroid/inputmethodservice/Keyboard$Key;)V

    .line 420
    :cond_1
    return-void
.end method

.method public onDownEvent(IIJ)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 283
    sget-boolean v3, Lcom/android/inputmethod/latin/PointerTracker;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 284
    const-string v3, "onDownEvent:"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker;->debugLog(Ljava/lang/String;II)V

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onDownKey(IIJ)I

    move-result v2

    .line 286
    .local v2, "keyIndex":I
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 287
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 288
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsRepeatableKey:Z

    .line 289
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 290
    const/4 v0, -0x5

    .line 291
    .local v0, "code":I
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v3, v5

    .line 293
    :cond_1
    invoke-direct {p0, p3, p4, v2}, Lcom/android/inputmethod/latin/PointerTracker;->checkMultiTap(JI)V

    .line 294
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v3, :cond_2

    .line 295
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    iget-object v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-interface {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    .line 300
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    if-eqz v3, :cond_2

    .line 301
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 302
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onDownKey(IIJ)I

    move-result v2

    .line 303
    if-ne v0, v6, :cond_2

    .line 305
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v3

    if-lt v1, v3, :cond_5

    .line 314
    .end local v1    # "i":I
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 315
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v3, :cond_3

    .line 316
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/PointerTracker;->repeatKey(I)V

    .line 317
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    iget v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mDelayBeforeKeyRepeatStart:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5, v2, p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->startKeyRepeatTimer(JILcom/android/inputmethod/latin/PointerTracker;)V

    .line 318
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsRepeatableKey:Z

    .line 320
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/PointerTracker;->startLongPressTimer(I)V

    .line 322
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/PointerTracker;->showKeyPreviewAndUpdateKey(I)V

    .line 323
    return-void

    .line 307
    .restart local v1    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    if-ne v3, v6, :cond_6

    .line 308
    move v2, v1

    .line 305
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onMoveEvent(IIJ)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 328
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v3, :cond_0

    .line 383
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    .line 331
    .local v1, "keyState":Lcom/android/inputmethod/latin/PointerTracker$KeyState;
    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveKey(II)I

    move-result v0

    .line 332
    .local v0, "keyIndex":I
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v2

    .line 333
    .local v2, "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 334
    if-nez v2, :cond_3

    .line 337
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v3, :cond_1

    .line 338
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v4

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-interface {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    .line 342
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    if-eqz v3, :cond_1

    .line 343
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 344
    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveKey(II)I

    move-result v0

    .line 347
    :cond_1
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 348
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->startLongPressTimer(I)V

    .line 382
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/PointerTracker;->showKeyPreviewAndUpdateKey(I)V

    goto :goto_0

    .line 349
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 353
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 354
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v3, :cond_4

    .line 355
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-interface {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    .line 356
    :cond_4
    invoke-direct {p0}, Lcom/android/inputmethod/latin/PointerTracker;->resetMultiTap()V

    .line 357
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v3, :cond_5

    .line 358
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v4

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-interface {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    .line 362
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    if-eqz v3, :cond_5

    .line 363
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 364
    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveKey(II)I

    move-result v0

    .line 367
    :cond_5
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 368
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->startLongPressTimer(I)V

    goto :goto_1

    .line 371
    :cond_6
    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 374
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 375
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v3, :cond_7

    .line 376
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-interface {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    .line 377
    :cond_7
    invoke-direct {p0}, Lcom/android/inputmethod/latin/PointerTracker;->resetMultiTap()V

    .line 378
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 379
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelLongPressTimer()V

    goto :goto_1
.end method

.method public onTouchEvent(IIIJ)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 264
    packed-switch p1, :pswitch_data_0

    .line 280
    :goto_0
    :pswitch_0
    return-void

    .line 266
    :pswitch_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onMoveEvent(IIJ)V

    goto :goto_0

    .line 270
    :pswitch_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onDownEvent(IIJ)V

    goto :goto_0

    .line 274
    :pswitch_3
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_0

    .line 277
    :pswitch_4
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onCancelEvent(IIJ)V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUpEvent(IIJ)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 386
    sget-boolean v0, Lcom/android/inputmethod/latin/PointerTracker;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "onUpEvent  :"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker;->debugLog(Ljava/lang/String;II)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 389
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 390
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->showKeyPreviewAndUpdateKey(I)V

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 392
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v0, :cond_2

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onUpKey(II)I

    move-result v1

    .line 395
    .local v1, "keyIndex":I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/inputmethod/latin/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyIndex()I

    move-result v1

    .line 398
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyX()I

    move-result p1

    .line 399
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyY()I

    move-result p2

    .line 401
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsRepeatableKey:Z

    if-nez v0, :cond_3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .line 402
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/PointerTracker;->detectAndSendKey(IIIJ)V

    .line 406
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->invalidateKey(Landroid/inputmethodservice/Keyboard$Key;)V

    goto :goto_0
.end method

.method public repeatKey(I)V
    .locals 7
    .param p1, "keyIndex"    # I

    .prologue
    .line 423
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v6

    .line 424
    .local v6, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v6, :cond_0

    .line 427
    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    const-wide/16 v4, -0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/PointerTracker;->detectAndSendKey(IIIJ)V

    .line 429
    :cond_0
    return-void
.end method

.method public setAlreadyProcessed()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 261
    return-void
.end method

.method public setKeyboard([Landroid/inputmethodservice/Keyboard$Key;F)V
    .locals 1
    .param p1, "keys"    # [Landroid/inputmethodservice/Keyboard$Key;
    .param p2, "keyHysteresisDistance"    # F

    .prologue
    .line 193
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 195
    :cond_1
    iput-object p1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 196
    mul-float v0, p2, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyHysteresisDistanceSquared:I

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 199
    return-void
.end method

.method public setLongPressKeyTimeout(I)V
    .locals 3
    .param p1, "longPressKeyTimeout"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLongPressKeyTimeout:I

    .line 211
    sget-boolean v0, Lcom/android/inputmethod/latin/PointerTracker;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PointerTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLongPressKeyTimeout = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLongPressKeyTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 190
    return-void
.end method

.method public updateKey(I)V
    .locals 4
    .param p1, "keyIndex"    # I

    .prologue
    .line 241
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviousKey:I

    .line 244
    .local v1, "oldKeyIndex":I
    iput p1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviousKey:I

    .line 245
    if-eq p1, v1, :cond_0

    .line 246
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    .line 249
    .local v0, "inside":Z
    :goto_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 250
    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->invalidateKey(Landroid/inputmethodservice/Keyboard$Key;)V

    .line 252
    .end local v0    # "inside":Z
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 254
    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, p1

    invoke-interface {v2, v3}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->invalidateKey(Landroid/inputmethodservice/Keyboard$Key;)V

    goto :goto_0

    .line 248
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
