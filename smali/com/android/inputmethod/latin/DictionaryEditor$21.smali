.class Lcom/android/inputmethod/latin/DictionaryEditor$21;
.super Ljava/lang/Object;
.source "DictionaryEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;->po4()V
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

.field private final synthetic val$sh:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$21;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iput-object p2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$21;->val$sh:[Ljava/lang/String;

    .line 359
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
    .line 364
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$21;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 365
    .local v0, "lo":Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$21;->val$sh:[Ljava/lang/String;

    aget-object v1, v1, p3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 366
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$21;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v1, v1, Lcom/android/inputmethod/latin/DictionaryEditor;->Al4:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 368
    return-void
.end method
