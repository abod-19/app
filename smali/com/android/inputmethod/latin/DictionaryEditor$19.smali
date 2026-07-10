.class Lcom/android/inputmethod/latin/DictionaryEditor$19;
.super Ljava/lang/Object;
.source "DictionaryEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/DictionaryEditor;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$19;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "ds":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$19;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->dbdelete(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$19;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v1, v1, Lcom/android/inputmethod/latin/DictionaryEditor;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$19;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v1, v1, Lcom/android/inputmethod/latin/DictionaryEditor;->listf:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$19;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v1, v1, Lcom/android/inputmethod/latin/DictionaryEditor;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v0    # "ds":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 196
    :catch_0
    move-exception v1

    goto :goto_0
.end method
