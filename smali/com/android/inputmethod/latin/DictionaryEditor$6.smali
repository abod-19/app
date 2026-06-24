.class Lcom/android/inputmethod/latin/DictionaryEditor$6;
.super Ljava/lang/Object;
.source "DictionaryEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;->showVoiceWarningDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

.field private final synthetic val$swipe:Z


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$6;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iput-boolean p2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$6;->val$swipe:Z

    .line 2477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$6;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$11(Lcom/android/inputmethod/latin/DictionaryEditor;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logKeyboardWarningDialogOk()V

    .line 2480
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$6;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$6;->val$swipe:Z

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$13(Lcom/android/inputmethod/latin/DictionaryEditor;Z)V

    .line 2481
    return-void
.end method
