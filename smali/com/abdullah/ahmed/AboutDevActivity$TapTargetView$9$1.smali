.class Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;

.field private final synthetic val$boundingParent:Landroid/view/ViewGroup;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->this$2:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;

    iput-object p2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->val$target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iput-object p3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->val$boundingParent:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->val$context:Landroid/content/Context;

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1433
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1435
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->this$2:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;

    invoke-static {v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    move-result-object v1

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->val$target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    invoke-virtual {v2}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->bounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1437
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->this$2:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;

    invoke-static {v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getLocationOnScreen([I)V

    .line 1438
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->this$2:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;

    invoke-static {v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    move-result-object v1

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    aget v2, v0, v4

    neg-int v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    neg-int v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1440
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->val$boundingParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->val$context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1443
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1444
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1446
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1447
    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->val$boundingParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1452
    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->this$2:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;

    invoke-static {v2}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->topBoundary:I

    .line 1453
    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->this$2:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;

    invoke-static {v2}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    move-result-object v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->bottomBoundary:I

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->this$2:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;

    invoke-static {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->drawTintedTarget()V

    .line 1457
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->this$2:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;

    invoke-static {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->requestFocus()Z

    .line 1458
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->this$2:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;

    invoke-static {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->calculateDimensions()V

    .line 1460
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;->this$2:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;

    invoke-static {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->access$2(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    .line 1461
    return-void
.end method
