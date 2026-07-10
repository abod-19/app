.class public Lcom/android/inputmethod/latin/spellcheck/ArraysCompatUtils;
.super Ljava/lang/Object;
.source "ArraysCompatUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binarySearch([IIII)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # I

    .prologue
    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/spellcheck/ArraysCompatUtils;->compatBinarySearch([IIII)I

    move-result v0

    return v0
.end method

.method static compatBinarySearch([IIII)I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # I

    .prologue
    .line 29
    if-le p1, p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 30
    :cond_0
    if-ltz p1, :cond_1

    array-length v2, p0

    if-le p2, v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 32
    :cond_2
    sub-int v2, p2, p1

    new-array v1, v2, [I

    .line 33
    .local v1, "work":[I
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    invoke-static {v1, p3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 35
    .local v0, "index":I
    if-ltz v0, :cond_3

    .line 36
    add-int v2, v0, p1

    .line 38
    :goto_0
    return v2

    :cond_3
    xor-int/lit8 v2, v0, -0x1

    add-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
