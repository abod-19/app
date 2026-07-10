.class Lcom/abdullah/ahmed/EnableActivity$2$1;
.super Ljava/lang/Object;
.source "EnableActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/EnableActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/EnableActivity$2;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/EnableActivity$2;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/EnableActivity$2$1;->this$1:Lcom/abdullah/ahmed/EnableActivity$2;

    iput-object p2, p0, Lcom/abdullah/ahmed/EnableActivity$2$1;->val$dialog:Landroid/app/AlertDialog;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$2$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 167
    return-void
.end method
