.class Lcom/android/inputmethod/latin/BackupPro$1$1;
.super Ljava/lang/Object;
.source "BackupPro.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/BackupPro$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/inputmethod/latin/BackupPro$1;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/BackupPro$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/BackupPro$1$1;->this$1:Lcom/android/inputmethod/latin/BackupPro$1;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 63
    return-void
.end method
