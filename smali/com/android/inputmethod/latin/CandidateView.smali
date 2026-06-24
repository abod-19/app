.class public Lcom/android/inputmethod/latin/CandidateView;
.super Landroid/view/View;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;
    }
.end annotation


# static fields
.field private static final MAX_SUGGESTIONS:I = 0x20

.field private static final OUT_OF_BOUNDS_WORD_INDEX:I = -0x1

.field private static final OUT_OF_BOUNDS_X_COORD:I = -0x1

.field private static final SCROLL_PIXELS:I = 0x14

.field private static final X_GAP:I = 0xa

.field private static mColorNormal:I

.field private static mColorOther:I

.field public static mColorRecommended:I

.field static mDefaultCandidateColor:I

.field public static reverse_rtl:Z


# instance fields
.field private mAddToDictionaryHint:Ljava/lang/CharSequence;

.field private mBgPadding:Landroid/graphics/Rect;

.field public mCurrentRecommendedWord:I

.field private mCurrentWordIndex:I

.field private final mDescent:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHaveMinimalSuggestion:Z

.field private final mMinTouchableWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private final mPreviewPopup:Landroid/widget/PopupWindow;

.field private final mPreviewText:Landroid/widget/TextView;

.field private mScrolled:Z

.field private mSelectedIndex:I

.field private mSelectedString:Ljava/lang/CharSequence;

.field private final mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field private mService:Lcom/android/inputmethod/latin/DictionaryEditor;

.field private mShowingAddToDictionary:Z

.field private mShowingCompletions:Z

.field private final mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetScrollX:I

.field private mTotalWidth:I

.field private mTouchX:I

.field private mTypedWordValid:Z

