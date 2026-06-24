.class Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;
.super Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;
.source "HardKeyboardSequenceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyEventSequence"
.end annotation


# instance fields
.field private final mHashCode:I

.field private final mSequence:[I

.field private final mTarget:C


# direct methods
.method public constructor <init>([IC)V
    .locals 3
    .param p1, "keyEventSequence"    # [I
    .param p2, "target"    # C

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;-><init>()V

    .line 59
    iput-char p2, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;->mTarget:C

    .line 60
    iput-object p1, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;->mSequence:[I

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;->mSequence:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 65
    iput v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;->mHashCode:I

    .line 66
    return-void

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;->mSequence:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getIntAt(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;->mSequence:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSequenceLength()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;->mSequence:[I

    array-length v0, v0

    return v0
.end method

.method public getTarget()C
    .locals 1

    .prologue
    .line 68
    iget-char v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;->mTarget:C

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;->mHashCode:I

    return v0
.end method
