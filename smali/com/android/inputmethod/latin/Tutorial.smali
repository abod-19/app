.class public Lcom/android/inputmethod/latin/Tutorial;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Tutorial$Bubble;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_BUBBLE:I


# instance fields
.field private mBubbleIndex:I

.field private mBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/Tutorial$Bubble;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mIme:Lcom/android/inputmethod/latin/DictionaryEditor;

.field private mInputView:Landroid/view/View;

.field private mLocation:[I


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;Lcom/android/inputmethod/latin/LatinKeyboardView;)V
    .locals 22
    .param p1, "ime"    # Lcom/android/inputmethod/latin/DictionaryEditor;
    .param p2, "inputView"    # Lcom/android/inputmethod/latin/LatinKeyboardView;

    .prologue
    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    .line 44
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mLocation:[I

    .line 50
    new-instance v3, Lcom/android/inputmethod/latin/Tutorial$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/inputmethod/latin/Tutorial$1;-><init>(Lcom/android/inputmethod/latin/Tutorial;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mHandler:Landroid/os/Handler;

    .line 163
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 164
    .local v4, "context":Landroid/content/Context;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Tutorial;->mIme:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 165
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getWidth()I

    move-result v21

    .line 166
    .local v21, "inputWidth":I
    div-int/lit8 v7, v21, 0x14

    .line 167
    .local v7, "x":I
    new-instance v2, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    .line 168
    const v6, 0x7f020059

    const/4 v8, 0x0

    .line 169
    const v9, 0x7f0d006d

    const v10, 0x7f0d006b

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    .line 167
    invoke-direct/range {v2 .. v10}, Lcom/android/inputmethod/latin/Tutorial$Bubble;-><init>(Lcom/android/inputmethod/latin/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 170
    .local v2, "bWelcome":Lcom/android/inputmethod/latin/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v8, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    .line 172
    const v12, 0x7f020059

    const/4 v14, 0x0

    .line 173
    const v15, 0x7f0d006e

    const v16, 0x7f0d006b

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move v13, v7

    .line 171
    invoke-direct/range {v8 .. v16}, Lcom/android/inputmethod/latin/Tutorial$Bubble;-><init>(Lcom/android/inputmethod/latin/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 174
    .local v8, "bAccents":Lcom/android/inputmethod/latin/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v9, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    .line 176
    const v13, 0x7f02005a

    const/4 v15, 0x0

    .line 177
    const v16, 0x7f0d006f

    const v17, 0x7f0d006b

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p2

    move v14, v7

    .line 175
    invoke-direct/range {v9 .. v17}, Lcom/android/inputmethod/latin/Tutorial$Bubble;-><init>(Lcom/android/inputmethod/latin/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 178
    .local v9, "b123":Lcom/android/inputmethod/latin/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v10, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    .line 180
    const v14, 0x7f02005a

    const/16 v16, 0x0

    .line 181
    const v17, 0x7f0d0070

    const v18, 0x7f0d006b

    move-object/from16 v11, p0

    move-object v12, v4

    move-object/from16 v13, p2

    move v15, v7

    .line 179
    invoke-direct/range {v10 .. v18}, Lcom/android/inputmethod/latin/Tutorial$Bubble;-><init>(Lcom/android/inputmethod/latin/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 182
    .local v10, "bABC":Lcom/android/inputmethod/latin/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v11, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    .line 184
    const v15, 0x7f02005a

    const/16 v17, 0x0

    .line 185
    const v18, 0x7f0d0071

    const v19, 0x7f0d006b

    move-object/from16 v12, p0

    move-object v13, v4

    move-object/from16 v14, p2

    move/from16 v16, v7

    .line 183
    invoke-direct/range {v11 .. v19}, Lcom/android/inputmethod/latin/Tutorial$Bubble;-><init>(Lcom/android/inputmethod/latin/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 186
    .local v11, "bSettings":Lcom/android/inputmethod/latin/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v12, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    .line 188
    const v16, 0x7f020059

    const/16 v18, 0x0

    .line 189
    const v19, 0x7f0d0072

    const v20, 0x7f0d006c

    move-object/from16 v13, p0

    move-object v14, v4

    move-object/from16 v15, p2

    move/from16 v17, v7

    .line 187
    invoke-direct/range {v12 .. v20}, Lcom/android/inputmethod/latin/Tutorial$Bubble;-><init>(Lcom/android/inputmethod/latin/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 190
    .local v12, "bDone":Lcom/android/inputmethod/latin/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Tutorial;->mInputView:Landroid/view/View;

    .line 192
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/Tutorial;)[I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial;->mLocation:[I

    return-object v0
.end method


# virtual methods
.method close()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Tutorial;->hide()V

    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method hide()V
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mInputView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Tutorial$Bubble;->hide()V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method next()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 202
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    if-ltz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    iget v4, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Tutorial$Bubble;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 224
    :goto_0
    return v1

    .line 208
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    if-le v0, v1, :cond_2

    .line 212
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    .line 213
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    iget-object v4, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 214
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mInputView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mIme:Lcom/android/inputmethod/latin/DictionaryEditor;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendDownUpKeyEvents(I)V

    .line 216
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mIme:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->tutorialDone()V

    move v1, v3

    .line 217
    goto :goto_0

    .line 209
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Tutorial$Bubble;->hide()V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    .end local v0    # "i":I
    :cond_3
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_5

    .line 220
    :cond_4
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mIme:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v1, v1, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/Calibration;->toggleSymbols(Z)V

    .line 222
    :cond_5
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mHandler:Landroid/os/Handler;

    .line 223
    iget-object v4, p0, Lcom/android/inputmethod/latin/Tutorial;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    iget v6, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    .line 222
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v2

    .line 224
    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 241
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Tutorial;->next()Z

    .line 244
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method start()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial;->mInputView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    .line 197
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial;->mInputView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Tutorial;->next()Z

    .line 199
    return-void
.end method
