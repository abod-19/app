.class public Lcom/android/inputmethod/latin/ProximityInfo;
.super Ljava/lang/Object;
.source "ProximityInfo.java"


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field public static final MAX_PROXIMITY_CHARS_SIZE:I = 0x10

.field private static SEARCH_DISTANCE:F


# instance fields
.field private final mCellHeight:I

.field private final mCellWidth:I

.field private final mGridHeight:I

.field private final mGridNeighbors:[[I

.field private final mGridSize:I

.field private final mGridWidth:I

.field private final mKeyHeight:I

.field private final mKeyboardHeight:I

.field private final mKeyboardMinWidth:I

.field private mNativeProximityInfo:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const v1, 0x3f99999a    # 1.2f

    sput v1, Lcom/android/inputmethod/latin/ProximityInfo;->SEARCH_DISTANCE:F

    .line 34
    const/4 v1, 0x0

    new-array v1, v1, [I

    sput-object v1, Lcom/android/inputmethod/latin/ProximityInfo;->EMPTY_INT_ARRAY:[I

    .line 82
    :try_start_0
    const-string v1, "jni_latinime_pt2_new"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 83
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 84
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ProximityInfo"

    const-string v2, "Could not load native library jni_latinime_pt2_new"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method constructor <init>(IIIIIILjava/util/List;Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;)V
    .locals 2
    .param p1, "gridWidth"    # I
    .param p2, "gridHeight"    # I
    .param p3, "minWidth"    # I
    .param p4, "height"    # I
    .param p5, "keyWidth"    # I
    .param p6, "keyHeight"    # I
    .param p8, "touchPositionCorrection"    # Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;",
            "Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p7, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridWidth:I

    .line 50
    iput p2, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridHeight:I

    .line 51
    iget v0, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridWidth:I

    iget v1, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridSize:I

    .line 52
    iget v0, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridWidth:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellWidth:I

    .line 53
    iget v0, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridHeight:I

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellHeight:I

    .line 54
    iput p3, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mKeyboardMinWidth:I

    .line 55
    iput p4, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mKeyboardHeight:I

    .line 56
    iput p6, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mKeyHeight:I

    .line 57
    iget v0, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridSize:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridNeighbors:[[I

    .line 58
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-direct {p0, p5, p7, p8}, Lcom/android/inputmethod/latin/ProximityInfo;->computeNearestNeighbors(ILjava/util/List;Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;)V

    goto :goto_0
.end method

.method private calculateSweetSpot(Ljava/util/List;Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;[F[F[F)V
    .locals 17
    .param p2, "touchPositionCorrection"    # Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;
    .param p3, "sweetSpotCenterXs"    # [F
    .param p4, "sweetSpotCenterYs"    # [F
    .param p5, "sweetSpotRadii"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;",
            "Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;",
            "[F[F[F)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    .line 142
    .local v7, "keyCount":I
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mXs:[F

    .line 143
    .local v12, "xs":[F
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mYs:[F

    .line 144
    .local v14, "ys":[F
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mRadii:[F

    .line 145
    .local v8, "radii":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v7, :cond_0

    .line 163
    return-void

    .line 146
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/Keyboard$Key;

    .line 148
    .local v6, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v15, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mKeyHeight:I

    move/from16 v16, v0

    div-int v10, v15, v16

    .line 149
    .local v10, "row":I
    array-length v15, v8

    if-ge v10, v15, :cond_1

    .line 150
    iget v15, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v1, v15, v16

    .line 151
    .local v1, "hitBoxCenterX":F
    iget v15, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v15, v15

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v2, v15, v16

    .line 152
    .local v2, "hitBoxCenterY":F
    iget v15, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/lit8 v15, v15, 0x1

    int-to-float v4, v15

    .line 153
    .local v4, "hitBoxWidth":F
    iget v15, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v3, v15

    .line 154
    .local v3, "hitBoxHeight":F
    aget v11, v12, v10

    .line 155
    .local v11, "x":F
    aget v13, v14, v10

    .line 156
    .local v13, "y":F
    aget v9, v8, v10

    .line 157
    .local v9, "radius":F
    mul-float v15, v11, v4

    add-float/2addr v15, v1

    aput v15, p3, v5

    .line 158
    mul-float v15, v13, v3

    add-float/2addr v15, v2

    aput v15, p4, v5

    .line 160
    mul-float v15, v4, v4

    mul-float v16, v3, v3

    add-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v15, v15

    mul-float/2addr v15, v9

    .line 159
    aput v15, p5, v5

    .line 145
    .end local v1    # "hitBoxCenterX":F
    .end local v2    # "hitBoxCenterY":F
    .end local v3    # "hitBoxHeight":F
    .end local v4    # "hitBoxWidth":F
    .end local v9    # "radius":F
    .end local v11    # "x":F
    .end local v13    # "y":F
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private computeNearestNeighbors(ILjava/util/List;Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;)V
    .locals 22
    .param p1, "defaultWidth"    # I
    .param p3, "touchPositionCorrection"    # Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;",
            "Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    move/from16 v0, p1

    int-to-float v1, v0

    sget v2, Lcom/android/inputmethod/latin/ProximityInfo;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v19, v0

    .line 184
    .local v19, "thresholdBase":I
    mul-int v18, v19, v19

    .line 186
    .local v18, "threshold":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 187
    .local v16, "indices":[I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellWidth:I

    mul-int v13, v1, v2

    .line 188
    .local v13, "gridWidth":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellHeight:I

    mul-int v12, v1, v2

    .line 189
    .local v12, "gridHeight":I
    const/16 v20, 0x0

    .local v20, "x":I
    :goto_0
    move/from16 v0, v20

    if-lt v0, v13, :cond_0

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridNeighbors:[[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mKeyboardMinWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mKeyboardHeight:I

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/inputmethod/latin/ProximityInfo;->setProximityInfo([[IIILjava/util/List;Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;)V

    .line 212
    return-void

    .line 190
    :cond_0
    const/16 v21, 0x0

    .local v21, "y":I
    :goto_1
    move/from16 v0, v21

    if-lt v0, v12, :cond_1

    .line 189
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellWidth:I

    add-int v20, v20, v1

    goto :goto_0

    .line 191
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int v8, v20, v1

    .line 192
    .local v8, "centerX":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int v9, v21, v1

    .line 193
    .local v9, "centerY":I
    const/4 v10, 0x0

    .line 194
    .local v10, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt v14, v1, :cond_2

    .line 205
    new-array v7, v10, [I

    .line 206
    .local v7, "cell":[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v1, v7, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridNeighbors:[[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellHeight:I

    div-int v2, v21, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridWidth:I

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellWidth:I

    div-int v3, v20, v3

    add-int/2addr v2, v3

    aput-object v7, v1, v2

    .line 190
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellHeight:I

    add-int v21, v21, v1

    goto :goto_1

    .line 195
    .end local v7    # "cell":[I
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/inputmethodservice/Keyboard$Key;

    .line 196
    .local v17, "key":Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 198
    const/4 v15, 0x0

    .line 202
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v1

    move/from16 v0, v18

    if-ge v1, v0, :cond_4

    .line 203
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "count":I
    .local v11, "count":I
    aput v14, v16, v10

    move v10, v11

    .line 194
    .end local v11    # "count":I
    .restart local v10    # "count":I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2
.end method

.method public static createDummyProximityInfo()Lcom/android/inputmethod/latin/ProximityInfo;
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 66
    new-instance v0, Lcom/android/inputmethod/latin/ProximityInfo;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v8}, Lcom/android/inputmethod/latin/ProximityInfo;-><init>(IIIIIILjava/util/List;Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;)V

    return-object v0
.end method

.method public static createSpellCheckerProximityInfo()Lcom/android/inputmethod/latin/ProximityInfo;
    .locals 16

    .prologue
    const/4 v8, 0x0

    .line 70
    invoke-static {}, Lcom/android/inputmethod/latin/ProximityInfo;->createDummyProximityInfo()Lcom/android/inputmethod/latin/ProximityInfo;

    move-result-object v0

    .line 73
    .local v0, "spellCheckerProximityInfo":Lcom/android/inputmethod/latin/ProximityInfo;
    const/16 v1, 0x10

    .line 74
    const/16 v2, 0x1e0

    const/16 v3, 0x12c

    const/16 v4, 0xa

    const/4 v5, 0x3

    sget-object v6, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo;->PROXIMITY:[I

    .line 75
    const/4 v7, 0x0

    move-object v9, v8

    move-object v10, v8

    move-object v11, v8

    move-object v12, v8

    move-object v13, v8

    move-object v14, v8

    move-object v15, v8

    .line 72
    invoke-direct/range {v0 .. v15}, Lcom/android/inputmethod/latin/ProximityInfo;->setProximityInfoNative(IIIII[II[I[I[I[I[I[F[F[F)I

    move-result v1

    .line 71
    iput v1, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mNativeProximityInfo:I

    .line 76
    return-object v0
.end method

.method private native releaseProximityInfoNative(I)V
.end method

.method private final setProximityInfo([[IIILjava/util/List;Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;)V
    .locals 28
    .param p1, "gridNeighborKeyIndexes"    # [[I
    .param p2, "keyboardWidth"    # I
    .param p3, "keyboardHeight"    # I
    .param p5, "touchPositionCorrection"    # Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[III",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;",
            "Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p4, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridSize:I

    mul-int/lit8 v2, v2, 0x10

    new-array v14, v2, [I

    .line 98
    .local v14, "proximityCharsArray":[I
    const/4 v2, -0x1

    invoke-static {v14, v2}, Ljava/util/Arrays;->fill([II)V

    .line 99
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridSize:I

    move/from16 v0, v24

    if-lt v0, v2, :cond_1

    .line 106
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v15

    .line 107
    .local v15, "keyCount":I
    new-array v0, v15, [I

    move-object/from16 v16, v0

    .line 108
    .local v16, "keyXCoordinates":[I
    new-array v0, v15, [I

    move-object/from16 v17, v0

    .line 109
    .local v17, "keyYCoordinates":[I
    new-array v0, v15, [I

    move-object/from16 v18, v0

    .line 110
    .local v18, "keyWidths":[I
    new-array v0, v15, [I

    move-object/from16 v19, v0

    .line 111
    .local v19, "keyHeights":[I
    new-array v0, v15, [I

    move-object/from16 v20, v0

    .line 112
    .local v20, "keyCharCodes":[I
    const/16 v24, 0x0

    :goto_1
    move/from16 v0, v24

    if-lt v0, v15, :cond_3

    .line 121
    const/4 v5, 0x0

    .line 122
    .local v5, "sweetSpotCenterXs":[F
    const/4 v6, 0x0

    .line 123
    .local v6, "sweetSpotCenterYs":[F
    const/4 v7, 0x0

    .line 125
    .local v7, "sweetSpotRadii":[F
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    new-array v5, v15, [F

    .line 127
    new-array v6, v15, [F

    .line 128
    new-array v7, v15, [F

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 129
    invoke-direct/range {v2 .. v7}, Lcom/android/inputmethod/latin/ProximityInfo;->calculateSweetSpot(Ljava/util/List;Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;[F[F[F)V

    .line 133
    :cond_0
    const/16 v9, 0x10

    .line 134
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridHeight:I

    move-object/from16 v8, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 133
    invoke-direct/range {v8 .. v23}, Lcom/android/inputmethod/latin/ProximityInfo;->setProximityInfoNative(IIIII[II[I[I[I[I[I[F[F[F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/latin/ProximityInfo;->mNativeProximityInfo:I

    .line 137
    return-void

    .line 100
    .end local v5    # "sweetSpotCenterXs":[F
    .end local v6    # "sweetSpotCenterYs":[F
    .end local v7    # "sweetSpotRadii":[F
    .end local v15    # "keyCount":I
    .end local v16    # "keyXCoordinates":[I
    .end local v17    # "keyYCoordinates":[I
    .end local v18    # "keyWidths":[I
    .end local v19    # "keyHeights":[I
    .end local v20    # "keyCharCodes":[I
    :cond_1
    aget-object v2, p1, v24

    array-length v0, v2

    move/from16 v27, v0

    .line 101
    .local v27, "proximityCharsLength":I
    const/16 v25, 0x0

    .local v25, "j":I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_2

    .line 99
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 102
    :cond_2
    mul-int/lit8 v2, v24, 0x10

    add-int v3, v2, v25

    .line 103
    aget-object v2, p1, v24

    aget v2, v2, v25

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    .line 102
    aput v2, v14, v3

    .line 101
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 113
    .end local v25    # "j":I
    .end local v27    # "proximityCharsLength":I
    .restart local v15    # "keyCount":I
    .restart local v16    # "keyXCoordinates":[I
    .restart local v17    # "keyYCoordinates":[I
    .restart local v18    # "keyWidths":[I
    .restart local v19    # "keyHeights":[I
    .restart local v20    # "keyCharCodes":[I
    :cond_3
    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/inputmethodservice/Keyboard$Key;

    .line 114
    .local v26, "key":Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, v26

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move-object/from16 v0, v26

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v16, v24

    .line 115
    move-object/from16 v0, v26

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    aput v2, v17, v24

    .line 116
    move-object/from16 v0, v26

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    aput v2, v18, v24

    .line 117
    move-object/from16 v0, v26

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    aput v2, v19, v24

    .line 118
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v20, v24

    .line 112
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1
.end method

.method private native setProximityInfoNative(IIIII[II[I[I[I[I[I[F[F[F)I
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    iget v0, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mNativeProximityInfo:I

    if-eqz v0, :cond_0

    .line 173
    iget v0, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mNativeProximityInfo:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/ProximityInfo;->releaseProximityInfoNative(I)V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mNativeProximityInfo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 179
    return-void

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 178
    throw v0
.end method

.method public getNativeProximityInfo()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mNativeProximityInfo:I

    return v0
.end method

.method public getNearestKeys(II)[I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridNeighbors:[[I

    if-nez v1, :cond_0

    .line 232
    sget-object v1, Lcom/android/inputmethod/latin/ProximityInfo;->EMPTY_INT_ARRAY:[I

    .line 240
    :goto_0
    return-object v1

    .line 234
    :cond_0
    if-ltz p1, :cond_1

    iget v1, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mKeyboardMinWidth:I

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    iget v1, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mKeyboardHeight:I

    if-ge p2, v1, :cond_1

    .line 235
    iget v1, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellHeight:I

    div-int v1, p2, v1

    iget v2, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 236
    .local v0, "index":I
    iget v1, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridSize:I

    if-ge v0, v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    goto :goto_0

    .line 240
    .end local v0    # "index":I
    :cond_1
    sget-object v1, Lcom/android/inputmethod/latin/ProximityInfo;->EMPTY_INT_ARRAY:[I

    goto :goto_0
.end method

.method getStartIndexFromCoordinates(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 214
    iget v0, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellHeight:I

    div-int v0, p2, v0

    iget v1, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mGridWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/inputmethod/latin/ProximityInfo;->mCellWidth:I

    div-int v1, p1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x10

    return v0
.end method
