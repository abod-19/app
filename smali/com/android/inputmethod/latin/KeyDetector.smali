.class abstract Lcom/android/inputmethod/latin/KeyDetector;
.super Ljava/lang/Object;
.source "KeyDetector.java"


# static fields
.field public static final NOT_A_CODE:I = -0x1


# instance fields
.field protected mCorrectionX:I

.field protected mCorrectionY:I

.field protected mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field protected mProximityCorrectOn:Z

.field protected mProximityThresholdSquare:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getKeyIndexAndNearbyCodes(II[I)I
.end method

.method protected getKeys()[Landroid/inputmethodservice/Keyboard$Key;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyDetector;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keyboard isn\'t set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyDetector;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    return-object v0
.end method

.method protected abstract getMaxNearbyKeys()I
.end method

.method protected getTouchX(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 53
    iget v0, p0, Lcom/android/inputmethod/latin/KeyDetector;->mCorrectionX:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected getTouchY(I)I
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 57
    iget v0, p0, Lcom/android/inputmethod/latin/KeyDetector;->mCorrectionY:I

    add-int/2addr v0, p1

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/KeyDetector;->mProximityCorrectOn:Z

    return v0
.end method

.method public newCodeArray()[I
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/KeyDetector;->getMaxNearbyKeys()I

    move-result v1

    new-array v0, v1, [I

    .line 90
    .local v0, "codes":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 91
    return-object v0
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;FF)[Landroid/inputmethodservice/Keyboard$Key;
    .locals 3
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;
    .param p2, "correctionX"    # F
    .param p3, "correctionY"    # F

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 43
    :cond_0
    float-to-int v2, p2

    iput v2, p0, Lcom/android/inputmethod/latin/KeyDetector;->mCorrectionX:I

    .line 44
    float-to-int v2, p3

    iput v2, p0, Lcom/android/inputmethod/latin/KeyDetector;->mCorrectionY:I

    .line 45
    iput-object p1, p0, Lcom/android/inputmethod/latin/KeyDetector;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 46
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyDetector;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v2}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/inputmethodservice/Keyboard$Key;

    .line 48
    .local v0, "array":[Landroid/inputmethodservice/Keyboard$Key;
    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyDetector;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 49
    return-object v0
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/KeyDetector;->mProximityCorrectOn:Z

    .line 69
    return-void
.end method

.method public setProximityThreshold(I)V
    .locals 1
    .param p1, "threshold"    # I

    .prologue
    .line 76
    mul-int v0, p1, p1

    iput v0, p0, Lcom/android/inputmethod/latin/KeyDetector;->mProximityThresholdSquare:I

    .line 77
    return-void
.end method
