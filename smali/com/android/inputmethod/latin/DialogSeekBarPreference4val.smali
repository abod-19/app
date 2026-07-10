.class public Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;
.super Landroid/preference/DialogPreference;
.source "DialogSeekBarPreference4val.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final androidns:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final numberOfSeekBars:I = 0x5


# instance fields
.field private mCurrentValue:[I

.field private mDefaultValue:[I

.field private mKey:[Ljava/lang/String;

.field private mMax:[I

.field private mMin:[I

.field private mSeekBar:[Landroid/widget/SeekBar;

.field private mStep:[I

.field private mSuffix:[Ljava/lang/String;

.field private mTitle:[Ljava/lang/String;

.field private mValue:[I

.field private mValueText:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v11, 0x64

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x5

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-array v2, v7, [Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    .line 21
    new-array v2, v7, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mValueText:[Landroid/widget/TextView;

    .line 23
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSuffix:[Ljava/lang/String;

    .line 25
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mDefaultValue:[I

    .line 26
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mCurrentValue:[I

    .line 28
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMax:[I

    .line 29
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mStep:[I

    .line 30
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMin:[I

    .line 31
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mValue:[I

    .line 32
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mTitle:[Ljava/lang/String;

    .line 33
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mKey:[Ljava/lang/String;

    .line 37
    invoke-virtual {p0, v10}, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->setPersistent(Z)V

    .line 41
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "index":Ljava/lang/Integer;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "i":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v7, :cond_0

    .line 52
    const v2, 0x7f03001c

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->setDialogLayoutResource(I)V

    .line 55
    return-void

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSuffix:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "http://schemas.android.com/apk/res/android"

    const-string v5, "text"

    invoke-interface {p2, v4, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 44
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMin:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "min"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 45
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMax:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "max"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 46
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mStep:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "step"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 47
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mDefaultValue:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "defaultValue"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 48
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mTitle:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "title"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v5, v9}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 49
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mKey:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "key"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v5, v9}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 60
    const/high16 v4, 0x1010000

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, "dialogMessage":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 65
    .local v3, "sp":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mValueText:[Landroid/widget/TextView;

    const v4, 0x1010003

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 66
    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mValueText:[Landroid/widget/TextView;

    const v4, 0x1010005

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v7

    .line 67
    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mValueText:[Landroid/widget/TextView;

    const v4, 0x1010007

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v8

    .line 68
    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mValueText:[Landroid/widget/TextView;

    const v4, 0x1010009

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v9

    .line 69
    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mValueText:[Landroid/widget/TextView;

    const v4, 0x101000b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v10

    .line 71
    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    const v4, 0x1010004

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    aput-object v4, v5, v6

    .line 72
    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    const v4, 0x1010006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    aput-object v4, v5, v7

    .line 73
    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    const v4, 0x1010008

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    aput-object v4, v5, v8

    .line 74
    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    const v4, 0x101000a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    aput-object v4, v5, v9

    .line 75
    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    const v4, 0x101000c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    aput-object v4, v5, v10

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x5

    if-lt v1, v4, :cond_0

    .line 92
    return-void

    .line 80
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mCurrentValue:[I

    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mKey:[Ljava/lang/String;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mDefaultValue:[I

    aget v6, v6, v1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v1

    .line 81
    iget-object v4, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 82
    iget-object v4, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 84
    iget-object v4, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    aget-object v4, v4, v1

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 85
    iget-object v4, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMax:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMin:[I

    aget v6, v6, v1

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mStep:[I

    aget v6, v6, v1

    div-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 86
    iget-object v4, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mCurrentValue:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMin:[I

    aget v5, v5, v1

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mStep:[I

    aget v5, v5, v1

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 87
    .local v2, "number":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    aget-object v4, v4, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 89
    iget-object v4, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mValueText:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mTitle:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v4, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/SeekBar;->requestLayout()V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-lt v0, v2, :cond_1

    .line 118
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 112
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mStep:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMin:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 113
    .local v1, "value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->setValue(II)V

    .line 110
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seek"    # Landroid/widget/SeekBar;
    .param p2, "value"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 148
    .local v1, "iValue":Ljava/lang/Integer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 157
    return-void

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mSeekBar:[Landroid/widget/SeekBar;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mValueText:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mTitle:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 4
    .param p1, "restore"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 101
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "i":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 103
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mValue:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez p2, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->getPersistedInt(I)I

    move-result v1

    aput v1, v2, v3

    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 102
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seek"    # Landroid/widget/SeekBar;

    .prologue
    .line 160
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seek"    # Landroid/widget/SeekBar;

    .prologue
    .line 163
    return-void
.end method

.method public setMax(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "max"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMax:[I

    aput p2, v0, p1

    .line 135
    iget-object v0, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mValue:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMax:[I

    aget v1, v1, p1

    if-le v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMax:[I

    aget v0, v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->setValue(II)V

    .line 138
    :cond_0
    return-void
.end method

.method public setMin(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "min"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMax:[I

    aget v0, v0, p1

    if-ge p2, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMin:[I

    aput p2, v0, p1

    .line 144
    :cond_0
    return-void
.end method

.method public setValue(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMax:[I

    aget v2, v2, p1

    if-le p2, v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMax:[I

    aget p2, v2, p1

    .line 126
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mValue:[I

    aput p2, v2, p1

    .line 127
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mValue:[I

    aget v3, v3, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    return-void

    .line 123
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMin:[I

    aget v2, v2, p1

    if-ge p2, v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/inputmethod/latin/DialogSeekBarPreference4val;->mMin:[I

    aget p2, v2, p1

    goto :goto_0
.end method
