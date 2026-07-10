.class final Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;
.super Ljava/lang/Object;
.source "KeyEventStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/KeyEventStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyEventTransition"
.end annotation


# instance fields
.field private keyCode:I

.field private next:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

.field final synthetic this$0:Lcom/android/inputmethod/latin/KeyEventStateMachine;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/KeyEventStateMachine;ILcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;)V
    .locals 0
    .param p2, "keyCode"    # I
    .param p3, "next"    # Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;->this$0:Lcom/android/inputmethod/latin/KeyEventStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p3, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;->next:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    .line 16
    iput p2, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;->keyCode:I

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;)I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;->keyCode:I

    return v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;->next:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    return-object v0
.end method
