.class public Lcom/android/inputmethod/latin/KeyEventStateMachine;
.super Ljava/lang/Object;
.source "KeyEventStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;,
        Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventTransition;,
        Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;,
        Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;,
        Lcom/android/inputmethod/latin/KeyEventStateMachine$State;
    }
.end annotation


# static fields
.field public static final KEYCODE_FIRST_CHAR:I = -0x1001

.field private static final MAX_NFA_DIVIDES:I = 0x1e


# instance fields
.field private resultChar:I

.field private sequenceLength:I

.field private start:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

.field private walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

.field private walkerhelper:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

.field private walkerunused:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v1, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;-><init>(Lcom/android/inputmethod/latin/KeyEventStateMachine;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->start:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    .line 180
    new-instance v1, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;-><init>(Lcom/android/inputmethod/latin/KeyEventStateMachine;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    .line 181
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    new-instance v2, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;-><init>(Lcom/android/inputmethod/latin/KeyEventStateMachine;)V

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    .line 183
    new-instance v1, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;-><init>(Lcom/android/inputmethod/latin/KeyEventStateMachine;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerunused:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    .line 184
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 187
    new-instance v1, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;-><init>(Lcom/android/inputmethod/latin/KeyEventStateMachine;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerhelper:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    .line 188
    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerunused:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    new-instance v2, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;-><init>(Lcom/android/inputmethod/latin/KeyEventStateMachine;)V

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/KeyEventStateMachine;)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->start:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    return-object v0
.end method

.method private addNextState(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;I)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    .locals 2
    .param p1, "current"    # Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    .param p2, "keyCode"    # I

    .prologue
    .line 191
    invoke-virtual {p1, p2}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->getNext(I)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    move-result-object v0

    .line 192
    .local v0, "next":Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 196
    .end local v0    # "next":Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    .local v1, "next":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 194
    .end local v1    # "next":Ljava/lang/Object;
    .restart local v0    # "next":Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    :cond_0
    new-instance v0, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    .end local v0    # "next":Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;-><init>(Lcom/android/inputmethod/latin/KeyEventStateMachine;)V

    .line 195
    .restart local v0    # "next":Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    invoke-virtual {p1, p2, v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->addNextState(ILcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;)V

    move-object v1, v0

    .line 196
    .restart local v1    # "next":Ljava/lang/Object;
    goto :goto_0
.end method

.method private addSpecialKeyNextState(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;II)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    .locals 2
    .param p1, "current"    # Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    .param p2, "keyCode"    # I
    .param p3, "specialKey"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/KeyEventStateMachine;->addNextState(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;I)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    move-result-object v0

    .line 202
    .local v0, "next":Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/latin/KeyEventStateMachine;->addNextState(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;I)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    move-result-object v1

    .line 203
    .local v1, "spnext":Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    invoke-virtual {v1, p2, v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->addNextState(ILcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;)V

    .line 205
    return-object v0
.end method


# virtual methods
.method public addKeyCode(I)Lcom/android/inputmethod/latin/KeyEventStateMachine$State;
    .locals 12
    .param p1, "keyCode"    # I

    .prologue
    const/4 v10, 0x0

    .line 226
    iput v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->sequenceLength:I

    .line 227
    iput v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->resultChar:I

    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, "found":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    sget-object v8, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->RESET:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    .line 232
    .local v8, "resultstate":Lcom/android/inputmethod/latin/KeyEventStateMachine$State;
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->hasItem()Z

    move-result v10

    if-nez v10, :cond_0

    .line 233
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerunused:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->getItem()Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    move-result-object v6

    .line 234
    .local v6, "part":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    invoke-virtual {v6}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->reset()V

    .line 235
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10, v6}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    .line 238
    .end local v6    # "part":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->hasItem()Z

    move-result v10

    if-nez v10, :cond_3

    .line 282
    :goto_1
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->hasItem()Z

    move-result v10

    if-nez v10, :cond_c

    .line 285
    iget-object v9, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerhelper:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    .line 286
    .local v9, "switchWalkerarrays":Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    iput-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerhelper:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    .line 287
    iput-object v9, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    .line 289
    if-eqz v2, :cond_2

    .line 290
    invoke-static {v2}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->access$3(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)I

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->sequenceLength:I

    .line 291
    invoke-static {v2}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->access$4(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)I

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->resultChar:I

    .line 293
    const/4 v3, 0x0

    .line 294
    .local v3, "i":I
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->getCount()I

    move-result v1

    .line 295
    .local v1, "count":I
    :cond_1
    if-lt v3, v1, :cond_d

    move v4, v3

    .line 309
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_2
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lt v4, v1, :cond_10

    .line 313
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_2
    return-object v8

    .line 239
    .end local v9    # "switchWalkerarrays":Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;
    :cond_3
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->getItem()Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    move-result-object v0

    .line 241
    .local v0, "cWalker":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->access$0(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;I)Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    move-result-object v7

    .line 242
    .local v7, "result":Lcom/android/inputmethod/latin/KeyEventStateMachine$State;
    sget-object v10, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->REWIND:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    if-ne v7, v10, :cond_5

    .line 243
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerunused:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->hasItem()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 244
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerunused:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->getItem()Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    move-result-object v5

    .line 245
    .local v5, "newwalker":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    invoke-virtual {v5, v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->reset(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    .line 246
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerhelper:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10, v5}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    .line 248
    .end local v5    # "newwalker":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    :cond_4
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->access$1(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;I)V

    .line 249
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->access$0(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;I)Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    move-result-object v7

    .line 252
    :cond_5
    sget-object v10, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->FULLMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    if-ne v7, v10, :cond_6

    .line 253
    if-nez v2, :cond_6

    .line 254
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerhelper:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10, v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    .line 255
    move-object v8, v7

    .line 256
    move-object v2, v0

    .line 257
    goto :goto_1

    .line 261
    :cond_6
    sget-object v10, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->PARTMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    if-eq v7, v10, :cond_7

    sget-object v10, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->NOMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    if-ne v7, v10, :cond_b

    .line 262
    :cond_7
    sget-object v10, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->RESET:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    if-ne v8, v10, :cond_8

    .line 263
    move-object v8, v7

    .line 264
    :cond_8
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerhelper:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10, v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    .line 268
    :goto_3
    sget-object v10, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->PARTMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    if-ne v7, v10, :cond_9

    .line 269
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerunused:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->hasItem()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 270
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerunused:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->getItem()Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    move-result-object v5

    .line 271
    .restart local v5    # "newwalker":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    invoke-virtual {v5}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->reset()V

    .line 272
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerhelper:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10, v5}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    .line 275
    .end local v5    # "newwalker":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    :cond_9
    sget-object v10, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->PARTMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    if-ne v7, v10, :cond_0

    .line 276
    if-eqz v2, :cond_a

    invoke-static {v2}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->access$2(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)I

    move-result v10

    invoke-static {v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->access$2(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 277
    :cond_a
    move-object v2, v0

    .line 278
    move-object v8, v7

    goto/16 :goto_0

    .line 266
    :cond_b
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerunused:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10, v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    goto :goto_3

    .line 283
    .end local v0    # "cWalker":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    .end local v7    # "result":Lcom/android/inputmethod/latin/KeyEventStateMachine$State;
    :cond_c
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerunused:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    iget-object v11, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v11}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->getItem()Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    goto/16 :goto_1

    .line 296
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v9    # "switchWalkerarrays":Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;
    :cond_d
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->getItem()Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    move-result-object v6

    .line 297
    .restart local v6    # "part":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v10, v6}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    .line 298
    add-int/lit8 v3, v3, 0x1

    .line 299
    if-ne v6, v2, :cond_e

    sget-object v10, Lcom/android/inputmethod/latin/KeyEventStateMachine$State;->FULLMATCH:Lcom/android/inputmethod/latin/KeyEventStateMachine$State;

    if-ne v8, v10, :cond_e

    move v4, v3

    .line 300
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_2

    .line 302
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_e
    invoke-static {v2}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->access$3(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_f

    .line 303
    iget v10, v6, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iVisibleSequenceLength:I

    invoke-static {v2}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->access$3(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    iput v10, v6, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->iVisibleSequenceLength:I

    .line 306
    :cond_f
    if-ne v6, v2, :cond_1

    move v4, v3

    .line 307
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_2

    .line 310
    .end local v4    # "i":I
    .end local v6    # "part":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    .restart local v3    # "i":I
    :cond_10
    iget-object v10, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    iget-object v11, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v11}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->getItem()Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_2
.end method

.method public addSequence([II)V
    .locals 3
    .param p1, "sequence"    # [I
    .param p2, "result"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->start:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    .line 210
    .local v0, "c":Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 213
    invoke-virtual {v0, p2}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->setCharacter(I)V

    .line 214
    return-void

    .line 211
    :cond_0
    aget v2, p1, v1

    invoke-direct {p0, v0, v2}, Lcom/android/inputmethod/latin/KeyEventStateMachine;->addNextState(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;I)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    move-result-object v0

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addSpecialKeySequence([III)V
    .locals 3
    .param p1, "sequence"    # [I
    .param p2, "specialKey"    # I
    .param p3, "result"    # I

    .prologue
    .line 217
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->start:Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    invoke-direct {p0, v2, p2}, Lcom/android/inputmethod/latin/KeyEventStateMachine;->addNextState(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;I)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    move-result-object v0

    .line 219
    .local v0, "c":Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 222
    invoke-virtual {v0, p3}, Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;->setCharacter(I)V

    .line 223
    return-void

    .line 220
    :cond_0
    aget v2, p1, v1

    invoke-direct {p0, v0, v2, p2}, Lcom/android/inputmethod/latin/KeyEventStateMachine;->addSpecialKeyNextState(Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;II)Lcom/android/inputmethod/latin/KeyEventStateMachine$KeyEventState;

    move-result-object v0

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCharacter()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->resultChar:I

    return v0
.end method

.method public getSequenceLength()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->sequenceLength:I

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 325
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->hasItem()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerunused:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->getItem()Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    move-result-object v0

    .line 328
    .local v0, "first":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;->reset()V

    .line 329
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    .line 330
    return-void

    .line 326
    .end local v0    # "first":Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walkerunused:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyEventStateMachine;->walker:Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->getItem()Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/KeyEventStateMachine$RingBuffer;->putItem(Lcom/android/inputmethod/latin/KeyEventStateMachine$NFAPart;)V

    goto :goto_0
.end method
