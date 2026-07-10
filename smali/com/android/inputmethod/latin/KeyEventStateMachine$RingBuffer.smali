.class Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;
.super Ljava/lang/Object;
.source "KeyEventStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/KeyEventStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RingBuffer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private buffer:[Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

.field private count:I

.field private end:I

.field private start:I

.field final synthetic this$0:Lcom/android/inputmethod/latin/KeyEventStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/android/inputmethod/latin/KeyEventStateMachine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/inputmethod/latin/KeyEventStateMachine;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iput-object p1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->this$0:Lcom/android/inputmethod/latin/KeyEventStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->buffer:[Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    .line 137
    iput v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->start:I

    .line 138
    iput v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->end:I

    .line 139
    iput v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->count:I

    .line 140
    return-void
.end method


# virtual methods
.method getCount()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->count:I

    return v0
.end method

.method getItem()Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    .locals 4

    .prologue
    .line 147
    sget-boolean v1, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->count:I

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->buffer:[Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    iget v2, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->start:I

    aget-object v0, v1, v2

    .line 149
    .local v0, "result":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->buffer:[Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    iget v2, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->start:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 150
    iget v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->start:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x1e

    iput v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->start:I

    .line 151
    iget v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->count:I

    .line 152
    return-object v0
.end method

.method hasItem()Z
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->count:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V
    .locals 2
    .param p1, "item"    # Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->count:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->buffer:[Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    iget v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->end:I

    aput-object p1, v0, v1

    .line 158
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->end:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->end:I

    .line 159
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->count:I

    .line 160
    return-void
.end method
