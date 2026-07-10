.class Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$3;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"

# interfaces
.implements Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder$EndListener;


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
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$3;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    .line 1280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$3;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1284
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$3;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;Z)V

    .line 1285
    return-void
.end method
