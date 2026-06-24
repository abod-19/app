.class public Lcom/android/inputmethod/voice/RecognitionView;
.super Ljava/lang/Object;
.source "RecognitionView.java"


# static fields
.field private static final INIT:I = 0x0

.field private static final LISTENING:I = 0x1

.field private static final READY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RecognitionView"

.field private static final WORKING:I = 0x2


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mError:Landroid/graphics/drawable/Drawable;

.field private final mErrorBorder:Landroid/graphics/drawable/Drawable;

.field private mImage:Landroid/widget/ImageView;

.field private mInitializing:Landroid/graphics/drawable/Drawable;

.field private mLanguage:Landroid/widget/TextView;

.field private final mListeningBorder:Landroid/graphics/drawable/Drawable;

.field private final mPopupLayout:Landroid/view/View;

.field private mProgress:Landroid/view/View;

.field private mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

.field private mState:I

.field private mText:Landroid/widget/TextView;

.field private mUiHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private final mWorkingBorder:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:I

    .line 86
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    .line 89
    const-string v2, "layout_inflater"

    .line 88
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 91
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03001d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    .line 94
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 99
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mListeningBorder:Landroid/graphics/drawable/Drawable;

    .line 100
    const v2, 0x7f0200c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mWorkingBorder:Landroid/graphics/drawable/Drawable;

    .line 101
    const v2, 0x7f0200c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mErrorBorder:Landroid/graphics/drawable/Drawable;

    .line 103
    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    .line 104
    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f08001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    .line 107
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f080020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    .line 108
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/voice/SoundIndicator;

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    .line 110
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f080022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButton:Landroid/widget/Button;

    .line 111
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    .line 113
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f080021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    .line 115
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;

    .line 116
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/voice/RecognitionView;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:I

    return v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/voice/RecognitionView;I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:I

    return-void
.end method

