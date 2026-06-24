.class Lcom/android/inputmethod/latin/BackupPro$3;
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/BackupPro$3;->this$0:Lcom/android/inputmethod/latin/BackupPro;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "https://t.me/jnssghb"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/inputmethod/latin/BackupPro$3;->this$0:Lcom/android/inputmethod/latin/BackupPro;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/BackupPro;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method
