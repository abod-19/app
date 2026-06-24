.class Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;
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
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    .line 1332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 8

    .prologue
    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1335
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1336
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v2, v2, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->calculatedOuterCircleRadius:I

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v0

    add-float/2addr v3, v6

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    .line 1337
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    sub-float v2, v6, v0

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleAlpha:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleAlpha:I

    .line 1338
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1339
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v2, v2, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v4, v4, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1340
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    sub-float v2, v6, p1

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCircleRadius:F

    .line 1341
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    sub-float v2, v6, p1

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCircleAlpha:I

    .line 1342
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    add-float v2, v6, p1

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulseRadius:F

    .line 1343
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    sub-float v2, v6, p1

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulseAlpha:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulseAlpha:I

    .line 1344
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    sub-float v0, v6, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->textAlpha:I

    .line 1345
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-virtual {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->calculateDrawingBounds()V

    .line 1346
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->invalidateViewAndOutline(Landroid/graphics/Rect;)V

    .line 1347
    return-void
.end method