.method static synthetic access$3(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/inputmethod/voice/RecognitionView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/voice/RecognitionView;->prepareDialog(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$6(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/inputmethod/voice/RecognitionView;Ljava/nio/ShortBuffer;II)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/voice/RecognitionView;->showWave(Ljava/nio/ShortBuffer;II)V

    return-void
.end method

.method static synthetic access$8(Lcom/android/inputmethod/voice/RecognitionView;)Lcom/android/inputmethod/voice/SoundIndicator;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    return-object v0
.end method

.method private static getAverageAbs(Ljava/nio/ShortBuffer;III)I
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ShortBuffer;
    .param p1, "start"    # I
    .param p2, "i"    # I
    .param p3, "npw"    # I

    .prologue
    .line 269
    mul-int v4, p2, p3

    add-int v1, p1, v4

    .line 270
    .local v1, "from":I
    add-int v0, v1, p3

    .line 271
    .local v0, "end":I
    const/4 v2, 0x0

    .line 272
    .local v2, "total":I
    move v3, v1

    .local v3, "x":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 275
    div-int v4, v2, p3

    return v4

    .line 273
    :cond_0
    invoke-virtual {p0, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private prepareDialog(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "image"    # Landroid/graphics/drawable/Drawable;
    .param p3, "btnTxt"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 193
    iget v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 259
    const-string v1, "RecognitionView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 262
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 263
    return-void

    .line 195
    :pswitch_0
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/voice/SoundIndicator;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/SoundIndicator;->stop()V

    .line 205
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mListeningBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/voice/SoundIndicator;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/SoundIndicator;->start()V

    .line 220
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    new-instance v0, Ljava/util/Locale;

    sget-object v1, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputLocale:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mListeningBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 228
    .end local v0    # "locale":Ljava/util/Locale;
    :pswitch_2
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/voice/SoundIndicator;->setVisibility(I)V

    .line 236
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/SoundIndicator;->stop()V

    .line 238
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mWorkingBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 243
    :pswitch_3
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/voice/SoundIndicator;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/SoundIndicator;->stop()V

    .line 254
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mErrorBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showWave(Ljava/nio/ShortBuffer;II)V
    .locals 28
    .param p1, "waveBuffer"    # Ljava/nio/ShortBuffer;
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I

    .prologue
    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 289
    .local v19, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 290
    .local v10, "h":I
    if-lez v19, :cond_0

    if-gtz v10, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 295
    .local v4, "b":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 296
    .local v5, "c":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 297
    .local v14, "paint":Landroid/graphics/Paint;
    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 299
    sget-object v23, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 300
    const/16 v23, 0x50

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 302
    new-instance v8, Landroid/graphics/CornerPathEffect;

    const/high16 v23, 0x40400000    # 3.0f

    move/from16 v0, v23

    invoke-direct {v8, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 303
    .local v8, "effect":Landroid/graphics/PathEffect;
    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 305
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v13

    .line 307
    .local v13, "numSamples":I
    if-nez p3, :cond_3

    .line 308
    move v9, v13

    .line 313
    .local v9, "endIndex":I
    :goto_1
    move/from16 v0, p2

    add-int/lit16 v0, v0, -0x7d0

    move/from16 v18, v0

    .line 314
    .local v18, "startIndex":I
    if-gez v18, :cond_2

    .line 315
    const/16 v18, 0x0

    .line 317
    :cond_2
    const/16 v12, 0xc8

    .line 318
    .local v12, "numSamplePerWave":I
    const/high16 v16, 0x39200000

    .line 320
    .local v16, "scale":F
    sub-int v23, v9, v18

    move/from16 v0, v23

    div-int/lit16 v6, v0, 0xc8

    .line 321
    .local v6, "count":I
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    int-to-float v0, v6

    move/from16 v24, v0

    div-float v7, v23, v24

    .line 322
    .local v7, "deltaX":F
    div-int/lit8 v22, v10, 0x2

    .line 323
    .local v22, "yMax":I
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 324
    .local v15, "path":Landroid/graphics/Path;
    const/16 v23, 0x0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 325
    const/16 v20, 0x0

    .line 326
    .local v20, "x":F
    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 327
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-lt v11, v6, :cond_4

    .line 335
    const/high16 v23, 0x40800000    # 4.0f

    cmpl-float v23, v7, v23

    if-lez v23, :cond_6

    .line 336
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 340
    :goto_3
    invoke-virtual {v5, v15, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 310
    .end local v6    # "count":I
    .end local v7    # "deltaX":F
    .end local v9    # "endIndex":I
    .end local v11    # "i":I
    .end local v12    # "numSamplePerWave":I
    .end local v15    # "path":Landroid/graphics/Path;
    .end local v16    # "scale":F
    .end local v18    # "startIndex":I
    .end local v20    # "x":F
    .end local v22    # "yMax":I
    :cond_3
    move/from16 v0, p3

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .restart local v9    # "endIndex":I
    goto :goto_1

    .line 328
    .restart local v6    # "count":I
    .restart local v7    # "deltaX":F
    .restart local v11    # "i":I
    .restart local v12    # "numSamplePerWave":I
    .restart local v15    # "path":Landroid/graphics/Path;
    .restart local v16    # "scale":F
    .restart local v18    # "startIndex":I
    .restart local v20    # "x":F
    .restart local v22    # "yMax":I
    :cond_4
    const/16 v23, 0xc8

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-static {v0, v1, v11, v2}, Lcom/android/inputmethod/voice/RecognitionView;->getAverageAbs(Ljava/nio/ShortBuffer;III)I

    move-result v3

    .line 329
    .local v3, "avabs":I
    and-int/lit8 v23, v11, 0x1

    if-nez v23, :cond_5

    const/16 v17, -0x1

    .line 330
    .local v17, "sign":I
    :goto_4
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v23, v0

    mul-int v24, v3, v10

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x39200000

    mul-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v23

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v21, v23, v24

    .line 331
    .local v21, "y":F
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 332
    add-float v20, v20, v7

    .line 333
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 327
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 329
    .end local v17    # "sign":I
    .end local v21    # "y":F
    :cond_5
    const/16 v17, 0x1

    goto :goto_4

    .line 338
    .end local v3    # "avabs":I
    :cond_6
    const/16 v23, 0x0

    float-to-double v0, v7

    move-wide/from16 v24, v0

    const-wide v26, 0x3fa999999999999aL    # 0.05

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$6;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$6;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public restoreState()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$1;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/voice/RecognitionView$4;-><init>(Lcom/android/inputmethod/voice/RecognitionView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method public showInitializing()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$2;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$2;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method

.method public showListening()V
    .locals 2

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RecognitionView"

    const-string v1, "#showListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$3;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$3;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public showWorking(Ljava/io/ByteArrayOutputStream;II)V
    .locals 2
    .param p1, "waveBuffer"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "speechStartPosition"    # I
    .param p3, "speechEndPosition"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/inputmethod/voice/RecognitionView$5;-><init>(Lcom/android/inputmethod/voice/RecognitionView;Ljava/io/ByteArrayOutputStream;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method public updateVoiceMeter(F)V
    .locals 1
    .param p1, "rmsdB"    # F

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/SoundIndicator;->setRmsdB(F)V

    .line 157
    return-void
.end method
