.class Lcom/abdullah/ahmed/SettingsActivity$15$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/SettingsActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/SettingsActivity$15;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/SettingsActivity$15;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/SettingsActivity$15$1;->this$1:Lcom/abdullah/ahmed/SettingsActivity$15;

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$15$1;->this$1:Lcom/abdullah/ahmed/SettingsActivity$15;

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity$15;->access$0(Lcom/abdullah/ahmed/SettingsActivity$15;)Lcom/abdullah/ahmed/SettingsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abdullah/ahmed/SettingsActivity;->_animation()V

    .line 934
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$15$1;->this$1:Lcom/abdullah/ahmed/SettingsActivity$15;

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity$15;->access$0(Lcom/abdullah/ahmed/SettingsActivity$15;)Lcom/abdullah/ahmed/SettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity;->access$20(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 935
    return-void
.end method
