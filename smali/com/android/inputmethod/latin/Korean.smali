.class public Lcom/android/inputmethod/latin/Korean;
.super Ljava/lang/Object;
.source "Korean.java"


# static fields
.field private static HCURSOR_ADD:C = '\u0000'

.field private static HCURSOR_APPEND:C = '\u0000'

.field private static HCURSOR_DELETE:C = '\u0000'

.field private static HCURSOR_DELETE_LAST:C = '\u0000'

.field private static HCURSOR_NEW:C = '\u0000'

.field private static HCURSOR_NONE:C = '\u0000'

.field private static HCURSOR_UPDATE:C = '\u0000'

.field private static HCURSOR_UPDATE_LAST:C = '\u0000'

.field static final H_STATE_0:I = 0x0

.field static final H_STATE_1:I = 0x1

.field static final H_STATE_2:I = 0x2

.field static final H_STATE_3:I = 0x3

.field static final H_STATE_4:I = 0x4

.field static final H_STATE_5:I = 0x5

.field static final H_STATE_6:I = 0x6

.field static final e2h_map:[I

.field private static h_char:[C

.field static final h_chosung_idx:[C

.field static final h_jongsung_idx:[C

.field private static mHCursorState:I

.field private static mHangulJamoStack:[I

.field private static mHangulKeyStack:[I


# instance fields
.field private mHangulShiftState:I

.field private mHangulState:I

.field private previousCurPos:I

.field private previousHangulCurPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x3

    .line 4
    const/4 v0, 0x0

    sput-char v0, Lcom/android/inputmethod/latin/Korean;->HCURSOR_NONE:C

    .line 5
    sput-char v5, Lcom/android/inputmethod/latin/Korean;->HCURSOR_NEW:C

    .line 6
    const/4 v0, 0x2

    sput-char v0, Lcom/android/inputmethod/latin/Korean;->HCURSOR_ADD:C

    .line 7
    sput-char v3, Lcom/android/inputmethod/latin/Korean;->HCURSOR_UPDATE:C

    .line 8
    const/4 v0, 0x4

    sput-char v0, Lcom/android/inputmethod/latin/Korean;->HCURSOR_APPEND:C

    .line 9
    const/4 v0, 0x5

    sput-char v0, Lcom/android/inputmethod/latin/Korean;->HCURSOR_UPDATE_LAST:C

    .line 10
    sput-char v4, Lcom/android/inputmethod/latin/Korean;->HCURSOR_DELETE_LAST:C

    .line 11
    sput-char v6, Lcom/android/inputmethod/latin/Korean;->HCURSOR_DELETE:C

    .line 14
    sget-char v0, Lcom/android/inputmethod/latin/Korean;->HCURSOR_NONE:C

    sput v0, Lcom/android/inputmethod/latin/Korean;->mHCursorState:I

    .line 15
    new-array v0, v5, [C

    sput-object v0, Lcom/android/inputmethod/latin/Korean;->h_char:[C

    .line 20
    new-array v0, v4, [I

    sput-object v0, Lcom/android/inputmethod/latin/Korean;->mHangulKeyStack:[I

    .line 21
    new-array v0, v3, [I

    sput-object v0, Lcom/android/inputmethod/latin/Korean;->mHangulJamoStack:[I

    .line 30
    const/16 v0, 0x1e

    new-array v0, v0, [C

    aput-char v5, v0, v5

    const/4 v1, 0x2

    const/16 v2, 0x9

    aput-char v2, v0, v1

    const/4 v1, 0x2

    aput-char v1, v0, v3

    const/4 v1, 0x4

    const/16 v2, 0xc

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x12

    aput-char v2, v0, v1

    aput-char v3, v0, v4

    const/4 v1, 0x4

    aput-char v1, v0, v6

    const/16 v1, 0x8

    const/4 v2, 0x5

    aput-char v2, v0, v1

    const/16 v1, 0xa

    aput-char v4, v0, v1

    const/16 v1, 0xb

    aput-char v6, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput-char v2, v0, v1

    const/16 v1, 0xd

    aput-char v7, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x11

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x12

    aput-char v2, v0, v1

    aput-char v4, v0, v7

    const/16 v1, 0x11

    aput-char v6, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x8

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x9

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x9

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xa

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xb

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xc

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xd

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xe

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xf

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    aput-char v7, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x11

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x12

    aput-char v2, v0, v1

    .line 29
    sput-object v0, Lcom/android/inputmethod/latin/Korean;->h_chosung_idx:[C

    .line 37
    const/16 v0, 0x1f

    new-array v0, v0, [C

    aput-char v5, v0, v5

    const/4 v1, 0x2

    const/4 v2, 0x2

    aput-char v2, v0, v1

    aput-char v3, v0, v3

    const/4 v1, 0x4

    const/4 v2, 0x4

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput-char v2, v0, v1

    aput-char v4, v0, v4

    aput-char v6, v0, v6

    const/16 v1, 0x9

    const/16 v2, 0x8

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x9

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xa

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xb

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xc

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xd

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xe

    aput-char v2, v0, v1

    const/16 v1, 0xf

    aput-char v1, v0, v7

    const/16 v1, 0x11

    aput-char v7, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x11

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x12

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x13

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x14

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x15

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x16

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x17

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x18

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x19

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x1a

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1b

    aput-char v2, v0, v1

    .line 36
    sput-object v0, Lcom/android/inputmethod/latin/Korean;->h_jongsung_idx:[C

    .line 47
    const/16 v0, 0x34

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v7, v0, v1

    const/16 v1, 0x2f

    aput v1, v0, v5

    const/4 v1, 0x2

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x16

    aput v1, v0, v3

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x1d

    aput v1, v0, v4

    const/16 v1, 0x26

    aput v1, v0, v6

    const/16 v1, 0x8

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v1, v0, v7

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 48
    aput v7, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x1e

    aput v6, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x2b

    aput v5, v0, v1

    const/16 v1, 0x2c

    aput v3, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x1a

    aput v2, v0, v1

    .line 46
    sput-object v0, Lcom/android/inputmethod/latin/Korean;->e2h_map:[I

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/inputmethod/latin/Korean;->previousCurPos:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Korean;->previousHangulCurPos:I

    .line 18
    iput v1, p0, Lcom/android/inputmethod/latin/Korean;->mHangulShiftState:I

    .line 19
    iput v1, p0, Lcom/android/inputmethod/latin/Korean;->mHangulState:I

    .line 3
    return-void
.end method


# virtual methods
.method public isHangulKey(II)I
    .locals 6
    .param p1, "stack_pos"    # I
    .param p2, "new_key"    # I

    .prologue
    const/16 v5, 0x1d

    const/4 v1, 0x2

    const/16 v2, 0x32

    const/16 v4, 0x14

    .line 82
    if-eq p1, v1, :cond_8

    .line 83
    sget-object v2, Lcom/android/inputmethod/latin/Korean;->e2h_map:[I

    add-int/lit8 v3, p2, -0x61

    add-int/lit8 v3, v3, 0x1a

    aget v0, v2, v3

    .line 85
    .local v0, "hangulKeyIdx":I
    sget-object v2, Lcom/android/inputmethod/latin/Korean;->mHangulKeyStack:[I

    aget v2, v2, p1

    sparse-switch v2, :sswitch_data_0

    .line 133
    .end local v0    # "hangulKeyIdx":I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 87
    .restart local v0    # "hangulKeyIdx":I
    :sswitch_0
    if-ne p2, v4, :cond_0

    goto :goto_1

    .line 90
    :sswitch_1
    const/16 v1, 0x17

    if-ne p2, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    .line 91
    :cond_1
    if-ne p2, v5, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    .line 94
    :sswitch_2
    if-nez p2, :cond_2

    const/16 v1, 0x9

    goto :goto_1

    .line 95
    :cond_2
    const/16 v1, 0x10

    if-ne p2, v1, :cond_3

    const/16 v1, 0xa

    goto :goto_1

    .line 96
    :cond_3
    const/16 v1, 0x11

    if-ne p2, v1, :cond_4

    const/16 v1, 0xb

    goto :goto_1

    .line 97
    :cond_4
    if-ne p2, v4, :cond_5

    const/16 v1, 0xc

    goto :goto_1

    .line 98
    :cond_5
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_6

    const/16 v1, 0xd

    goto :goto_1

    .line 99
    :cond_6
    const/16 v1, 0x1c

    if-ne p2, v1, :cond_7

    const/16 v1, 0xe

    goto :goto_1

    .line 100
    :cond_7
    if-ne p2, v5, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    .line 103
    :sswitch_3
    if-ne p2, v4, :cond_0

    const/16 v1, 0x13

    goto :goto_1

    .line 117
    .end local v0    # "hangulKeyIdx":I
    :cond_8
    sget-object v1, Lcom/android/inputmethod/latin/Korean;->mHangulKeyStack:[I

    aget v1, v1, p1

    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 119
    :sswitch_4
    const/16 v1, 0x1e

    if-ne p2, v1, :cond_9

    const/16 v1, 0x27

    goto :goto_1

    .line 120
    :cond_9
    const/16 v1, 0x1f

    if-ne p2, v1, :cond_a

    const/16 v1, 0x28

    goto :goto_1

    .line 121
    :cond_a
    if-ne p2, v2, :cond_0

    const/16 v1, 0x29

    goto :goto_1

    .line 124
    :sswitch_5
    const/16 v1, 0x22

    if-ne p2, v1, :cond_b

    const/16 v1, 0x2c

    goto :goto_1

    .line 125
    :cond_b
    const/16 v1, 0x23

    if-ne p2, v1, :cond_c

    const/16 v1, 0x2d

    goto :goto_1

    .line 126
    :cond_c
    if-ne p2, v2, :cond_0

    const/16 v1, 0x2e

    goto :goto_1

    .line 129
    :sswitch_6
    if-ne p2, v2, :cond_0

    const/16 v1, 0x31

    goto :goto_1

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch

    .line 117
    :sswitch_data_1
    .sparse-switch
        0x26 -> :sswitch_4
        0x2b -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method
