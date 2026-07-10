.class Lcom/android/inputmethod/latin/BackupPro$2;
.super Ljava/lang/Object;
.source "BackupPro.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/BackupPro;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/BackupPro;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/BackupPro;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/BackupPro$2;->this$0:Lcom/android/inputmethod/latin/BackupPro;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/inputmethod/latin/BackupPro$2;->this$0:Lcom/android/inputmethod/latin/BackupPro;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/BackupPro;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 79
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 80
    return-void
.end method
