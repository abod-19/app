.class Lcom/android/inputmethod/latin/BackupPro$1;
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/BackupPro$1;->this$0:Lcom/android/inputmethod/latin/BackupPro;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v8, 0x10000000

    .line 36
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 37
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.LanguageSettings"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    :try_start_0
    iget-object v6, p0, Lcom/android/inputmethod/latin/BackupPro$1;->this$0:Lcom/android/inputmethod/latin/BackupPro;

    invoke-virtual {v6, v2}, Lcom/android/inputmethod/latin/BackupPro;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v4

    .line 49
    .local v4, "localThrowable":Ljava/lang/Throwable;
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v3, "intent2":Landroid/content/Intent;
    const-string v6, "com.android.settings.Settings$InputMethodConfigActivity"

    const-string v7, "com.android.settings.LanguageSettings"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    iget-object v6, p0, Lcom/android/inputmethod/latin/BackupPro$1;->this$0:Lcom/android/inputmethod/latin/BackupPro;

    invoke-virtual {v6, v2}, Lcom/android/inputmethod/latin/BackupPro;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 54
    .end local v3    # "intent2":Landroid/content/Intent;
    :catch_1
    move-exception v5

    .line 57
    .local v5, "localThrowable2":Ljava/lang/Throwable;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/inputmethod/latin/BackupPro$1;->this$0:Lcom/android/inputmethod/latin/BackupPro;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v6, "Sorry,this shortcut doesn\'t work on your device.\nYou still can enable the keyboard by going to Settings / Language & keyboard / perfect Keyboard. \nWe will appreciate if you will let us know about this issue"

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 59
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 60
    const-string v7, "Ok"

    new-instance v8, Lcom/android/inputmethod/latin/BackupPro$1$1;

    invoke-direct {v8, p0}, Lcom/android/inputmethod/latin/BackupPro$1$1;-><init>(Lcom/android/inputmethod/latin/BackupPro$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 67
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
