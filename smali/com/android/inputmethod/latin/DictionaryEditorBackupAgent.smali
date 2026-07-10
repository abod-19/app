.class public Lcom/android/inputmethod/latin/DictionaryEditorBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "DictionaryEditorBackupAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    .line 29
    const-string v0, "shared_pref"

    new-instance v1, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditorBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_preferences"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, p0, v2}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/DictionaryEditorBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 31
    return-void
.end method
