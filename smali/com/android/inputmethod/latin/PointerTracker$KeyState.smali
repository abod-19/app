.class Lcom/android/inputmethod/latin/PointerTracker$KeyState;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyState"
.end annotation


# instance fields
.field private mDownTime:J

.field private final mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

.field private mKeyIndex:I

.field private mKeyX:I

.field private mKeyY:I

.field private mLastX:I

.field private mLastY:I

.field private mStartX:I

.field private mStartY:I


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/KeyDetector;)V
    .locals 1
    .param p1, "keyDetecor"    # Lcom/android/inputmethod/latin/KeyDetector;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mKeyIndex:I

    .line 105
    iput-object p1, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    .line 106
    return-void
.end method

.method private onMoveKeyInternal(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mLastX:I

    .line 150
    iput p2, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mLastY:I

    .line 151
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/latin/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDownTime()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mDownTime:J

    return-wide v0
.end method

.method public getKeyIndex()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mKeyIndex:I

    return v0
.end method

.method public getKeyX()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mKeyX:I

    return v0
.end method

.method public getKeyY()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mKeyY:I

    return v0
.end method

.method public getLastX()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mLastX:I

    return v0
.end method

.method public getLastY()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mLastY:I

    return v0
.end method

.method public getStartX()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mStartX:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mStartY:I

    return v0
.end method

.method public onDownKey(IIJ)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 141
    iput p1, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mStartX:I

    .line 142
    iput p2, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mStartY:I

    .line 143
    iput-wide p3, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mDownTime:J

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveKeyInternal(II)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveToNewKey(III)I

    move-result v0

    return v0
.end method

.method public onMoveKey(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method

.method public onMoveToNewKey(III)I
    .locals 0
    .param p1, "keyIndex"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mKeyIndex:I

    .line 160
    iput p2, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mKeyX:I

    .line 161
    iput p3, p0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->mKeyY:I

    .line 162
    return p1
.end method

.method public onUpKey(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method
