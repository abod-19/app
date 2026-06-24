.class Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LatinKeyboardBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinKeyboardBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    .line 576
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 14
    .param p1, "me1"    # Landroid/view/MotionEvent;
    .param p2, "me2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 580
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 581
    .local v0, "absX":F
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 582
    .local v1, "absY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float v2, v10, v11

    .line 583
    .local v2, "deltaX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float v3, v10, v11

    .line 584
    .local v3, "deltaY":F
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v10

    int-to-long v10, v10

    sget-wide v12, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThresholdMul:J

    mul-long/2addr v10, v12

    long-to-double v10, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    double-to-long v6, v10

    .line 585
    .local v6, "travelX":J
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    sget-wide v12, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThresholdMul:J

    mul-long/2addr v10, v12

    long-to-double v10, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    double-to-long v8, v10

    .line 586
    .local v8, "travelY":J
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$5(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/SwipeTracker;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Lcom/android/inputmethod/latin/SwipeTracker;->computeCurrentVelocity(I)V

    .line 587
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$5(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/SwipeTracker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/SwipeTracker;->getXVelocity()F

    move-result v4

    .line 588
    .local v4, "endingVelocityX":F
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$5(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/SwipeTracker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/SwipeTracker;->getYVelocity()F

    move-result v5

    .line 589
    .local v5, "endingVelocityY":F
    sget v10, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThreshold:I

    int-to-float v10, v10

    cmpl-float v10, p3, v10

    if-lez v10, :cond_0

    cmpg-float v10, v1, v0

    if-gez v10, :cond_0

    .line 590
    long-to-float v10, v6

    cmpl-float v10, v2, v10

    if-lez v10, :cond_0

    .line 591
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$6(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/high16 v10, 0x40800000    # 4.0f

    div-float v10, p3, v10

    cmpl-float v10, v4, v10

    if-ltz v10, :cond_3

    .line 592
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->swipeRight()V

    .line 593
    const/4 v10, 0x1

    .line 614
    :goto_0
    return v10

    .line 595
    :cond_0
    sget v10, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThreshold:I

    neg-int v10, v10

    int-to-float v10, v10

    cmpg-float v10, p3, v10

    if-gez v10, :cond_1

    cmpg-float v10, v1, v0

    if-gez v10, :cond_1

    .line 596
    neg-long v10, v6

    long-to-float v10, v10

    cmpg-float v10, v2, v10

    if-gez v10, :cond_1

    .line 597
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$6(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/high16 v10, 0x40800000    # 4.0f

    div-float v10, p3, v10

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_3

    .line 598
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->swipeLeft()V

    .line 599
    const/4 v10, 0x1

    goto :goto_0

    .line 601
    :cond_1
    sget v10, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThreshold:I

    neg-int v10, v10

    int-to-float v10, v10

    cmpg-float v10, p4, v10

    if-gez v10, :cond_2

    cmpg-float v10, v0, v1

    if-gez v10, :cond_2

    .line 602
    neg-long v10, v8

    long-to-float v10, v10

    cmpg-float v10, v3, v10

    if-gez v10, :cond_2

    .line 603
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$6(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/high16 v10, 0x40800000    # 4.0f

    div-float v10, p4, v10

    cmpg-float v10, v5, v10

    if-gtz v10, :cond_3

    .line 604
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->swipeUp()V

    .line 605
    const/4 v10, 0x1

    goto :goto_0

    .line 607
    :cond_2
    sget v10, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThreshold:I

    int-to-float v10, v10

    cmpl-float v10, p4, v10

    if-lez v10, :cond_3

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v1, v10

    cmpg-float v10, v0, v10

    if-gez v10, :cond_3

    .line 608
    long-to-float v10, v8

    cmpl-float v10, v3, v10

    if-lez v10, :cond_3

    .line 609
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-static {v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$6(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/high16 v10, 0x40800000    # 4.0f

    div-float v10, p4, v10

    cmpl-float v10, v5, v10

    if-ltz v10, :cond_3

    .line 610
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->swipeDown()V

    .line 611
    const/4 v10, 0x1

    goto :goto_0

    .line 614
    :cond_3
    const/4 v10, 0x0

    goto :goto_0
.end method
