.class Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RingCharBuffer"
.end annotation


# static fields
.field static final BUFSIZE:I = 0x14

.field private static final INVALID_COORDINATE:I = -0x2

.field private static final PLACEHOLDER_DELIMITER_CHAR:C = '\ufffc'

.field private static sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;


# instance fields
.field private mCharBuf:[C

.field private mContext:Landroid/inputmethodservice/InputMethodService;

.field private mEnabled:Z

.field private mEnd:I

.field mLength:I

.field private mUsabilityStudy:Z

.field private mXBuf:[I

.field private mYBuf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    .line 118
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mUsabilityStudy:Z

    .line 126
    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 127
    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    .line 128
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    .line 129
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    .line 130
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    .line 134
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    return-object v0
.end method

.method public static init(Landroid/inputmethodservice/InputMethodService;ZZ)Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
    .locals 2
    .param p0, "context"    # Landroid/inputmethodservice/InputMethodService;
    .param p1, "enabled"    # Z
    .param p2, "usabilityStudy"    # Z

    .prologue
    .line 140
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    iput-object p0, v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    .line 141
    sget-object v1, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    .line 142
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    iput-boolean p2, v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mUsabilityStudy:Z

    .line 143
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->init(Landroid/inputmethodservice/InputMethodService;)V

    .line 144
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    return-object v0

    .line 141
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private normalize(I)I
    .locals 1
    .param p1, "in"    # I

    .prologue
    .line 147
    rem-int/lit8 v0, p1, 0x14

    .line 148
    .local v0, "ret":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x14

    .end local v0    # "ret":I
    :cond_0
    return v0
.end method


# virtual methods
.method public getBackwardNthChar(I)C
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 173
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-le v0, p1, :cond_0

    if-gez p1, :cond_1

    .line 174
    :cond_0
    const v0, 0xfffc

    .line 176
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v1

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public getLastWord(I)Ljava/lang/String;
    .locals 5
    .param p1, "ignoreCharCount"    # I

    .prologue
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v2, "sb":Ljava/lang/StringBuilder;
    move v1, p1

    .line 200
    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-lt v1, v3, :cond_2

    .line 206
    :cond_0
    :goto_1
    iget v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-lt v1, v3, :cond_3

    .line 214
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v4, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v4

    aget-char v0, v3, v4

    .line 202
    .local v0, "c":C
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isWordSeparator(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "c":C
    :cond_3
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v4, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v4

    aget-char v0, v3, v4

    .line 208
    .restart local v0    # "c":C
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getPreviousX(CI)I
    .locals 3
    .param p1, "c"    # C
    .param p2, "back"    # I

    .prologue
    .line 180
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 181
    .local v0, "index":I
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_0

    .line 182
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 183
    :cond_0
    const/4 v1, -0x2

    .line 185
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public getPreviousY(CI)I
    .locals 3
    .param p1, "c"    # C
    .param p2, "back"    # I

    .prologue
    .line 189
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 190
    .local v0, "index":I
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_0

    .line 191
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 192
    :cond_0
    const/4 v1, -0x2

    .line 194
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public pop()C
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 165
    const v0, 0xfffc

    .line 169
    :goto_0
    return v0

    .line 167
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 168
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    .line 169
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public push(CII)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mUsabilityStudy:Z

    if-eqz v0, :cond_2

    .line 153
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->writeChar(CII)V

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput-char p1, v0, v1

    .line 156
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput p2, v0, v1

    .line 157
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput p3, v0, v1

    .line 158
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 159
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 160
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    .line 218
    return-void
.end method
