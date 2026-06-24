.class Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abdullah/ahmed/AboutDevActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatValueAnimatorBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$EndListener;,
        Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;
    }
.end annotation


# instance fields
.field private final animator:Landroid/animation/ValueAnimator;

.field private endListener:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$EndListener;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;-><init>(Z)V

    .line 774
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    if-eqz p1, :cond_0

    .line 777
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    .line 781
    :goto_0
    return-void

    .line 779
    :cond_0
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 777
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 779
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$EndListener;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->endListener:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$EndListener;

    return-object v0
.end method


# virtual methods
.method public build()Landroid/animation/ValueAnimator;
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->endListener:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$EndListener;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$2;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$2;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public delayBy(J)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 784
    return-object p0
.end method

.method public duration(J)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 788
    return-object p0
.end method

.method public interpolator(Landroid/animation/TimeInterpolator;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 792
    return-object p0
.end method

.method public onEnd(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$EndListener;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->endListener:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$EndListener;

    .line 809
    return-object p0
.end method

.method public onUpdate(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$1;

    invoke-direct {v1, p0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$1;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 805
    return-object p0
.end method

.method public repeat(I)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 796
    return-object p0
.end method
