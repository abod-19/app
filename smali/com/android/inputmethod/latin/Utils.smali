.class public Lcom/android/inputmethod/latin/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Utils$GCUtils;,
        Lcom/android/inputmethod/latin/Utils$RingCharBuffer;,
        Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static DBG_EDIT_DISTANCE:Z = false

.field private static final FULL_WORD_MULTIPLIER:I = 0x2

.field private static final MAX_INITIAL_SCORE:I = 0xff

.field private static final MINIMUM_SAFETY_NET_CHAR_LENGTH:I = 0x4

.field private static final S_INT_MAX:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String;

.field private static final TYPED_LETTER_MULTIPLIER:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/inputmethod/latin/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    .line 52
    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/Utils;->DBG:Z

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/inputmethod/latin/Utils;->DBG_EDIT_DISTANCE:Z

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static calcNormalizedScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)D
    .locals 16
    .param p0, "before"    # Ljava/lang/CharSequence;
    .param p1, "after"    # Ljava/lang/CharSequence;
    .param p2, "score"    # I

    .prologue
    .line 302
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 303
    .local v2, "beforeLength":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 304
    .local v1, "afterLength":I
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-wide/16 v10, 0x0

    .line 323
    :goto_0
    return-wide v10

    .line 305
    :cond_1
    invoke-static/range {p0 .. p1}, Lcom/android/inputmethod/latin/Utils;->editDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    .line 308
    .local v3, "distance":I
    const/4 v7, 0x0

    .line 309
    .local v7, "spaceCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v1, :cond_2

    .line 314
    if-ne v7, v1, :cond_4

    const-wide/16 v10, 0x0

    goto :goto_0

    .line 310
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_3

    .line 311
    add-int/lit8 v7, v7, 0x1

    .line 309
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 315
    :cond_4
    const v10, 0x7fffffff

    move/from16 v0, p2

    if-ne v0, v10, :cond_5

    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    .line 322
    .local v5, "maximumScore":D
    :goto_2
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    int-to-double v12, v3

    int-to-double v14, v1

    div-double/2addr v12, v14

    sub-double v8, v10, v12

    .line 323
    .local v8, "weight":D
    move/from16 v0, p2

    int-to-double v10, v0

    div-double/2addr v10, v5

    mul-double/2addr v10, v8

    goto :goto_0

    .line 315
    .end local v5    # "maximumScore":D
    .end local v8    # "weight":D
    :cond_5
    const-wide v10, 0x406fe00000000000L    # 255.0

    .line 317
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    sub-int v14, v1, v7

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-double v14, v14

    .line 316
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v10, v12

    .line 318
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v5, v10, v12

    goto :goto_2
.end method

.method public static cancelTask(Landroid/os/AsyncTask;Z)V
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;Z)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 70
    :cond_0
    return-void
.end method

