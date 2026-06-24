.class Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AboutDevActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$2;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    .line 813
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$2;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;

    invoke-static {v0}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;)Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$EndListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$EndListener;->onEnd()V

    .line 817
    return-void
.end method
