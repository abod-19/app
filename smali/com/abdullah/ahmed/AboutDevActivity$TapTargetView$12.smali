.class Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;
.super Landroid/view/ViewOutlineProvider;
.source "AboutDevActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->applyTargetOptions(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    .line 1524
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1527
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    if-nez v0, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1529
    :cond_1
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v0, v0, v5

    int-to-float v0, v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v1, v1, v4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v2, v2, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1530
    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v2, v2, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v2, v2, v5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v3, v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v4, v4, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 1528
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 1531
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleAlpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1532
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->SHADOW_DIM:I

    invoke-virtual {p2, v5, v0}, Landroid/graphics/Outline;->offset(II)V

    goto :goto_0
.end method
