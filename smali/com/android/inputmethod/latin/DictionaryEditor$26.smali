.class Lcom/android/inputmethod/latin/DictionaryEditor$26;
.super Ljava/lang/Object;
.source "DictionaryEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;->po3()V
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

.field private final synthetic val$adapter2:Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;

.field private final synthetic val$lo:Landroid/view/inputmethod/InputConnection;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;Landroid/view/inputmethod/InputConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$26;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iput-object p2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$26;->val$adapter2:Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;

    iput-object p3, p0, Lcom/android/inputmethod/latin/DictionaryEditor$26;->val$lo:Landroid/view/inputmethod/InputConnection;

    .line 321
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 325
    if-nez p3, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$26;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget v0, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->ec:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$26;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->ec:I

    .line 327
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$26;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->ic()V

    .line 328
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$26;->val$adapter2:Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;->notifyDataSetChanged()V

    .line 335
    :goto_1
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$26;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iput v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->ec:I

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$26;->val$lo:Landroid/view/inputmethod/InputConnection;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$26;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v1, v1, Lcom/android/inputmethod/latin/DictionaryEditor;->emj:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1
.end method