.field private final mWordWidth:[I

.field private final mWordX:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x0

    const/16 v4, 0x20

    const/4 v5, -0x2

    const/4 v6, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    .line 56
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    .line 72
    new-array v3, v4, [I

    iput-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    .line 73
    new-array v3, v4, [I

    iput-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 134
    const v4, 0x7f02008b

    .line 133
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 137
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    check-cast v0, Landroid/view/LayoutInflater;

    .line 138
    .local v0, "inflate":Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 139
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0a0001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/inputmethod/latin/CandidateView;->mDefaultCandidateColor:I

    .line 140
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 141
    const v3, 0x7f030006

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    .line 143
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 144
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 145
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const v4, 0x7f0e0001

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 147
    const/high16 v3, 0x7f0a0000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    .line 148
    const v3, 0x7f02008a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 149
    const v3, 0x7f0d00a3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mAddToDictionaryHint:Ljava/lang/CharSequence;

    .line 151
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 152
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    const/4 v2, 0x1

    .line 155
    .local v2, "textMultiplier":I
    sget-boolean v3, Lcom/android/inputmethod/latin/DictionaryEditor;->suggestionSizeBig:Z

    if-eqz v3, :cond_0

    .line 157
    const/4 v2, 0x2

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 162
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mDescent:I

    .line 163
    const v3, 0x7f0c0017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mMinTouchableWidth:I

    .line 165
    new-instance v3, Landroid/view/GestureDetector;

    .line 166
    new-instance v4, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;

    iget v5, p0, Lcom/android/inputmethod/latin/CandidateView;->mMinTouchableWidth:I

    invoke-direct {v4, p0, v5}, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;-><init>(Lcom/android/inputmethod/latin/CandidateView;I)V

    invoke-direct {v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 165
    iput-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 167
    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/CandidateView;->setWillNotDraw(Z)V

    .line 168
    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/CandidateView;->setHorizontalScrollBarEnabled(Z)V

    .line 169
    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/CandidateView;->setVerticalScrollBarEnabled(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v6, v3}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 171
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/CandidateView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/CandidateView;)[I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/latin/CandidateView;)V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->longPressFirstWord()V

    return-void
.end method

.method static synthetic access$3(Lcom/android/inputmethod/latin/CandidateView;Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    return-void
.end method

.method static synthetic access$4(Lcom/android/inputmethod/latin/CandidateView;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    return v0
.end method

.method static synthetic access$5(Lcom/android/inputmethod/latin/CandidateView;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I

    return v0
.end method

.method static synthetic access$6(Lcom/android/inputmethod/latin/CandidateView;I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    return-void
.end method

.method static synthetic access$7(Lcom/android/inputmethod/latin/CandidateView;)V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    return-void
.end method

.method public static getColor()I
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomSuggestionColors:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget v0, v0, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->suggestion_color:I

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget v0, v0, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->suggestion_color:I

    .line 121
    :goto_0
    return v0

    .line 115
    :cond_0
    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomSuggestionColors:Z

    if-eqz v0, :cond_1

    .line 117
    sget v0, Lcom/android/inputmethod/latin/CandidateView;->mColorRecommended:I

    goto :goto_0

    .line 121
    :cond_1
    sget v0, Lcom/android/inputmethod/latin/CandidateView;->mDefaultCandidateColor:I

    goto :goto_0
.end method

.method private hidePreview()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 537
    iput v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    .line 538
    iput v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentWordIndex:I

    .line 539
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 540
    return-void
.end method

.method private longPressFirstWord()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 581
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 582
    .local v0, "word":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->addWordToDictionary(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0066

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/inputmethod/latin/CandidateView;->showPreview(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private scrollToTarget()V
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v0

    .line 378
    .local v0, "scrollX":I
    iget v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    if-le v1, v0, :cond_1

    .line 379
    add-int/lit8 v0, v0, 0x14

    .line 380
    iget v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    if-lt v0, v1, :cond_0

    .line 381
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    .line 382
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 383
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    .line 397
    :goto_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 398
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    goto :goto_0

    .line 388
    :cond_1
    add-int/lit8 v0, v0, -0x14

    .line 389
    iget v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    if-gt v0, v1, :cond_2

    .line 390
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    .line 391
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 392
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    goto :goto_0

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    goto :goto_0
.end method

.method public static setColor(I)V
    .locals 0
    .param p0, "color"    # I

    .prologue
    .line 105
    sput p0, Lcom/android/inputmethod/latin/CandidateView;->mColorRecommended:I

    .line 106
    sput p0, Lcom/android/inputmethod/latin/CandidateView;->mColorOther:I

    .line 107
    return-void
.end method

.method public static setRTL(Z)V
    .locals 0
    .param p0, "rtl"    # Z

    .prologue
    .line 101
    sput-boolean p0, Lcom/android/inputmethod/latin/CandidateView;->reverse_rtl:Z

    .line 102
    return-void
.end method

.method private showPreview(ILjava/lang/String;)V
    .locals 11
    .param p1, "wordIndex"    # I
    .param p2, "altText"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 543
    iget v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentWordIndex:I

    .line 544
    .local v1, "oldWordIndex":I
    iput p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentWordIndex:I

    .line 546
    iget v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentWordIndex:I

    if-ne v1, v6, :cond_0

    if-eqz p2, :cond_1

    .line 547
    :cond_0
    const/4 v6, -0x1

    if-ne p1, v6, :cond_2

    .line 548
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    .line 578
    :cond_1
    :goto_0
    return-void

    .line 550
    :cond_2
    if-eqz p2, :cond_3

    move-object v4, p2

    .line 551
    .local v4, "word":Ljava/lang/CharSequence;
    :goto_1
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 553
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 552
    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 554
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v4, v10, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    const/high16 v7, 0x41a00000    # 20.0f

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 556
    .local v5, "wordWidth":I
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    .line 555
    add-int/2addr v6, v5

    .line 556
    iget-object v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    .line 555
    add-int v3, v6, v7

    .line 557
    .local v3, "popupWidth":I
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 559
    .local v2, "popupHeight":I
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    aget v6, v6, p1

    iget-object v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    .line 560
    iget-object v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    aget v7, v7, p1

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 559
    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewX:I

    .line 561
    neg-int v6, v2

    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewY:I

    .line 562
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 563
    .local v0, "offsetInWindow":[I
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateView;->getLocationInWindow([I)V

    .line 564
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 565
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewX:I

    iget v8, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewY:I

    aget v9, v0, v9

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 575
    :goto_2
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 550
    .end local v0    # "offsetInWindow":[I
    .end local v2    # "popupHeight":I
    .end local v3    # "popupWidth":I
    .end local v4    # "word":Ljava/lang/CharSequence;
    .end local v5    # "wordWidth":I
    :cond_3
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    move-object v4, v6

    goto :goto_1

    .line 568
    .restart local v0    # "offsetInWindow":[I
    .restart local v2    # "popupHeight":I
    .restart local v3    # "popupWidth":I
    .restart local v4    # "word":Ljava/lang/CharSequence;
    .restart local v5    # "wordWidth":I
    :cond_4
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 569
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 570
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewX:I

    .line 571
    iget v8, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewY:I

    aget v9, v0, v9

    add-int/2addr v8, v9

    .line 570
    invoke-virtual {v6, p0, v10, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2
.end method

.method private updateScrollPosition(I)V
    .locals 1
    .param p1, "newPos"    # I

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 413
    iput p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    .line 414
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    .line 415
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    .line 418
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 464
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentRecommendedWord:I

    .line 467
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 468
    iput v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 470
    iput v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    .line 471
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    .line 472
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 473
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 474
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 475
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I

    return v0
.end method

.method public dismissAddToDictionaryHint()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->clear()V

    .line 456
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isShowingAddToDictionaryHint()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    return v0
.end method

.method public moveToNextSuggestion()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 404
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentRecommendedWord:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentRecommendedWord:I

    .line 405
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentRecommendedWord:I

    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentRecommendedWord:I

    .line 406
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    iget v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentRecommendedWord:I

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x14

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/CandidateView;->updateScrollPosition(I)V

    .line 408
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 590
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 591
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    .line 592
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 250
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->getHeight()I

    move-result v19

    .line 253
    .local v19, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_3

    .line 254
    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {v2, v4, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 258
    :cond_1
    const/16 v29, 0x1

    .line 259
    .local v29, "textMultiplier":I
    sget-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->suggestionSizeBig:Z

    if-eqz v2, :cond_2

    .line 261
    const/16 v29, 0x2

    .line 263
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 264
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    mul-int v9, v9, v29

    .line 263
    invoke-virtual {v2, v4, v6, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    .end local v29    # "textMultiplier":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 268
    .local v17, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 269
    .local v16, "bgPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 270
    .local v8, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    move/from16 v31, v0

    .line 271
    .local v31, "touchX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v24

    .line 272
    .local v24, "scrollX":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    move/from16 v25, v0

    .line 273
    .local v25, "scrolled":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mTypedWordValid:Z

    move/from16 v32, v0

    .line 274
    .local v32, "typedWordValid":Z
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/CandidateView;->mDescent:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    div-int/lit8 v35, v2, 0x2

    .line 275
    .local v35, "y":I
    const/16 v23, 0x0

    .line 276
    .local v23, "mIsSuggestPuncList":Z
    sget-object v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestPuncList:Ljava/util/List;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestPuncList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-interface {v2, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 278
    const/16 v23, 0x1

    .line 281
    :cond_4
    const/16 v18, 0x0

    .line 283
    .local v18, "existsAutoCompletion":Z
    const/16 v34, 0x0

    .line 284
    .local v34, "x":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v17

    if-lt v0, v1, :cond_6

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/DictionaryEditor;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->onAutoCompletionStateChanged(Z)V

    .line 370
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I

    .line 371
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    move/from16 v0, v24

    if-eq v2, v0, :cond_5

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->scrollToTarget()V

    .line 374
    :cond_5
    return-void

    .line 285
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    .line 286
    .local v10, "suggestion":Ljava/lang/CharSequence;
    if-nez v10, :cond_7

    .line 284
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 287
    :cond_7
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 289
    .local v5, "wordLength":I
    sget v2, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mHaveMinimalSuggestion:Z

    if-eqz v2, :cond_9

    .line 291
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_8

    if-eqz v32, :cond_a

    :cond_8
    if-nez v20, :cond_9

    if-nez v32, :cond_a

    :cond_9
    if-nez v23, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentRecommendedWord:I

    move/from16 v0, v20

    if-ne v2, v0, :cond_12

    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_12

    .line 292
    :cond_a
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 293
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 294
    invoke-static {}, Lcom/android/inputmethod/latin/CandidateView;->getColor()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    const/16 v18, 0x1

    .line 304
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    aget v33, v2, v20

    .local v33, "wordWidth":I
    if-nez v33, :cond_c

    .line 305
    const/4 v2, 0x0

    invoke-virtual {v8, v10, v2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v30

    .line 306
    .local v30, "textWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mMinTouchableWidth:I

    move/from16 v0, v30

    float-to-int v4, v0

    add-int/lit8 v4, v4, 0x14

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    aput v33, v2, v20

    .line 310
    .end local v30    # "textWidth":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    aput v34, v2, v20

    .line 312
    const/4 v2, -0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_e

    if-nez v25, :cond_e

    .line 313
    add-int v2, v31, v24

    move/from16 v0, v34

    if-lt v2, v0, :cond_e

    add-int v2, v31, v24

    add-int v4, v34, v33

    if-ge v2, v4, :cond_e

    .line 314
    if-eqz p1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    if-nez v2, :cond_d

    .line 315
    move/from16 v0, v34

    int-to-float v2, v0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v2, v4, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/inputmethod/latin/CandidateView;->getColor()I

    move-result v4

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 319
    move/from16 v0, v34

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 321
    :cond_d
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 322
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    .line 325
    :cond_e
    if-eqz p1, :cond_11

    .line 326
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    .line 327
    .local v27, "suggestionStr":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 328
    .local v3, "suggestionChar":[C
    const/16 v22, 0x0

    .line 329
    .local v22, "isRTL":I
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v26

    .line 330
    .local v26, "sizeofSuggestion":I
    const/16 v21, 0x0

    .local v21, "index":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v26

    if-lt v0, v1, :cond_14

    .line 338
    :goto_4
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_18

    .line 341
    const/16 v21, 0x0

    :goto_5
    div-int/lit8 v2, v26, 0x2

    move/from16 v0, v21

    if-lt v0, v2, :cond_16

    .line 351
    const/4 v4, 0x0

    div-int/lit8 v2, v33, 0x2

    add-int v2, v2, v34

    int-to-float v6, v2

    move/from16 v0, v35

    int-to-float v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 357
    :goto_6
    sget v2, Lcom/android/inputmethod/latin/CandidateView;->mColorOther:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    add-int v2, v34, v33

    int-to-float v2, v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 360
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_10

    .line 361
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 363
    :cond_10
    move/from16 v0, v34

    neg-int v2, v0

    sub-int v2, v2, v33

    int-to-float v2, v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 365
    .end local v3    # "suggestionChar":[C
    .end local v21    # "index":I
    .end local v22    # "isRTL":I
    .end local v26    # "sizeofSuggestion":I
    .end local v27    # "suggestionStr":Ljava/lang/String;
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 366
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 367
    add-int v34, v34, v33

    goto/16 :goto_1

    .line 297
    .end local v33    # "wordWidth":I
    :cond_12
    if-nez v20, :cond_13

    const/4 v2, 0x1

    if-ne v5, v2, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_b

    .line 300
    :cond_13
    invoke-static {}, Lcom/android/inputmethod/latin/CandidateView;->getColor()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 332
    .restart local v3    # "suggestionChar":[C
    .restart local v21    # "index":I
    .restart local v22    # "isRTL":I
    .restart local v26    # "sizeofSuggestion":I
    .restart local v27    # "suggestionStr":Ljava/lang/String;
    .restart local v33    # "wordWidth":I
    :cond_14
    aget-char v2, v3, v21

    const/16 v4, 0x500

    if-le v2, v4, :cond_15

    aget-char v2, v3, v21

    const/16 v4, 0x600

    if-ge v2, v4, :cond_15

    aget-char v2, v3, v21

    const/16 v4, 0x5eb

    if-eq v2, v4, :cond_15

    .line 334
    const/16 v22, 0x1

    .line 335
    goto :goto_4

    .line 330
    :cond_15
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 343
    :cond_16
    sget-boolean v2, Lcom/android/inputmethod/latin/CandidateView;->reverse_rtl:Z

    if-eqz v2, :cond_17

    .line 345
    aget-char v28, v3, v21

    .line 346
    .local v28, "temp":C
    add-int/lit8 v2, v26, -0x1

    sub-int v2, v2, v21

    aget-char v2, v3, v2

    aput-char v2, v3, v21

    .line 347
    add-int/lit8 v2, v26, -0x1

    sub-int v2, v2, v21

    aput-char v28, v3, v2

    .line 341
    .end local v28    # "temp":C
    :cond_17
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    .line 355
    :cond_18
    const/4 v11, 0x0

    div-int/lit8 v2, v33, 0x2

    add-int v2, v2, v34

    int-to-float v13, v2

    move/from16 v0, v35

    int-to-float v14, v0

    move-object/from16 v9, p1

    move v12, v5

    move-object v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 480
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v7

    .line 484
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 485
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 486
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 487
    .local v2, "y":I
    iput v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    .line 489
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 491
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    goto :goto_0

    .line 494
    :pswitch_1
    if-gtz v2, :cond_0

    .line 496
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 499
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingCompletions:Z

    if-nez v3, :cond_2

    .line 502
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 503
    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 502
    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 505
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 506
    iput-object v8, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 507
    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    goto :goto_0

    .line 512
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    if-nez v3, :cond_3

    .line 513
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 514
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    if-eqz v3, :cond_4

    .line 515
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->longPressFirstWord()V

    .line 516
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->clear()V

    .line 526
    :cond_3
    :goto_1
    iput-object v8, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 527
    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    .line 528
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    .line 529
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    .line 530
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    goto :goto_0

    .line 518
    :cond_4
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingCompletions:Z

    if-nez v3, :cond_5

    .line 519
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 520
    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 519
    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 522
    :cond_5
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setService(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/inputmethod/latin/DictionaryEditor;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 234
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZZZ)V
    .locals 5
    .param p2, "completions"    # Z
    .param p3, "typedWordValid"    # Z
    .param p4, "haveMinimalSuggestion"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->clear()V

    .line 422
    if-eqz p1, :cond_1

    .line 423
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 424
    .local v0, "insertCount":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 430
    .end local v0    # "insertCount":I
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingCompletions:Z

    .line 431
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/CandidateView;->mTypedWordValid:Z

    .line 432
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 433
    iput v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    .line 434
    iput-boolean p4, p0, Lcom/android/inputmethod/latin/CandidateView;->mHaveMinimalSuggestion:Z

    .line 436
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/CandidateView;->onDraw(Landroid/graphics/Canvas;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 438
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    .line 439
    return-void

    .line 424
    .restart local v0    # "insertCount":I
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 425
    .local v1, "suggestion":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public showAddToDictionaryHint(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v0, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mAddToDictionaryHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/android/inputmethod/latin/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 450
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    .line 451
    return-void
.end method
