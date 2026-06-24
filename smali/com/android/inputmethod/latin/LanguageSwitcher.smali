.class public Lcom/android/inputmethod/latin/LanguageSwitcher;
.super Ljava/lang/Object;
.source "LanguageSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LanguageSwitcher$presistWrite;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mDefaultInputLanguage:Ljava/lang/String;

.field private mDefaultInputLayout:Ljava/lang/String;

.field private mDefaultInputLocale:Ljava/util/Locale;

.field private mIme:Lcom/android/inputmethod/latin/DictionaryEditor;

.field private mLocales:[Ljava/util/Locale;

.field private mSelectedLanguageArray:[Ljava/lang/String;

.field private mSelectedLanguages:Ljava/lang/String;

.field private mSystemLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 2
    .param p1, "ime"    # Lcom/android/inputmethod/latin/DictionaryEditor;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "qwerty"

    iput-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLayout:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 44
    iput-object p1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mIme:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 45
    new-array v0, v1, [Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/LanguageSwitcher;)Lcom/android/inputmethod/latin/DictionaryEditor;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mIme:Lcom/android/inputmethod/latin/DictionaryEditor;

    return-object v0
.end method

.method private constructLocales()V
    .locals 6

    .prologue
    .line 101
    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 106
    return-void

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 104
    .local v1, "lang":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadDefaults()V
    .locals 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mIme:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 95
    iget-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "country":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    iput-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    .line 98
    return-void

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 221
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getEnabledLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputLayout()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLayout:Ljava/lang/String;

    .line 126
    :goto_0
    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    aget-object v0, v0, v1

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    iget v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLayout:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInputLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getLocaleCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method public getLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    return-object v0
.end method

.method public getNextInputLocale()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getPrevInputLocale()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getSystemLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public loadLocales(Landroid/content/SharedPreferences;)Z
    .locals 7
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const-string v5, "selected_languages"

    const-string v6, "ar,en,ar_dvorak,en_dvorak,ar_azerty"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "selectedLanguages":Ljava/lang/String;
    const-string v5, "input_language"

    const-string v6, ""

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "currentLanguage":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v4, :cond_3

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadDefaults()V

    .line 66
    iget-object v5, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v5, v5

    if-nez v5, :cond_2

    .line 90
    :cond_1
    :goto_0
    return v3

    .line 69
    :cond_2
    new-array v3, v3, [Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    move v3, v4

    .line 70
    goto :goto_0

    .line 72
    :cond_3
    iget-object v5, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 75
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->constructLocales()V

    .line 78
    iput v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 79
    if-eqz v0, :cond_4

    .line 81
    iput v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v3, v3

    if-lt v1, v3, :cond_5

    .end local v1    # "i":I
    :cond_4
    :goto_2
    move v3, v4

    .line 90
    goto :goto_0

    .line 83
    .restart local v1    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 84
    iput v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    goto :goto_2

    .line 82
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public next()V
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 193
    iget v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    iget-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 194
    :cond_0
    return-void
.end method

.method public persist()V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lcom/android/inputmethod/latin/LanguageSwitcher$presistWrite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/inputmethod/latin/LanguageSwitcher$presistWrite;-><init>(Lcom/android/inputmethod/latin/LanguageSwitcher;Lcom/android/inputmethod/latin/LanguageSwitcher$presistWrite;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LanguageSwitcher$presistWrite;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 203
    return-void
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 198
    iget v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 199
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 189
    return-void
.end method

.method public setSystemLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 166
    return-void
.end method
