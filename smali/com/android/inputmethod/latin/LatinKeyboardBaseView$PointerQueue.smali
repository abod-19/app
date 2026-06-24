.class Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;
.super Ljava/lang/Object;
.source "LatinKeyboardBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinKeyboardBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PointerQueue"
.end annotation


# instance fields
.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/inputmethod/latin/PointerTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    .line 380
    return-void
.end method


# virtual methods
.method public add(Lcom/android/inputmethod/latin/PointerTracker;)V
    .locals 1
    .param p1, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 385
    return-void
.end method

.method public isInSlidingKeyInput()Z
    .locals 3

    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 448
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 444
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/PointerTracker;

    .line 445
    .local v0, "tracker":Lcom/android/inputmethod/latin/PointerTracker;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker;->isInSlidingKeyInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public lastIndexOf(Lcom/android/inputmethod/latin/PointerTracker;)I
    .locals 4
    .param p1, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    .line 389
    .local v1, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/inputmethod/latin/PointerTracker;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    :goto_0
    if-gez v0, :cond_1

    .line 394
    const/4 v0, -0x1

    .end local v0    # "index":I
    :cond_0
    return v0

    .line 390
    .restart local v0    # "index":I
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/PointerTracker;

    .line 391
    .local v2, "t":Lcom/android/inputmethod/latin/PointerTracker;
    if-eq v2, p1, :cond_0

    .line 389
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public releaseAllPointersExcept(Lcom/android/inputmethod/latin/PointerTracker;J)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;
    .param p2, "eventTime"    # J

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 421
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 422
    if-eqz p1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_1
    return-void

    .line 415
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/PointerTracker;

    .line 416
    .local v0, "t":Lcom/android/inputmethod/latin/PointerTracker;
    if-eq v0, p1, :cond_0

    .line 418
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker;->getLastY()I

    move-result v3

    invoke-virtual {v0, v2, v3, p2, p3}, Lcom/android/inputmethod/latin/PointerTracker;->onUpEvent(IIJ)V

    .line 419
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker;->setAlreadyProcessed()V

    goto :goto_0
.end method

.method public releaseAllPointersExceptDontSend(Lcom/android/inputmethod/latin/PointerTracker;J)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;
    .param p2, "eventTime"    # J

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 434
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 435
    if-eqz p1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_1
    return-void

    .line 428
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/PointerTracker;

    .line 429
    .local v0, "t":Lcom/android/inputmethod/latin/PointerTracker;
    if-eq v0, p1, :cond_0

    .line 432
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker;->setAlreadyProcessed()V

    goto :goto_0
.end method

.method public releaseAllPointersOlderThan(Lcom/android/inputmethod/latin/PointerTracker;J)V
    .locals 5
    .param p1, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;
    .param p2, "eventTime"    # J

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    .line 400
    .local v1, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/inputmethod/latin/PointerTracker;>;"
    const/4 v0, 0x0

    .line 401
    .local v0, "oldestPos":I
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/PointerTracker;

    .local v2, "t":Lcom/android/inputmethod/latin/PointerTracker;
    :goto_0
    if-ne v2, p1, :cond_0

    .line 411
    return-void

    .line 403
    :cond_0
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/PointerTracker;->isModifier()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    add-int/lit8 v0, v0, 0x1

    .line 402
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "t":Lcom/android/inputmethod/latin/PointerTracker;
    check-cast v2, Lcom/android/inputmethod/latin/PointerTracker;

    .line 401
    .restart local v2    # "t":Lcom/android/inputmethod/latin/PointerTracker;
    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/PointerTracker;->getLastX()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/PointerTracker;->getLastY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/android/inputmethod/latin/PointerTracker;->onUpEvent(IIJ)V

    .line 407
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/PointerTracker;->setAlreadyProcessed()V

    .line 408
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public remove(Lcom/android/inputmethod/latin/PointerTracker;)V
    .locals 1
    .param p1, "tracker"    # Lcom/android/inputmethod/latin/PointerTracker;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 441
    return-void
.end method
