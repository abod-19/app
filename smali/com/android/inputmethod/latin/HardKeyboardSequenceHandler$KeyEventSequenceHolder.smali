.class Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;
.super Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;
.source "HardKeyboardSequenceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyEventSequenceHolder"
.end annotation


# instance fields
.field private mCurrentSequenceLength:I

.field private mDeletedCharactersTillNow:I

.field private mHashCode:I

.field private final mSequence:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;-><init>()V

    .line 95
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mSequence:[I

    .line 96
    iput v1, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mHashCode:I

    .line 97
    iput v1, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mCurrentSequenceLength:I

    .line 98
    return-void
.end method


# virtual methods
.method public appendKeyEvent(I)V
    .locals 3
    .param p1, "keyEvent"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mSequence:[I

    iget v1, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mCurrentSequenceLength:I

    iget-object v2, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mSequence:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    aput p1, v0, v1

    .line 103
    iget v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mCurrentSequenceLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mCurrentSequenceLength:I

    .line 104
    iget v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mHashCode:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mHashCode:I

    .line 105
    return-void
.end method

.method public getDeletedCharactersCountTillNow()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mDeletedCharactersTillNow:I

    return v0
.end method

.method protected getIntAt(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mSequence:[I

    iget-object v1, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mSequence:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method public getSequenceLength()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mCurrentSequenceLength:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mHashCode:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mCurrentSequenceLength:I

    .line 110
    iput v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mHashCode:I

    .line 111
    iput v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mDeletedCharactersTillNow:I

    .line 112
    return-void
.end method

.method public setDeletedCharactersCountAtInput(I)V
    .locals 0
    .param p1, "charactersToDelete"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->mDeletedCharactersTillNow:I

    .line 132
    return-void
.end method
