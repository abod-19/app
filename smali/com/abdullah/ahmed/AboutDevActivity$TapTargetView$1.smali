.class Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"

# interfaces
.implements Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;
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
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    .line 1234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v6, 0x437f0000    # 255.0f

    .line 1237
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->calculatedOuterCircleRadius:I

    int-to-float v0, v0

    mul-float v3, v0, p1

    .line 1238
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 1239
    :goto_0
    if-nez v0, :cond_0

    .line 1242
    iget-object v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-virtual {v4}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->calculateDrawingBounds()V

    .line 1245
    :cond_0
    iget-object v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v4, v4, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget v4, v4, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleAlpha:F

    mul-float/2addr v4, v6

    .line 1246
    iget-object v5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iput v3, v5, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    .line 1247
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    mul-float v5, p1, v7

    mul-float/2addr v5, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleAlpha:I

    .line 1248
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1249
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v4, v4, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v2, v4, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v4, v4, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v1, v4, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v4, v4, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1251
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    mul-float v2, p1, v7

    mul-float/2addr v2, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCircleAlpha:I

    .line 1253
    if-eqz v0, :cond_3

    .line 1254
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v2, v2, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v4, p1, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCircleRadius:F

    .line 1260
    :goto_1
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v2, p1, v3}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->delayedLerp(FF)F

    move-result v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->textAlpha:I

    .line 1262
    if-eqz v0, :cond_1

    .line 1263
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-virtual {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->calculateDrawingBounds()V

    .line 1266
    :cond_1
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->invalidateViewAndOutline(Landroid/graphics/Rect;)V

    .line 1267
    return-void

    :cond_2
    move v0, v2

    .line 1238
    goto/16 :goto_0

    .line 1256
    :cond_3
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v2, v2, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iput v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCircleRadius:F

    .line 1257
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulseRadius:F

    mul-float/2addr v2, p1

    iput v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulseRadius:F

    goto :goto_1
.end method
