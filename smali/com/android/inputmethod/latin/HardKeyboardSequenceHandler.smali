.class public Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;
.super Ljava/lang/Object;
.source "HardKeyboardSequenceHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;,
        Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;,
        Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;
    }
.end annotation


# static fields
.field private static final msQwerty:[I

.field private static final msSequenceLivingTime:J = 0x258L


# instance fields
.field private final mAltMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentTypedSequence:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;

.field private mLastTypedKeyEventTime:J

.field private final mSequences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;",
            "Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mShiftMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->msQwerty:[I

    .line 10
    return-void

    .line 12
    :array_0
    .array-data 4
        0x2d
        0x33
        0x21
        0x2e
        0x30
        0x35
        0x31
        0x25
        0x2b
        0x2c
        0x1d
        0x2f
        0x20
        0x22
        0x23
        0x24
        0x26
        0x27
        0x28
        0x36
        0x34
        0x1f
        0x32
        0x1e
        0x2a
        0x29
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mSequences:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mAltMapping:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mShiftMapping:Ljava/util/HashMap;

    .line 149
    new-instance v0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mCurrentTypedSequence:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mLastTypedKeyEventTime:J

    .line 151
    return-void
.end method


# virtual methods
.method public addAltMapping(IC)V
    .locals 3
    .param p1, "keyEvent"    # I
    .param p2, "result"    # C

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mAltMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mAltMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mAltMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method public addQwertyTranslation(Ljava/lang/String;)V
    .locals 6
    .param p1, "targetCharacters"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v3, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->msQwerty:[I

    array-length v3, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 156
    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'targetCharacters\' should be the same lenght as the latin QWERTY keys strings: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->msQwerty:[I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    :cond_0
    const/4 v2, 0x0

    .local v2, "qwertyIndex":I
    :goto_0
    sget-object v3, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->msQwerty:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 164
    return-void

    .line 159
    :cond_1
    sget-object v3, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->msQwerty:[I

    aget v3, v3, v2

    int-to-char v0, v3

    .line 160
    .local v0, "latinCharacter":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 161
    .local v1, "otherCharacter":C
    if-lez v1, :cond_2

    .line 162
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-virtual {p0, v3, v1}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->addSequence([IC)V

    .line 157
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public addSequence([IC)V
    .locals 6
    .param p1, "sequence"    # [I
    .param p2, "result"    # C

    .prologue
    .line 169
    const/4 v3, 0x1

    .local v3, "sequenceLength":I
    :goto_0
    array-length v5, p1

    if-lt v3, v5, :cond_1

    .line 181
    new-instance v0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;

    invoke-direct {v0, p1, p2}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;-><init>([IC)V

    .line 183
    .local v0, "actualSequence":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;
    iget-object v5, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mSequences:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    iget-object v5, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mSequences:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mSequences:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void

    .line 171
    .end local v0    # "actualSequence":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;
    :cond_1
    new-array v4, v3, [I

    .line 172
    .local v4, "subSequence":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_3

    .line 175
    new-instance v2, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;-><init>([IC)V

    .line 177
    .local v2, "keysSequence":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;
    iget-object v5, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mSequences:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 178
    iget-object v5, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mSequences:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "keysSequence":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;
    :cond_3
    aget v5, p1, v1

    aput v5, v4, v1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public addShiftMapping(IC)V
    .locals 3
    .param p1, "keyEvent"    # I
    .param p2, "result"    # C

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mShiftMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mShiftMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mShiftMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public getAltCharacter(I)C
    .locals 2
    .param p1, "keyEvent"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mCurrentTypedSequence:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->reset()V

    .line 213
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mAltMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mAltMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSequenceCharacter(ILcom/android/inputmethod/latin/DictionaryEditor;)C
    .locals 11
    .param p1, "currentKeyEvent"    # I
    .param p2, "inputHandler"    # Lcom/android/inputmethod/latin/DictionaryEditor;

    .prologue
    const/4 v6, 0x0

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 235
    .local v1, "currentTime":J
    iget-wide v7, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mLastTypedKeyEventTime:J

    sub-long v7, v1, v7

    const-wide/16 v9, 0x258

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 236
    iget-object v7, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mCurrentTypedSequence:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->reset()V

    .line 238
    :cond_0
    iput-wide v1, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mLastTypedKeyEventTime:J

    .line 240
    iget-object v7, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mCurrentTypedSequence:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;

    invoke-virtual {v7, p1}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->appendKeyEvent(I)V

    .line 241
    iget-object v7, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mSequences:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mCurrentTypedSequence:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 243
    iget-object v7, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mSequences:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mCurrentTypedSequence:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;

    .line 244
    .local v5, "mappedSequence":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;
    invoke-virtual {v5}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;->getTarget()C

    move-result v4

    .line 245
    .local v4, "mappedChar":C
    if-nez v4, :cond_1

    move v4, v6

    .line 266
    .end local v4    # "mappedChar":C
    .end local v5    # "mappedSequence":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;
    :goto_0
    return v4

    .line 250
    .restart local v4    # "mappedChar":C
    .restart local v5    # "mappedSequence":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;
    :cond_1
    invoke-virtual {v5}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;->getSequenceLength()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 251
    .local v0, "charactersToDelete":I
    iget-object v6, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mCurrentTypedSequence:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->getDeletedCharactersCountTillNow()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p2, v6}, Lcom/android/inputmethod/latin/DictionaryEditor;->deleteLastCharactersFromInput(I)V

    .line 252
    iget-object v6, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mCurrentTypedSequence:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;

    invoke-virtual {v6, v0}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->setDeletedCharactersCountAtInput(I)V

    goto :goto_0

    .line 259
    .end local v0    # "charactersToDelete":I
    .end local v4    # "mappedChar":C
    .end local v5    # "mappedSequence":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequence;
    :cond_2
    iget-object v7, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mCurrentTypedSequence:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->getSequenceLength()I

    move-result v3

    .line 261
    .local v3, "lastSequenceLength":I
    iget-object v7, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mCurrentTypedSequence:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->reset()V

    .line 262
    const/4 v7, 0x1

    if-le v3, v7, :cond_3

    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->getSequenceCharacter(ILcom/android/inputmethod/latin/DictionaryEditor;)C

    move-result v4

    goto :goto_0

    :cond_3
    move v4, v6

    .line 266
    goto :goto_0
.end method

.method public getShiftCharacter(I)C
    .locals 2
    .param p1, "keyEvent"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mCurrentTypedSequence:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceHolder;->reset()V

    .line 224
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mShiftMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->mShiftMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
