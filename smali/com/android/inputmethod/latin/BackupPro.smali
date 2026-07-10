.class public Lcom/android/inputmethod/latin/BackupPro;
.super Landroid/app/Activity;
.source "BackupPro.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private ChangeInputButton:Landroid/view/View;

.field private enableKeyboardButton:Landroid/view/View;

.field private removeiconButton:Landroid/view/View;

.field private shareKeyboardButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/BackupPro;->finishAffinity()V

    .line 255
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 141
    return-void

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "start_setup"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/BackupPro;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "completed"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Landroid/content/Intent;

    if-eqz v0, :cond_start

    const-class v3, Lcom/abdullah/ahmed/MainActivity;

    goto :goto_target

    :cond_start
    const-class v3, Lcom/abdullah/ahmed/StartActivity;

    :goto_target
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/BackupPro;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/BackupPro;->finish()V

    return-void
.end method
