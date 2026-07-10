.class public Lcom/android/inputmethod/latin/Flag;
.super Ljava/lang/Object;
.source "Flag.java"


# static fields
.field private static final SOURCE_CONFIG:I = 0x1

.field private static final SOURCE_EXTRAVALUE:I = 0x2

.field private static final SOURCE_PARAM:I = 0x3


# instance fields
.field public final mMask:I

.field public final mName:Ljava/lang/String;

.field public final mResource:I

.field public final mSource:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Flag;->mName:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/Flag;->mResource:I

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/latin/Flag;->mSource:I

    .line 50
    iput p1, p0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "mask"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Flag;->mName:Ljava/lang/String;

    .line 34
    iput p1, p0, Lcom/android/inputmethod/latin/Flag;->mResource:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Flag;->mSource:I

    .line 36
    iput p2, p0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mask"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/inputmethod/latin/Flag;->mName:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/Flag;->mResource:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/latin/Flag;->mSource:I

    .line 43
    iput p2, p0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    .line 44
    return-void
.end method

.method public static initFlags([Lcom/android/inputmethod/latin/Flag;Landroid/content/Context;)I
    .locals 6
    .param p0, "flagArray"    # [Lcom/android/inputmethod/latin/Flag;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "flags":I
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 57
    .local v2, "res":Landroid/content/res/Resources;
    :goto_0
    array-length v4, p0

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_1

    .line 71
    return v1

    .line 56
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0

    .line 57
    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    aget-object v0, p0, v3

    .line 58
    .local v0, "entry":Lcom/android/inputmethod/latin/Flag;
    iget v5, v0, Lcom/android/inputmethod/latin/Flag;->mSource:I

    packed-switch v5, :pswitch_data_0

    .line 57
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 60
    :pswitch_0
    if-eqz v2, :cond_3

    iget v5, v0, Lcom/android/inputmethod/latin/Flag;->mResource:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    :cond_3
    iget v5, v0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    or-int/2addr v1, v5

    .line 62
    goto :goto_2

    .line 64
    :pswitch_1
    iget v5, v0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    or-int/2addr v1, v5

    .line 65
    goto :goto_2

    .line 67
    :pswitch_2
    iget v5, v0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    or-int/2addr v1, v5

    goto :goto_2

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
