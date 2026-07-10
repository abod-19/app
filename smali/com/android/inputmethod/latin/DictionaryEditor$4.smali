.class Lcom/android/inputmethod/latin/DictionaryEditor$4;
.super Ljava/lang/Object;
.source "DictionaryEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;->switchToKeyboardView()V
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$4;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 2340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2342
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$4;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$9(Lcom/android/inputmethod/latin/DictionaryEditor;Z)V

    .line 2343
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$4;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v2, v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    .line 2344
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2346
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2347
    .local v0, "p":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2348
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "p":Landroid/view/ViewParent;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2350
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$4;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->setInputView(Landroid/view/View;)V

    .line 2353
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$4;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->setCandidatesViewShown(Z)V

    .line 2354
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$4;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateInputViewShown()V

    .line 2355
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$4;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$10(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    .line 2356
    return-void
.end method
