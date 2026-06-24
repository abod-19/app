.class Lcom/abdullah/ahmed/EnableActivity$11$1$1$1;
.super Ljava/lang/Object;
.source "EnableActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/EnableActivity$11$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/abdullah/ahmed/EnableActivity$11$1$1;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/EnableActivity$11$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/EnableActivity$11$1$1$1;->this$3:Lcom/abdullah/ahmed/EnableActivity$11$1$1;

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/EnableActivity$11$1$1$1;)Lcom/abdullah/ahmed/EnableActivity$11$1$1;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$11$1$1$1;->this$3:Lcom/abdullah/ahmed/EnableActivity$11$1$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x190

    const/4 v3, 0x2

    .line 611
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$11$1$1$1;->this$3:Lcom/abdullah/ahmed/EnableActivity$11$1$1;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11$1$1;->access$0(Lcom/abdullah/ahmed/EnableActivity$11$1$1;)Lcom/abdullah/ahmed/EnableActivity$11$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11$1;->access$0(Lcom/abdullah/ahmed/EnableActivity$11$1;)Lcom/abdullah/ahmed/EnableActivity$11;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11;->access$0(Lcom/abdullah/ahmed/EnableActivity$11;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$7(Lcom/abdullah/ahmed/EnableActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$11$1$1$1;->this$3:Lcom/abdullah/ahmed/EnableActivity$11$1$1;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11$1$1;->access$0(Lcom/abdullah/ahmed/EnableActivity$11$1$1;)Lcom/abdullah/ahmed/EnableActivity$11$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11$1;->access$0(Lcom/abdullah/ahmed/EnableActivity$11$1;)Lcom/abdullah/ahmed/EnableActivity$11;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11;->access$0(Lcom/abdullah/ahmed/EnableActivity$11;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$7(Lcom/abdullah/ahmed/EnableActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "ScaleX"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 615
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 616
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 618
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$11$1$1$1;->this$3:Lcom/abdullah/ahmed/EnableActivity$11$1$1;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11$1$1;->access$0(Lcom/abdullah/ahmed/EnableActivity$11$1$1;)Lcom/abdullah/ahmed/EnableActivity$11$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11$1;->access$0(Lcom/abdullah/ahmed/EnableActivity$11$1;)Lcom/abdullah/ahmed/EnableActivity$11;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11;->access$0(Lcom/abdullah/ahmed/EnableActivity$11;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$7(Lcom/abdullah/ahmed/EnableActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "ScaleY"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 619
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 620
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 622
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$11$1$1$1;->this$3:Lcom/abdullah/ahmed/EnableActivity$11$1$1;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11$1$1;->access$0(Lcom/abdullah/ahmed/EnableActivity$11$1$1;)Lcom/abdullah/ahmed/EnableActivity$11$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11$1;->access$0(Lcom/abdullah/ahmed/EnableActivity$11$1;)Lcom/abdullah/ahmed/EnableActivity$11;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11;->access$0(Lcom/abdullah/ahmed/EnableActivity$11;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    new-instance v1, Lcom/abdullah/ahmed/EnableActivity$11$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/EnableActivity$11$1$1$1$1;-><init>(Lcom/abdullah/ahmed/EnableActivity$11$1$1$1;)V

    invoke-static {v0, v1}, Lcom/abdullah/ahmed/EnableActivity;->access$15(Lcom/abdullah/ahmed/EnableActivity;Ljava/util/TimerTask;)V

    .line 731
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$11$1$1$1;->this$3:Lcom/abdullah/ahmed/EnableActivity$11$1$1;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11$1$1;->access$0(Lcom/abdullah/ahmed/EnableActivity$11$1$1;)Lcom/abdullah/ahmed/EnableActivity$11$1;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11$1;->access$0(Lcom/abdullah/ahmed/EnableActivity$11$1;)Lcom/abdullah/ahmed/EnableActivity$11;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$11;->access$0(Lcom/abdullah/ahmed/EnableActivity$11;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$16(Lcom/abdullah/ahmed/EnableActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity$11$1$1$1;->this$3:Lcom/abdullah/ahmed/EnableActivity$11$1$1;

    invoke-static {v1}, Lcom/abdullah/ahmed/EnableActivity$11$1$1;->access$0(Lcom/abdullah/ahmed/EnableActivity$11$1$1;)Lcom/abdullah/ahmed/EnableActivity$11$1;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/EnableActivity$11$1;->access$0(Lcom/abdullah/ahmed/EnableActivity$11$1;)Lcom/abdullah/ahmed/EnableActivity$11;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/EnableActivity$11;->access$0(Lcom/abdullah/ahmed/EnableActivity$11;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/EnableActivity;->access$17(Lcom/abdullah/ahmed/EnableActivity;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 732
    return-void

    .line 614
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 618
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
