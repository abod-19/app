.class public Lcom/android/inputmethod/latin/DictionaryEditorUtil;
.super Ljava/lang/Object;
.source "DictionaryEditorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;,
        Lcom/android/inputmethod/latin/DictionaryEditorUtil$RingCharBuffer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 36
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 39
    :cond_0
    return-void
.end method

.method public static hasMultipleEnabledIMEs(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 80
    .line 81
    const-string v0, "input_method"

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 81
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
