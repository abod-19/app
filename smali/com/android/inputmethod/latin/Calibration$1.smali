.class Lcom/android/inputmethod/latin/Calibration$1;
.super Ljava/lang/Object;
.source "Calibration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Calibration;->changeLatinKeyboardView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Calibration;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Calibration;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/Calibration$1;->this$0:Lcom/android/inputmethod/latin/Calibration;

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration$1;->this$0:Lcom/android/inputmethod/latin/Calibration;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Calibration;->access$0(Lcom/android/inputmethod/latin/Calibration;)Lcom/android/inputmethod/latin/DictionaryEditor;

    move-result-object v1

    monitor-enter v1

    .line 971
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration$1;->this$0:Lcom/android/inputmethod/latin/Calibration;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Calibration;->access$1(Lcom/android/inputmethod/latin/Calibration;)Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration$1;->this$0:Lcom/android/inputmethod/latin/Calibration;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Calibration;->access$1(Lcom/android/inputmethod/latin/Calibration;)Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration$1;->this$0:Lcom/android/inputmethod/latin/Calibration;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Calibration;->access$0(Lcom/android/inputmethod/latin/Calibration;)Lcom/android/inputmethod/latin/DictionaryEditor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration$1;->this$0:Lcom/android/inputmethod/latin/Calibration;

    invoke-static {v2}, Lcom/android/inputmethod/latin/Calibration;->access$1(Lcom/android/inputmethod/latin/Calibration;)Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->setInputView(Landroid/view/View;)V

    .line 970
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration$1;->this$0:Lcom/android/inputmethod/latin/Calibration;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Calibration;->access$0(Lcom/android/inputmethod/latin/Calibration;)Lcom/android/inputmethod/latin/DictionaryEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateInputViewShown()V

    .line 976
    return-void

    .line 970
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
