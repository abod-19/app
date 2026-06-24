.class public Lcom/android/inputmethod/latin/EditingUtil;
.super Ljava/lang/Object;
.source "EditingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/EditingUtil$Range;,
        Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;
    }
.end annotation


# static fields
.field private static final INVALID_CURSOR_POSITION:I = -0x1

.field private static final LOOKBACK_CHARACTER_NUM:I = 0x61

.field private static sMethodGetSelectedText:Ljava/lang/reflect/Method;

.field private static sMethodSetComposingRegion:Ljava/lang/reflect/Method;

.field private static sMethodsInitialized:Z

.field private static final spaceRegex:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/EditingUtil;->spaceRegex:Ljava/util/regex/Pattern;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 5
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 64
    if-nez p0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 72
    move-object v1, p1

    .line 73
    .local v1, "text":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p0, v4, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 74
    .local v0, "charBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 75
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    :cond_1
    invoke-interface {p0, v1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method public static deleteWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 5
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "separators"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/EditingUtil;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/android/inputmethod/latin/EditingUtil$Range;

    move-result-object v1

    .line 112
    .local v1, "range":Lcom/android/inputmethod/latin/EditingUtil$Range;
    if-nez v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 117
    invoke-static {p0}, Lcom/android/inputmethod/latin/EditingUtil;->getCursorPosition(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    iget v3, v1, Lcom/android/inputmethod/latin/EditingUtil$Range;->mCharsBefore:I

    sub-int v0, v2, v3

    .line 118
    .local v0, "newCursor":I
    invoke-interface {p0, v0, v0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 126
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/inputmethod/latin/EditingUtil$Range;->mCharsBefore:I

    iget v4, v1, Lcom/android/inputmethod/latin/EditingUtil$Range;->mCharsAfter:I

    add-int/2addr v3, v4

    invoke-interface {p0, v2, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method public static deleteWordBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 5
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "separators"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/android/inputmethod/latin/EditingUtil;->getWordRangeBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lcom/android/inputmethod/latin/EditingUtil$Range;)Lcom/android/inputmethod/latin/EditingUtil$Range;

    move-result-object v1

    .line 160
    .local v1, "range":Lcom/android/inputmethod/latin/EditingUtil$Range;
    if-nez v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 167
    invoke-static {p0}, Lcom/android/inputmethod/latin/EditingUtil;->getCursorPosition(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    iget v3, v1, Lcom/android/inputmethod/latin/EditingUtil$Range;->mCharsAfter:I

    sub-int/2addr v2, v3

    iget v3, v1, Lcom/android/inputmethod/latin/EditingUtil$Range;->mCharsBefore:I

    add-int v0, v2, v3

    .line 168
    .local v0, "newCursor":I
    invoke-interface {p0, v0, v0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 169
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/inputmethod/latin/EditingUtil$Range;->mCharsAfter:I

    iget v4, v1, Lcom/android/inputmethod/latin/EditingUtil$Range;->mCharsBefore:I

    sub-int/2addr v3, v4

    invoke-interface {p0, v2, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private static getCursorPosition(Landroid/view/inputmethod/InputConnection;)I
    .locals 4
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v1, -0x1

    .line 84
    if-nez p0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 86
    .local v0, "extracted":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 89
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "sentenceSeperators"    # Ljava/lang/String;

    .prologue
    .line 244
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 246
    :goto_0
    return-object v1

    .line 245
    :cond_0
    const/16 v1, 0x61

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 246
    .local v0, "prev":Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/EditingUtil;->getPreviousWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPreviousWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "prev"    # Ljava/lang/CharSequence;
    .param p1, "sentenceSeperators"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 260
    if-nez p0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-object v2

    .line 261
    :cond_1
    sget-object v3, Lcom/android/inputmethod/latin/EditingUtil;->spaceRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "w":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 267
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v1, v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 268
    .local v0, "lastChar":C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 270
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v1, v2

    goto :goto_0
.end method

.method private static getSelectedText(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    const/4 v6, 0x0

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "result":Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/android/inputmethod/latin/EditingUtil;->sMethodsInitialized:Z

    if-nez v2, :cond_0

    .line 393
    invoke-static {}, Lcom/android/inputmethod/latin/EditingUtil;->initializeMethodsForReflection()V

    .line 395
    :cond_0
    sget-object v2, Lcom/android/inputmethod/latin/EditingUtil;->sMethodGetSelectedText:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 397
    :try_start_0
    sget-object v2, Lcom/android/inputmethod/latin/EditingUtil;->sMethodGetSelectedText:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "result":Ljava/lang/CharSequence;
    move-object v1, v0

    .line 414
    .end local v0    # "result":Ljava/lang/CharSequence;
    .local v1, "result":Ljava/lang/CharSequence;
    :goto_0
    return-object v1

    .line 403
    .end local v1    # "result":Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    .line 411
    :cond_1
    :goto_1
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 412
    sub-int v2, p2, p1

    invoke-interface {p0, v2, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 413
    .restart local v0    # "result":Ljava/lang/CharSequence;
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-object v1, v0

    .line 414
    .end local v0    # "result":Ljava/lang/CharSequence;
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_0

    .line 401
    .end local v1    # "result":Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    goto :goto_1

    .line 399
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public static getThisWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "sentenceSeperators"    # Ljava/lang/String;

    .prologue
    .line 274
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 276
    :goto_0
    return-object v1

    .line 275
    :cond_0
    const/16 v1, 0x61

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 276
    .local v0, "prev":Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/EditingUtil;->getThisWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public static getThisWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "prev"    # Ljava/lang/CharSequence;
    .param p1, "sentenceSeperators"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 287
    if-nez p0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-object v2

    .line 288
    :cond_1
    sget-object v3, Lcom/android/inputmethod/latin/EditingUtil;->spaceRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "w":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 294
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 295
    .local v0, "lastChar":C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 297
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    goto :goto_0
.end method

.method public static getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "separators"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/EditingUtil;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/android/inputmethod/latin/EditingUtil$Range;

    move-result-object v0

    .line 102
    .local v0, "r":Lcom/android/inputmethod/latin/EditingUtil$Range;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/inputmethod/latin/EditingUtil$Range;->mWord:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;
    .locals 10
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I
    .param p3, "wordSeparators"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 311
    if-ne p1, p2, :cond_1

    .line 314
    invoke-static {p0, p3}, Lcom/android/inputmethod/latin/EditingUtil;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/android/inputmethod/latin/EditingUtil$Range;

    move-result-object v4

    .line 315
    .local v4, "range":Lcom/android/inputmethod/latin/EditingUtil$Range;
    if-eqz v4, :cond_0

    iget-object v7, v4, Lcom/android/inputmethod/latin/EditingUtil$Range;->mWord:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 316
    new-instance v6, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;

    iget v7, v4, Lcom/android/inputmethod/latin/EditingUtil$Range;->mCharsBefore:I

    sub-int v7, p1, v7

    iget v8, v4, Lcom/android/inputmethod/latin/EditingUtil$Range;->mCharsAfter:I

    add-int/2addr v8, p2

    .line 317
    iget-object v9, v4, Lcom/android/inputmethod/latin/EditingUtil$Range;->mWord:Ljava/lang/String;

    .line 316
    invoke-direct {v6, v7, v8, v9}, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;-><init>(IILjava/lang/CharSequence;)V

    .line 347
    .end local v4    # "range":Lcom/android/inputmethod/latin/EditingUtil$Range;
    :cond_0
    :goto_0
    return-object v6

    .line 320
    :cond_1
    if-eqz p0, :cond_0

    .line 322
    invoke-interface {p0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 323
    .local v1, "charsBefore":Ljava/lang/CharSequence;
    invoke-static {v1, p3}, Lcom/android/inputmethod/latin/EditingUtil;->isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 328
    invoke-interface {p0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 329
    .local v0, "charsAfter":Ljava/lang/CharSequence;
    invoke-static {v0, p3}, Lcom/android/inputmethod/latin/EditingUtil;->isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 334
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/EditingUtil;->getSelectedText(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 336
    .local v5, "touching":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 338
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 339
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 345
    new-instance v6, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;

    invoke-direct {v6, p1, p2, v5}, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;-><init>(IILjava/lang/CharSequence;)V

    goto :goto_0

    .line 340
    :cond_2
    add-int/lit8 v7, v2, 0x1

    invoke-interface {v5, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/android/inputmethod/latin/EditingUtil$Range;
    .locals 11
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 206
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v6

    .line 209
    :cond_1
    invoke-interface {p0, v7, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 210
    .local v1, "before":Ljava/lang/CharSequence;
    invoke-interface {p0, v7, v10}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 211
    .local v0, "after":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 217
    .local v4, "start":I
    :goto_1
    if-lez v4, :cond_2

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lcom/android/inputmethod/latin/EditingUtil;->isWhitespace(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 220
    :cond_2
    const/4 v3, -0x1

    .line 221
    .local v3, "end":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lcom/android/inputmethod/latin/EditingUtil;->isWhitespace(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 225
    :cond_4
    invoke-static {p0}, Lcom/android/inputmethod/latin/EditingUtil;->getCursorPosition(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    .line 226
    .local v2, "cursor":I
    if-ltz v4, :cond_0

    add-int v7, v2, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v8, v9

    if-gt v7, v8, :cond_0

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 227
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "word":Ljava/lang/String;
    new-instance v6, Lcom/android/inputmethod/latin/EditingUtil$Range;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-direct {v6, v7, v3, v5}, Lcom/android/inputmethod/latin/EditingUtil$Range;-><init>(IILjava/lang/String;)V

    goto :goto_0

    .line 217
    .end local v2    # "cursor":I
    .end local v3    # "end":I
    .end local v5    # "word":Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private static getWordRangeBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lcom/android/inputmethod/latin/EditingUtil$Range;)Lcom/android/inputmethod/latin/EditingUtil$Range;
    .locals 7
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "range"    # Lcom/android/inputmethod/latin/EditingUtil$Range;

    .prologue
    const/4 v3, 0x0

    .line 174
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-object v3

    .line 177
    :cond_1
    const/16 v5, 0x3e8

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 178
    .local v2, "before":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 183
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 184
    .local v0, "WordEnd":I
    :goto_1
    if-lez v0, :cond_2

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5, p1}, Lcom/android/inputmethod/latin/EditingUtil;->isWhitespace(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 186
    :cond_2
    move v1, v0

    .line 187
    .local v1, "WordStart":I
    :goto_2
    if-lez v1, :cond_3

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5, p1}, Lcom/android/inputmethod/latin/EditingUtil;->isWhitespace(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 189
    :cond_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 190
    if-ltz v1, :cond_0

    .line 191
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "word":Ljava/lang/String;
    if-eqz p2, :cond_6

    move-object v3, p2

    .line 195
    .local v3, "returnRange":Lcom/android/inputmethod/latin/EditingUtil$Range;
    :goto_3
    goto :goto_0

    .line 184
    .end local v1    # "WordStart":I
    .end local v3    # "returnRange":Lcom/android/inputmethod/latin/EditingUtil$Range;
    .end local v4    # "word":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 187
    .restart local v1    # "WordStart":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 194
    .restart local v4    # "word":Ljava/lang/String;
    :cond_6
    new-instance v3, Lcom/android/inputmethod/latin/EditingUtil$Range;

    invoke-direct {v3, v1, v0, v4}, Lcom/android/inputmethod/latin/EditingUtil$Range;-><init>(IILjava/lang/String;)V

    goto :goto_3
.end method

.method private static initializeMethodsForReflection()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 380
    :try_start_0
    const-class v0, Landroid/view/inputmethod/InputConnection;

    const-string v1, "getSelectedText"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/EditingUtil;->sMethodGetSelectedText:Ljava/lang/reflect/Method;

    .line 381
    const-class v0, Landroid/view/inputmethod/InputConnection;

    const-string v1, "setComposingRegion"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 382
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 381
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/EditingUtil;->sMethodSetComposingRegion:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    sput-boolean v5, Lcom/android/inputmethod/latin/EditingUtil;->sMethodsInitialized:Z

    .line 387
    return-void

    .line 383
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static isWhitespace(ILjava/lang/String;)Z
    .locals 1
    .param p0, "code"    # I
    .param p1, "whitespace"    # Ljava/lang/String;

    .prologue
    .line 236
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .param p0, "singleChar"    # Ljava/lang/CharSequence;
    .param p1, "wordSeparators"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static underlineWord(Landroid/view/inputmethod/InputConnection;Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;)V
    .locals 4
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "word"    # Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;

    .prologue
    .line 357
    sget-boolean v0, Lcom/android/inputmethod/latin/EditingUtil;->sMethodsInitialized:Z

    if-nez v0, :cond_0

    .line 358
    invoke-static {}, Lcom/android/inputmethod/latin/EditingUtil;->initializeMethodsForReflection()V

    .line 360
    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/EditingUtil;->sMethodSetComposingRegion:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 362
    :try_start_0
    sget-object v0, Lcom/android/inputmethod/latin/EditingUtil;->sMethodSetComposingRegion:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_1
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    goto :goto_0

    .line 365
    :catch_1
    move-exception v0

    goto :goto_0

    .line 363
    :catch_2
    move-exception v0

    goto :goto_0
.end method
