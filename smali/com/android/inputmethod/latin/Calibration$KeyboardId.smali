.class Lcom/android/inputmethod/latin/Calibration$KeyboardId;
.super Ljava/lang/Object;
.source "Calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyboardId"
.end annotation


# instance fields
.field public final mEnableShiftLock:Z

.field public final mHasVoice:Z

.field private final mHashCode:I

.field public final mKeyboardMode:I

.field public final mXml:I


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 3
    .param p1, "xml"    # I
    .param p2, "mode"    # I
    .param p3, "enableShiftLock"    # Z
    .param p4, "hasVoice"    # Z

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput p1, p0, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mXml:I

    .line 349
    iput p2, p0, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mKeyboardMode:I

    .line 350
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mEnableShiftLock:Z

    .line 351
    iput-boolean p4, p0, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mHasVoice:Z

    .line 353
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 354
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 353
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mHashCode:I

    .line 355
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "xml"    # I
    .param p2, "hasVoice"    # Z

    .prologue
    const/4 v0, 0x0

    .line 358
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;-><init>(IIZZ)V

    .line 359
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/Calibration$KeyboardId;Lcom/android/inputmethod/latin/Calibration$KeyboardId;)Z
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->equals(Lcom/android/inputmethod/latin/Calibration$KeyboardId;)Z

    move-result v0

    return v0
.end method

.method private equals(Lcom/android/inputmethod/latin/Calibration$KeyboardId;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    .prologue
    .line 367
    iget v0, p1, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mXml:I

    iget v1, p0, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mXml:I

    if-ne v0, v1, :cond_0

    .line 368
    iget v0, p1, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mKeyboardMode:I

    iget v1, p0, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mKeyboardMode:I

    if-ne v0, v1, :cond_0

    .line 369
    iget-boolean v0, p1, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mEnableShiftLock:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mEnableShiftLock:Z

    if-ne v0, v1, :cond_0

    .line 370
    iget-boolean v0, p1, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mHasVoice:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mHasVoice:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 367
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 363
    instance-of v0, p1, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->equals(Lcom/android/inputmethod/latin/Calibration$KeyboardId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mHashCode:I

    return v0
.end method
