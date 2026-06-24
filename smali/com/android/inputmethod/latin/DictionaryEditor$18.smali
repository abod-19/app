.class Lcom/android/inputmethod/latin/DictionaryEditor$18;
.super Ljava/lang/Object;
.source "DictionaryEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;->po1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/DictionaryEditor;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$18;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$18;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iput p3, v1, Lcom/android/inputmethod/latin/DictionaryEditor;->ss:I

    .line 177
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$18;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 178
    .local v0, "lo":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 180
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$18;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget v1, v1, Lcom/android/inputmethod/latin/DictionaryEditor;->cs:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$18;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendKeyChar(C)V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$18;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget v1, v1, Lcom/android/inputmethod/latin/DictionaryEditor;->cl:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$18;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v1, v1, Lcom/android/inputmethod/latin/DictionaryEditor;->Al:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 183
    :cond_1
    return-void
.end method
