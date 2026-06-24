.class Lcom/android/inputmethod/latin/DomainEditor$14;
.super Ljava/lang/Object;
.source "DomainEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DomainEditor;->doBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/DomainEditor;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/DomainEditor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/DomainEditor$14;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 646
    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    .line 647
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor$14;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/DomainEditor;->backupDbFiles()V

    .line 650
    :cond_0
    return-void
.end method
