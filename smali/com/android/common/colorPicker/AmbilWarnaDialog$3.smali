.class Lcom/android/common/colorPicker/AmbilWarnaDialog$3;
.super Ljava/lang/Object;
.source "AmbilWarnaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/colorPicker/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILcom/android/common/colorPicker/AmbilWarnaDialog$OnAmbilWarnaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;


# direct methods
.method constructor <init>(Lcom/android/common/colorPicker/AmbilWarnaDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$3;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$3;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget-object v0, v0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->listener:Lcom/android/common/colorPicker/AmbilWarnaDialog$OnAmbilWarnaListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$3;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget-object v0, v0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->listener:Lcom/android/common/colorPicker/AmbilWarnaDialog$OnAmbilWarnaListener;

    iget-object v1, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$3;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget-object v2, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog$3;->this$0:Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget v2, v2, Lcom/android/common/colorPicker/AmbilWarnaDialog;->warnaBaru:I

    invoke-interface {v0, v1, v2}, Lcom/android/common/colorPicker/AmbilWarnaDialog$OnAmbilWarnaListener;->onOk(Lcom/android/common/colorPicker/AmbilWarnaDialog;I)V

    .line 132
    :cond_0
    return-void
.end method
