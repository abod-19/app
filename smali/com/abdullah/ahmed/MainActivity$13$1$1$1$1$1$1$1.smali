.class Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$7:Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1$1;->this$7:Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;

    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1$1;->this$7:Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x190

    const/4 v3, 0x2

    .line 736
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1$1;->this$7:Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1;)Lcom/abdullah/ahmed/MainActivity$13;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13;->access$0(Lcom/abdullah/ahmed/MainActivity$13;)Lcom/abdullah/ahmed/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity;->access$10(Lcom/abdullah/ahmed/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1$1;->this$7:Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1;)Lcom/abdullah/ahmed/MainActivity$13;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13;->access$0(Lcom/abdullah/ahmed/MainActivity$13;)Lcom/abdullah/ahmed/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity;->access$10(Lcom/abdullah/ahmed/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "ScaleX"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 740
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 741
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 743
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1$1;->this$7:Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1;)Lcom/abdullah/ahmed/MainActivity$13;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13;->access$0(Lcom/abdullah/ahmed/MainActivity$13;)Lcom/abdullah/ahmed/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity;->access$10(Lcom/abdullah/ahmed/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "ScaleY"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 744
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 745
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 747
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1$1;->this$7:Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1;)Lcom/abdullah/ahmed/MainActivity$13;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13;->access$0(Lcom/abdullah/ahmed/MainActivity$13;)Lcom/abdullah/ahmed/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1$1$1;-><init>(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1$1;)V

    invoke-static {v0, v1}, Lcom/abdullah/ahmed/MainActivity;->access$16(Lcom/abdullah/ahmed/MainActivity;Ljava/util/TimerTask;)V

    .line 834
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1$1;->this$7:Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1;)Lcom/abdullah/ahmed/MainActivity$13;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity$13;->access$0(Lcom/abdullah/ahmed/MainActivity$13;)Lcom/abdullah/ahmed/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/MainActivity;->access$17(Lcom/abdullah/ahmed/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1$1;->this$7:Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;

    invoke-static {v1}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1$1;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/MainActivity$13$1$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1$1;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/MainActivity$13$1$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1$1;)Lcom/abdullah/ahmed/MainActivity$13$1;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/MainActivity$13$1;->access$0(Lcom/abdullah/ahmed/MainActivity$13$1;)Lcom/abdullah/ahmed/MainActivity$13;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/MainActivity$13;->access$0(Lcom/abdullah/ahmed/MainActivity$13;)Lcom/abdullah/ahmed/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/MainActivity;->access$18(Lcom/abdullah/ahmed/MainActivity;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 835
    return-void

    .line 739
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 743
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
