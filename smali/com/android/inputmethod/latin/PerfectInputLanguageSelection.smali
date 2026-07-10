.class public Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;
.super Landroid/preference/PreferenceActivity;
.source "PerfectInputLanguageSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;
    }
.end annotation


# instance fields
.field private mAvailableLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultInputLayout:Ljava/lang/String;

.field private mSelectedLanguages:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 51
    const-string v0, "qwerty"

    iput-object v0, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mDefaultInputLayout:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method private hasDictionary(Ljava/util/Locale;)Z
    .locals 10
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 161
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 162
    .local v2, "conf":Landroid/content/res/Configuration;
    iget-object v7, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 163
    .local v7, "saveLocale":Ljava/util/Locale;
    const/4 v4, 0x0

    .line 164
    .local v4, "haveDictionary":Z
    iput-object p1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 165
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 166
    const/4 v1, 0x0

    .line 168
    .local v1, "bd":Lcom/android/inputmethod/latin/Dictionary;
    iget-object v8, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/android/inputmethod/latin/DictionaryEditor;->getDictionary(Landroid/content/Context;Landroid/content/res/Resources;)Ljava/util/ArrayList;

    move-result-object v3

    .line 169
    .local v3, "dictionaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    if-eqz v3, :cond_0

    .line 170
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v5, v8, :cond_3

    .line 186
    .end local v5    # "i":I
    :cond_0
    if-eqz v1, :cond_2

    .line 188
    if-eqz v1, :cond_1

    .line 189
    const/4 v4, 0x1

    .line 191
    :cond_1
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    .line 193
    :cond_2
    iput-object v7, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 194
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 195
    return v4

    .line 172
    .restart local v5    # "i":I
    :cond_3
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "Lang":Ljava/lang/String;
    const-string v8, "he"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 174
    const-string v0, "iw"

    .line 177
    :cond_4
    iget-object v8, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v9

    .line 176
    invoke-static {v8, p1, v9}, Lcom/android/inputmethod/latin/DictionaryFactory;->createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I)Lcom/android/inputmethod/latin/DictionaryCollection;

    move-result-object v1

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private isLocaleIn(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    .line 152
    move-object v1, p1

    .line 153
    .local v1, "lang":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_0

    .line 156
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 154
    :cond_0
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method getUniqueLocales()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    const-string v5, "ar,en,fr_swiss,en_dvorak,sr,el,da,ar_azerty,bg,iw,eo,fa,ar_dvorak,en_colemax"

    .line 235
    .local v5, "languageList":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "SplitedLanguageList":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v8, "uniqueLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;>;"
    array-length v1, v2

    .line 238
    .local v1, "LanguageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 257
    return-object v8

    .line 240
    :cond_0
    const-string v6, "qwerty"

    .line 242
    .local v6, "layout":Ljava/lang/String;
    aget-object v9, v2, v3

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 244
    aget-object v9, v2, v3

    const/4 v10, 0x3

    aget-object v11, v2, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 245
    new-instance v4, Ljava/util/Locale;

    aget-object v9, v2, v3

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 251
    .local v4, "l":Ljava/util/Locale;
    :goto_1
    invoke-virtual {v4, v4}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "Lang":Ljava/lang/String;
    new-instance v7, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v2, v3

    invoke-direct {v7, v9, v6, v10, v4}, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 254
    .local v7, "preprocess":Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "Lang":Ljava/lang/String;
    .end local v4    # "l":Ljava/util/Locale;
    .end local v7    # "preprocess":Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;
    :cond_1
    new-instance v4, Ljava/util/Locale;

    aget-object v9, v2, v3

    invoke-direct {v4, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v4    # "l":Ljava/util/Locale;
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    iput-object p0, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mContext:Landroid/content/Context;

    .line 85
    const v10, 0x7f050030

    invoke-virtual {p0, v10}, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->addPreferencesFromResource(I)V

    .line 87
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 88
    .local v8, "sp":Landroid/content/SharedPreferences;
    const-string v10, "selected_languages"

    const-string v11, "ar,ar_dvorak,ar_azerty,en_colemax,iw,bg,fa,en,en_dvorak,fr_swiss"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mSelectedLanguages:Ljava/lang/String;

    .line 89
    iget-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mSelectedLanguages:Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "languageList":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->getUniqueLocales()Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 92
    .local v6, "parent":Landroid/preference/PreferenceGroup;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, "getFromMarket":Landroid/preference/Preference;
    const v10, 0x7f0d00a4

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 94
    const v10, 0x7f0d00a5

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setSummary(I)V

    .line 95
    new-instance v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$1;

    invoke-direct {v10, p0}, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$1;-><init>(Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;)V

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 109
    invoke-static {}, LDictionaryPackage/DicatinaryPackage;->resetBuildersCache()V

    .line 110
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_0

    .line 148
    return-void

    .line 111
    :cond_0
    new-instance v7, Landroid/preference/SwitchPreference;

    invoke-direct {v7, p0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 112
    .local v7, "pref":Landroid/preference/SwitchPreference;
    iget-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v5, v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    .line 113
    .local v5, "locale":Ljava/util/Locale;
    invoke-virtual {v5, v5}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/inputmethod/latin/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "title":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v10, v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "lang_layout":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v10, v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->layout:Ljava/lang/String;

    const-string v11, "qwerty"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 117
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v10, v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "_"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v10, v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->layout:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    iget-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v10, v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->layout:Ljava/lang/String;

    const-string v11, "dvorak"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 119
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " \u0645\u0632\u062e\u0631\u0641 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 132
    :cond_1
    :goto_1
    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    invoke-direct {p0, v3, v4}, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->isLocaleIn(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 134
    .local v0, "checked":Z
    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 135
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->hasDictionary(Ljava/util/Locale;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 136
    const v10, 0x7f0d00a7

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 142
    :goto_2
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 144
    const v10, 0x7f0d00a6

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 146
    :cond_2
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 120
    .end local v0    # "checked":Z
    :cond_3
    iget-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v10, v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->layout:Ljava/lang/String;

    const-string v11, "swiss"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 121
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ( \u21e9\u21e9 \u0632\u062e\u0627\u0631\u0641 \u0627\u0646\u062c\u0644\u0634 ) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 122
    :cond_4
    iget-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v10, v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->layout:Ljava/lang/String;

    const-string v11, "azerty"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 123
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ( \u0632\u062e\u0627\u0631\u0641 \u0639\u0631\u0628\u064a \u21e9\u21e9 ) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 125
    :cond_5
    iget-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v10, v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->layout:Ljava/lang/String;

    const-string v11, "qwerty2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 126
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 127
    :cond_6
    iget-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v10, v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->layout:Ljava/lang/String;

    const-string v11, "colemax"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 128
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ( \u0625\u062e\u062a\u0635\u0627\u0631\u0627\u062a ) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 130
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v10, v10, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->layout:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 140
    .restart local v0    # "checked":Z
    :cond_8
    const v10, 0x7f0d00a8

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method protected onPause()V
    .locals 11

    .prologue
    .line 206
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 208
    const-string v0, ""

    .line 209
    .local v0, "checkedLanguages":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 210
    .local v5, "parent":Landroid/preference/PreferenceGroup;
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 211
    .local v1, "count":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_1

    .line 225
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_0

    const/4 v0, 0x0

    .line 226
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 227
    .local v7, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 228
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "selected_languages"

    invoke-interface {v2, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-static {v2}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 230
    return-void

    .line 212
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 213
    .local v6, "pref":Landroid/preference/SwitchPreference;
    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 214
    iget-object v8, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v4, v8, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    .line 215
    .local v4, "locale":Ljava/util/Locale;
    iget-object v8, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v8, v8, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->layout:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mDefaultInputLayout:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    .restart local v4    # "locale":Ljava/util/Locale;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;

    iget-object v8, v8, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$Loc;->layout:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 201
    invoke-static {}, LDictionaryPackage/DicatinaryPackage;->resetBuildersCache()V

    .line 202
    return-void
.end method
