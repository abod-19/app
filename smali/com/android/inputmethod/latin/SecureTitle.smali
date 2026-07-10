.class public final Lcom/android/inputmethod/latin/SecureTitle;
.super Ljava/lang/Object;
.source "SecureTitle.java"


.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSettingsTitle()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x13

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    const/16 v2, 0x55aa

    const/4 v3, 0x0

    :loop_start
    if-ge v3, v0, :loop_end

    aget-char v4, v1, v3

    xor-int/2addr v4, v2

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :loop_start

    :loop_end
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    return-object v5

    :array_0
    .array-data 2
        0x538ds
        0x5393s
        0x5385s
        0x538ds
        0x5385s
        0x538ds
        0x5380s
        0x558as
        0x53e9s
        0x53e0s
        0x5382s
        0x53e2s
        0x539bs
        0x5385s
        0x558as
        0x5393s
        0x5382s
        0x53e2s
        0x5385s
    .end array-data
.end method
