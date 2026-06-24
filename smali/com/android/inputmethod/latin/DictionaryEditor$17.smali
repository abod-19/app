.class Lcom/android/inputmethod/latin/DictionaryEditor$17;
.super Ljava/util/TimerTask;
.source "DictionaryEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;->clst()V
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$17;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 222
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$17;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v2, v2, Lcom/android/inputmethod/latin/DictionaryEditor;->cm:Landroid/text/ClipboardManager;

    invoke-virtual {v2}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$17;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v2, v2, Lcom/android/inputmethod/latin/DictionaryEditor;->t1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    const-string v2, "\'"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "t2":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$17;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->dbadd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$17;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v2, v2, Lcom/android/inputmethod/latin/DictionaryEditor;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$17;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->listfp()V

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$17;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iput-object v0, v2, Lcom/android/inputmethod/latin/DictionaryEditor;->t1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0    # "t":Ljava/lang/String;
    .end local v1    # "t2":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
