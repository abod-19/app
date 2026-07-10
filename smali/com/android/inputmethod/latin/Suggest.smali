.class public Lcom/android/inputmethod/latin/Suggest;
.super Ljava/lang/Object;
.source "Suggest.java"

# interfaces
.implements Lcom/android/inputmethod/latin/Dictionary$WordCallback;


# static fields
.field public static final APPROX_MAX_WORD_LENGTH:I = 0x20

.field public static final BIGRAM_MULTIPLIER_MAX:D = 1.5

.field public static final BIGRAM_MULTIPLIER_MIN:D = 1.2

.field public static final CORRECTION_BASIC:I = 0x1

.field public static final CORRECTION_FULL:I = 0x2

.field public static final CORRECTION_FULL_BIGRAM:I = 0x3

.field public static final CORRECTION_NONE:I = 0x0

.field public static final DIC_AUTO:I = 0x3

.field public static final DIC_CONTACTS:I = 0x4

.field public static final DIC_MAIN:I = 0x1

.field public static final DIC_TYPE_LAST_ID:I = 0x4

.field public static final DIC_USER:I = 0x2

.field public static final DIC_USER_TYPED:I = 0x0

.field static final LARGE_DICTIONARY_THRESHOLD:I = 0xc350

.field public static final MAXIMUM_BIGRAM_FREQUENCY:I = 0x7f

.field private static final PREF_MAX_BIGRAMS:I = 0x3c


# instance fields
.field private mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

.field private mAutoTextDictionary:Lcom/android/inputmethod/latin/AutoTextDictionary;

.field private mAutoTextEnabled:Z

