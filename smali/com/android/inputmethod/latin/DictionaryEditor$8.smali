.class Lcom/android/inputmethod/latin/DictionaryEditor$8;
.super Ljava/lang/Object;
.source "DictionaryEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;->showOptionsMenu()V
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$8;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 3925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 3928
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3929
    packed-switch p2, :pswitch_data_0

    .line 3938
    :goto_0
    return-void

    .line 3931
    :pswitch_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$8;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->launchSettings()V

    goto :goto_0

    .line 3934
    :pswitch_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$8;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3935
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 3929
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
