.class Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$1;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->onUpdate(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

.field private final synthetic val$listener:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    iput-object p2, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$1;->val$listener:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 802
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$1;->val$listener:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$UpdateListener;->onUpdate(F)V

    .line 803
    return-void
.end method
