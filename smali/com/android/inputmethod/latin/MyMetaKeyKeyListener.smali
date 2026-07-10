.class public abstract Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MyMetaKeyKeyListener.java"


# static fields
.field private static final ALT:Ljava/lang/Object;

.field private static final CAP:Ljava/lang/Object;

.field private static final LOCKED:I = 0x4000011

.field private static final LOCKED_SHIFT:I = 0x8

.field public static final META_ALT_LOCKED:I = 0x200

.field private static final META_ALT_MASK:J = 0x20202000202L

.field public static final META_ALT_ON:I = 0x2

.field private static final META_ALT_PRESSED:J = 0x200000000L

.field private static final META_ALT_RELEASED:J = 0x20000000000L

.field private static final META_ALT_USED:J = 0x2000000L

.field public static final META_CAP_LOCKED:I = 0x100

.field private static final META_CAP_PRESSED:J = 0x100000000L

.field private static final META_CAP_RELEASED:J = 0x10000000000L

.field private static final META_CAP_USED:J = 0x1000000L

.field public static final META_SELECTING:I = 0x10000

.field private static final META_SHIFT_MASK:J = 0x10101000101L

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SYM_LOCKED:I = 0x400

.field private static final META_SYM_MASK:J = 0x40404000404L

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYM_PRESSED:J = 0x400000000L

.field private static final META_SYM_RELEASED:J = 0x40000000000L

.field private static final META_SYM_USED:J = 0x4000000L

.field private static final PRESSED:I = 0x1000011

.field private static final PRESSED_SHIFT:I = 0x20

.field private static final RELEASED:I = 0x2000011

.field private static final RELEASED_SHIFT:I = 0x28

.field private static final SELECTING:Ljava/lang/Object;

.field private static final SYM:Ljava/lang/Object;

.field private static final USED:I = 0x3000011

.field private static final USED_SHIFT:I = 0x18


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 62
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 63
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjust(JIJ)J
    .locals 7
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J

    .prologue
    const-wide/16 v5, 0x0

    const-wide/16 v3, -0x1

    .line 374
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1

    .line 375
    xor-long v0, p3, v3

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    .line 378
    .end local p0    # "state":J
    :cond_0
    :goto_0
    return-wide p0

    .line 376
    .restart local p0    # "state":J
    :cond_1
    int-to-long v0, p2

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 377
    xor-long v0, p3, v3

    and-long/2addr p0, v0

    goto :goto_0
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 166
    .local v0, "current":I
    const v1, 0x1000011

    if-ne v0, v1, :cond_1

    .line 167
    const v1, 0x3000011

    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const v1, 0x2000011

    if-ne v0, v1, :cond_0

    .line 169
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static adjustMetaAfterKeypress(J)J
    .locals 3
    .param p0, "state"    # J

    .prologue
    .line 367
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    .line 368
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    .line 369
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    .line 370
    return-wide p0
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "content"    # Landroid/text/Spannable;

    .prologue
    .line 141
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 142
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 143
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .locals 1
    .param p0, "content"    # Landroid/text/Editable;
    .param p1, "states"    # I

    .prologue
    .line 284
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 285
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 286
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 287
    :cond_2
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 288
    :cond_3
    return-void
.end method

.method private static getActive(JIII)I
    .locals 4
    .param p0, "state"    # J
    .param p2, "meta"    # I
    .param p3, "on"    # I
    .param p4, "lock"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 351
    shl-int/lit8 v0, p2, 0x8

    int-to-long v0, v0

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 356
    .end local p4    # "lock":I
    :goto_0
    return p4

    .line 353
    .restart local p4    # "lock":I
    :cond_0
    int-to-long v0, p2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move p4, p3

    .line 354
    goto :goto_0

    .line 356
    :cond_1
    const/4 p4, 0x0

    goto :goto_0
.end method

.method private static getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # Ljava/lang/Object;
    .param p2, "on"    # I
    .param p3, "lock"    # I

    .prologue
    const/4 v2, 0x0

    .line 119
    instance-of v3, p0, Landroid/text/Spanned;

    if-nez v3, :cond_1

    move p3, v2

    .line 131
    .end local p3    # "lock":I
    :cond_0
    :goto_0
    return p3

    .restart local p3    # "lock":I
    :cond_1
    move-object v1, p0

    .line 123
    check-cast v1, Landroid/text/Spanned;

    .line 124
    .local v1, "sp":Landroid/text/Spanned;
    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 126
    .local v0, "flag":I
    const v3, 0x4000011

    if-eq v0, v3, :cond_0

    .line 128
    if-eqz v0, :cond_2

    move p3, p2

    .line 129
    goto :goto_0

    :cond_2
    move p3, v2

    .line 131
    goto :goto_0
