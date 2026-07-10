.class final Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
.super Ljava/lang/Object;
.source "KeyEventStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/KeyEventStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyEventState"
.end annotation


# instance fields
.field private result:I

.field final synthetic this$0:Lcom/android/inputmethod/latin/KeyEventStateMachine;

.field private transitions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/KeyEventStateMachine;)V
    .locals 1

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->this$0:Lcom/android/inputmethod/latin/KeyEventStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->result:I

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->result:I

    return v0
.end method


# virtual methods
.method public addNextState(ILcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "next"    # Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->transitions:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->transitions:Ljava/util/LinkedList;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->transitions:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;

    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->this$0:Lcom/android/inputmethod/latin/KeyEventStateMachine;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;-><init>(Lcom/android/inputmethod/latin/KeyEventStateMachine;ILcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public getNext(I)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->transitions:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-object v1

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->transitions:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;

    .line 34
    .local v0, "transition":Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;
    invoke-static {v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;->access$0(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 35
    invoke-static {v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;->access$1(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    move-result-object v1

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->transitions:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCharacter(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->result:I

    .line 49
    return-void
.end method
