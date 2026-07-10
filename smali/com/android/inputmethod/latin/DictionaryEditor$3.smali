.class Lcom/android/inputmethod/latin/DictionaryEditor$3;
.super Ljava/lang/Object;
.source "DictionaryEditor.java"

# interfaces
.implements Lcom/android/inputmethod/latin/Hints$Display;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;->onCreate()V
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$3;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showHint(I)V
    .locals 5
    .param p1, "viewResource"    # I

    .prologue
    const/4 v4, 0x1

    .line 605
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$3;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 606
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 607
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$3;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->setCandidatesView(Landroid/view/View;)V

    .line 608
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$3;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v2, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->setCandidatesViewShown(Z)V

    .line 609
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$3;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v2, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$7(Lcom/android/inputmethod/latin/DictionaryEditor;Z)V

    .line 610
    return-void
.end method
