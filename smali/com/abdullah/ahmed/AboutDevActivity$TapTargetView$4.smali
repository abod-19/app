.class Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;
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
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    .line 1293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1296
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->delayedLerp(FF)F

    move-result v0

    .line 1297
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    add-float v2, v4, v0

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulseRadius:F

    .line 1298
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    sub-float v0, v4, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulseAlpha:I

    .line 1299
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-virtual {v2, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->halfwayLerp(F)F

    move-result v2

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_PULSE_RADIUS:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCircleRadius:F

    .line 1301
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->calculatedOuterCircleRadius:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->calculatedOuterCircleRadius:I

    int-to-float v1, v1

    iput v1, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-virtual {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->calculateDrawingBounds()V

    .line 1306
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->invalidateViewAndOutline(Landroid/graphics/Rect;)V

    .line 1307
    return-void
.end method
