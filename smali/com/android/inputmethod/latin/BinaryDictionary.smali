.class public Lcom/android/inputmethod/latin/BinaryDictionary;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "BinaryDictionary.java"


# static fields
.field public static final ALL_CONFIG_FLAGS:[Lcom/android/inputmethod/latin/Flag;

.field public static final DICTIONARY_PACK_AUTHORITY:Ljava/lang/String; = "com.android.inputmethod.latin.dictionarypack"

.field public static final FLAG_HEBREW_PROCESSING:Lcom/android/inputmethod/latin/Flag;

.field public static final FLAG_REQUIRES_GERMAN_UMLAUT_PROCESSING:Lcom/android/inputmethod/latin/Flag;

.field public static final FLAG_SUGGEST_WORDS_WITH_MISSING_SPACE_CHARACTER:Lcom/android/inputmethod/latin/Flag;

.field public static final FLAG_T9MODE_PROCESSING:Lcom/android/inputmethod/latin/Flag;

.field public static final FLAG_USE_FULL_EDIT_DISTANCE:Lcom/android/inputmethod/latin/Flag;

.field private static final MAX_BIGRAMS:I = 0x3c

.field private static final MAX_PROXIMITY_CHARS_SIZE:I = 0x10

.field public static final MAX_WORDS:I = 0x12

.field public static final MAX_WORD_LENGTH:I = 0x30

.field private static final TAG:Ljava/lang/String; = "BinaryDictionary"

.field private static final TYPED_LETTER_MULTIPLIER:I = 0x2


# instance fields
.field private final mBigramScores:[I

.field private mDicTypeId:I

.field private mFlags:I

.field private final mInputCodes:[I

.field private mNativeDict:I

.field private final mOutputChars:[C

.field private final mOutputChars_bigrams:[C

.field private final mScores:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 58
    new-instance v1, Lcom/android/inputmethod/latin/Flag;

    const v2, 0x7f09000f

    invoke-direct {v1, v2, v4}, Lcom/android/inputmethod/latin/Flag;-><init>(II)V

    .line 57
    sput-object v1, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_REQUIRES_GERMAN_UMLAUT_PROCESSING:Lcom/android/inputmethod/latin/Flag;

    .line 63
    new-instance v1, Lcom/android/inputmethod/latin/Flag;

    invoke-direct {v1, v5}, Lcom/android/inputmethod/latin/Flag;-><init>(I)V

    sput-object v1, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_USE_FULL_EDIT_DISTANCE:Lcom/android/inputmethod/latin/Flag;

    .line 68
    new-instance v1, Lcom/android/inputmethod/latin/Flag;

    const v2, 0x7f090010

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/inputmethod/latin/Flag;-><init>(II)V

    sput-object v1, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_HEBREW_PROCESSING:Lcom/android/inputmethod/latin/Flag;

    .line 70
    new-instance v1, Lcom/android/inputmethod/latin/Flag;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/android/inputmethod/latin/Flag;-><init>(I)V

    sput-object v1, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_T9MODE_PROCESSING:Lcom/android/inputmethod/latin/Flag;

    .line 72
    new-instance v1, Lcom/android/inputmethod/latin/Flag;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lcom/android/inputmethod/latin/Flag;-><init>(I)V

    sput-object v1, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_SUGGEST_WORDS_WITH_MISSING_SPACE_CHARACTER:Lcom/android/inputmethod/latin/Flag;

    .line 77
    new-array v1, v5, [Lcom/android/inputmethod/latin/Flag;

    const/4 v2, 0x0

    .line 85
    sget-object v3, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_REQUIRES_GERMAN_UMLAUT_PROCESSING:Lcom/android/inputmethod/latin/Flag;

    aput-object v3, v1, v2

    .line 86
    sget-object v2, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_HEBREW_PROCESSING:Lcom/android/inputmethod/latin/Flag;

    aput-object v2, v1, v4

    .line 77
    sput-object v1, Lcom/android/inputmethod/latin/BinaryDictionary;->ALL_CONFIG_FLAGS:[Lcom/android/inputmethod/latin/Flag;

    .line 116
    :try_start_0
    const-string v1, "jni_latinime_pt2_new"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 117
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 118
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "BinaryDictionary"

    const-string v2, "Could not load native library jni_latinime"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJ[Lcom/android/inputmethod/latin/Flag;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .param p7, "flagArray"    # [Lcom/android/inputmethod/latin/Flag;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 51
    const/16 v0, 0x300

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    .line 52
    const/16 v0, 0x360

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    .line 53
    const/16 v0, 0xb40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    .line 54
    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mScores:[I

    .line 55
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mBigramScores:[I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFlags:I

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I

    .line 110
    if-nez p7, :cond_0

    sget-object p7, Lcom/android/inputmethod/latin/BinaryDictionary;->ALL_CONFIG_FLAGS:[Lcom/android/inputmethod/latin/Flag;

    .end local p7    # "flagArray":[Lcom/android/inputmethod/latin/Flag;
    :cond_0
    invoke-static {p7, p1}, Lcom/android/inputmethod/latin/Flag;->initFlags([Lcom/android/inputmethod/latin/Flag;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFlags:I

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/BinaryDictionary;->loadDictionary(Ljava/lang/String;JJ)V

    .line 112
    return-void
.end method

.method private closeInternal()V
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    if-eqz v0, :cond_0

    .line 247
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeNative(I)V

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    .line 250
    :cond_0
    return-void
.end method

.method private closeNative(I)V
    .locals 0

    return-void
.end method

.method private getBigramsNative(I[CI[II[C[IIII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getSuggestionsNative(II[I[I[III[C[I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isValidWordNative(I[CI)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private final loadDictionary(Ljava/lang/String;JJ)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "startOffset"    # J
    .param p4, "length"    # J

    .prologue
    .line 135
    .line 136
    const/4 v6, 0x2

    const/4 v7, 0x2

    .line 137
    const/16 v8, 0x30

    const/16 v9, 0x12

    const/16 v10, 0x10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 135
    invoke-direct/range {v0 .. v10}, Lcom/android/inputmethod/latin/BinaryDictionary;->openNative(Ljava/lang/String;JJIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    .line 138
    return-void
.end method

.method private openNative(Ljava/lang/String;JJIIIII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 255
    :try_start_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 259
    return-void

    .line 256
    :catchall_0
    move-exception v0

    .line 257
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 258
    throw v0
.end method

.method public getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 17
    .param p1, "codes"    # Lcom/android/inputmethod/latin/WordComposer;
    .param p2, "previousWord"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/android/inputmethod/latin/Dictionary$WordCallback;

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    if-nez v1, :cond_1

    .line 176
    :cond_0
    return-void

    .line 145
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 146
    .local v3, "chars":[C
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mBigramScores:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v6

    .line 150
    .local v6, "codesSize":I
    if-lez v6, :cond_0

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 156
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v14

    .line 157
    .local v14, "alternatives":[I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    const/4 v4, 0x0

    .line 158
    array-length v5, v14

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 157
    invoke-static {v14, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    array-length v4, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    .line 161
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mBigramScores:[I

    const/16 v9, 0x30

    const/16 v10, 0x3c

    .line 162
    const/16 v11, 0x10

    move-object/from16 v1, p0

    .line 160
    invoke-direct/range {v1 .. v11}, Lcom/android/inputmethod/latin/BinaryDictionary;->getBigramsNative(I[CI[II[C[IIII)I

    move-result v15

    .line 164
    .local v15, "count":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v15, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mBigramScores:[I

    aget v1, v1, v16

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 166
    mul-int/lit8 v9, v16, 0x30

    .line 167
    .local v9, "start":I
    const/4 v10, 0x0

    .line 168
    .local v10, "len":I
    :goto_1
    const/16 v1, 0x30

    if-ge v10, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    add-int v2, v9, v10

    aget-char v1, v1, v2

    if-nez v1, :cond_4

    .line 171
    :cond_2
    if-lez v10, :cond_3

    .line 172
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mBigramScores:[I

    aget v11, v1, v16

    .line 173
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I

    sget-object v13, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v7, p3

    .line 172
    invoke-interface/range {v7 .. v13}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    .line 164
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 169
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/ProximityInfo;[C[I)I
    .locals 13
    .param p1, "codes"    # Lcom/android/inputmethod/latin/WordComposer;
    .param p2, "proximityInfo"    # Lcom/android/inputmethod/latin/ProximityInfo;
    .param p3, "outputChars"    # [C
    .param p4, "scores"    # [I

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidDictionary()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 223
    :goto_0
    return v1

    .line 207
    :cond_0
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v7

    .line 209
    .local v7, "codesSize":I
    const/16 v1, 0x2f

    if-le v7, v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 212
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-lt v12, v7, :cond_3

    .line 217
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 218
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 220
    iget v8, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFlags:I

    .line 221
    .local v8, "flags":I
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_T9MODE_PROCESSING:Lcom/android/inputmethod/latin/Flag;

    iget v1, v1, Lcom/android/inputmethod/latin/Flag;->mMask:I

    or-int/2addr v8, v1

    .line 222
    :goto_2
    sget-boolean v1, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestWordsMissingSpace:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_SUGGEST_WORDS_WITH_MISSING_SPACE_CHARACTER:Lcom/android/inputmethod/latin/Flag;

    iget v1, v1, Lcom/android/inputmethod/latin/Flag;->mMask:I

    or-int/2addr v8, v1

    .line 224
    :cond_2
    iget v2, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    invoke-virtual {p2}, Lcom/android/inputmethod/latin/ProximityInfo;->getNativeProximityInfo()I

    move-result v3

    .line 225
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->getXCoordinates()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->getYCoordinates()[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v1, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 223
    invoke-direct/range {v1 .. v10}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestionsNative(II[I[I[III[C[I)I

    move-result v1

    goto :goto_0

    .line 213
    .end local v8    # "flags":I
    :cond_3
    invoke-virtual {p1, v12}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v11

    .line 214
    .local v11, "alternatives":[I
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    mul-int/lit8 v3, v12, 0x10

    .line 215
    array-length v4, v11

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 214
    invoke-static {v11, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 221
    .end local v11    # "alternatives":[I
    .restart local v8    # "flags":I
    :cond_4
    iget v8, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFlags:I

    goto :goto_2
.end method

.method public getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/latin/ProximityInfo;)V
    .locals 9
    .param p1, "codes"    # Lcom/android/inputmethod/latin/WordComposer;
    .param p2, "callback"    # Lcom/android/inputmethod/latin/Dictionary$WordCallback;
    .param p3, "proximityInfo"    # Lcom/android/inputmethod/latin/ProximityInfo;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mScores:[I

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/ProximityInfo;[C[I)I

    move-result v7

    .line 184
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    if-lt v8, v7, :cond_1

    .line 196
    :cond_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mScores:[I

    aget v0, v0, v8

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 186
    mul-int/lit8 v2, v8, 0x30

    .line 187
    .local v2, "start":I
    const/4 v3, 0x0

    .line 188
    .local v3, "len":I
    :goto_1
    const/16 v0, 0x30

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    add-int v1, v2, v3

    aget-char v0, v0, v1

    if-nez v0, :cond_4

    .line 191
    :cond_2
    if-lez v3, :cond_3

    .line 192
    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mScores:[I

    aget v4, v0, v8

    iget v5, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I

    .line 193
    sget-object v6, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object v0, p2

    .line 192
    invoke-interface/range {v0 .. v6}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    .line 184
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 189
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method isValidDictionary()Z
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 231
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 233
    :goto_0
    return v1

    .line 232
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 233
    .local v0, "chars":[C
    iget v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    array-length v2, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidWordNative(I[CI)Z

    move-result v1

    goto :goto_0
.end method
