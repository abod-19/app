.class Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;
.super Landroid/os/Handler;
.source "LatinKeyboardBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinKeyboardBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# static fields
.field private static final MSG_DISMISS_PREVIEW:I = 0x2

.field private static final MSG_LONGPRESS_KEY:I = 0x4

.field private static final MSG_POPUP_PREVIEW:I = 0x1

.field private static final MSG_REPEAT_KEY:I = 0x3


# instance fields
.field private mInKeyRepeat:Z

.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 0

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 375
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 376
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelDismissPreview()V

    .line 377
    return-void
.end method

.method public cancelDismissPreview()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 339
    return-void
.end method

.method public cancelKeyRepeatTimer()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->mInKeyRepeat:Z

    .line 350
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 351
    return-void
.end method

.method public cancelKeyTimers()V
    .locals 0

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyRepeatTimer()V

    .line 370
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelLongPressTimer()V

    .line 371
    return-void
.end method

.method public cancelLongPressTimer()V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 366
    return-void
.end method

.method public cancelPopupPreview()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 329
    return-void
.end method

.method public dismissPreview(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$1(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 335
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 287
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 289
    :pswitch_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/inputmethod/latin/PointerTracker;

    invoke-static {v2, v3, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$0(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;ILcom/android/inputmethod/latin/PointerTracker;)V

    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$1(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/inputmethod/latin/PointerTracker;

    .line 296
    .local v0, "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/PointerTracker;->repeatKey(I)V

    .line 297
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$2(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)I

    move-result v1

    int-to-long v1, v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->startKeyRepeatTimer(JILcom/android/inputmethod/latin/PointerTracker;)V

    goto :goto_0

    .line 301
    .end local v0    # "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/inputmethod/latin/PointerTracker;

    .line 302
    .restart local v0    # "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$3(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;ILcom/android/inputmethod/latin/PointerTracker;)Z

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isInKeyRepeat()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->mInKeyRepeat:Z

    return v0
.end method

.method public popupPreview(JILcom/android/inputmethod/latin/PointerTracker;)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "keyIndex"    # I
    .param p4, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;

    .prologue
    const/4 v2, 0x1

    .line 310
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 311
    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v0, v0, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->keyboard_key_feedback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$4(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Landroid/widget/TextView;

    move-result-object v0

    .line 314
    sget-object v1, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v1, v1, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->keyboard_key_feedback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$1(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$4(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v0, p3, p4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$0(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;ILcom/android/inputmethod/latin/PointerTracker;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_1
    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0, v2, p3, v0, p4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public startKeyRepeatTimer(JILcom/android/inputmethod/latin/PointerTracker;)V
    .locals 2
    .param p1, "delay"    # J
    .param p3, "keyIndex"    # I
    .param p4, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->mInKeyRepeat:Z

    .line 344
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 346
    return-void
.end method

.method public startLongPressTimer(JILcom/android/inputmethod/latin/PointerTracker;)V
    .locals 2
    .param p1, "delay"    # J
    .param p3, "keyIndex"    # I
    .param p4, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;

    .prologue
    const/4 v1, 0x4

    .line 359
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 362
    return-void
.end method
