.class public Lcom/android/inputmethod/latin/LatinKeyboardView;
.super Lcom/android/inputmethod/latin/LatinKeyboardBaseView;
.source "LatinKeyboardView.java"


# static fields
.field static final DEBUG_AUTO_PLAY:Z = false

.field static final DEBUG_LINE:Z = false

.field static final KEYCODE_DOWN_ARROW:I = 0x14

.field static final KEYCODE_F1:I = -0x67

.field static final KEYCODE_HIDE_KEYBOARD:I = -0xc

.field static final KEYCODE_LEFT_ARROW:I = 0x15

.field static final KEYCODE_MODE_CHANGE_LONGPRESS:I = -0x6c

.field static final KEYCODE_NEXT_LANGUAGE:I = -0x68

.field static final KEYCODE_OPTIONS:I = -0x64

.field static final KEYCODE_OPTIONS_LONGPRESS:I = -0x65

.field static final KEYCODE_PREV_LANGUAGE:I = -0x69

.field static final KEYCODE_REPLACE:I = -0x9

.field static final KEYCODE_RIGHT_ARROW:I = 0x16

.field static final KEYCODE_SCROLL_CANDIDATE:I = -0xb

.field static final KEYCODE_SECOND_SPACE:I = -0xd

.field static final KEYCODE_T9:I = -0xa

.field static final KEYCODE_TOGLE_ARROW_OFF:I = -0x6b

.field static final KEYCODE_TOGLE_ARROW_ON:I = -0x6a

.field static final KEYCODE_UP_ARROW:I = 0x13

.field static final KEYCODE_VOICE:I = -0x66

.field private static final MSG_TOUCH_DOWN:I = 0x1

.field private static final MSG_TOUCH_UP:I = 0x2


# instance fields
.field private mAsciiKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mDisableDisambiguation:Z

.field private mDownDelivered:Z

.field private mDroppingEvents:Z

.field mHandler2:Landroid/os/Handler;

.field private mJumpThresholdSquare:I

.field private mLastRowY:I

.field private mLastX:I

.field private mLastY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPhoneKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mPlaying:Z

.field private mStringIndex:I

.field private mStringToPlay:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 304
    const/16 v0, 0x100

    new-array v0, v0, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mAsciiKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 77
    return-void
.end method