.end method

.method public static final getMetaState(J)I
    .locals 4
    .param p0, "state"    # J

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 321
    const/16 v0, 0x100

    invoke-static {p0, p1, v1, v1, v0}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    .line 322
    const/16 v1, 0x200

    invoke-static {p0, p1, v2, v2, v1}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(JIII)I

    move-result v1

    .line 321
    or-int/2addr v0, v1

    .line 323
    const/16 v1, 0x400

    invoke-static {p0, p1, v3, v3, v1}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(JIII)I

    move-result v1

    .line 321
    or-int/2addr v0, v1

    return v0
.end method

.method public static final getMetaState(JI)I
    .locals 2
    .param p0, "state"    # J
    .param p2, "meta"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 335
    packed-switch p2, :pswitch_data_0

    .line 346
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 337
    :pswitch_1
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_0

    .line 340
    :pswitch_2
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_0

    .line 343
    :pswitch_3
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v4, 0x10000

    .line 84
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    .line 85
    sget-object v1, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->ALT:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    .line 84
    or-int/2addr v0, v1

    .line 86
    sget-object v1, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SYM:Ljava/lang/Object;

    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    .line 84
    or-int/2addr v0, v1

    .line 87
    sget-object v1, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v1, v4, v4}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    .line 84
    or-int/2addr v0, v1

    return v0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 99
    sparse-switch p1, :sswitch_data_0

    .line 113
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 101
    :sswitch_0
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 104
    :sswitch_1
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 107
    :sswitch_2
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 110
    :sswitch_3
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x10000 -> :sswitch_3
    .end sparse-switch
.end method

.method public static handleKeyDown(JILandroid/view/KeyEvent;)J
    .locals 3
    .param p0, "state"    # J
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 385
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_2

    .line 386
    :cond_0
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->press(JIJ)J

    move-result-wide p0

    .line 398
    .end local p0    # "state":J
    :cond_1
    :goto_0
    return-wide p0

    .line 389
    .restart local p0    # "state":J
    :cond_2
    const/16 v0, 0x39

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_3

    .line 390
    const/16 v0, 0x4e

    if-ne p2, v0, :cond_4

    .line 391
    :cond_3
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->press(JIJ)J

    move-result-wide p0

    goto :goto_0

    .line 394
    :cond_4
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_1

    .line 395
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->press(JIJ)J

    move-result-wide p0

    goto :goto_0
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .locals 3
    .param p0, "state"    # J
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 419
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_2

    .line 420
    :cond_0
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->release(JIJ)J

    move-result-wide p0

    .line 432
    .end local p0    # "state":J
    :cond_1
    :goto_0
    return-wide p0

    .line 423
    .restart local p0    # "state":J
    :cond_2
    const/16 v0, 0x39

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_3

    .line 424
    const/16 v0, 0x4e

    if-ne p2, v0, :cond_4

    .line 425
    :cond_3
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->release(JIJ)J

    move-result-wide p0

    goto :goto_0

    .line 428
    :cond_4
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_1

    .line 429
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->release(JIJ)J

    move-result-wide p0

    goto :goto_0
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 151
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 152
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 151
    goto :goto_0
.end method

