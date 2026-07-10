.class Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$11;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$11;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    .line 1493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1496
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$11;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->listener:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

    if-nez v1, :cond_1

    .line 1503
    :cond_0
    :goto_0
    return v0

    .line 1498
    :cond_1
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$11;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$11;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v2, v2, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->lastTouchX:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$11;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->lastTouchY:F

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$11;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->listener:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$11;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;->onTargetLongClick(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    .line 1500
    const/4 v0, 0x1

    goto :goto_0
.end method
