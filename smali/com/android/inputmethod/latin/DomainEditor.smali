.class public Lcom/android/inputmethod/latin/DomainEditor;
.super Landroid/preference/PreferenceActivity;
.source "DomainEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final DISPLAY_LUNCHER_ICON:Ljava/lang/String; = "display_BackupPro_icon"

.field private static final PREDICTION_SETTINGS_KEY:Ljava/lang/String; = "prediction_settings"

.field public static final PREF_CUSTOME_PUNCTUATION_POPUP:[Ljava/lang/String;

.field public static final PREF_CUSTOME_SMILEYS:[Ljava/lang/String;

.field private static final PREF_KB_SOUND_STYLE:Ljava/lang/String; = "tap_sound_style_pref"

.field static final PREF_LONG_PRESS_DELAY:Ljava/lang/String; = "long_press_delay"

.field public static final PREF_POPULAR_DOMAIN:[Ljava/lang/String;

.field private static final PREF_PUNCTUATION_EDITOR:Ljava/lang/String; = "punctuation_editor"

.field static final PREF_SETTINGS_KEY:Ljava/lang/String; = "settings_key"

.field private static final PREF_SOUND_VOLUME:Ljava/lang/String; = "sound_volume"

.field public static final PREF_SUGGESTION_BAR_COLOR:Ljava/lang/String; = "suggestion_bar_color"

.field private static final PREF_VIBRATE_LENGTH:Ljava/lang/String; = "vibration_length"

.field private static final PREF_VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field public static PunctuationPopup_res:[I = null

.field private static final QUICK_FIXES_KEY:Ljava/lang/String; = "quick_fixes"

.field private static final REQ_CODE_PICK_IMAGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DomainEditor"

.field private static final VOICE_INPUT_CONFIRM_DIALOG:I = 0x0

.field private static final VOICE_SETTINGS_KEY:Ljava/lang/String; = "voice_mode"

.field public static popular_domains_res:[I

.field public static popular_smileys_res:[I


# instance fields
.field private CustomPunctuationPopup:Landroid/preference/EditTextPreference;

.field private CustomSmileys:Landroid/preference/EditTextPreference;

.field private customePunctuation:Landroid/preference/EditTextPreference;

.field private mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

.field private mLongPressDelay:I

.field private mLongPressDelayPreference:Lcom/android/inputmethod/latin/DialogSeekBarPreference;

.field private mOkClicked:Z

.field private mQuickFixes:Landroid/preference/SwitchPreference;

.field private mSettingsKeyPreference:Landroid/preference/ListPreference;

.field private mShowIcon:Z

.field private mSoundVolume:F

.field mTypePlay:Landroid/media/MediaPlayer;

.field private mVibrateLength:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceModeOff:Ljava/lang/String;

.field private mVoiceOn:Z

.field private mVoicePreference:Landroid/preference/ListPreference;

.field path:Ljava/lang/String;

.field private popularDomains:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 96
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sm0"

    aput-object v1, v0, v4

    const-string v1, "sm1"

    aput-object v1, v0, v5

    const-string v1, "sm2"

    aput-object v1, v0, v6

    const-string v1, "sm3"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "sm4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sm5"

    aput-object v2, v0, v1

    const-string v1, "sm6"

    aput-object v1, v0, v3

    const/4 v1, 0x7

    .line 97
    const-string v2, "sm7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sm8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sm9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sm10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sm11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sm12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sm13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sm14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sm15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sm16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sm17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sm18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "sm19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sm20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sm21"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sm22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "sm23"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "sm24"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sm25"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "sm26"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "sm27"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "sm28"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "sm29"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "sm30"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "sm31"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "sm32"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "sm33"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "sm34"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "sm35"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "sm36"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "sm37"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "sm38"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "sm39"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "sm40"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "sm41"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "sm42"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "sm43"

    aput-object v2, v0, v1

    .line 96
    sput-object v0, Lcom/android/inputmethod/latin/DomainEditor;->PREF_CUSTOME_SMILEYS:[Ljava/lang/String;

    .line 99
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/latin/DomainEditor;->popular_smileys_res:[I

    .line 102
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "punctuation0"

    aput-object v1, v0, v4

    const-string v1, "punctuation1"

    aput-object v1, v0, v5

    const-string v1, "punctuation2"

    aput-object v1, v0, v6

    const-string v1, "punctuation3"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "punctuation4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "punctuation5"

    aput-object v2, v0, v1

    .line 103
    const-string v1, "punctuation6"

    aput-object v1, v0, v3

    const/4 v1, 0x7

    const-string v2, "punctuation7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "punctuation8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "punctuation9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "punctuation10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "punctuation11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "punctuation12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "punctuation13"

    aput-object v2, v0, v1

    .line 102
    sput-object v0, Lcom/android/inputmethod/latin/DomainEditor;->PREF_CUSTOME_PUNCTUATION_POPUP:[Ljava/lang/String;

    .line 105
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/inputmethod/latin/DomainEditor;->PunctuationPopup_res:[I

    .line 109
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "popular_domain_0"

    aput-object v1, v0, v4

    const-string v1, "popular_domain_1"

    aput-object v1, v0, v5

    .line 110
    const-string v1, "popular_domain_2"

    aput-object v1, v0, v6

    const-string v1, "popular_domain_3"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "popular_domain_4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "popular_domain_5"

    aput-object v2, v0, v1

    .line 109
    sput-object v0, Lcom/android/inputmethod/latin/DomainEditor;->PREF_POPULAR_DOMAIN:[Ljava/lang/String;

    .line 113
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/inputmethod/latin/DomainEditor;->popular_domains_res:[I

    .line 68
    return-void

    .line 99
    nop

    :array_0
    .array-data 4
        0x7f0d017f
        0x7f0d0180
        0x7f0d0181
        0x7f0d0182
        0x7f0d0183
        0x7f0d0184
        0x7f0d0185
        0x7f0d0186
        0x7f0d0187
        0x7f0d0188
        0x7f0d0189
        0x7f0d018a
        0x7f0d018b
        0x7f0d018c
        0x7f0d018d
        0x7f0d01d5
        0x7f0d01d6
        0x7f0d01d7
        0x7f0d01d8
        0x7f0d01d9
        0x7f0d01da
        0x7f0d01db
        0x7f0d01dc
        0x7f0d01dd
        0x7f0d01de
        0x7f0d01df
        0x7f0d01e0
        0x7f0d01e1
        0x7f0d01e2
        0x7f0d01e3
        0x7f0d01e4
        0x7f0d01e5
        0x7f0d01e6
        0x7f0d01e7
        0x7f0d01e8
        0x7f0d01e9
        0x7f0d01ea
        0x7f0d01eb
        0x7f0d01ec
        0x7f0d01ed
        0x7f0d01ee
        0x7f0d01ef
        0x7f0d01f0
        0x7f0d01f1
    .end array-data

    .line 105
    :array_1
    .array-data 4
        0x7f0d018e
        0x7f0d018f
        0x7f0d0190
        0x7f0d0191
        0x7f0d0192
        0x7f0d0193
        0x7f0d0194
        0x7f0d0195
        0x7f0d0196
        0x7f0d0197
        0x7f0d0198
        0x7f0d0199
        0x7f0d019a
        0x7f0d019b
    .end array-data

    .line 113
    :array_2
    .array-data 4
        0x7f0d0099
        0x7f0d009a
        0x7f0d009b
        0x7f0d009c
        0x7f0d009d
        0x7f0d009e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    .line 129
    iput-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVibrator:Landroid/os/Vibrator;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mOkClicked:Z

    .line 68
    return-void
.end method

.method private HandlePopularDomain(Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 685
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-lt v1, v3, :cond_0

    .line 698
    return-void

    .line 687
    :cond_0
    sget-object v3, Lcom/android/inputmethod/latin/DomainEditor;->popular_domains_res:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "DefaultString":Ljava/lang/String;
    sget-object v3, Lcom/android/inputmethod/latin/DomainEditor;->PREF_POPULAR_DOMAIN:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/inputmethod/latin/DomainEditor;->popular_domains_res:[I

    aget v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, "temp":Ljava/lang/String;
    sget-object v3, Lcom/android/inputmethod/latin/DomainEditor;->PREF_POPULAR_DOMAIN:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/inputmethod/latin/DomainEditor;->popularDomains:Landroid/preference/EditTextPreference;

    .line 690
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 692
    move-object v2, v0

    .line 694
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/DomainEditor;->popularDomains:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 695
    iget-object v3, p0, Lcom/android/inputmethod/latin/DomainEditor;->popularDomains:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 696
    sget-object v3, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->popularDomains:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/inputmethod/latin/DomainEditor;->popularDomains:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private HandlePunctuation(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 737
    const-string v1, "punctuation_editor"

    const v2, 0x7f0d003a

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "temp":Ljava/lang/String;
    const-string v1, "punctuation_editor"

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->customePunctuation:Landroid/preference/EditTextPreference;

    .line 739
    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->customePunctuation:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->customePunctuation:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 741
    return-void
.end method

.method private HandlePunctuationPopup(Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 721
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xd

    if-lt v1, v3, :cond_0

    .line 734
    return-void

    .line 723
    :cond_0
    sget-object v3, Lcom/android/inputmethod/latin/DomainEditor;->PunctuationPopup_res:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "DefaultString":Ljava/lang/String;
    sget-object v3, Lcom/android/inputmethod/latin/DomainEditor;->PREF_CUSTOME_PUNCTUATION_POPUP:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/inputmethod/latin/DomainEditor;->PunctuationPopup_res:[I

    aget v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "temp":Ljava/lang/String;
    sget-object v3, Lcom/android/inputmethod/latin/DomainEditor;->PREF_CUSTOME_PUNCTUATION_POPUP:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/inputmethod/latin/DomainEditor;->CustomPunctuationPopup:Landroid/preference/EditTextPreference;

    .line 726
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 728
    :cond_1
    move-object v2, v0

    .line 730
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/DomainEditor;->CustomPunctuationPopup:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 731
    iget-object v3, p0, Lcom/android/inputmethod/latin/DomainEditor;->CustomPunctuationPopup:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 732
    sget-object v3, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->CustomPunctuationPopup:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/inputmethod/latin/DomainEditor;->CustomPunctuationPopup:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private HandleSmileys(Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 702
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x2c

    if-lt v1, v3, :cond_0

    .line 715
    return-void

    .line 704
    :cond_0
    sget-object v3, Lcom/android/inputmethod/latin/DomainEditor;->popular_smileys_res:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "DefaultString":Ljava/lang/String;
    sget-object v3, Lcom/android/inputmethod/latin/DomainEditor;->PREF_CUSTOME_SMILEYS:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/inputmethod/latin/DomainEditor;->popular_smileys_res:[I

    aget v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, "temp":Ljava/lang/String;
    sget-object v3, Lcom/android/inputmethod/latin/DomainEditor;->PREF_CUSTOME_SMILEYS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/inputmethod/latin/DomainEditor;->CustomSmileys:Landroid/preference/EditTextPreference;

    .line 707
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 709
    move-object v2, v0

    .line 711
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/DomainEditor;->CustomSmileys:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 712
    iget-object v3, p0, Lcom/android/inputmethod/latin/DomainEditor;->CustomSmileys:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 713
    sget-object v3, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->CustomSmileys:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/inputmethod/latin/DomainEditor;->CustomSmileys:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 702
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/DomainEditor;)Landroid/preference/ListPreference;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoicePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/DomainEditor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoiceModeOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/latin/DomainEditor;)Lcom/android/inputmethod/voice/VoiceInputLogger;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/inputmethod/latin/DomainEditor;Z)V
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/DomainEditor;->mOkClicked:Z

    return-void
.end method

.method static synthetic access$4(Lcom/android/inputmethod/latin/DomainEditor;)V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DomainEditor;->updateVoicePreference()V

    return-void
.end method

.method private showVoiceConfirmation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 578
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mOkClicked:Z

    .line 579
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DomainEditor;->showDialog(I)V

    .line 580
    return-void
.end method

.method private updateLongPressDelaySummary()V
    .locals 5

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mLongPressDelayPreference:Lcom/android/inputmethod/latin/DialogSeekBarPreference;

    .line 573
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 574
    iget v4, p0, Lcom/android/inputmethod/latin/DomainEditor;->mLongPressDelay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 572
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DialogSeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 575
    return-void
.end method

.method private updateSettingsKeySummary()V
    .locals 4

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    .line 567
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 568
    iget-object v2, p0, Lcom/android/inputmethod/latin/DomainEditor;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/DomainEditor;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 567
    aget-object v1, v1, v2

    .line 566
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    return-void
.end method

.method private updateVoiceModeSummary()V
    .locals 4

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoicePreference:Landroid/preference/ListPreference;

    .line 584
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 585
    iget-object v2, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 584
    aget-object v1, v1, v2

    .line 583
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 586
    return-void
.end method

.method private updateVoicePreference()V
    .locals 3

    .prologue
    .line 675
    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 676
    .local v0, "isChecked":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 677
    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->voiceInputSettingEnabled()V

    .line 681
    :goto_1
    return-void

    .line 675
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 679
    .restart local v0    # "isChecked":Z
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->voiceInputSettingDisabled()V

    goto :goto_1
.end method


# virtual methods
.method RestoreDbFiles()V
    .locals 8

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 827
    .local v1, "backupdirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 830
    .local v0, "backupDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "databases/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 834
    new-instance v0, Ljava/io/File;

    .end local v0    # "backupDirectory":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 837
    .restart local v0    # "backupDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 839
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "shared_prefs/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 841
    new-instance v0, Ljava/io/File;

    .end local v0    # "backupDirectory":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 844
    .restart local v0    # "backupDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 846
    const-string v4, "temp1.dat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "databases/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "autotext.db"

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/inputmethod/latin/DomainEditor;->RestoreSingleDBfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 847
    .local v2, "succeed":Z
    if-eqz v2, :cond_0

    const-string v4, "temp2.dat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "databases/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "auto_dict.db"

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/inputmethod/latin/DomainEditor;->RestoreSingleDBfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 848
    :cond_0
    if-eqz v2, :cond_1

    const-string v4, "temp3.dat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "databases/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "userbigram_dict.db"

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/inputmethod/latin/DomainEditor;->RestoreSingleDBfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 850
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 852
    const-string v4, "temp4.dat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "shared_prefs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_preferences.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/inputmethod/latin/DomainEditor;->RestoreSingleDBfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 854
    :cond_2
    if-eqz v2, :cond_3

    .line 856
    const v4, 0x7f0d01a9

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 857
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 858
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 867
    :goto_0
    return-void

    .line 863
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_3
    const v4, 0x7f0d01aa

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 864
    .restart local v3    # "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method RestoreSingleDBfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p1, "Backupfile"    # Ljava/lang/String;
    .param p2, "restoredFilePath"    # Ljava/lang/String;
    .param p3, "restoredFileName"    # Ljava/lang/String;

    .prologue
    .line 870
    const/4 v12, 0x1

    .line 871
    .local v12, "succeed":Z
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    .local v11, "outputfile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 876
    .local v8, "dbStream":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 878
    .local v3, "Sdcard":Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/\u06aa\u064a\u0628\u0648\u0631\u062f \u0640\u060f\u0640\u0627\u0634\u0642 \u0627\u0644\u06aa\u0628\u0631\u064a\u0627\u06fd/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 880
    .local v6, "backupdirPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 883
    .local v4, "backupDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 887
    .local v2, "InputFile":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 888
    .local v5, "backupStream":Ljava/io/InputStream;
    const/16 v13, 0x400

    new-array v7, v13, [B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 891
    .local v7, "buffer":[B
    :goto_0
    :try_start_2
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "length":I
    if-gtz v10, :cond_0

    .line 895
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 896
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 897
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 919
    .end local v2    # "InputFile":Ljava/io/File;
    .end local v3    # "Sdcard":Ljava/io/File;
    .end local v4    # "backupDirectory":Ljava/io/File;
    .end local v5    # "backupStream":Ljava/io/InputStream;
    .end local v6    # "backupdirPath":Ljava/lang/String;
    .end local v7    # "buffer":[B
    .end local v8    # "dbStream":Ljava/io/FileOutputStream;
    .end local v10    # "length":I
    :goto_1
    return v12

    .line 892
    .restart local v2    # "InputFile":Ljava/io/File;
    .restart local v3    # "Sdcard":Ljava/io/File;
    .restart local v4    # "backupDirectory":Ljava/io/File;
    .restart local v5    # "backupStream":Ljava/io/InputStream;
    .restart local v6    # "backupdirPath":Ljava/lang/String;
    .restart local v7    # "buffer":[B
    .restart local v8    # "dbStream":Ljava/io/FileOutputStream;
    .restart local v10    # "length":I
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v8, v7, v13, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 898
    .end local v10    # "length":I
    :catch_0
    move-exception v9

    .line 900
    .local v9, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 901
    const/4 v12, 0x0

    goto :goto_1

    .line 903
    .end local v5    # "backupStream":Ljava/io/InputStream;
    .end local v7    # "buffer":[B
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 905
    .local v9, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 906
    const/4 v12, 0x0

    goto :goto_1

    .line 913
    .end local v2    # "InputFile":Ljava/io/File;
    .end local v3    # "Sdcard":Ljava/io/File;
    .end local v4    # "backupDirectory":Ljava/io/File;
    .end local v6    # "backupdirPath":Ljava/lang/String;
    .end local v8    # "dbStream":Ljava/io/FileOutputStream;
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v9

    .line 915
    .restart local v9    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 916
    const/4 v12, 0x0

    goto :goto_1
.end method

.method backupDbFiles()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 749
    const-string v4, "autotext.db"

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DomainEditor;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "temp1.dat"

    invoke-virtual {p0, v4, v5}, Lcom/android/inputmethod/latin/DomainEditor;->backupSingleDBfile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    .line 750
    .local v2, "succeed":Z
    if-eqz v2, :cond_0

    const-string v4, "auto_dict.db"

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DomainEditor;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "temp2.dat"

    invoke-virtual {p0, v4, v5}, Lcom/android/inputmethod/latin/DomainEditor;->backupSingleDBfile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    .line 751
    :cond_0
    if-eqz v2, :cond_1

    const-string v4, "userbigram_dict.db"

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DomainEditor;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "temp3.dat"

    invoke-virtual {p0, v4, v5}, Lcom/android/inputmethod/latin/DomainEditor;->backupSingleDBfile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    .line 753
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 755
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "shared_prefs/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_preferences.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    .local v1, "shared_prefs":Ljava/io/File;
    const-string v4, "temp4.dat"

    invoke-virtual {p0, v1, v4}, Lcom/android/inputmethod/latin/DomainEditor;->backupSingleDBfile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    .line 758
    .end local v1    # "shared_prefs":Ljava/io/File;
    :cond_2
    new-instance v0, Lcom/android/inputmethod/latin/DomainEditor$15;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/DomainEditor$15;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    .line 762
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    if-eqz v2, :cond_3

    .line 764
    const v4, 0x7f0d01a7

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 765
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 773
    :goto_0
    return-void

    .line 769
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_3
    const v4, 0x7f0d01a8

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 770
    .restart local v3    # "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method backupSingleDBfile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "BackupFile"    # Ljava/lang/String;

    .prologue
    .line 776
    const/4 v9, 0x1

    .line 780
    .local v9, "succeed":Z
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 783
    .local v5, "dbStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 785
    .local v0, "Sdcard":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/\u06aa\u064a\u0628\u0648\u0631\u062f \u0640\u060f\u0640\u0627\u0634\u0642 \u0627\u0644\u06aa\u0628\u0631\u064a\u0627\u06fd/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 787
    .local v3, "backupdirPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 789
    .local v2, "backupDirectory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 791
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 793
    .local v8, "outputFile":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 796
    .local v1, "backupDbStream":Ljava/io/FileOutputStream;
    const/16 v10, 0x400

    new-array v4, v10, [B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 799
    .local v4, "buffer":[B
    :goto_0
    :try_start_2
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "length":I
    if-gtz v7, :cond_0

    .line 820
    .end local v0    # "Sdcard":Ljava/io/File;
    .end local v1    # "backupDbStream":Ljava/io/FileOutputStream;
    .end local v2    # "backupDirectory":Ljava/io/File;
    .end local v3    # "backupdirPath":Ljava/lang/String;
    .end local v4    # "buffer":[B
    .end local v5    # "dbStream":Ljava/io/InputStream;
    .end local v7    # "length":I
    .end local v8    # "outputFile":Ljava/io/File;
    :goto_1
    return v9

    .line 800
    .restart local v0    # "Sdcard":Ljava/io/File;
    .restart local v1    # "backupDbStream":Ljava/io/FileOutputStream;
    .restart local v2    # "backupDirectory":Ljava/io/File;
    .restart local v3    # "backupdirPath":Ljava/lang/String;
    .restart local v4    # "buffer":[B
    .restart local v5    # "dbStream":Ljava/io/InputStream;
    .restart local v7    # "length":I
    .restart local v8    # "outputFile":Ljava/io/File;
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v1, v4, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 802
    .end local v7    # "length":I
    :catch_0
    move-exception v6

    .line 804
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 805
    const/4 v9, 0x0

    goto :goto_1

    .line 807
    .end local v0    # "Sdcard":Ljava/io/File;
    .end local v1    # "backupDbStream":Ljava/io/FileOutputStream;
    .end local v2    # "backupDirectory":Ljava/io/File;
    .end local v3    # "backupdirPath":Ljava/lang/String;
    .end local v4    # "buffer":[B
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "outputFile":Ljava/io/File;
    :catch_1
    move-exception v6

    .line 809
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 810
    const/4 v9, 0x0

    goto :goto_1

    .line 814
    .end local v5    # "dbStream":Ljava/io/InputStream;
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 816
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 817
    const/4 v9, 0x0

    goto :goto_1
.end method

.method doBackup()V
    .locals 8

    .prologue
    .line 644
    new-instance v4, Lcom/android/inputmethod/latin/DomainEditor$14;

    invoke-direct {v4, p0}, Lcom/android/inputmethod/latin/DomainEditor$14;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    .line 652
    .local v4, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 654
    .local v0, "Sdcard":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/\u06aa\u064a\u0628\u0648\u0631\u062f \u0640\u060f\u0640\u0627\u0634\u0642 \u0627\u0644\u06aa\u0628\u0631\u064a\u0627\u06fd/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, "backupdirPath":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 656
    const v6, 0x7f0d01ab

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 657
    new-instance v6, Ljava/lang/StringBuilder;

    const v7, 0x7f0d01a5

    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0d01a6

    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 658
    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 659
    const v6, 0x104000a

    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 660
    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 661
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 662
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 663
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "imageReturnedIntent"    # Landroid/content/Intent;

    .prologue
    .line 925
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 927
    packed-switch p1, :pswitch_data_0

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 929
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 930
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 932
    .local v1, "selectedImage":Landroid/net/Uri;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 933
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "background_image_uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 934
    invoke-static {v0}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 927
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const v17, 0x7f05003a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->addPreferencesFromResource(I)V

    .line 138
    const/16 v2, 0xb

    new-array v7, v2, [C

    fill-array-data v7, :array_0

    .line 139
    .local v7, "a":[C
    const/16 v2, 0xd

    new-array v1, v2, [C

    fill-array-data v1, :array_1

    .line 140
    .local v1, "b":[C
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    const-string v17, "quick_fixes"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/DomainEditor;->mQuickFixes:Landroid/preference/SwitchPreference;

    .line 143
    const-string v17, "voice_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/DomainEditor;->mVoicePreference:Landroid/preference/ListPreference;

    .line 144
    const-string v17, "settings_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/DomainEditor;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    .line 145
    const-string v17, "long_press_delay"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/inputmethod/latin/DialogSeekBarPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/DomainEditor;->mLongPressDelayPreference:Lcom/android/inputmethod/latin/DialogSeekBarPreference;

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DomainEditor;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v15

    .line 148
    .local v15, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/latin/DomainEditor;->HandlePopularDomain(Landroid/content/SharedPreferences;)V

    .line 149
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/latin/DomainEditor;->HandleSmileys(Landroid/content/SharedPreferences;)V

    .line 150
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/latin/DomainEditor;->HandlePunctuationPopup(Landroid/content/SharedPreferences;)V

    .line 151
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/latin/DomainEditor;->HandlePunctuation(Landroid/content/SharedPreferences;)V

    .line 152
    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 154
    const v17, 0x7f0d0092

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/DomainEditor;->mVoiceModeOff:Ljava/lang/String;

    .line 155
    const-string v17, "voice_mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/DomainEditor;->mVoiceModeOff:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/DomainEditor;->mVoiceModeOff:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/DomainEditor;->mVoiceOn:Z

    .line 156
    const-string v17, "long_press_delay"

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DomainEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0008

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    .line 156
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/DomainEditor;->mLongPressDelay:I

    .line 158
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->getLogger(Landroid/content/Context;)Lcom/android/inputmethod/voice/VoiceInputLogger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/DomainEditor;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    .line 160
    const-string v17, "go_website"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 161
    .local v11, "pref_go_website":Landroid/preference/Preference;
    new-instance v17, Lcom/android/inputmethod/latin/DomainEditor$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor$1;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 172
    const-string v17, "send_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 173
    .local v14, "pref_send_feedback":Landroid/preference/Preference;
    new-instance v17, Lcom/android/inputmethod/latin/DomainEditor$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor$2;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 191
    const-string v17, "pref_select_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 192
    .local v13, "pref_select_background":Landroid/preference/Preference;
    new-instance v17, Lcom/android/inputmethod/latin/DomainEditor$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor$3;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 207
    const-string v17, "rate_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 208
    .local v12, "pref_rate_app":Landroid/preference/Preference;
    new-instance v17, Lcom/android/inputmethod/latin/DomainEditor$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor$4;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 219
    const-string v17, "full_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 220
    .local v10, "pref_download_full":Landroid/preference/Preference;
    new-instance v17, Lcom/android/inputmethod/latin/DomainEditor$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor$5;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 232
    const-string v17, "english_ime_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 233
    .local v8, "generalSettings":Landroid/preference/PreferenceGroup;
    const/4 v2, 0x0

    .line 234
    .local v2, "COMPILE_AMAZON":Z
    if-nez v2, :cond_2

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DomainEditor;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "inputmethod.latin.perfectkeyboard"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 238
    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    :cond_0
    :goto_1
    const-string v17, "restore_files"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 247
    .local v16, "restore_fies":Landroid/preference/Preference;
    new-instance v17, Lcom/android/inputmethod/latin/DomainEditor$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor$6;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 253
    const-string v17, "backup_files"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 254
    .local v6, "backupt_files":Landroid/preference/Preference;
    new-instance v17, Lcom/android/inputmethod/latin/DomainEditor$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor$7;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 260
    const-string v17, "suggestion_font_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 262
    .local v5, "Pref_suggestion_font_color":Landroid/preference/Preference;
    new-instance v17, Lcom/android/inputmethod/latin/DomainEditor$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor$8;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 288
    const-string v17, "button_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 289
    .local v7, "button_color_Pref":Landroid/preference/Preference;
    new-instance v17, Lcom/android/inputmethod/latin/DomainEditor$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor$9;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 314
    const-string v17, "keyboard_background_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 315
    .local v3, "Pref_keyboard_background_color":Landroid/preference/Preference;
    new-instance v17, Lcom/android/inputmethod/latin/DomainEditor$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor$10;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 338
    const-string v17, "suggestion_bar_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 339
    .local v4, "Pref_suggestion_bar_color":Landroid/preference/Preference;
    new-instance v17, Lcom/android/inputmethod/latin/DomainEditor$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor$11;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 362
    const-string v17, "keyboard_font_symbol_color_new"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 363
    .local v9, "keyboard_font_symbol_color_new":Landroid/preference/Preference;
    new-instance v17, Lcom/android/inputmethod/latin/DomainEditor$12;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor$12;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 387
    return-void

    .line 155
    .end local v2    # "COMPILE_AMAZON":Z
    .end local v3    # "Pref_keyboard_background_color":Landroid/preference/Preference;
    .end local v4    # "Pref_suggestion_bar_color":Landroid/preference/Preference;
    .end local v5    # "Pref_suggestion_font_color":Landroid/preference/Preference;
    .end local v6    # "backupt_files":Landroid/preference/Preference;
    .end local v7    # "button_color_Pref":Landroid/preference/Preference;
    .end local v8    # "generalSettings":Landroid/preference/PreferenceGroup;
    .end local v9    # "keyboard_font_symbol_color_new":Landroid/preference/Preference;
    .end local v10    # "pref_download_full":Landroid/preference/Preference;
    .end local v11    # "pref_go_website":Landroid/preference/Preference;
    .end local v12    # "pref_rate_app":Landroid/preference/Preference;
    .end local v13    # "pref_select_background":Landroid/preference/Preference;
    .end local v14    # "pref_send_feedback":Landroid/preference/Preference;
    .end local v16    # "restore_fies":Landroid/preference/Preference;
    :cond_1
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 243
    .restart local v2    # "COMPILE_AMAZON":Z
    .restart local v8    # "generalSettings":Landroid/preference/PreferenceGroup;
    .restart local v10    # "pref_download_full":Landroid/preference/Preference;
    .restart local v11    # "pref_go_website":Landroid/preference/Preference;
    .restart local v12    # "pref_rate_app":Landroid/preference/Preference;
    .restart local v13    # "pref_select_background":Landroid/preference/Preference;
    .restart local v14    # "pref_send_feedback":Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    invoke-virtual {v8, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 138
    nop

    nop

    :array_0
    .array-data 2
        0x68s
        0x65s
        0x6cs
        0x70s
        0x5fs
        0x73s
        0x63s
        0x72s
        0x65s
        0x65s
        0x6es
    .end array-data

    .line 139
    nop

    :array_1
    .array-data 2
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
    .end array-data
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .param p1, "id"    # I

    .prologue
    const v11, 0x7f0d007f

    const v10, 0x7f0d007d

    .line 590
    packed-switch p1, :pswitch_data_0

    .line 637
    const-string v7, "DomainEditor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unknown dialog "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 592
    :pswitch_0
    new-instance v2, Lcom/android/inputmethod/latin/DomainEditor$13;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/DomainEditor$13;-><init>(Lcom/android/inputmethod/latin/DomainEditor;)V

    .line 604
    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 605
    const v8, 0x7f0d007b

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 606
    const v8, 0x104000a

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 607
    const/high16 v8, 0x1040000

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 613
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 614
    const-string v8, "latin_ime_voice_input_supported_locales"

    .line 615
    const-string v9, "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

    .line 612
    invoke-static {v7, v8, v9}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 617
    .local v5, "supportedLocalesString":Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/inputmethod/latin/DictionaryEditor;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 619
    .local v6, "voiceInputSupportedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    .line 618
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 621
    .local v3, "localeSupported":Z
    if-eqz v3, :cond_0

    .line 622
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 623
    invoke-virtual {p0, v11}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 622
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 624
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 632
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 633
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 634
    iget-object v7, p0, Lcom/android/inputmethod/latin/DomainEditor;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v7}, Lcom/android/inputmethod/voice/VoiceInputLogger;->settingsWarningDialogShown()V

    goto :goto_0

    .line 626
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "message":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const v8, 0x7f0d007c

    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v10}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 628
    invoke-virtual {p0, v11}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 626
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 629
    .restart local v4    # "message":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 413
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 414
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->settingsWarningDialogDismissed()V

    .line 667
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 672
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 393
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 394
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1}, Landroid/text/AutoText;->getSize(Landroid/view/View;)I

    move-result v0

    .line 395
    .local v0, "autoTextSize":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 396
    const-string v1, "prediction_settings"

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 397
    iget-object v2, p0, Lcom/android/inputmethod/latin/DomainEditor;->mQuickFixes:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 400
    :cond_0
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DomainEditor;->updateSettingsKeySummary()V

    .line 406
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DomainEditor;->updateLongPressDelaySummary()V

    .line 407
    return-void

    .line 403
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DomainEditor;->updateVoiceModeSummary()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 12
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 417
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 420
    const-string v0, "voice_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoiceOn:Z

    if-nez v0, :cond_2

    .line 421
    const-string v0, "voice_mode"

    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DomainEditor;->showVoiceConfirmation()V

    .line 533
    :cond_0
    :goto_0
    const-string v0, "display_BackupPro_icon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 536
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 537
    .local v8, "packagename":Ljava/lang/String;
    const-string v0, "display_BackupPro_icon"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mShowIcon:Z

    .line 538
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mShowIcon:Z

    if-eqz v0, :cond_f

    .line 541
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.inputmethod.latin.BackupPro"

    invoke-direct {v0, v8, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 541
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 552
    .end local v8    # "packagename":Ljava/lang/String;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    const-string v0, "voice_mode"

    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVoiceOn:Z

    .line 553
    const-string v0, "long_press_delay"

    .line 554
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 553
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mLongPressDelay:I

    .line 555
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DomainEditor;->updateVoiceModeSummary()V

    .line 556
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DomainEditor;->updateSettingsKeySummary()V

    .line 557
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DomainEditor;->updateLongPressDelaySummary()V

    .line 558
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DomainEditor;->HandlePopularDomain(Landroid/content/SharedPreferences;)V

    .line 559
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DomainEditor;->HandleSmileys(Landroid/content/SharedPreferences;)V

    .line 560
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DomainEditor;->HandlePunctuationPopup(Landroid/content/SharedPreferences;)V

    .line 561
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DomainEditor;->HandlePunctuation(Landroid/content/SharedPreferences;)V

    .line 563
    return-void

    .line 425
    :cond_2
    const-string v0, "vibration_length"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_3

    .line 429
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DomainEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVibrator:Landroid/os/Vibrator;

    .line 431
    :cond_3
    const-string v0, "vibration_length"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVibrateLength:I

    .line 432
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->mVibrateLength:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    .line 434
    :cond_4
    const-string v0, "sound_volume"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 435
    const-string v0, "tap_sound_style_pref"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    :cond_5
    const-string v0, "tap_sound_style_pref"

    .line 438
    const v1, 0x7f0d00d9

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 440
    .local v11, "soundStyle":Ljava/lang/String;
    const-string v0, "sound_volume"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    .line 441
    :cond_6
    const-string v0, "tap_sound_style_pref"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 444
    :cond_7
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    .line 446
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 448
    :cond_8
    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 450
    const-string v0, "android.ogg"

    iput-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->path:Ljava/lang/String;

    .line 493
    :cond_9
    :goto_3
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 495
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    .line 497
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 499
    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 500
    .local v6, "descriptor":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 501
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 500
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 502
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 514
    .end local v6    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    :goto_4
    :try_start_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 524
    :cond_a
    :goto_5
    const-string v0, "sound_volume"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const-string v0, "sound_volume"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DomainEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mSoundVolume:F

    .line 528
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->mSoundVolume:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/inputmethod/latin/DomainEditor;->mSoundVolume:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 529
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto/16 :goto_0

    .line 452
    :cond_b
    const v0, 0x7f0d00dc

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 454
    const-string v0, "iphone.ogg"

    iput-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->path:Ljava/lang/String;

    goto :goto_3

    .line 456
    :cond_c
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 458
    const-string v0, "samsung.ogg"

    iput-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->path:Ljava/lang/String;

    goto/16 :goto_3

    .line 460
    :cond_d
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 462
    const-string v0, "tock.ogg"

    iput-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->path:Ljava/lang/String;

    goto/16 :goto_3

    .line 464
    :cond_e
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DomainEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 466
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 467
    .local v10, "sdcard":Ljava/io/File;
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    .line 468
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "external_sd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "custom.ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->path:Ljava/lang/String;

    .line 471
    :try_start_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 483
    :goto_6
    :try_start_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor;->mTypePlay:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_3

    .line 484
    :catch_0
    move-exception v7

    .line 486
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_3

    .line 472
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .line 474
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_6

    .line 475
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 477
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_6

    .line 478
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v7

    .line 480
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 487
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 489
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 503
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "sdcard":Ljava/io/File;
    :catch_5
    move-exception v7

    .line 505
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_4

    .line 506
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v7

    .line 508
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_4

    .line 509
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_7
    move-exception v7

    .line 511
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 515
    .end local v7    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 517
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_5

    .line 518
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_9
    move-exception v7

    .line 520
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 547
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "soundStyle":Ljava/lang/String;
    .restart local v8    # "packagename":Ljava/lang/String;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_f
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.inputmethod.latin.BackupPro"

    invoke-direct {v0, v8, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 547
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_1

    .line 552
    .end local v8    # "packagename":Ljava/lang/String;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_2
.end method