.method public static containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "csv"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 476
    if-nez p1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v1

    .line 478
    :cond_1
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 479
    .local v0, "option":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 480
    const/4 v1, 0x1

    goto :goto_0

    .line 478
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static dipToPixel(FI)I
    .locals 4
    .param p0, "scale"    # F
    .param p1, "dip"    # I

    .prologue
    .line 590
    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static editDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 14
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;

    .prologue
    .line 224
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 225
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "editDistance: Arguments should not be null."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 227
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 228
    .local v6, "sl":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 229
    .local v8, "tl":I
    add-int/lit8 v9, v6, 0x1

    add-int/lit8 v10, v8, 0x1

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 230
    .local v1, "dp":[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-le v2, v6, :cond_3

    .line 233
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-le v3, v8, :cond_4

    .line 236
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v6, :cond_5

    .line 251
    sget-boolean v9, Lcom/android/inputmethod/latin/Utils;->DBG_EDIT_DISTANCE:Z

    if-eqz v9, :cond_2

    .line 252
    sget-object v9, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "editDistance:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v2, 0x0

    :goto_3
    array-length v9, v1

    if-lt v2, v9, :cond_9

    .line 261
    :cond_2
    aget-object v9, v1, v6

    aget v9, v9, v8

    return v9

    .line 231
    .end local v3    # "j":I
    :cond_3
    aget-object v9, v1, v2

    const/4 v10, 0x0

    aput v2, v9, v10

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .restart local v3    # "j":I
    :cond_4
    const/4 v9, 0x0

    aget-object v9, v1, v9

    aput v3, v9, v3

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 237
    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-lt v3, v8, :cond_6

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 238
    :cond_6
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 239
    .local v5, "sc":C
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    .line 240
    .local v7, "tc":C
    if-ne v5, v7, :cond_8

    const/4 v0, 0x0

    .line 241
    .local v0, "cost":I
    :goto_5
    add-int/lit8 v9, v2, 0x1

    aget-object v9, v1, v9

    add-int/lit8 v10, v3, 0x1

    .line 242
    aget-object v11, v1, v2

    add-int/lit8 v12, v3, 0x1

    aget v11, v11, v12

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v2, 0x1

    aget-object v12, v1, v12

    aget v12, v12, v3

    add-int/lit8 v12, v12, 0x1

    aget-object v13, v1, v2

    aget v13, v13, v3

    add-int/2addr v13, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 241
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v9, v10

    .line 244
    if-lez v2, :cond_7

    if-lez v3, :cond_7

    .line 245
    add-int/lit8 v9, v3, -0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-ne v5, v9, :cond_7

    .line 246
    add-int/lit8 v9, v2, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-ne v7, v9, :cond_7

    .line 247
    add-int/lit8 v9, v2, 0x1

    aget-object v9, v1, v9

    add-int/lit8 v10, v3, 0x1

    add-int/lit8 v11, v2, 0x1

    aget-object v11, v1, v11

    add-int/lit8 v12, v3, 0x1

    aget v11, v11, v12

    add-int/lit8 v12, v2, -0x1

    aget-object v12, v1, v12

    add-int/lit8 v13, v3, -0x1

    aget v12, v12, v13

    add-int/2addr v12, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v9, v10

    .line 237
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 240
    .end local v0    # "cost":I
    :cond_8
    const/4 v0, 0x1

    goto :goto_5

    .line 254
    .end local v5    # "sc":C
    .end local v7    # "tc":C
    :cond_9
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    :goto_6
    aget-object v9, v1, v2

    array-length v9, v9

    if-lt v3, v9, :cond_a

    .line 258
    sget-object v9, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 256
    :cond_a
    aget-object v9, v1, v2

    aget v9, v9, v3

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const/16 v10, 0x2c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method public static equalsIgnoreCase(CC)Z
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C

    .prologue
    .line 529
    if-eq p0, p1, :cond_0

    .line 530
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-eq v0, v1, :cond_0

    .line 531
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 529
    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 542
    if-ne p0, p1, :cond_1

    .line 553
    :cond_0
    :goto_0
    return v2

    .line 544
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v2, v3

    .line 545
    goto :goto_0

    .line 546
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 547
    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v1, v4, :cond_4

    move v2, v3

    .line 548
    goto :goto_0

    .line 549
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 550
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/Utils;->equalsIgnoreCase(CC)Z

    move-result v4

    if-nez v4, :cond_5

    move v2, v3

    .line 551
    goto :goto_0

    .line 549
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;[CII)Z
    .locals 5
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 569
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_1

    .line 570
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "array.length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 571
    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 572
    :cond_1
    if-nez p0, :cond_4

    .line 573
    if-nez p3, :cond_3

    .line 580
    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 573
    goto :goto_0

    .line 574
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v3, p3, :cond_5

    move v1, v2

    .line 575
    goto :goto_0

    .line 576
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 577
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int v4, p2, v0

    aget-char v4, p1, v4

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/Utils;->equalsIgnoreCase(CC)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 578
    goto :goto_0

    .line 576
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getDipScale(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 585
    .local v0, "scale":F
    return v0
.end method

.method public static getMainDictionaryResourceId(Landroid/content/res/Resources;)I
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 498
    const-string v0, "en_binary"

    .line 499
    .local v0, "MAIN_DIC_NAME":Ljava/lang/String;
    const-string v1, "en_binary"

    const-string v2, "raw"

    sget-object v3, Lcom/android/inputmethod/latin/DictionaryEditor;->PackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getShortDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 631
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/inputmethod/latin/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTrace()Ljava/lang/String;
    .locals 6

    .prologue
    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 272
    .local v1, "frames":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_0

    .line 274
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 272
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 487
    if-nez p2, :cond_0

    .line 488
    const/4 v0, 0x0

    .line 489
    .end local p1    # "key":Ljava/lang/String;
    :goto_0
    return v0

    .restart local p1    # "key":Ljava/lang/String;
    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 490
    .end local p1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v0, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 489
    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/Utils;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static loadNativeLibrary()V
    .locals 3

    .prologue
    .line 504
    :try_start_0
    const-string v1, "jni_latinime_moded"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 505
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 506
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    const-string v2, "Could not load native library jni_latinime_moded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static openRawResourceFd(Landroid/content/res/Resources;I)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "fallbackResId"    # I

    .prologue
    .line 512
    const/4 v0, 0x0

    .line 514
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 518
    :goto_0
    return-object v0

    .line 515
    :catch_0
    move-exception v1

    .line 516
    .local v1, "ule":Landroid/content/res/Resources$NotFoundException;
    sget-object v2, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    const-string v3, "Could not load resourecesFD"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeDupes(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 616
    :cond_0
    return-void

    .line 601
    :cond_1
    const/4 v1, 0x1

    .line 603
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 604
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 606
    .local v0, "cur":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-lt v2, v1, :cond_2

    .line 614
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    :cond_2
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 608
    .local v3, "previous":Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 609
    invoke-static {p0, v1}, Lcom/android/inputmethod/latin/Utils;->removeFromSuggestions(Ljava/util/ArrayList;I)V

    .line 610
    add-int/lit8 v1, v1, -0x1

    .line 611
    goto :goto_2

    .line 606
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static removeFromSuggestions(Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "index"    # I
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
    .line 620
    .local p0, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 621
    .local v0, "garbage":Ljava/lang/CharSequence;
    instance-of v1, v0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 622
    check-cast v0, Ljava/lang/StringBuilder;

    .end local v0    # "garbage":Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/inputmethod/latin/StringBuilderPool;->recycle(Ljava/lang/StringBuilder;)V

    .line 624
    :cond_0
    return-void
.end method

.method public static toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v3, 0x1

    .line 635
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_0

    .line 647
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
