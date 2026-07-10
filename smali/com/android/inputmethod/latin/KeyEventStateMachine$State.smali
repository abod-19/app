.class public final enum Lcom/android/inputmethod/latin/KeyEventStateMachine$State;
.super Ljava/lang/Enum;
.source "KeyEventStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/KeyEventStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/inputmethod/latin/KeyEventStateMachine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

.field public static final enum FULLMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

.field public static final enum NOMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

.field public static final enum PARTMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

.field public static final enum RESET:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

.field public static final enum REWIND:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    const-string v1, "RESET"

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->RESET:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    new-instance v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    const-string v1, "REWIND"

    invoke-direct {v0, v1, v3}, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->REWIND:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    new-instance v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    const-string v1, "NOMATCH"

    invoke-direct {v0, v1, v4}, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->NOMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    new-instance v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    const-string v1, "PARTMATCH"

    invoke-direct {v0, v1, v5}, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->PARTMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    new-instance v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    const-string v1, "FULLMATCH"

    invoke-direct {v0, v1, v6}, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->FULLMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    sget-object v1, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->RESET:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->REWIND:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->NOMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->PARTMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->FULLMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->ENUM$VALUES:[Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/inputmethod/latin/KeyEventStateMachine$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    return-object v0
.end method

.method public static values()[Lcom/android/inputmethod/latin/KeyEventStateMachine$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->ENUM$VALUES:[Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
