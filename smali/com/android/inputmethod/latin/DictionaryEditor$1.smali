.class Lcom/android/inputmethod/latin/DictionaryEditor$1;
.super Landroid/os/Handler;
.source "DictionaryEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/DictionaryEditor;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 487
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 490
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 492
    :pswitch_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$0(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    goto :goto_0

    .line 495
    :pswitch_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$1(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    goto :goto_0

    .line 498
    :pswitch_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$2(Lcom/android/inputmethod/latin/DictionaryEditor;)Lcom/android/inputmethod/latin/Tutorial;

    move-result-object v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v0, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    new-instance v1, Lcom/android/inputmethod/latin/Tutorial;

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 501
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v3, v3, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/inputmethod/latin/Tutorial;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;Lcom/android/inputmethod/latin/LatinKeyboardView;)V

    .line 500
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$3(Lcom/android/inputmethod/latin/DictionaryEditor;Lcom/android/inputmethod/latin/Tutorial;)V

    .line 502
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$2(Lcom/android/inputmethod/latin/DictionaryEditor;)Lcom/android/inputmethod/latin/Tutorial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Tutorial;->start()V

    goto :goto_0

    .line 505
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 506
    const-wide/16 v1, 0x64

    .line 505
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/DictionaryEditor$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 511
    :pswitch_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .line 514
    :pswitch_4
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$4(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    goto :goto_0

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