.method private findKeys()V
    .locals 5

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 373
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 379
    return-void

    .line 374
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 375
    .local v0, "code":I
    if-ltz v0, :cond_1

    const/16 v3, 0xff

    if-gt v0, v3, :cond_1

    .line 376
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mAsciiKeys:[Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    aput-object v3, v4, v0

    .line 373
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleSuddenJump(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 185
    .local v8, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v12, v0

    .line 186
    .local v12, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v13, v0

    .line 187
    .local v13, "y":I
    const/4 v10, 0x0

    .line 191
    .local v10, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 192
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDisableDisambiguation:Z

    .line 194
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDisableDisambiguation:Z

    if-eqz v0, :cond_2

    .line 196
    if-ne v8, v1, :cond_1

    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDisableDisambiguation:Z

    .line 247
    :cond_1
    :goto_0
    return v4

    .line 200
    :cond_2
    packed-switch v8, :pswitch_data_0

    .line 245
    :cond_3
    :goto_1
    iput v12, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastX:I

    .line 246
    iput v13, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastY:I

    move v4, v10

    .line 247
    goto :goto_0

    .line 203
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDroppingEvents:Z

    .line 204
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDisableDisambiguation:Z

    goto :goto_1

    .line 208
    :pswitch_1
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastX:I

    sub-int/2addr v0, v12

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastX:I

    sub-int/2addr v1, v12

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastY:I

    sub-int/2addr v1, v13

    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastY:I

    sub-int/2addr v2, v13

    mul-int/2addr v1, v2

    add-int v9, v0, v1

    .line 225
    .local v9, "distanceSquare":I
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDroppingEvents:Z

    if-eqz v0, :cond_3

    .line 227
    const/4 v10, 0x1

    .line 229
    goto :goto_1

    .line 231
    .end local v9    # "distanceSquare":I
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDroppingEvents:Z

    if-eqz v0, :cond_3

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 236
    int-to-float v5, v12

    int-to-float v6, v13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    .line 234
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 237
    .local v11, "translated":Landroid/view/MotionEvent;
    invoke-super {p0, v11}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 238
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 239
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDroppingEvents:Z

    goto :goto_1

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private invokeOnKey(I)Z
    .locals 3
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v2, -0x1

    .line 143
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getOnKeyboardActionListener()Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v2, v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method private setKeyboardLocal(Landroid/inputmethodservice/Keyboard;)V
    .locals 0
    .param p1, "k"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 368
    return-void
.end method


# virtual methods
.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 152
    .local v0, "keyboard":Landroid/inputmethodservice/Keyboard;
    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    instance-of v1, v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    if-eqz v1, :cond_0

    .line 154
    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->isAlphaKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 156
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 159
    :cond_0
    return-object p1
.end method

.method protected canInteractWithUi()Z
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 433
    .local v0, "ib":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    .line 433
    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 394
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->reset()V

    .line 395
    const/4 v2, 0x1

    .line 396
    .local v2, "tryGC":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    if-nez v2, :cond_1

    .line 424
    :cond_0
    return-void

    .line 398
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    const/4 v2, 0x0

    .line 396
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;

    move-result-object v3

    const-string v4, "LatinKeyboardView"

    invoke-virtual {v3, v4, v0}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_1
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 3
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    .line 127
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 128
    .local v0, "primaryCode":I
    sget-boolean v1, Lcom/android/inputmethod/latin/DictionaryEditor;->mLongPressOn123ToSettings:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 130
    const/16 v1, -0x6c

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 132
    :cond_0
    const/16 v1, -0x64

    if-ne v0, v1, :cond_1

    .line 133
    const/16 v1, -0x65

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v1

    goto :goto_0

    .line 134
    :cond_1
    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mPhoneKeyboard:Landroid/inputmethodservice/Keyboard;

    if-ne v1, v2, :cond_2

    .line 136
    const/16 v1, 0x2b

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v1

    goto :goto_0

    .line 137
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 140
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v1

    goto :goto_0

    .line 138
    :cond_3
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_4

    .line 139
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v1

    goto :goto_0

    .line 140
    :cond_4
    const/16 v1, 0x644

    if-ne v0, v1, :cond_5

    .line 141
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v1

    goto :goto_0

    .line 142
    :cond_5
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v3, 0x1

    .line 252
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard;

    .line 260
    .local v1, "keyboard":Lcom/android/inputmethod/latin/LatinKeyboard;
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->handleSuddenJump(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    :goto_0
    return v3

    .line 264
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 265
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->keyReleased()V

    .line 268
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 269
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->getLanguageChangeDirection()I

    move-result v2

    .line 270
    .local v2, "languageDirection":I
    if-eqz v2, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getOnKeyboardActionListener()Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v4

    .line 272
    if-ne v2, v3, :cond_2

    const/16 v3, -0x68

    .line 273
    :goto_1
    iget v5, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastX:I

    iget v6, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastY:I

    .line 271
    invoke-interface {v4, v3, v8, v5, v6}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 274
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 275
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->keyReleased()V

    .line 276
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 272
    :cond_2
    const/16 v3, -0x69

    goto :goto_1

    .line 278
    :cond_3
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->getArraoyChangeDirection()I

    move-result v0

    .line 279
    .local v0, "ArrayDirection":I
    if-eqz v0, :cond_5

    .line 280
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getOnKeyboardActionListener()Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v4

    .line 281
    if-ne v0, v3, :cond_4

    const/16 v3, -0x6b

    .line 282
    :goto_2
    iget v5, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastX:I

    iget v6, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastY:I

    .line 280
    invoke-interface {v4, v3, v8, v5, v6}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 283
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 284
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->keyReleased()V

    .line 285
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 281
    :cond_4
    const/16 v3, -0x6a

    goto :goto_2

    .line 289
    .end local v0    # "ArrayDirection":I
    .end local v2    # "languageDirection":I
    :cond_5
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public requestShiftKeyRedraw()V
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->canInteractWithUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-super {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidate()V

    .line 430
    :cond_0
    return-void
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 3
    .param p1, "newKeyboard"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 96
    .local v0, "oldKeyboard":Landroid/inputmethodservice/Keyboard;
    instance-of v1, v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    .end local v0    # "oldKeyboard":Landroid/inputmethodservice/Keyboard;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->keyReleased()V

    .line 100
    :cond_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 102
    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x7

    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 103
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mJumpThresholdSquare:I

    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mJumpThresholdSquare:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 106
    sget-boolean v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mode_arrows:Z

    if-eqz v1, :cond_2

    .line 108
    sget-boolean v1, Lcom/android/inputmethod/latin/Calibration;->isFourRowLayout:Z

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastRowY:I

    .line 122
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setKeyboardLocal(Landroid/inputmethodservice/Keyboard;)V

    .line 123
    return-void

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastRowY:I

    goto :goto_0

    .line 115
    :cond_2
    sget-boolean v1, Lcom/android/inputmethod/latin/Calibration;->isFourRowLayout:Z

    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastRowY:I

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastRowY:I

    goto :goto_0
.end method

.method public setPhoneKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 0
    .param p1, "phoneKeyboard"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mPhoneKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 81
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 2
    .param p1, "previewEnabled"    # Z

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mPhoneKeyboard:Landroid/inputmethodservice/Keyboard;

    if-ne v0, v1, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setPreviewEnabled(Z)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setPreviewEnabled(Z)V

    goto :goto_0
.end method

.method public setShiftLocked(Z)Z
    .locals 2
    .param p1, "shiftLocked"    # Z

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 164
    .local v0, "keyboard":Landroid/inputmethodservice/Keyboard;
    instance-of v1, v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    if-eqz v1, :cond_0

    .line 165
    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShiftLocked(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->invalidateAllKeys()V

    .line 167
    const/4 v1, 0x1

    .line 169
    :goto_0
    return v1

    .restart local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startPlaying(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 390
    return-void
.end method
