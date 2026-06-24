.class Lcom/abdullah/ahmed/MainActivity$4$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/MainActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/MainActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/MainActivity$4$4;->this$1:Lcom/abdullah/ahmed/MainActivity$4;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$4$4;->this$1:Lcom/abdullah/ahmed/MainActivity$4;

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$4;->access$0(Lcom/abdullah/ahmed/MainActivity$4;)Lcom/abdullah/ahmed/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity;->access$5(Lcom/abdullah/ahmed/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$4$4;->this$1:Lcom/abdullah/ahmed/MainActivity$4;

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$4;->access$0(Lcom/abdullah/ahmed/MainActivity$4;)Lcom/abdullah/ahmed/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity;->access$5(Lcom/abdullah/ahmed/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "https://t.me/Abode774"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 485
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$4$4;->this$1:Lcom/abdullah/ahmed/MainActivity$4;

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$4;->access$0(Lcom/abdullah/ahmed/MainActivity$4;)Lcom/abdullah/ahmed/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity$4$4;->this$1:Lcom/abdullah/ahmed/MainActivity$4;

    invoke-static {v1}, Lcom/abdullah/ahmed/MainActivity$4;->access$0(Lcom/abdullah/ahmed/MainActivity$4;)Lcom/abdullah/ahmed/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/MainActivity;->access$5(Lcom/abdullah/ahmed/MainActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 486
    return-void
.end method
