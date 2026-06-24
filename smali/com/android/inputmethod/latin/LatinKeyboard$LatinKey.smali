.class Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LatinKey"
.end annotation


# instance fields
.field private final KEY_STATE_FUNCTIONAL_NORMAL:[I

.field private final KEY_STATE_FUNCTIONAL_PRESSED:[I

.field private mShiftLockEnabled:Z

.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinKeyboard;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 7
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parent"    # Landroid/inputmethodservice/Keyboard$Row;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v6, 0x0

    .line 1166
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 1167
    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 1153
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1154
    const v1, 0x10100a3

    aput v1, v0, v6

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    .line 1158
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1160
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    .line 1168
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    iput v6, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->popupResId:I

    .line 1172
    :cond_0
    return-void

    .line 1158
    nop

    :array_0
    .array-data 4
        0x10100a3
        0x10100a7
    .end array-data
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;)V
    .locals 0

    .prologue
    .line 1174
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->enableShiftLock()V

    return-void
.end method

.method private enableShiftLock()V
    .locals 1

    .prologue
    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->mShiftLockEnabled:Z

    .line 1176
    return-void
.end method

.method private isFunctionalKey()Z
    .locals 1

    .prologue
    .line 1183
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->sticky:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->modifier:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 1

    .prologue
    .line 1212
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->isFunctionalKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->pressed:Z

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    .line 1219
    :goto_0
    return-object v0

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    goto :goto_0

    .line 1219
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v0

    goto :goto_0
.end method

.method public isInside(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1202
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboard;->isInside(Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;II)Z

    move-result v0

    .line 1203
    .local v0, "result":Z
    return v0
.end method

.method isInsideSuper(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1207
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v0

    return v0
.end method

.method public onReleased(Z)V
    .locals 1
    .param p1, "inside"    # Z

    .prologue
    .line 1188
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_0

    .line 1189
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 1193
    :goto_0
    return-void

    .line 1191
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->pressed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->pressed:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public squaredDistanceFrom(II)I
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1229
    iget v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->x:I

    add-int/lit8 v5, v8, 0x1

    .line 1230
    .local v5, "left":I
    iget v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->width:I

    add-int v6, v5, v8

    .line 1231
    .local v6, "right":I
    iget v7, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->y:I

    .line 1232
    .local v7, "top":I
    iget v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->height:I

    add-int v0, v7, v8

    .line 1233
    .local v0, "bottom":I
    if-ge p1, v5, :cond_0

    move v3, v5

    .line 1234
    .local v3, "edgeX":I
    :goto_0
    if-ge p2, v7, :cond_2

    move v4, v7

    .line 1235
    .local v4, "edgeY":I
    :goto_1
    sub-int v1, p1, v3

    .line 1236
    .local v1, "dx":I
    sub-int v2, p2, v4

    .line 1237
    .local v2, "dy":I
    mul-int v8, v1, v1

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    return v8

    .line 1233
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    .end local v3    # "edgeX":I
    .end local v4    # "edgeY":I
    :cond_0
    if-le p1, v6, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, p1

    goto :goto_0

    .line 1234
    .restart local v3    # "edgeX":I
    :cond_2
    if-le p2, v0, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, p2

    goto :goto_1
.end method
