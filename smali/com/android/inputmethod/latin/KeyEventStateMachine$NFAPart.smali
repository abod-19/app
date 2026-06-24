.class Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
.super Ljava/lang/Object;
.source "KeyEventStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/KeyEventStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NFAPart"
.end annotation


# instance fields
.field iSequenceLength:I

.field iVisibleSequenceLength:I

.field private resultChar:I

.field private sequenceLength:I

.field state:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

.field final synthetic this$0:Lcom/android/inputmethod/latin/KeyEventStateMachine;

.field private visibleSequenceLength:I


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/KeyEventStateMachine;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->this$0:Lcom/android/inputmethod/latin/KeyEventStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->reset()V

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;I)Lcom/android/inputmethod/latin/KeyEventStateMachine$State;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->addKeyCode(I)Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;I)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->returnToFirst(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->sequenceLength:I

    return v0
.end method

.method static synthetic access$3(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->visibleSequenceLength:I

    return v0
.end method

.method static synthetic access$4(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->resultChar:I

    return v0
.end method

.method private addKeyCode(I)Lcom/android/inputmethod/latin/KeyEventStateMachine$State;
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->state:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->getNext(I)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->state:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    .line 99
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->state:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->reset()V

    .line 101
    sget-object v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->RESET:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    .line 122
    :goto_0
    return-object v0

    .line 103
    :cond_0
    if-lez p1, :cond_1

    .line 104
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iVisibleSequenceLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iVisibleSequenceLength:I

    .line 105
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iSequenceLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iSequenceLength:I

    .line 107
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->state:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    invoke-static {v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->access$0(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->state:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    invoke-static {v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->access$0(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->resultChar:I

    .line 109
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iSequenceLength:I

    iput v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->sequenceLength:I

    .line 110
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iVisibleSequenceLength:I

    iput v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->visibleSequenceLength:I

    .line 112
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->resultChar:I

    const/16 v1, -0x1001

    if-ne v0, v1, :cond_2

    .line 113
    sget-object v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->REWIND:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->state:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->reset()V

    .line 118
    sget-object v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->FULLMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    goto :goto_0

    .line 120
    :cond_3
    sget-object v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->PARTMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    goto :goto_0

    .line 122
    :cond_4
    sget-object v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->NOMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    goto :goto_0
.end method

.method private returnToFirst(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->this$0:Lcom/android/inputmethod/latin/KeyEventStateMachine;

    invoke-static {v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine;->access$0(Lcom/android/inputmethod/latin/KeyEventStateMachine;)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->state:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    .line 92
    if-lez p1, :cond_0

    .line 93
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iVisibleSequenceLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iVisibleSequenceLength:I

    .line 94
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iSequenceLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iSequenceLength:I

    .line 95
    return-void
.end method


# virtual methods
.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->this$0:Lcom/android/inputmethod/latin/KeyEventStateMachine;

    invoke-static {v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine;->access$0(Lcom/android/inputmethod/latin/KeyEventStateMachine;)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->state:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    .line 78
    iput v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iSequenceLength:I

    .line 79
    iput v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iVisibleSequenceLength:I

    .line 80
    return-void
.end method

.method reset(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V
    .locals 1
    .param p1, "part"    # Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    .prologue
    .line 83
    iget-object v0, p1, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->state:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->state:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    .line 84
    iget v0, p1, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iSequenceLength:I

    iput v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iSequenceLength:I

    .line 85
    iget v0, p1, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iVisibleSequenceLength:I

    iput v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iVisibleSequenceLength:I

    .line 86
    return-void
.end method
