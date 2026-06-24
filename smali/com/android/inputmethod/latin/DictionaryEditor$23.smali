.class Lcom/android/inputmethod/latin/DictionaryEditor$23;
.super Ljava/lang/Object;
.source "DictionaryEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;->po2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

.field private final synthetic val$ck1:Landroid/widget/CheckBox;

.field private final synthetic val$ck2:Landroid/widget/CheckBox;

.field private final synthetic val$ck3:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iput-object p2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->val$ck1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->val$ck2:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->val$ck3:Landroid/widget/CheckBox;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 373
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->val$ck1:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iput v4, v2, Lcom/android/inputmethod/latin/DictionaryEditor;->cl:I

    .line 374
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->val$ck2:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iput v3, v2, Lcom/android/inputmethod/latin/DictionaryEditor;->cs:I

    .line 375
    :goto_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->val$ck3:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->tmron()V

    .line 377
    :goto_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    const-string v3, "SK"

    invoke-virtual {v2, v3, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 378
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 379
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "co"

    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget v3, v3, Lcom/android/inputmethod/latin/DictionaryEditor;->co:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 380
    const-string v2, "cl"

    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget v3, v3, Lcom/android/inputmethod/latin/DictionaryEditor;->cl:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 381
    const-string v2, "cs"

    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget v3, v3, Lcom/android/inputmethod/latin/DictionaryEditor;->cs:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 382
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    return-void

    .line 373
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iput v3, v2, Lcom/android/inputmethod/latin/DictionaryEditor;->cl:I

    goto :goto_0

    .line 374
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iput v4, v2, Lcom/android/inputmethod/latin/DictionaryEditor;->cs:I

    goto :goto_1

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$23;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->tmroff()V

    goto :goto_2
.end method
