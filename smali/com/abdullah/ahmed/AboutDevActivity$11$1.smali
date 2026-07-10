.class Lcom/abdullah/ahmed/AboutDevActivity$11$1;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/AboutDevActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/AboutDevActivity$11;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/AboutDevActivity$11;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$11$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$11;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$11$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$11;

    invoke-static {v0}, Lcom/abdullah/ahmed/AboutDevActivity$11;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$11;)Lcom/abdullah/ahmed/AboutDevActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abdullah/ahmed/AboutDevActivity;->_animation()V

    .line 437
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$11$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$11;

    invoke-static {v0}, Lcom/abdullah/ahmed/AboutDevActivity$11;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$11;)Lcom/abdullah/ahmed/AboutDevActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/AboutDevActivity;->access$13(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    return-void
.end method
