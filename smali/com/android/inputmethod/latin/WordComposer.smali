.class public Lcom/android/inputmethod/latin/WordComposer;
.super Ljava/lang/Object;
.source "WordComposer.java"


# instance fields
.field private mAutoCapitalized:Z

.field private mCapsCount:I

.field private mCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mIsFirstCharCapitalized:Z

.field private mPreferredWord:Ljava/lang/String;

.field private mTypedWord:Ljava/lang/StringBuilder;

.field private mXCoordinates:[I

.field private mYCoordinates:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x30

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v0, 0x30

    .line 50
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 52
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    .line 53
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    .line 54
    return-void
.end method

.method constructor <init>(Lcom/android/inputmethod/latin/WordComposer;)V
    .locals 4
    .param p1, "copy"    # Lcom/android/inputmethod/latin/WordComposer;

    .prologue
    const/16 v3, 0x30

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, 0x30

    .line 58
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 59
    iget-object v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 61
    iget v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 62
    iget-boolean v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    .line 63
    iget-boolean v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 64
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    .line 65
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    .line 66
    return-void
.end method

.method private correctPrimaryJuxtapos(I[I)V
    .locals 4
    .param p1, "primaryCode"    # I
    .param p2, "codes"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    aget v0, p2, v2

    if-lez v0, :cond_0

    aget v0, p2, v3

    if-lez v0, :cond_0

    aget v0, p2, v2

    if-eq v0, p1, :cond_0

    aget v0, p2, v3

    if-ne v0, p1, :cond_0

    .line 140
    aget v0, p2, v2

    aput v0, p2, v3

    .line 141
    aput p1, p2, v2

    goto :goto_0
.end method


# virtual methods
.method public add(I[III)V
    .locals 3
    .param p1, "primaryCode"    # I
    .param p2, "codes"    # [I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    .line 110
    .local v0, "newIndex":I
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/WordComposer;->correctPrimaryJuxtapos(I[I)V

    .line 112
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const/16 v1, 0x30

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    aput p3, v1, v0

    .line 115
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    aput p4, v1, v0

    .line 118
    :cond_0
    return-void
.end method

.method public deleteLast()V
    .locals 5

    .prologue
    .line 149
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 150
    .local v0, "codesSize":I
    if-lez v0, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 152
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 153
    .local v2, "lastPos":I
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 154
    .local v1, "last":C
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 157
    .end local v1    # "last":C
    .end local v2    # "lastPos":I
    :cond_0
    return-void
.end method

.method public deleteLast(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 160
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 161
    .local v0, "codesLength":I
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 162
    .local v2, "typedWordLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    if-gtz v0, :cond_1

    if-gtz v2, :cond_1

    .line 173
    :cond_0
    return-void

    .line 164
    :cond_1
    if-lez v0, :cond_2

    .line 165
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    :cond_2
    if-lez v2, :cond_3

    .line 168
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 170
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 171
    add-int/lit8 v2, v2, -0x1

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCodesAt(I)[I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getPreferredWord()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTypedWord()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 181
    .local v0, "wordSize":I
    if-nez v0, :cond_0

    .line 182
    const/4 v1, 0x0

    .line 184
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getXCoordinates()[I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    return-object v0
.end method

.method public getYCoordinates()[I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    return-object v0
.end method

.method public init(Lcom/android/inputmethod/latin/WordComposer;)V
    .locals 2
    .param p1, "source"    # Lcom/android/inputmethod/latin/WordComposer;

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 123
    iget-object v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    .line 124
    iget-object v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    .line 125
    iget v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 126
    iget-boolean v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 127
    iget-boolean v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    .line 128
    return-void
.end method

.method public isAllUpperCase()Z
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoCapitalized()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    return v0
.end method

.method public isFirstCharCapitalized()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    return v0
.end method

.method public isMostlyCaps()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 227
    iget v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 76
    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 77
    return-void
.end method

.method public setAutoCapitalized(Z)V
    .locals 0
    .param p1, "auto"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    .line 237
    return-void
.end method

.method public setFirstCharCapitalized(Z)V
    .locals 0
    .param p1, "capitalized"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 189
    return-void
.end method

.method public setPreferredWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "preferred"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