.field private mBigramPriorities:[I

.field mBigramSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

.field private mCorrectionMode:I

.field private mHaveAutoText:Z

.field private mHaveCorrection:Z

.field private mIsAllUpperCase:Z

.field private mIsFirstCharCapitalized:Z

.field private mLocale:Ljava/util/Locale;

.field private mLowerOriginalWord:Ljava/lang/String;

.field private mMainDict:Lcom/android/inputmethod/latin/Dictionary;

.field private mNextLettersFrequencies:[I

.field private mOriginalWord:Ljava/lang/CharSequence;

.field private mPrefMaxSuggestions:I

.field private mPriorities:[I

.field private mStringPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mUserBigramDictionary:Lcom/android/inputmethod/latin/Dictionary;

.field private mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Locale;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;",
            ">;",
            "Ljava/util/Locale;",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "dictionaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 90
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 91
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    .line 98
    const/16 v0, 0x500

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    .line 119
    invoke-static {p4}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v0

    .line 118
    invoke-static {p1, p3, v0}, Lcom/android/inputmethod/latin/DictionaryFactory;->createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I)Lcom/android/inputmethod/latin/DictionaryCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    .line 120
    iput-object p3, p0, Lcom/android/inputmethod/latin/Suggest;->mLocale:Ljava/util/Locale;

    .line 121
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Suggest;->initPool()V

    .line 122
    return-void
.end method

.method private collectGarbage(Ljava/util/ArrayList;I)V
    .locals 6
    .param p2, "prefMaxSuggestions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 600
    .local v2, "poolSize":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 601
    .local v1, "garbageSize":I
    :goto_0
    if-ge v2, p2, :cond_0

    if-gtz v1, :cond_2

    .line 609
    :cond_0
    add-int/lit8 v3, p2, 0x1

    if-ne v2, v3, :cond_1

    .line 610
    const-string v3, "Suggest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "String pool got too big: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 613
    return-void

    .line 602
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 603
    .local v0, "garbage":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    instance-of v3, v0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    .line 604
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v2, v2, 0x1

    .line 607
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private compareCaseInsensitive(Ljava/lang/String;[CII)Z
    .locals 5
    .param p1, "mLowerOriginalWord"    # Ljava/lang/String;
    .param p2, "word"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 471
    .local v1, "originalLength":I
    if-ne v1, p4, :cond_0

    aget-char v3, p2, p3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 477
    const/4 v2, 0x1

    .line 479
    .end local v0    # "i":I
    :cond_0
    return v2

    .line 473
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p3, v0

    aget-char v4, p2, v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private haveSufficientCommonality(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 11
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 205
    .local v5, "originalLength":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 206
    .local v6, "suggestionLength":I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 207
    .local v3, "minLength":I
    if-gt v3, v10, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v7

    .line 208
    :cond_1
    const/4 v2, 0x0

    .line 209
    .local v2, "matching":I
    const/4 v1, 0x0

    .line 211
    .local v1, "lessMatching":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_2

    .line 221
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 223
    const/4 v9, 0x4

    if-gt v3, v9, :cond_5

    .line 224
    if-ge v2, v10, :cond_0

    move v7, v8

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v4

    .line 213
    .local v4, "origChar":C
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v9

    if-ne v4, v9, :cond_4

    .line 214
    add-int/lit8 v2, v2, 0x1

    .line 215
    add-int/lit8 v1, v1, 0x1

    .line 211
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    :cond_4
    add-int/lit8 v9, v0, 0x1

    if-ge v9, v6, :cond_3

    .line 217
    add-int/lit8 v9, v0, 0x1

    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v9

    if-ne v4, v9, :cond_3

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 226
    .end local v4    # "origChar":C
    :cond_5
    div-int/lit8 v9, v3, 0x2

    if-gt v2, v9, :cond_0

    move v7, v8

    goto :goto_0
.end method

.method private initPool()V
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    if-lt v0, v2, :cond_0

    .line 134
    return-void

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 132
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeDupes()V
    .locals 7

    .prologue
    .line 435
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 436
    .local v4, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 452
    :cond_0
    return-void

    .line 437
    :cond_1
    const/4 v1, 0x1

    .line 439
    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 440
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 442
    .local v0, "cur":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-lt v2, v1, :cond_2

    .line 450
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 444
    .local v3, "previous":Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 445
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Suggest;->removeFromSuggestions(I)V

    .line 446
    add-int/lit8 v1, v1, -0x1

    .line 447
    goto :goto_2

    .line 442
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private removeFromSuggestions(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 456
    .local v0, "garbage":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_0
    return-void
.end method

.method private searchBigramSuggestion([CII)I
    .locals 6
    .param p1, "word"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 571
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 572
    .local v0, "bigramSuggestSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 585
    const/4 v2, -0x1

    .end local v2    # "i":I
    :cond_0
    return v2

    .line 573
    .restart local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, p3, :cond_2

    .line 574
    const/4 v1, 0x1

    .line 575
    .local v1, "chk":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, p3, :cond_3

    .line 581
    :goto_2
    if-nez v1, :cond_0

    .line 572
    .end local v1    # "chk":Z
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
    .restart local v1    # "chk":Z
    .restart local v3    # "j":I
    :cond_3
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int v5, p2, v3

    aget-char v5, p1, v5

    if-eq v4, v5, :cond_4

    .line 577
    const/4 v1, 0x0

    .line 578
    goto :goto_2

    .line 575
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z
    .locals 19
    .param p1, "word"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "freq"    # I
    .param p5, "dicTypeId"    # I
    .param p6, "dataType"    # Lcom/android/inputmethod/latin/Dictionary$DataType;

    .prologue
    .line 484
    move-object/from16 v5, p6

    .line 488
    .local v5, "dataTypeForLog":Lcom/android/inputmethod/latin/Dictionary$DataType;
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x4

    move/from16 v0, p5

    if-ne v0, v15, :cond_0

    div-int/lit8 p4, p4, 0xa

    .line 489
    :cond_0
    sget-object v15, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v0, p6

    if-ne v0, v15, :cond_2

    .line 490
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 491
    .local v14, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    .line 492
    .local v12, "priorities":[I
    const/16 v11, 0x3c

    .line 499
    .local v11, "prefMaxSuggestions":I
    :goto_0
    const/4 v10, 0x0

    .line 502
    .local v10, "pos":I
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v15

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/android/inputmethod/latin/Suggest;->compareCaseInsensitive(Ljava/lang/String;[CII)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 503
    const/4 v10, 0x0

    .line 535
    :cond_1
    :goto_1
    if-lt v10, v11, :cond_8

    .line 536
    const/4 v15, 0x1

    .line 565
    :goto_2
    return v15

    .line 494
    .end local v10    # "pos":I
    .end local v11    # "prefMaxSuggestions":I
    .end local v12    # "priorities":[I
    .end local v14    # "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 495
    .restart local v14    # "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 496
    .restart local v12    # "priorities":[I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .restart local v11    # "prefMaxSuggestions":I
    goto :goto_0

    .line 505
    .restart local v10    # "pos":I
    :cond_3
    sget-object v15, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v0, p6

    if-ne v0, v15, :cond_4

    .line 507
    invoke-direct/range {p0 .. p3}, Lcom/android/inputmethod/latin/Suggest;->searchBigramSuggestion([CII)I

    move-result v4

    .line 508
    .local v4, "bigramSuggestion":I
    if-ltz v4, :cond_4

    .line 509
    sget-object v5, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    .line 511
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    aget v15, v15, v4

    int-to-double v15, v15

    .line 512
    const-wide v17, 0x405fc00000000000L    # 127.0

    .line 511
    div-double v15, v15, v17

    .line 513
    const-wide v17, 0x3fd3333333333334L    # 0.30000000000000004

    .line 511
    mul-double v15, v15, v17

    .line 514
    const-wide v17, 0x3ff3333333333333L    # 1.2

    .line 511
    add-double v7, v15, v17

    .line 520
    .local v7, "multiplier":D
    move/from16 v0, p4

    int-to-double v15, v0

    mul-double/2addr v15, v7

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    long-to-int v0, v15

    move/from16 p4, v0

    .line 525
    .end local v4    # "bigramSuggestion":I
    .end local v7    # "multiplier":D
    :cond_4
    add-int/lit8 v15, v11, -0x1

    aget v15, v12, v15

    move/from16 v0, p4

    if-lt v15, v0, :cond_7

    const/4 v15, 0x1

    goto :goto_2

    .line 527
    :cond_5
    aget v15, v12, v10

    move/from16 v0, p4

    if-lt v15, v0, :cond_1

    .line 528
    aget v15, v12, v10

    move/from16 v0, p4

    if-ne v15, v0, :cond_6

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    move/from16 v0, p3

    if-lt v0, v15, :cond_1

    .line 531
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 526
    :cond_7
    if-lt v10, v11, :cond_5

    goto :goto_1

    .line 539
    :cond_8
    add-int/lit8 v15, v10, 0x1

    .line 540
    sub-int v16, v11, v10

    add-int/lit8 v16, v16, -0x1

    .line 539
    move/from16 v0, v16

    invoke-static {v12, v10, v12, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    aput p4, v12, v10

    .line 542
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 543
    .local v9, "poolSize":I
    if-lez v9, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    add-int/lit8 v16, v9, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/StringBuilder;

    move-object v13, v15

    .line 545
    .local v13, "sb":Ljava/lang/StringBuilder;
    :goto_3
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 546
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    if-eqz v15, :cond_c

    .line 547
    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_9
    :goto_4
    invoke-virtual {v14, v10, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 557
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v15, v11, :cond_e

    .line 558
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 559
    .local v6, "garbage":Ljava/lang/CharSequence;
    instance-of v15, v6, Ljava/lang/StringBuilder;

    if-eqz v15, :cond_a

    .line 560
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    .end local v6    # "garbage":Ljava/lang/CharSequence;
    :cond_a
    :goto_5
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 544
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v15

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_3

    .line 548
    .restart local v13    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    if-eqz v15, :cond_d

    .line 549
    aget-char v15, p1, p2

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    const/4 v15, 0x1

    move/from16 v0, p3

    if-le v0, v15, :cond_9

    .line 551
    add-int/lit8 v15, p2, 0x1

    add-int/lit8 v16, p3, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v13, v0, v15, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 554
    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 563
    :cond_e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p5

    invoke-static {v15, v0, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;ILcom/android/inputmethod/latin/Dictionary$DataType;)V

    goto :goto_5
.end method

.method public close()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    .line 619
    :cond_0
    return-void
.end method

.method public getApproxMaxWordLength()I
    .locals 1

    .prologue
    .line 153
    const/16 v0, 0x20

    return v0
.end method

.method public getCorrectionMode()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    return v0
.end method

.method public getNextLettersFrequencies()[I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    return-object v0
.end method

.method public getSuggestions(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;ZLjava/lang/CharSequence;Lcom/android/inputmethod/latin/ProximityInfo;)Ljava/util/List;
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "wordComposer"    # Lcom/android/inputmethod/latin/WordComposer;
    .param p3, "includeTypedWordIfValid"    # Z
    .param p4, "prevWordForBigram"    # Ljava/lang/CharSequence;
    .param p5, "proximityInfo"    # Lcom/android/inputmethod/latin/ProximityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Z",
            "Ljava/lang/CharSequence;",
            "Lcom/android/inputmethod/latin/ProximityInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-static/range {p4 .. p4}, Lcom/android/inputmethod/latin/LatinImeLogger;->onStartSuggestion(Ljava/lang/CharSequence;)V

    .line 241
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 242
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    .line 243
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->isAllUpperCase()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Ljava/util/Arrays;->fill([II)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Ljava/util/Arrays;->fill([II)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 252
    .local v15, "mOriginalWordString":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    .line 253
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    .line 255
    const/16 v21, 0x0

    .line 256
    sget-object v22, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    .line 255
    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lcom/android/inputmethod/latin/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;ILcom/android/inputmethod/latin/Dictionary$DataType;)V

    .line 262
    .end local v15    # "mOriginalWordString":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 264
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v8

    .line 265
    .local v8, "codes":[I
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_1
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v13, v0, :cond_10

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v21

    const-string v22, "en"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 270
    const/4 v13, 0x1

    :goto_2
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v13, v0, :cond_12

    .line 288
    .end local v8    # "codes":[I
    .end local v13    # "i":I
    :cond_0
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a

    .line 291
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Ljava/util/Arrays;->fill([II)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 294
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 295
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 296
    .local v14, "lowerPrevWord":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 297
    move-object/from16 p4, v14

    .line 299
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mUserBigramDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mUserBigramDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 302
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 307
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 310
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 311
    .local v11, "currentChar":C
    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    .line 312
    .local v12, "currentCharUpper":C
    const/4 v9, 0x0

    .line 313
    .local v9, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 314
    .local v6, "bigramSuggestionSize":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    move v10, v9

    .end local v9    # "count":I
    .local v10, "count":I
    :goto_4
    if-lt v13, v6, :cond_17

    move v9, v10

    .line 327
    .end local v10    # "count":I
    .restart local v9    # "count":I
    :cond_6
    if-lez v6, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 329
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 366
    .end local v6    # "bigramSuggestionSize":I
    .end local v9    # "count":I
    .end local v11    # "currentChar":C
    .end local v12    # "currentCharUpper":C
    .end local v13    # "i":I
    .end local v14    # "lowerPrevWord":Ljava/lang/CharSequence;
    :cond_7
    :goto_5
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v21

    if-nez v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 371
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 374
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 375
    :cond_9
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v21

    if-nez v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Suggest;->haveSufficientCommonality(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 376
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 379
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoTextEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 380
    const/4 v13, 0x0

    .line 381
    .restart local v13    # "i":I
    const/16 v16, 0x6

    .line 383
    .local v16, "max":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/16 v16, 0x1

    .line 384
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_c

    move/from16 v0, v16

    if-lt v13, v0, :cond_23

    .line 409
    .end local v13    # "i":I
    .end local v16    # "max":I
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/Suggest;->removeDupes()V

    .line 410
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveAutoText:Z

    .line 412
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_d

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 415
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoTextDictionary:Lcom/android/inputmethod/latin/AutoTextDictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/inputmethod/latin/AutoTextDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoTextDictionary:Lcom/android/inputmethod/latin/AutoTextDictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/inputmethod/latin/AutoTextDictionary;->getWords(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v5

    .line 418
    .local v5, "autotexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v13, v0, :cond_2a

    .line 422
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveAutoText:Z

    .line 427
    .end local v5    # "autotexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v13    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    return-object v21

    .line 258
    :cond_f
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    goto/16 :goto_0

    .line 266
    .restart local v8    # "codes":[I
    .restart local v13    # "i":I
    :cond_10
    aget v21, v8, v13

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_11

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    add-int/lit8 v22, v13, -0x1

    aget v23, v8, v13

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 265
    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 272
    :cond_12
    aget v21, v8, v13

    const/16 v22, 0x69

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    aget v21, v8, v13

    const/16 v22, 0x49

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 274
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "I"

    invoke-virtual/range {v21 .. v23}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 275
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    goto/16 :goto_3

    .line 278
    :cond_14
    aget v21, v8, v13

    const/16 v22, 0x6f

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_15

    aget v21, v8, v13

    const/16 v22, 0x4f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 280
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "O"

    invoke-virtual/range {v21 .. v23}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 281
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    goto/16 :goto_3

    .line 270
    :cond_16
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 315
    .end local v8    # "codes":[I
    .restart local v6    # "bigramSuggestionSize":I
    .restart local v10    # "count":I
    .restart local v11    # "currentChar":C
    .restart local v12    # "currentCharUpper":C
    .restart local v14    # "lowerPrevWord":Ljava/lang/CharSequence;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/CharSequence;

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    if-eq v0, v11, :cond_18

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/CharSequence;

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    if-ne v0, v12, :cond_2b

    .line 317
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 318
    .local v18, "poolSize":I
    if-lez v18, :cond_19

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/StringBuilder;

    move-object/from16 v19, v21

    .line 321
    .local v19, "sb":Ljava/lang/StringBuilder;
    :goto_8
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "count":I
    .restart local v9    # "count":I
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v9, v0, :cond_6

    .line 314
    .end local v18    # "poolSize":I
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :goto_9
    add-int/lit8 v13, v13, 0x1

    move v10, v9

    .end local v9    # "count":I
    .restart local v10    # "count":I
    goto/16 :goto_4

    .line 320
    .restart local v18    # "poolSize":I
    :cond_19
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_8

    .line 333
    .end local v6    # "bigramSuggestionSize":I
    .end local v10    # "count":I
    .end local v11    # "currentChar":C
    .end local v12    # "currentCharUpper":C
    .end local v13    # "i":I
    .end local v14    # "lowerPrevWord":Ljava/lang/CharSequence;
    .end local v18    # "poolSize":I
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    if-nez v21, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    if-eqz v21, :cond_20

    .line 336
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/latin/ProximityInfo;)V

    .line 339
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1d

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/latin/ProximityInfo;)V

    .line 343
    :cond_1d
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v21

    if-eqz v21, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1e

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/latin/ProximityInfo;)V

    .line 347
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_20

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1f

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1f

    .line 350
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v21

    if-eqz v21, :cond_20

    .line 351
    :cond_1f
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 354
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    if-eqz v21, :cond_21

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/latin/ProximityInfo;)V

    .line 358
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_22

    .line 359
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_22

    .line 360
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 361
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_7

    .line 362
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    goto/16 :goto_5

    .line 385
    .restart local v13    # "i":I
    .restart local v16    # "max":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/CharSequence;

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 387
    .local v20, "suggestedWord":Ljava/lang/String;
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "autoText":Ljava/lang/CharSequence;
    if-eqz v4, :cond_27

    const/4 v7, 0x1

    .line 391
    .local v7, "canAdd":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/CharSequence;

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_28

    const/16 v21, 0x0

    :goto_b
    and-int v7, v7, v21

    .line 393
    if-eqz v7, :cond_24

    add-int/lit8 v21, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_24

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    add-int/lit8 v22, v13, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/CharSequence;

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_29

    const/16 v21, 0x0

    :goto_c
    and-int v7, v7, v21

    .line 396
    :cond_24
    if-eqz v7, :cond_26

    .line 397
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 398
    move/from16 v17, v13

    .line 399
    .local v17, "place":I
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v21

    if-eqz v21, :cond_25

    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_25

    .line 401
    const/16 v17, 0x0

    .line 403
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    add-int/lit8 v22, v17, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 404
    add-int/lit8 v13, v13, 0x1

    .line 406
    .end local v17    # "place":I
    :cond_26
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 389
    .end local v7    # "canAdd":Z
    :cond_27
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 391
    .restart local v7    # "canAdd":Z
    :cond_28
    const/16 v21, 0x1

    goto :goto_b

    .line 394
    :cond_29
    const/16 v21, 0x1

    goto :goto_c

    .line 420
    .end local v4    # "autoText":Ljava/lang/CharSequence;
    .end local v7    # "canAdd":Z
    .end local v16    # "max":I
    .end local v20    # "suggestedWord":Ljava/lang/String;
    .restart local v5    # "autotexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    add-int/lit8 v23, v13, 0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/CharSequence;

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 418
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .end local v5    # "autotexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v6    # "bigramSuggestionSize":I
    .restart local v10    # "count":I
    .restart local v11    # "currentChar":C
    .restart local v12    # "currentCharUpper":C
    .restart local v14    # "lowerPrevWord":Ljava/lang/CharSequence;
    :cond_2b
    move v9, v10

    .end local v10    # "count":I
    .restart local v9    # "count":I
    goto/16 :goto_9
.end method

.method public hasAutoText()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveAutoText:Z

    return v0
.end method

.method public hasMainDictionary()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinimalCorrection()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    return v0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 589
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 595
    :cond_0
    :goto_0
    return v0

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 593
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 594
    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 595
    :cond_4
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    const/4 v0, 0x1

    .line 592
    goto :goto_0
.end method

.method public setAutoDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 0
    .param p1, "autoDictionary"    # Lcom/android/inputmethod/latin/Dictionary;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 177
    return-void
.end method

.method public setAutoTextDictionary(Lcom/android/inputmethod/latin/AutoTextDictionary;)V
    .locals 0
    .param p1, "autoTextDictionary"    # Lcom/android/inputmethod/latin/AutoTextDictionary;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoTextDictionary:Lcom/android/inputmethod/latin/AutoTextDictionary;

    .line 173
    return-void
.end method

.method public setAutoTextEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoTextEnabled:Z

    .line 138
    return-void
.end method

.method public setContactsDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 0
    .param p1, "userDictionary"    # Lcom/android/inputmethod/latin/Dictionary;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 169
    return-void
.end method

.method public setCorrectionMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 146
    return-void
.end method

.method public setMaxSuggestions(I)V
    .locals 3
    .param p1, "maxSuggestions"    # I

    .prologue
    .line 190
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 191
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSuggestions must be between 1 and 100"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_1
    iput p1, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 194
    iget v1, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 195
    const/16 v1, 0x3c

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    .line 196
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    invoke-direct {p0, v1, v2}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    if-lt v1, v2, :cond_2

    .line 201
    return-void

    .line 198
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 199
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setUserBigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 0
    .param p1, "userBigramDictionary"    # Lcom/android/inputmethod/latin/Dictionary;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mUserBigramDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 181
    return-void
.end method

.method public setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 0
    .param p1, "userDictionary"    # Lcom/android/inputmethod/latin/Dictionary;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 162
    return-void
.end method
