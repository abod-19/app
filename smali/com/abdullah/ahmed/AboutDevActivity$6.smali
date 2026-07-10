.class Lcom/abdullah/ahmed/AboutDevActivity$6;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/AboutDevActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/abdullah/ahmed/AboutDevActivity;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/AboutDevActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$6;->this$0:Lcom/abdullah/ahmed/AboutDevActivity;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/4 v5, 0x1

    .line 322
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f000000    # 0.5f

    const v8, 0x3f333333    # 0.7f

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 323
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 324
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 325
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$6;->this$0:Lcom/abdullah/ahmed/AboutDevActivity;

    invoke-static {v1}, Lcom/abdullah/ahmed/AboutDevActivity;->access$8(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 326
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$6;->this$0:Lcom/abdullah/ahmed/AboutDevActivity;

    invoke-static {v0}, Lcom/abdullah/ahmed/AboutDevActivity;->access$6(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$6;->this$0:Lcom/abdullah/ahmed/AboutDevActivity;

    invoke-static {v0}, Lcom/abdullah/ahmed/AboutDevActivity;->access$6(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "https://t.me/Abode774"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 328
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$6;->this$0:Lcom/abdullah/ahmed/AboutDevActivity;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$6;->this$0:Lcom/abdullah/ahmed/AboutDevActivity;

    invoke-static {v1}, Lcom/abdullah/ahmed/AboutDevActivity;->access$6(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity;->startActivity(Landroid/content/Intent;)V

    .line 329
    return-void
.end method