.method public static isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 160
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static press(JIJ)J
    .locals 10
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J

    .prologue
    const/16 v9, 0x28

    const/16 v8, 0x20

    const/16 v7, 0x8

    const-wide/16 v5, -0x1

    const-wide/16 v3, 0x0

    .line 402
    int-to-long v0, p2

    shl-long/2addr v0, v8

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-wide p0

    .line 404
    :cond_1
    int-to-long v0, p2

    shl-long/2addr v0, v9

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 405
    xor-long v0, p3, v5

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    int-to-long v2, p2

    shl-long/2addr v2, v7

    or-long p0, v0, v2

    goto :goto_0

    .line 406
    :cond_2
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 408
    int-to-long v0, p2

    shl-long/2addr v0, v7

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    .line 409
    xor-long v0, p3, v5

    and-long/2addr p0, v0

    goto :goto_0

    .line 411
    :cond_3
    int-to-long v0, p2

    or-long/2addr v0, p0

    int-to-long v2, p2

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, p2

    shl-long/2addr v2, v9

    xor-long/2addr v2, v5

    and-long p0, v0, v2

    goto :goto_0
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "content"    # Landroid/text/Editable;
    .param p2, "what"    # Ljava/lang/Object;

    .prologue
    const v4, 0x4000011

    const v3, 0x1000011

    const/4 v2, 0x0

    .line 215
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 217
    .local v0, "state":I
    if-ne v0, v3, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const v1, 0x2000011

    if-ne v0, v1, :cond_2

    .line 220
    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 221
    :cond_2
    const v1, 0x3000011

    if-eq v0, v1, :cond_0

    .line 223
    if-ne v0, v4, :cond_3

    .line 224
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 226
    :cond_3
    invoke-interface {p1, p2, v2, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private static release(JIJ)J
    .locals 8
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v6, -0x1

    const/16 v5, 0x20

    .line 436
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 437
    xor-long v0, p3, v6

    and-long/2addr p0, v0

    .line 441
    :cond_0
    :goto_0
    return-wide p0

    .line 438
    :cond_1
    int-to-long v0, p2

    shl-long/2addr v0, v5

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 440
    int-to-long v0, p2

    or-long/2addr v0, p0

    int-to-long v2, p2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p2

    shl-long/2addr v2, v5

    xor-long/2addr v2, v6

    and-long p0, v0, v2

    goto :goto_0
.end method

.method private release(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "content"    # Landroid/text/Editable;
    .param p2, "what"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 273
    .local v0, "current":I
    const v1, 0x3000011

    if-ne v0, v1, :cond_1

    .line 274
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const v1, 0x1000011

    if-ne v0, v1, :cond_0

    .line 276
    const v1, 0x2000011

    invoke-interface {p1, p2, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private static resetLock(JIJ)J
    .locals 4
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J

    .prologue
    .line 302
    int-to-long v0, p2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 303
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    .line 305
    :cond_0
    return-wide p0
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 184
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 186
    .local v0, "current":I
    const v1, 0x4000011

    if-ne v0, v1, :cond_0

    .line 187
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 188
    :cond_0
    return-void
.end method

.method public static resetLockedMeta(J)J
    .locals 3
    .param p0, "state"    # J

    .prologue
    .line 295
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    .line 296
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    .line 297
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    .line 298
    return-wide p0
.end method

.method protected static resetLockedMeta(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "content"    # Landroid/text/Spannable;

    .prologue
    .line 177
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 178
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 179
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 180
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 69
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    .prologue
    const/4 v2, 0x0

    .line 234
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const v1, 0x1000011

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 235
    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    .prologue
    .line 243
    sget-object v0, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 244
    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .locals 3
    .param p1, "state"    # J
    .param p3, "which"    # I

    .prologue
    .line 445
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 446
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    .line 447
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 448
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    .line 449
    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    .line 450
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    .line 451
    :cond_2
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "states"    # I

    .prologue
    .line 280
    invoke-static {p2, p3}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 281
    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 195
    const/16 v1, 0x3b

    if-eq p3, v1, :cond_0

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_1

    .line 196
    :cond_0
    sget-object v1, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 211
    :goto_0
    return v0

    .line 200
    :cond_1
    const/16 v1, 0x39

    if-eq p3, v1, :cond_2

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_2

    .line 201
    const/16 v1, 0x4e

    if-ne p3, v1, :cond_3

    .line 202
    :cond_2
    sget-object v1, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :cond_3
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_4

    .line 207
    sget-object v1, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 251
    const/16 v1, 0x3b

    if-eq p3, v1, :cond_0

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_1

    .line 252
    :cond_0
    sget-object v1, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 267
    :goto_0
    return v0

    .line 256
    :cond_1
    const/16 v1, 0x39

    if-eq p3, v1, :cond_2

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_2

    .line 257
    const/16 v1, 0x4e

    if-ne p3, v1, :cond_3

    .line 258
    :cond_2
    sget-object v1, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    :cond_3
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_4

    .line 263
    sget-object v1, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Lcom/android/inputmethod/latin/MyMetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    .line 267
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
