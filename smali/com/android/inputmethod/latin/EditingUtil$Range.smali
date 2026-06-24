.class public Lcom/android/inputmethod/latin/EditingUtil$Range;
.super Ljava/lang/Object;
.source "EditingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/EditingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public final mCharsAfter:I

.field public final mCharsBefore:I

.field public final mWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "charsBefore"    # I
    .param p2, "charsAfter"    # I
    .param p3, "word"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 150
    :cond_1
    iput p1, p0, Lcom/android/inputmethod/latin/EditingUtil$Range;->mCharsBefore:I

    .line 151
    iput p2, p0, Lcom/android/inputmethod/latin/EditingUtil$Range;->mCharsAfter:I

    .line 152
    iput-object p3, p0, Lcom/android/inputmethod/latin/EditingUtil$Range;->mWord:Ljava/lang/String;

    .line 153
    return-void
.end method
