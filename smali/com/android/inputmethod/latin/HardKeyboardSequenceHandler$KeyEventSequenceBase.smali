.class abstract Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;
.super Ljava/lang/Object;
.source "HardKeyboardSequenceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "KeyEventSequenceBase"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 31
    instance-of v3, p1, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;

    if-eqz v3, :cond_3

    move-object v1, p1

    .line 33
    check-cast v1, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;

    .line 34
    .local v1, "other":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 46
    .end local v1    # "other":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;
    :cond_0
    :goto_0
    return v2

    .line 36
    .restart local v1    # "other":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;
    :cond_1
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;->getSequenceLength()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;->getSequenceLength()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;->getSequenceLength()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 44
    const/4 v2, 0x1

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;->getIntAt(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;->getIntAt(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    .end local v0    # "i":I
    .end local v1    # "other":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler$KeyEventSequenceBase;
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method protected abstract getIntAt(I)I
.end method

.method public abstract getSequenceLength()I
.end method
