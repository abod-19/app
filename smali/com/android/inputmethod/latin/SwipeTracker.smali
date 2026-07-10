.class Lcom/android/inputmethod/latin/SwipeTracker;
.super Ljava/lang/Object;
.source "SwipeTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;
    }
.end annotation


# static fields
.field private static final LONGEST_PAST_TIME:I = 0xc8

.field private static final NUM_PAST:I = 0x4


# instance fields
.field final mBuffer:Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SwipeTracker;->mBuffer:Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;

    .line 21
    return-void
.end method

.method private addPoint(FFJ)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/inputmethod/latin/SwipeTracker;->mBuffer:Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;

    .line 45
    .local v0, "buffer":Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;
    :goto_0
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 51
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;->add(FFJ)V

    .line 52
    return-void

    .line 46
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 47
    .local v1, "lastT":J
    const-wide/16 v3, 0xc8

    sub-long v3, p3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;->dropOldest()V

    goto :goto_0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 32
    iget-object v4, p0, Lcom/android/inputmethod/latin/SwipeTracker;->mBuffer:Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;->clear()V

    .line 41
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 36
    .local v2, "time":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 37
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/android/inputmethod/latin/SwipeTracker;->addPoint(FFJ)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/inputmethod/latin/SwipeTracker;->addPoint(FFJ)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .param p1, "units"    # I

    .prologue
    .line 55
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, v0}, Lcom/android/inputmethod/latin/SwipeTracker;->computeCurrentVelocity(IF)V

    .line 56
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 15
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    .prologue
    .line 59
    iget-object v3, p0, Lcom/android/inputmethod/latin/SwipeTracker;->mBuffer:Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;

    .line 60
    .local v3, "buffer":Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;->getX(I)F

    move-result v9

    .line 61
    .local v9, "oldestX":F
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;->getY(I)F

    move-result v10

    .line 62
    .local v10, "oldestY":F
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;->getTime(I)J

    move-result-wide v7

    .line 64
    .local v7, "oldestTime":J
    const/4 v1, 0x0

    .line 65
    .local v1, "accumX":F
    const/4 v2, 0x0

    .line 66
    .local v2, "accumY":F
    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;->size()I

    move-result v4

    .line 67
    .local v4, "count":I
    const/4 v11, 0x1

    .local v11, "pos":I
    :goto_0
    if-lt v11, v4, :cond_0

    .line 80
    const/4 v13, 0x0

    cmpg-float v13, v1, v13

    if-gez v13, :cond_4

    move/from16 v0, p2

    neg-float v13, v0

    invoke-static {v1, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    :goto_1
    iput v13, p0, Lcom/android/inputmethod/latin/SwipeTracker;->mXVelocity:F

    .line 82
    const/4 v13, 0x0

    cmpg-float v13, v2, v13

    if-gez v13, :cond_5

    move/from16 v0, p2

    neg-float v13, v0

    invoke-static {v2, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    :goto_2
    iput v13, p0, Lcom/android/inputmethod/latin/SwipeTracker;->mYVelocity:F

    .line 84
    return-void

    .line 68
    :cond_0
    invoke-virtual {v3, v11}, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;->getTime(I)J

    move-result-wide v13

    sub-long/2addr v13, v7

    long-to-int v6, v13

    .line 69
    .local v6, "dur":I
    if-nez v6, :cond_1

    .line 67
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v3, v11}, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;->getX(I)F

    move-result v13

    sub-float v5, v13, v9

    .line 71
    .local v5, "dist":F
    int-to-float v13, v6

    div-float v13, v5, v13

    move/from16 v0, p1

    int-to-float v14, v0

    mul-float v12, v13, v14

    .line 72
    .local v12, "vel":F
    const/4 v13, 0x0

    cmpl-float v13, v1, v13

    if-nez v13, :cond_2

    move v1, v12

    .line 75
    :goto_4
    invoke-virtual {v3, v11}, Lcom/android/inputmethod/latin/SwipeTracker$EventRingBuffer;->getY(I)F

    move-result v13

    sub-float v5, v13, v10

    .line 76
    int-to-float v13, v6

    div-float v13, v5, v13

    move/from16 v0, p1

    int-to-float v14, v0

    mul-float v12, v13, v14

    .line 77
    const/4 v13, 0x0

    cmpl-float v13, v2, v13

    if-nez v13, :cond_3

    move v2, v12

    goto :goto_3

    .line 73
    :cond_2
    add-float v13, v1, v12

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v1, v13, v14

    goto :goto_4

    .line 78
    :cond_3
    add-float v13, v2, v12

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v2, v13, v14

    goto :goto_3

    .line 81
    .end local v5    # "dist":F
    .end local v6    # "dur":I
    .end local v12    # "vel":F
    :cond_4
    move/from16 v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v13

    goto :goto_1

    .line 83
    :cond_5
    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v13

    goto :goto_2
.end method

.method public getXVelocity()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/inputmethod/latin/SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/inputmethod/latin/SwipeTracker;->mYVelocity:F

    return v0
.end method
