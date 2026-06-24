.class Lcom/abdullah/ahmed/EnableActivity$10$1;
.super Ljava/lang/Object;
.source "EnableActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/EnableActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/EnableActivity$10;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/EnableActivity$10;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/EnableActivity$10$1;->this$1:Lcom/abdullah/ahmed/EnableActivity$10;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$10$1;->this$1:Lcom/abdullah/ahmed/EnableActivity$10;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$10;->access$0(Lcom/abdullah/ahmed/EnableActivity$10;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abdullah/ahmed/EnableActivity;->_animation()V

    .line 573
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$10$1;->this$1:Lcom/abdullah/ahmed/EnableActivity$10;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$10;->access$0(Lcom/abdullah/ahmed/EnableActivity$10;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$14(Lcom/abdullah/ahmed/EnableActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    return-void
.end method
