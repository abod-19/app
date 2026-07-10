.class Lcom/android/inputmethod/latin/DictionaryEditor$16;
.super Ljava/lang/Object;
.source "DictionaryEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;->createResultDialog([Ljava/lang/CharSequence;)V
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$16;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 4473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4476
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$16;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$15(Lcom/android/inputmethod/latin/DictionaryEditor;Ljava/lang/CharSequence;)V

    .line 4477
    return-void
.end method
