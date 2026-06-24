.class Lcom/abdullah/ahmed/EnableActivity$2$2;
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


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/EnableActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/EnableActivity$2$2;->this$1:Lcom/abdullah/ahmed/EnableActivity$2;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$2$2;->this$1:Lcom/abdullah/ahmed/EnableActivity$2;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$2;->access$0(Lcom/abdullah/ahmed/EnableActivity$2;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$1(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$2$2;->this$1:Lcom/abdullah/ahmed/EnableActivity$2;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$2;->access$0(Lcom/abdullah/ahmed/EnableActivity$2;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$1(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "https://wa.me/967774493318"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$2$2;->this$1:Lcom/abdullah/ahmed/EnableActivity$2;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$2;->access$0(Lcom/abdullah/ahmed/EnableActivity$2;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity$2$2;->this$1:Lcom/abdullah/ahmed/EnableActivity$2;

    invoke-static {v1}, Lcom/abdullah/ahmed/EnableActivity$2;->access$0(Lcom/abdullah/ahmed/EnableActivity$2;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/EnableActivity;->access$1(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/EnableActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void
.end method
