.class Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    .line 1470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1473
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->listener:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-static {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->access$3(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1490
    :cond_0
    :goto_0
    return-void

    .line 1476
    :cond_1
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v4, v4, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget-object v5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v5, v5, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->lastTouchX:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v6, v6, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->lastTouchY:F

    float-to-int v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->distance(IIII)D

    move-result-wide v4

    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCircleRadius:F

    float-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_2

    move v0, v1

    .line 1477
    :goto_1
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v4, v4, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v5, v5, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v5, v5, v1

    .line 1478
    iget-object v6, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v6, v6, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->lastTouchX:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v7, v7, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->lastTouchY:F

    float-to-int v7, v7

    .line 1477
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->distance(IIII)D

    move-result-wide v4

    .line 1479
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    float-to-double v6, v3

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_3

    .line 1481
    :goto_2
    if-eqz v0, :cond_4

    .line 1482
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-static {v0, v2}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;Z)V

    .line 1483
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->listener:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;->onTargetClick(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1476
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1479
    goto :goto_2

    .line 1484
    :cond_4
    if-eqz v1, :cond_5

    .line 1485
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->listener:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;->onOuterCircleClick(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    goto :goto_0

    .line 1486
    :cond_5
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-boolean v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->cancelable:Z

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-static {v0, v2}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;Z)V

    .line 1488
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->listener:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;->onTargetCancel(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    goto/16 :goto_0
.end method
