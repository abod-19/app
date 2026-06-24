.class Lcom/android/inputmethod/latin/DictionaryEditor$2;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$2;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 3556
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3559
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$2;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$5(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    .line 3560
    return-void
.end method
