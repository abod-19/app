.class Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$8;
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
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$8;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    .line 1349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$8;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->onDismiss(Z)V

    .line 1353
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$8;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->parent:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$8;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-static {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$ViewUtil;->removeView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 1354
    return-void
.end method
