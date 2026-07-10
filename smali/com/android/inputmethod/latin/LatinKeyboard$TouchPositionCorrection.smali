.class public Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;
.super Ljava/lang/Object;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchPositionCorrection"
.end annotation


# static fields
.field private static final TOUCH_POSITION_CORRECTION_RECORD_SIZE:I = 0x3


# instance fields
.field public mEnabled:Z

.field public mRadii:[F

.field public mXs:[F

.field public mYs:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mEnabled:Z

    .line 260
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mXs:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mYs:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mRadii:[F

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mXs:[F

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mYs:[F

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mRadii:[F

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 310
    goto :goto_0
.end method

.method public load([Ljava/lang/String;)V
    .locals 9
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 269
    array-length v0, p1

    .line 270
    .local v0, "dataLength":I
    rem-int/lit8 v7, v0, 0x3

    if-eqz v7, :cond_0

    .line 271
    sget-boolean v7, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 272
    new-instance v7, Ljava/lang/RuntimeException;

    .line 273
    const-string v8, "the size of touch position correction data is invalid"

    .line 272
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 277
    :cond_0
    div-int/lit8 v4, v0, 0x3

    .line 278
    .local v4, "length":I
    new-array v7, v4, [F

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mXs:[F

    .line 279
    new-array v7, v4, [F

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mYs:[F

    .line 280
    new-array v7, v4, [F

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mRadii:[F

    .line 282
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_2

    .line 303
    .end local v2    # "i":I
    .end local v4    # "length":I
    :cond_1
    :goto_1
    return-void

    .line 283
    .restart local v2    # "i":I
    .restart local v4    # "length":I
    :cond_2
    :try_start_0
    rem-int/lit8 v5, v2, 0x3

    .line 284
    .local v5, "type":I
    div-int/lit8 v3, v2, 0x3

    .line 285
    .local v3, "index":I
    aget-object v7, p1, v2

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 286
    .local v6, "value":F
    if-nez v5, :cond_3

    .line 287
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mXs:[F

    aput v6, v7, v3

    .line 282
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_3
    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    .line 289
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mYs:[F

    aput v6, v7, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 294
    .end local v3    # "index":I
    .end local v5    # "type":I
    .end local v6    # "value":F
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-boolean v7, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 296
    new-instance v7, Ljava/lang/RuntimeException;

    .line 297
    const-string v8, "the number format for touch position correction data is invalid"

    .line 296
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 291
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "index":I
    .restart local v5    # "type":I
    .restart local v6    # "value":F
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mRadii:[F

    aput v6, v7, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 299
    .end local v3    # "index":I
    .end local v5    # "type":I
    .end local v6    # "value":F
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mXs:[F

    .line 300
    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mYs:[F

    .line 301
    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mRadii:[F

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$TouchPositionCorrection;->mEnabled:Z

    .line 307
    return-void
.end method
