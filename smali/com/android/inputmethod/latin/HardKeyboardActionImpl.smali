.class public Lcom/android/inputmethod/latin/HardKeyboardActionImpl;
.super Ljava/lang/Object;
.source "HardKeyboardActionImpl.java"

# interfaces
.implements Lcom/android/inputmethod/latin/LatinKeyboard$HardKeyboardAction;


# instance fields
.field private final META_ACTIVE_ALT:I

.field private final META_ACTIVE_SHIFT:I

.field private mChanegd:Z

.field private mKeyCode:I

.field private mMetaState:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/android/inputmethod/latin/HardKeyboardActionImpl;->mKeyCode:I

    .line 13
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/HardKeyboardActionImpl;->mChanegd:Z

    .line 16
    const/16 v0, 0x202

    iput v0, p0, Lcom/android/inputmethod/latin/HardKeyboardActionImpl;->META_ACTIVE_ALT:I

    .line 17
    const/16 v0, 0x101

    iput v0, p0, Lcom/android/inputmethod/latin/HardKeyboardActionImpl;->META_ACTIVE_SHIFT:I

    .line 10
    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/inputmethod/latin/HardKeyboardActionImpl;->mKeyCode:I

    return v0
.end method

.method public getKeyCodeWasChanged()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/HardKeyboardActionImpl;->mChanegd:Z

    return v0
.end method

.method public initializeAction(Landroid/view/KeyEvent;J)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "metaState"    # J

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/HardKeyboardActionImpl;->mChanegd:Z

    .line 22
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/HardKeyboardActionImpl;->mKeyCode:I

    .line 23
    iput-wide p2, p0, Lcom/android/inputmethod/latin/HardKeyboardActionImpl;->mMetaState:J

    .line 24
    return-void
.end method

.method public isAltActive()Z
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/android/inputmethod/latin/HardKeyboardActionImpl;->mMetaState:J

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(J)I

    move-result v0

    and-int/lit16 v0, v0, 0x202

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShiftActive()Z
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/android/inputmethod/latin/HardKeyboardActionImpl;->mMetaState:J

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(J)I

    move-result v0

    and-int/lit16 v0, v0, 0x101

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNewKeyCode(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/HardKeyboardActionImpl;->mChanegd:Z

    .line 40
    iput p1, p0, Lcom/android/inputmethod/latin/HardKeyboardActionImpl;->mKeyCode:I

    .line 41
    return-void
.end method
