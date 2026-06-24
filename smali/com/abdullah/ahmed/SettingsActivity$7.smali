.class Lcom/abdullah/ahmed/SettingsActivity$7;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/SettingsActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/abdullah/ahmed/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/SettingsActivity$7;->this$0:Lcom/abdullah/ahmed/SettingsActivity;

    .line 543
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

    .line 546
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f000000    # 0.5f

    const v8, 0x3f333333    # 0.7f

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 547
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 548
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 549
    iget-object v1, p0, Lcom/abdullah/ahmed/SettingsActivity$7;->this$0:Lcom/abdullah/ahmed/SettingsActivity;

    invoke-static {v1}, Lcom/abdullah/ahmed/SettingsActivity;->access$10(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 550
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$7;->this$0:Lcom/abdullah/ahmed/SettingsActivity;

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity;->access$8(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/SettingsActivity$7;->this$0:Lcom/abdullah/ahmed/SettingsActivity;

    invoke-virtual {v1}, Lcom/abdullah/ahmed/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/note/CapoJokerianNoteActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 551
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$7;->this$0:Lcom/abdullah/ahmed/SettingsActivity;

    iget-object v1, p0, Lcom/abdullah/ahmed/SettingsActivity$7;->this$0:Lcom/abdullah/ahmed/SettingsActivity;

    invoke-static {v1}, Lcom/abdullah/ahmed/SettingsActivity;->access$8(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 552
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$7;->this$0:Lcom/abdullah/ahmed/SettingsActivity;

    invoke-virtual {v0}, Lcom/abdullah/ahmed/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    .line 553
    return-void
.end method
