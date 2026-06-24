.class Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;
.super Landroid/view/View;
.source "AboutDevActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abdullah/ahmed/AboutDevActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TapTargetView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;
    }
.end annotation


# instance fields
.field final CIRCLE_PADDING:I

.field final GUTTER_DIM:I

.field final SHADOW_DIM:I

.field final SHADOW_JITTER_DIM:I

.field final TARGET_PADDING:I

.field final TARGET_PULSE_RADIUS:I

.field final TARGET_RADIUS:I

.field final TEXT_MAX_WIDTH:I

.field final TEXT_PADDING:I

.field final TEXT_POSITIONING_BIAS:I

.field final TEXT_SPACING:I

.field private animators:[Landroid/animation/ValueAnimator;

.field bottomBoundary:I

.field final boundingParent:Landroid/view/ViewGroup;

.field calculatedOuterCircleRadius:I

.field cancelable:Z

.field debug:Z

.field debugLayout:Landroid/text/DynamicLayout;

.field debugPaint:Landroid/graphics/Paint;

.field debugStringBuilder:Landroid/text/SpannableStringBuilder;

.field debugTextPaint:Landroid/text/TextPaint;

.field description:Ljava/lang/CharSequence;

.field descriptionLayout:Landroid/text/StaticLayout;

.field final descriptionPaint:Landroid/text/TextPaint;

.field dimColor:I

.field final dismissAnimation:Landroid/animation/ValueAnimator;

.field private final dismissConfirmAnimation:Landroid/animation/ValueAnimator;

.field drawingBounds:Landroid/graphics/Rect;

.field final expandAnimation:Landroid/animation/ValueAnimator;

.field final expandContractUpdateListener:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;

.field private final globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field isDark:Z

.field private isDismissed:Z

.field private isDismissing:Z

.field private isInteractable:Z

.field lastTouchX:F

.field lastTouchY:F

.field listener:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

.field outerCircleAlpha:I

.field outerCircleCenter:[I

.field final outerCirclePaint:Landroid/graphics/Paint;

.field outerCirclePath:Landroid/graphics/Path;

.field outerCircleRadius:F

.field final outerCircleShadowPaint:Landroid/graphics/Paint;

.field outlineProvider:Landroid/view/ViewOutlineProvider;

.field final parent:Landroid/view/ViewManager;

.field final pulseAnimation:Landroid/animation/ValueAnimator;

.field shouldDrawShadow:Z

.field shouldTintTarget:Z

.field final target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

.field final targetBounds:Landroid/graphics/Rect;

.field targetCircleAlpha:I

.field final targetCirclePaint:Landroid/graphics/Paint;

.field targetCirclePulseAlpha:I

.field final targetCirclePulsePaint:Landroid/graphics/Paint;

.field targetCirclePulseRadius:F

.field targetCircleRadius:F

.field textAlpha:I

.field textBounds:Landroid/graphics/Rect;

.field tintedTarget:Landroid/graphics/Bitmap;

.field title:Ljava/lang/CharSequence;

.field titleLayout:Landroid/text/StaticLayout;

.field final titlePaint:Landroid/text/TextPaint;

.field topBoundary:I

.field visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;)V
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0x8

    const-wide/16 v6, 0xfa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1367
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1077
    iput-boolean v5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isDismissed:Z

    .line 1078
    iput-boolean v5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isDismissing:Z

    .line 1079
    iput-boolean v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isInteractable:Z

    .line 1234
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$1;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->expandContractUpdateListener:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;

    .line 1270
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    invoke-direct {v0}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;-><init>()V

    .line 1271
    invoke-virtual {v0, v6, v7}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->duration(J)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1272
    invoke-virtual {v0, v6, v7}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->delayBy(J)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1273
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1274
    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$2;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$2;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->onUpdate(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1280
    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$3;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$3;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->onEnd(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$EndListener;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1287
    invoke-virtual {v0}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    .line 1289
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    invoke-direct {v0}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;-><init>()V

    .line 1290
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->duration(J)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1291
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->repeat(I)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1292
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1293
    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$4;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->onUpdate(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1309
    invoke-virtual {v0}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    .line 1311
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    invoke-direct {v0, v4}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;-><init>(Z)V

    .line 1312
    invoke-virtual {v0, v6, v7}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->duration(J)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1313
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1314
    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$5;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$5;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->onUpdate(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1320
    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$6;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$6;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->onEnd(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$EndListener;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1327
    invoke-virtual {v0}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->dismissAnimation:Landroid/animation/ValueAnimator;

    .line 1329
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    invoke-direct {v0}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;-><init>()V

    .line 1330
    invoke-virtual {v0, v6, v7}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->duration(J)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1331
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1332
    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$7;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->onUpdate(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1349
    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$8;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$8;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->onEnd(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$EndListener;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    move-result-object v0

    .line 1356
    invoke-virtual {v0}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->dismissConfirmAnimation:Landroid/animation/ValueAnimator;

    .line 1359
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->dismissConfirmAnimation:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->dismissAnimation:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->animators:[Landroid/animation/ValueAnimator;

    .line 1368
    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1370
    :cond_0
    iput-object p4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    .line 1371
    iput-object p2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->parent:Landroid/view/ViewManager;

    .line 1372
    iput-object p3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->boundingParent:Landroid/view/ViewGroup;

    .line 1373
    if-eqz p5, :cond_1

    :goto_0
    iput-object p5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->listener:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

    .line 1374
    iget-object v0, p4, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->title:Ljava/lang/CharSequence;

    .line 1375
    iget-object v0, p4, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->description:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->description:Ljava/lang/CharSequence;

    .line 1377
    invoke-static {p1, v9}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->dp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_PADDING:I

    .line 1378
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->dp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->CIRCLE_PADDING:I

    .line 1379
    iget v0, p4, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->targetRadius:I

    invoke-static {p1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->dp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    .line 1380
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->dp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TEXT_PADDING:I

    .line 1381
    invoke-static {p1, v8}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->dp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TEXT_SPACING:I

    .line 1382
    const/16 v0, 0x168

    invoke-static {p1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->dp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TEXT_MAX_WIDTH:I

    .line 1383
    invoke-static {p1, v9}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->dp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TEXT_POSITIONING_BIAS:I

    .line 1384
    const/16 v0, 0x58

    invoke-static {p1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->dp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->GUTTER_DIM:I

    .line 1385
    invoke-static {p1, v8}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->dp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->SHADOW_DIM:I

    .line 1386
    invoke-static {p1, v4}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->dp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->SHADOW_JITTER_DIM:I

    .line 1387
    const v0, 0x3dcccccd    # 0.1f

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_PULSE_RADIUS:I

    .line 1389
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    .line 1390
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    .line 1391
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    .line 1393
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titlePaint:Landroid/text/TextPaint;

    .line 1394
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titlePaint:Landroid/text/TextPaint;

    invoke-virtual {p4, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextSizePx(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1395
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titlePaint:Landroid/text/TextPaint;

    const-string v1, "sans-serif-medium"

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1396
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titlePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1398
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    .line 1399
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    invoke-virtual {p4, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextSizePx(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1400
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1401
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1402
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1404
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    .line 1405
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1406
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    iget v1, p4, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1408
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    .line 1409
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1410
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1411
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1412
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->SHADOW_JITTER_DIM:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1413
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1415
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    .line 1416
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1418
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulsePaint:Landroid/graphics/Paint;

    .line 1419
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulsePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1421
    invoke-virtual {p0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->applyTargetOptions(Landroid/content/Context;)V

    .line 1423
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;

    invoke-direct {v0, p0, p4, p3, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1466
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1468
    invoke-virtual {p0, v4}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->setFocusableInTouchMode(Z)V

    .line 1469
    invoke-virtual {p0, v4}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->setClickable(Z)V

    .line 1470
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$10;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1493
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$11;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$11;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1506
    return-void

    .line 1373
    :cond_1
    new-instance p5, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

    invoke-direct {p5}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;-><init>()V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;Z)V
    .locals 0

    .prologue
    .line 1079
    iput-boolean p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isInteractable:Z

    return-void
.end method

.method static synthetic access$1(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)Z
    .locals 1

    .prologue
    .line 1078
    iget-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isDismissing:Z

    return v0
.end method

.method static synthetic access$2(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V
    .locals 0

    .prologue
    .line 1508
    invoke-direct {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->startExpandAnimation()V

    return-void
.end method

.method static synthetic access$3(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)Z
    .locals 1

    .prologue
    .line 1079
    iget-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isInteractable:Z

    return v0
.end method

.method public static showFor(Landroid/app/Activity;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;
    .locals 1

    .prologue
    .line 1163
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->showFor(Landroid/app/Activity;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    move-result-object v0

    return-object v0
.end method

.method public static showFor(Landroid/app/Activity;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 1167
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1169
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1170
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1172
    const v0, 0x1020002

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1173
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;)V

    .line 1174
    invoke-virtual {v2, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1176
    return-object v0
.end method

.method public static showFor(Landroid/app/Dialog;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;
    .locals 1

    .prologue
    .line 1180
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->showFor(Landroid/app/Dialog;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    move-result-object v0

    return-object v0
.end method

.method public static showFor(Landroid/app/Dialog;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1184
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dialog is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1187
    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1188
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1189
    const/4 v0, 0x2

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1190
    const/4 v0, 0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1191
    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1192
    const v0, 0x800033

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1193
    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1194
    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1195
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1196
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1198
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;)V

    .line 1199
    invoke-interface {v2, v0, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1201
    return-object v0
.end method

.method private startExpandAnimation()V
    .locals 1

    .prologue
    .line 1509
    iget-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->visible:Z

    if-nez v0, :cond_0

    .line 1510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isInteractable:Z

    .line 1511
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->visible:Z

    .line 1514
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTargetOptions(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/high16 v1, -0x1000000

    const/4 v2, -0x1

    .line 1517
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-boolean v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->tintTarget:Z

    iput-boolean v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->shouldTintTarget:Z

    .line 1518
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-boolean v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->drawShadow:Z

    iput-boolean v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->shouldDrawShadow:Z

    .line 1519
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-boolean v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->cancelable:Z

    iput-boolean v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->cancelable:Z

    .line 1523
    iget-boolean v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->shouldDrawShadow:Z

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-boolean v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->transparentTarget:Z

    if-nez v3, :cond_0

    .line 1524
    new-instance v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;

    invoke-direct {v3, p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$12;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    iput-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outlineProvider:Landroid/view/ViewOutlineProvider;

    .line 1538
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v3}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1539
    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->SHADOW_DIM:I

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->setElevation(F)V

    .line 1542
    :cond_0
    iget-boolean v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->shouldDrawShadow:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v3, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v3, v4, :cond_4

    .line 1543
    invoke-virtual {p0, v0, v5}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1548
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1549
    const-string v4, "isLightTheme"

    invoke-static {p1, v4}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->themeIntAttr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    :goto_1
    iput-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isDark:Z

    .line 1551
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    invoke-virtual {v0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleColorInt(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 1552
    if-eqz v0, :cond_6

    .line 1553
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1560
    :goto_2
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    invoke-virtual {v0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->targetCircleColorInt(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 1561
    if-eqz v0, :cond_8

    .line 1562
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1567
    :goto_3
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-boolean v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->transparentTarget:Z

    if-eqz v0, :cond_1

    .line 1568
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1571
    :cond_1
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulsePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1573
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    invoke-virtual {v0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->dimColorInt(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 1574
    if-eqz v0, :cond_a

    .line 1575
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v0, v3}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->setAlpha(IF)I

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->dimColor:I

    .line 1580
    :goto_4
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    invoke-virtual {v0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextColorInt(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 1581
    if-eqz v0, :cond_b

    .line 1582
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titlePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1587
    :goto_5
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    invoke-virtual {v0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextColorInt(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 1588
    if-eqz v0, :cond_d

    .line 1589
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1594
    :goto_6
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    .line 1595
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titlePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1598
    :cond_2
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_3

    .line 1599
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1601
    :cond_3
    return-void

    .line 1545
    :cond_4
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v5}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1549
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1554
    :cond_6
    if-eqz v3, :cond_7

    .line 1555
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    const-string v3, "colorPrimary"

    invoke-static {p1, v3}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->themeIntAttr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 1557
    :cond_7
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 1564
    :cond_8
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isDark:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto :goto_7

    .line 1577
    :cond_a
    iput v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->dimColor:I

    goto :goto_4

    .line 1584
    :cond_b
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titlePaint:Landroid/text/TextPaint;

    iget-boolean v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isDark:Z

    if-eqz v3, :cond_c

    :goto_8
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_5

    :cond_c
    move v1, v2

    goto :goto_8

    .line 1591
    :cond_d
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titlePaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_6
.end method

.method calculateDimensions()V
    .locals 4

    .prologue
    .line 1875
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getTextBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->textBounds:Landroid/graphics/Rect;

    .line 1876
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getOuterCircleCenterPoint()[I

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    .line 1877
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->textBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getOuterCircleRadius(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->calculatedOuterCircleRadius:I

    .line 1878
    return-void
.end method

.method calculateDrawingBounds()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1881
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    if-nez v0, :cond_0

    .line 1892
    :goto_0
    return-void

    .line 1886
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v1, v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    sub-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1887
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v1, v1, v5

    int-to-float v1, v1

    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    sub-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1888
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1889
    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->CIRCLE_PADDING:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 1888
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1890
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1891
    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v2, v2, v5

    int-to-float v2, v2

    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->CIRCLE_PADDING:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 1890
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method delayedLerp(FF)F
    .locals 2

    .prologue
    .line 1867
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 1868
    const/4 v0, 0x0

    .line 1871
    :goto_0
    return v0

    :cond_0
    sub-float v0, p1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public dismiss(Z)V
    .locals 1

    .prologue
    .line 1737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isDismissing:Z

    .line 1738
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1739
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1740
    if-eqz p1, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->dismissConfirmAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1745
    :goto_0
    return-void

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->dismissAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method distance(IIII)D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 1984
    sub-int v0, p3, p1

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int v2, p4, p2

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method drawDebugInformation(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/16 v9, 0xff

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1775
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1776
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    .line 1777
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v9, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1778
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1779
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->dp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    .line 1783
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugTextPaint:Landroid/text/TextPaint;

    .line 1784
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1785
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->sp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1789
    :cond_1
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1790
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->textBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1791
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1792
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v0, v0, v7

    int-to-float v0, v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v1, v1, v4

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1793
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v0, v0, v7

    int-to-float v0, v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v1, v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->calculatedOuterCircleRadius:I

    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->CIRCLE_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1794
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_PADDING:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1797
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text bounds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Target bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "View size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Target bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1801
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugStringBuilder:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_3

    .line 1802
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1808
    :goto_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugLayout:Landroid/text/DynamicLayout;

    if-nez v0, :cond_2

    .line 1809
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugLayout:Landroid/text/DynamicLayout;

    .line 1812
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 1814
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    const/16 v1, 0xdc

    invoke-virtual {v0, v1, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1815
    iget v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->topBoundary:I

    int-to-float v0, v0

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1816
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1817
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v9, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1818
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1820
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1821
    return-void

    .line 1804
    :cond_3
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1805
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debugStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method drawJitteredShadow(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1761
    const v0, 0x3e4ccccd    # 0.2f

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleAlpha:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 1762
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1763
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    float-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1764
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v0, v0, v7

    int-to-float v0, v0

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v2, v2, v8

    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->SHADOW_DIM:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    iget-object v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1765
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1767
    const/4 v0, 0x6

    :goto_0
    if-gtz v0, :cond_0

    .line 1772
    return-void

    .line 1768
    :cond_0
    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    const/high16 v4, 0x40e00000    # 7.0f

    div-float/2addr v3, v4

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1769
    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v2, v2, v7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v3, v3, v8

    iget v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->SHADOW_DIM:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 1770
    iget v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    rsub-int/lit8 v5, v0, 0x7

    iget v6, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->SHADOW_JITTER_DIM:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    .line 1769
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1767
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method drawTintedTarget()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1824
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    .line 1825
    iget-boolean v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->shouldTintTarget:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 1826
    :cond_0
    iput-object v5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    .line 1839
    :cond_1
    :goto_0
    return-void

    .line 1830
    :cond_2
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 1832
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1833
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1832
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    .line 1834
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1835
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 1836
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1835
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1837
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1838
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method getOuterCircleCenterPoint()[I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1926
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->inGutter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1927
    new-array v0, v8, [I

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    aput v3, v0, v2

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    aput v2, v0, v1

    .line 1943
    :goto_0
    return-object v0

    .line 1930
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_PADDING:I

    add-int/2addr v3, v0

    .line 1931
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getTotalTextHeight()I

    move-result v4

    .line 1933
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    sub-int/2addr v0, v5

    iget v5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_PADDING:I

    sub-int/2addr v0, v5

    sub-int/2addr v0, v4

    if-lez v0, :cond_1

    move v0, v1

    .line 1935
    :goto_1
    iget-object v5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->textBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1936
    iget-object v6, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->textBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1937
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    if-nez v3, :cond_2

    move v3, v2

    .line 1938
    :goto_2
    if-eqz v0, :cond_3

    .line 1939
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v7, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    sub-int/2addr v0, v7

    iget v7, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_PADDING:I

    sub-int/2addr v0, v7

    sub-int/2addr v0, v4

    add-int/2addr v0, v3

    .line 1943
    :goto_3
    new-array v3, v8, [I

    add-int v4, v5, v6

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v2

    aput v0, v3, v1

    move-object v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1933
    goto :goto_1

    .line 1937
    :cond_2
    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    goto :goto_2

    .line 1941
    :cond_3
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_PADDING:I

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    goto :goto_3
.end method

.method getOuterCircleRadius(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 4

    .prologue
    .line 1895
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 1896
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 1897
    const v2, 0x3f8ccccd    # 1.1f

    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1898
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1899
    neg-int v0, v2

    neg-int v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 1901
    invoke-virtual {p0, p1, p2, p3}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->maxDistanceToPoints(IILandroid/graphics/Rect;)I

    move-result v0

    .line 1902
    invoke-virtual {p0, p1, p2, v3}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->maxDistanceToPoints(IILandroid/graphics/Rect;)I

    move-result v1

    .line 1903
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->CIRCLE_PADDING:I

    add-int/2addr v0, v1

    return v0
.end method

.method getTextBounds()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 1907
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getTotalTextHeight()I

    move-result v2

    .line 1908
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getTotalTextWidth()I

    move-result v3

    .line 1910
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_PADDING:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 1912
    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->topBoundary:I

    if-le v0, v1, :cond_0

    .line 1918
    :goto_0
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v1, v4

    .line 1919
    if-gez v1, :cond_1

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TEXT_POSITIONING_BIAS:I

    neg-int v1, v1

    .line 1920
    :goto_1
    iget v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TEXT_PADDING:I

    iget-object v5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int v1, v5, v1

    sub-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1921
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TEXT_PADDING:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1922
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v2, v0

    invoke-direct {v4, v1, v0, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 1915
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_RADIUS:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TARGET_PADDING:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1919
    :cond_1
    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TEXT_POSITIONING_BIAS:I

    goto :goto_1
.end method

.method getTotalTextHeight()I
    .locals 2

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 1948
    const/4 v0, 0x0

    .line 1955
    :goto_0
    return v0

    .line 1951
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_1

    .line 1952
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TEXT_SPACING:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1955
    :cond_1
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TEXT_SPACING:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getTotalTextWidth()I
    .locals 2

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 1960
    const/4 v0, 0x0

    .line 1967
    :goto_0
    return v0

    .line 1963
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_1

    .line 1964
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    goto :goto_0

    .line 1967
    :cond_1
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method halfwayLerp(F)F
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1859
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 1860
    div-float v0, p1, v1

    .line 1863
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method inGutter(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1970
    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->bottomBoundary:I

    if-lez v2, :cond_2

    .line 1971
    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->GUTTER_DIM:I

    if-lt p1, v2, :cond_1

    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->bottomBoundary:I

    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->GUTTER_DIM:I

    sub-int/2addr v2, v3

    if-gt p1, v2, :cond_1

    .line 1973
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1971
    goto :goto_0

    .line 1973
    :cond_2
    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->GUTTER_DIM:I

    if-lt p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->GUTTER_DIM:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method invalidateViewAndOutline(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1987
    invoke-virtual {p0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->invalidate(Landroid/graphics/Rect;)V

    .line 1988
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outlineProvider:Landroid/view/ViewOutlineProvider;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1989
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->invalidateOutline()V

    .line 1991
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1757
    iget-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isDismissed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method maxDistanceToPoints(IILandroid/graphics/Rect;)I
    .locals 8

    .prologue
    .line 1977
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->distance(IIII)D

    move-result-wide v0

    .line 1978
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->distance(IIII)D

    move-result-wide v2

    .line 1979
    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->distance(IIII)D

    move-result-wide v4

    .line 1980
    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget v7, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->distance(IIII)D

    move-result-wide v6

    .line 1981
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1605
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1606
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->onDismiss(Z)V

    .line 1607
    return-void
.end method

.method onDismiss(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1610
    iget-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isDismissed:Z

    if-eqz v0, :cond_1

    .line 1625
    :cond_0
    :goto_0
    return-void

    .line 1612
    :cond_1
    iput-boolean v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isDismissing:Z

    .line 1613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isDismissed:Z

    .line 1615
    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->animators:[Landroid/animation/ValueAnimator;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_2

    .line 1619
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v2}, Lcom/abdullah/ahmed/AboutDevActivity$ViewUtil;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1620
    iput-boolean v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->visible:Z

    .line 1622
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->listener:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->listener:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

    invoke-virtual {v0, p0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;->onTargetDismissed(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;Z)V

    goto :goto_0

    .line 1615
    :cond_2
    aget-object v4, v2, v0

    .line 1616
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1617
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1615
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1629
    iget-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    if-nez v0, :cond_1

    .line 1694
    :cond_0
    :goto_0
    return-void

    .line 1631
    :cond_1
    iget v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->topBoundary:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->bottomBoundary:I

    if-lez v0, :cond_2

    .line 1632
    iget v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->topBoundary:I

    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->bottomBoundary:I

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1635
    :cond_2
    iget v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->dimColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1636
    iget v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->dimColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1640
    :cond_3
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1641
    iget-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->shouldDrawShadow:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_4

    .line 1642
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1644
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1645
    invoke-virtual {p0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->drawJitteredShadow(Landroid/graphics/Canvas;)V

    .line 1647
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1649
    :cond_4
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    aget v0, v0, v3

    int-to-float v0, v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleCenter:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCircleRadius:F

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1651
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCircleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1652
    iget v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulseAlpha:I

    if-lez v0, :cond_5

    .line 1653
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulsePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulseAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1654
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 1655
    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulseRadius:F

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePulsePaint:Landroid/graphics/Paint;

    .line 1654
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1657
    :cond_5
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 1658
    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCircleRadius:F

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    .line 1657
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1660
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1662
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->textBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->textBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1663
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titlePaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->textAlpha:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1664
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_6

    .line 1665
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1668
    :cond_6
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_7

    .line 1669
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TEXT_SPACING:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1670
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget v2, v2, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextAlpha:F

    iget v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->textAlpha:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1671
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1674
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1676
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1678
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    .line 1679
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 1680
    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1679
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1681
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1689
    :cond_8
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1691
    iget-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debug:Z

    if-eqz v0, :cond_0

    .line 1692
    invoke-virtual {p0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->drawDebugInformation(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1682
    :cond_9
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 1683
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-object v2, v2, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 1684
    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-object v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1683
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1685
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1686
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->cancelable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1706
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1707
    const/4 v0, 0x1

    .line 1710
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1715
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isInteractable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->cancelable:Z

    if-eqz v1, :cond_0

    .line 1716
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1717
    iput-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->isInteractable:Z

    .line 1719
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->listener:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

    if-eqz v0, :cond_1

    .line 1720
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->listener:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

    invoke-virtual {v0, p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;->onTargetCancel(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    .line 1725
    :goto_0
    const/4 v0, 0x1

    .line 1728
    :cond_0
    return v0

    .line 1722
    :cond_1
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;

    invoke-direct {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;-><init>()V

    invoke-virtual {v0, p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;->onTargetCancel(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->lastTouchX:F

    .line 1699
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->lastTouchY:F

    .line 1700
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDrawDebug(Z)V
    .locals 1

    .prologue
    .line 1749
    iget-boolean v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debug:Z

    if-eq v0, p1, :cond_0

    .line 1750
    iput-boolean p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->debug:Z

    .line 1751
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->postInvalidate()V

    .line 1753
    :cond_0
    return-void
.end method

.method updateTextLayouts()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1842
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TEXT_MAX_WIDTH:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->TEXT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    .line 1843
    if-gtz v3, :cond_0

    .line 1856
    :goto_0
    return-void

    .line 1847
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->title:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titlePaint:Landroid/text/TextPaint;

    .line 1848
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1847
    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    .line 1850
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->description:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1851
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->description:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    .line 1852
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1851
    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 1854
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    goto :goto_0
.end method
