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

.method private openSystemPermissionSettingsOnce()V
    .locals 5

    const-string v0, "permission_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/BackupPro;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "opened"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/BackupPro;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/BackupPro;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/abdullah/ahmed/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/BackupPro;->startActivity(Landroid/content/Intent;)V

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/inputmethod/latin/BackupPro;->openSystemPermissionSettingsOnce()V

    .line 22
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/BackupPro;->setContentView(I)V

    .line 23
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/BackupPro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 24
    .local v0, "textView1":Landroid/widget/TextView;
    const-string v1, "\n -\u0648\u0625\u0646\u200c\u0651\u062d\u064e\u0627\u0648\u0644\u0651\u062a\u200c\u064e\u06aa\u0633\u0631\u0650\u064a\u200c\u0641\u200c\u0652\u0644\u0646\u200c\u0651\u062a\u062c\u0631\u064e\u062d\u200c\u200c\u0625\u0644\u0627\u064a\u062f\u0650\u064a\u0643\u200c\u064e\ud80c\udda9\ud83c\udde6\ud83c\uddf1\u20df\u1bfc\u06619 "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/BackupPro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/BackupPro;->enableKeyboardButton:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/android/inputmethod/latin/BackupPro;->enableKeyboardButton:Landroid/view/View;

    new-instance v1, Lcom/android/inputmethod/latin/BackupPro$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/BackupPro$1;-><init>(Lcom/android/inputmethod/latin/BackupPro;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/BackupPro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/BackupPro;->ChangeInputButton:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/android/inputmethod/latin/BackupPro;->ChangeInputButton:Landroid/view/View;

    new-instance v1, Lcom/android/inputmethod/latin/BackupPro$2;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/BackupPro$2;-><init>(Lcom/android/inputmethod/latin/BackupPro;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/BackupPro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/BackupPro;->shareKeyboardButton:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/android/inputmethod/latin/BackupPro;->shareKeyboardButton:Landroid/view/View;

    new-instance v1, Lcom/android/inputmethod/latin/BackupPro$3;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/BackupPro$3;-><init>(Lcom/android/inputmethod/latin/BackupPro;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
