.class public Lcom/android/inputmethod/latin/Calibration;
.super Ljava/lang/Object;
.source "Calibration.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Calibration$KeyboardId;
    }
.end annotation


# static fields
.field private static final ALPHABET_MODES:[I

.field private static final AUTO_MODE_SWITCH_STATE_ALPHA:I = 0x0

.field private static final AUTO_MODE_SWITCH_STATE_CHORDING:I = 0x4

.field private static final AUTO_MODE_SWITCH_STATE_MOMENTARY:I = 0x3

.field private static final AUTO_MODE_SWITCH_STATE_SYMBOL:I = 0x2

.field private static final AUTO_MODE_SWITCH_STATE_SYMBOL_BEGIN:I = 0x1

.field private static final CHAR_THEME_COLOR_BLACK:I = 0x1

.field private static final CHAR_THEME_COLOR_WHITE:I = 0x0

.field public static final DEFAULT_LADDSCAPE_MODE_NORMAL:I = 0x0

.field public static final DEFAULT_LADDSCAPE_MODE_SPLIT:I = 0x1

.field public static final DEFAULT_LAYOUT_ID:Ljava/lang/String; = "8"

.field public static final DEFAULT_MODE_COMPACT:I = 0x2

.field public static final DEFAULT_MODE_NORMAL:I = 0x0

.field public static final DEFAULT_MODE_SPLIT:I = 0x3

.field public static final DEFAULT_MODE_T9:I = 0x1

.field private static final DEFAULT_SETTINGS_KEY_MODE:I = 0x7f0d003d

.field private static final KBD_AZERTY:[I

.field private static final KBD_COLEMAX:[I

.field private static final KBD_DVORAK:[I

.field private static final KBD_NUMBERS:[I

.field private static final KBD_PHONE:[I

.field private static final KBD_PHONE_SYMBOLS:[I

.field private static final KBD_QWERTY:[I

.field private static final KBD_QWERTY2:[I

.field private static final KBD_QWERTY_ALT:[I

.field private static final KBD_QWERTY_SWISS:[I

.field private static final KBD_QWERTZ:[I

.field private static final KBD_SPLITTED_SYMBOLS:[I

.field private static final KBD_SYMBOLS:[I

.field private static final KBD_SYMBOLS_SHIFT:[I

.field private static final KED_COMPACT:[I

.field private static final KED_COMPACT_AZERTY:[I

.field private static final KED_COMPACT_DVORAK:[I

.field private static final KED_COMPACT_QWERTY2:[I

.field private static final KED_COMPACT_QWERTZ:[I

.field private static final KED_QWERTY_CZ_FULL:[I

.field private static final KED_QWERTY_UMLAUTE:[I

.field private static final KED_QWERTZ_CZ_FULL:[I

.field private static final KED_SPLITTED:[I

.field private static final KED_SPLITTED_AZERTY:[I

.field private static final KED_SPLITTED_DVORAK:[I

.field private static final KED_SPLITTED_QWERTY2:[I

.field private static final KED_SPLITTED_QWERTY_CZ_FULL:[I

.field private static final KED_SPLITTED_QWERTY_SWISS:[I

.field private static final KED_SPLITTED_QWERTY_UMLAUTE:[I

.field private static final KED_SPLITTED_QWERTZ:[I

.field private static final KED_SPLITTED_QWERTZ_CZ_FULL:[I

.field private static final KED_T9:[I

.field public static final KEYBOARDMODE_ARROWS:I = 0x7f080031

.field public static final KEYBOARDMODE_EMAIL:I = 0x7f080029

.field public static final KEYBOARDMODE_EMAIL_WITH_SETTINGS_KEY:I = 0x7f08002e

.field public static final KEYBOARDMODE_IM:I = 0x7f08002a

.field public static final KEYBOARDMODE_IM_WITH_SETTINGS_KEY:I = 0x7f08002f

.field public static final KEYBOARDMODE_NORMAL:I = 0x7f080027

.field public static final KEYBOARDMODE_NORMAL_WITH_SETTINGS_KEY:I = 0x7f08002c

.field public static final KEYBOARDMODE_SYMBOLS:I = 0x7f080032

.field public static final KEYBOARDMODE_SYMBOLS_WITH_SETTINGS_KEY:I = 0x7f080033

.field public static final KEYBOARDMODE_URL:I = 0x7f080028

.field public static final KEYBOARDMODE_URL_WITH_SETTINGS_KEY:I = 0x7f08002d

.field public static final KEYBOARDMODE_WEB:I = 0x7f08002b

.field public static final KEYBOARDMODE_WEB_WITH_SETTINGS_KEY:I = 0x7f080030

.field public static final MODE_ARROWS:I = 0x8

.field public static final MODE_EMAIL:I = 0x5

.field public static final MODE_IM:I = 0x6

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_NUMBERS:I = 0x9

.field public static final MODE_PHONE:I = 0x3

.field public static final MODE_SYMBOLS:I = 0x2

.field public static final MODE_TEXT:I = 0x1

.field public static final MODE_URL:I = 0x4

.field public static final MODE_WEB:I = 0x7

.field private static final PREF_ARROWS_KEY_HIGHT_HORIZONTAL:Ljava/lang/String; = "arrows_keys_hight_horizontal"

.field private static final PREF_ARROWS_KEY_HIGHT_VERTICAL:Ljava/lang/String; = "arrows_keys_hight_vertical"

.field private static final PREF_BACKGROUND_CUSTOM_KEY:Ljava/lang/String; = "background_custom_key"

.field private static final PREF_BOTTOM_PADDING_HORIZONTAL:Ljava/lang/String; = "bottom_padding_horizontal"

.field private static final PREF_BOTTOM_PADDING_VERTICAL:Ljava/lang/String; = "bottom_padding_vertical"

.field private static final PREF_CZECH_FULL_LAYOUT:Ljava/lang/String; = "czech_full_layout"

.field private static final PREF_DISPLAY_ALT_LABELS:Ljava/lang/String; = "dispaly_alt_labels"

.field private static final PREF_ENABLE_NUMBER_KEYPAD:Ljava/lang/String; = "enable_number_keypad"

.field private static final PREF_HEBREW_ALT_LAYOUT:Ljava/lang/String; = "hebrew_alt_layout"

.field private static final PREF_KB_FONT_COLOR:Ljava/lang/String; = "keyboard_font_symbol_color_new"

.field private static final PREF_KB_HINT_FONT_COLOR:Ljava/lang/String; = "keyboard_hint_font_color_color"

.field public static final PREF_KEYBOARD_LAYOUT:Ljava/lang/String; = "pref_keyboard_layout_20100902"

.field private static final PREF_KEY_HIGHT_HORIZONTAL:Ljava/lang/String; = "key_hight_horizontal"

.field private static final PREF_KEY_HIGHT_VERTICAL:Ljava/lang/String; = "key_hight_vertical"

.field private static final PREF_LANDSCAPE_LAYOUT:Ljava/lang/String; = "pref_landscape_layout"

.field private static final PREF_PORTRAIT_LAYOUT:Ljava/lang/String; = "pref_portrait_layout"

.field private static final PREF_ROW_GAP_HORIZONTAL:Ljava/lang/String; = "row_gap_horizontal"

.field private static final PREF_ROW_GAP_VERTICAL:Ljava/lang/String; = "row_gap_vertical"

.field private static final PREF_TEXT_SIZE_HORIZONTAL:Ljava/lang/String; = "text_size_horizontal"

.field private static final PREF_TEXT_SIZE_VERTICAL:Ljava/lang/String; = "text_size_vertical"

.field public static final PREF_URI_BACKGROUND_IMAGE:Ljava/lang/String; = "background_image_uri"

.field public static final PREF_USE_CUSTOM_IMAGTE:Ljava/lang/String; = "use_custom_image"

.field private static final SETTINGS_KEY_MODE_ALWAYS_HIDE:I = 0x7f0d003d

.field private static final SETTINGS_KEY_MODE_ALWAYS_SHOW:I = 0x7f0d003c

.field private static final SETTINGS_KEY_MODE_AUTO:I = 0x7f0d003b

.field private static final THEMES:[I

.field public static isFourRowLayout:Z

.field public static mDisplayAltLables:Z

.field private static mEnableNumberKeypad:Z

.field public static mFontSymbolColors:I

.field public static mIsPortraitModeAndT9:Z

.field public static mLandscapeLayoutMode:I

.field public static mPortaraitLayoutMode:I

.field public static mSmallLabelText:Z

.field private static final sInstance:Lcom/android/inputmethod/latin/Calibration;


# instance fields
.field private mArrowsKeyHightHorizontal:I

.field private mArrowsKeyHightVertical:I

.field private mAutoModeSwitchState:I

.field private mBottomPaddingHorizontal:I

.field private mBottomPaddingVertical:I

.field private mCurrentId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

.field private mCzechFull:Z

.field private mHasSettingsKey:Z

.field public mHasVoice:Z

.field private mHebrewAlt:Z

.field private mImeOptions:I

.field private mInputLocale:Ljava/util/Locale;

.field private mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

.field private mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

.field private mIsAutoCompletionActive:Z

.field private mIsNumbers:Z

.field private mIsSymbols:Z

.field private mKeyHightHorizontal:I

.field private mKeyHightVertical:I

.field private mKeyboardLayout:Ljava/lang/String;

.field private final mKeyboards:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/inputmethod/latin/Calibration$KeyboardId;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/inputmethod/latin/LatinKeyboard;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

.field private mLastDisplayWidth:I

.field private mLayoutId:I

.field public mMode:I

.field private mPreferNumbers:Z

.field private mPreferSymbols:Z

.field private mRowGapHorizontal:I

.field private mRowGapVertical:I

.field private mSymbolsId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

.field private mSymbolsShiftedId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

.field private mTextSizeHorizontal:I

.field private mTextSizeVertical:I

.field private mUriImage:Ljava/lang/String;

.field private mUseCustomeImage:Z

.field private mVoiceOnPrimary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->THEMES:[I

    .line 125
    new-array v0, v3, [I

    const v1, 0x7f050013

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_PHONE:[I

    .line 126
    new-array v0, v3, [I

    const v1, 0x7f050014

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_PHONE_SYMBOLS:[I

    .line 127
    new-array v0, v3, [I

    const v1, 0x7f05002d

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_SYMBOLS:[I

    .line 128
    new-array v0, v3, [I

    const v1, 0x7f05002c

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_SPLITTED_SYMBOLS:[I

    .line 130
    new-array v0, v3, [I

    const v1, 0x7f050012

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_NUMBERS:[I

    .line 131
    new-array v0, v3, [I

    .line 132
    const v1, 0x7f05002e

    aput v1, v0, v2

    .line 131
    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_SYMBOLS_SHIFT:[I

    .line 133
    new-array v0, v3, [I

    const v1, 0x7f05001b

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_QWERTY:[I

    .line 134
    new-array v0, v3, [I

    const v1, 0x7f050020

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_QWERTY_SWISS:[I

    .line 135
    new-array v0, v3, [I

    const v1, 0x7f05001c

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_QWERTY2:[I

    .line 136
    new-array v0, v3, [I

    const v1, 0x7f050021

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_QWERTZ:[I

    .line 137
    new-array v0, v3, [I

    const v1, 0x7f050003

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_AZERTY:[I

    .line 138
    new-array v0, v3, [I

    const v1, 0x7f05000b

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_DVORAK:[I

    .line 139
    new-array v0, v3, [I

    const v1, 0x7f050005

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_COLEMAX:[I

    .line 141
    new-array v0, v3, [I

    const v1, 0x7f05001d

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_QWERTY_ALT:[I

    .line 142
    new-array v0, v3, [I

    const v1, 0x7f05002f

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_T9:[I

    .line 144
    new-array v0, v3, [I

    const v1, 0x7f050006

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_COMPACT:[I

    .line 145
    new-array v0, v3, [I

    const v1, 0x7f05000a

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_COMPACT_QWERTZ:[I

    .line 147
    new-array v0, v3, [I

    const v1, 0x7f050007

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_COMPACT_AZERTY:[I

    .line 148
    new-array v0, v3, [I

    const v1, 0x7f050008

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_COMPACT_DVORAK:[I

    .line 149
    new-array v0, v3, [I

    const v1, 0x7f050009

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_COMPACT_QWERTY2:[I

    .line 150
    new-array v0, v3, [I

    const v1, 0x7f05001f

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_QWERTY_UMLAUTE:[I

    .line 152
    new-array v0, v3, [I

    const v1, 0x7f050025

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED:[I

    .line 153
    new-array v0, v3, [I

    const v1, 0x7f050023

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_AZERTY:[I

    .line 154
    new-array v0, v3, [I

    const v1, 0x7f05002a

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_QWERTZ:[I

    .line 155
    new-array v0, v3, [I

    const v1, 0x7f050029

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_QWERTY_SWISS:[I

    .line 156
    new-array v0, v3, [I

    const v1, 0x7f050028

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_QWERTY_UMLAUTE:[I

    .line 159
    new-array v0, v3, [I

    const v1, 0x7f050024

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_DVORAK:[I

    .line 160
    new-array v0, v3, [I

    const v1, 0x7f050026

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_QWERTY2:[I

    .line 162
    new-array v0, v3, [I

    const v1, 0x7f05001e

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_QWERTY_CZ_FULL:[I

    .line 163
    new-array v0, v3, [I

    const v1, 0x7f050022

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_QWERTZ_CZ_FULL:[I

    .line 164
    new-array v0, v3, [I

    const v1, 0x7f050027

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_QWERTY_CZ_FULL:[I

    .line 165
    new-array v0, v3, [I

    const v1, 0x7f05002b

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_QWERTZ_CZ_FULL:[I

    .line 173
    sput v2, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    .line 177
    sput v2, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    .line 180
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->ALPHABET_MODES:[I

    .line 251
    new-instance v0, Lcom/android/inputmethod/latin/Calibration;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/Calibration;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/Calibration;->sInstance:Lcom/android/inputmethod/latin/Calibration;

    .line 44
    return-void

    .line 115
    :array_0
    .array-data 4
        0x7f03000a
        0x7f03000b
        0x7f03000d
        0x7f030013
        0x7f03000c
        0x7f030012
        0x7f03000e
        0x7f030011
        0x7f03000f
    .end array-data

    .line 180
    :array_1
    .array-data 4
        0x7f080027
        0x7f080028
        0x7f080029
        0x7f08002a
        0x7f08002b
        0x7f08002c
        0x7f08002d
        0x7f08002e
        0x7f08002f
        0x7f080030
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboards:Ljava/util/HashMap;

    .line 205
    iput v1, p0, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    .line 227
    iput v1, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    .line 259
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/Calibration;)Lcom/android/inputmethod/latin/DictionaryEditor;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/Calibration;)Lcom/android/inputmethod/latin/LatinKeyboardView;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    return-object v0
.end method

.method private changeLatinKeyboardView(IZ)V
    .locals 9
    .param p1, "newLayout"    # I
    .param p2, "forceReset"    # Z

    .prologue
    const/high16 v8, -0x1000000

    .line 873
    iget v5, p0, Lcom/android/inputmethod/latin/Calibration;->mLayoutId:I

    if-ne v5, p1, :cond_0

    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v5, :cond_0

    if-eqz p2, :cond_b

    .line 874
    :cond_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v5, :cond_1

    .line 875
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinKeyboardView;->closing()V

    .line 878
    :cond_1
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 879
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/Calibration;->LoadKeyboardLayout(Landroid/content/SharedPreferences;)V

    .line 880
    sget-object v5, Lcom/android/inputmethod/latin/Calibration;->THEMES:[I

    array-length v5, v5

    if-le v5, p1, :cond_2

    sget-boolean v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    if-eqz v5, :cond_3

    .line 881
    :cond_2
    const-string v5, "8"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 883
    :cond_3
    sget-boolean v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomBackgrounColors:Z

    if-nez v5, :cond_4

    sget-object v5, Lcom/android/inputmethod/latin/Calibration;->THEMES:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_4

    .line 885
    sput v8, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintColor:I

    .line 888
    :cond_4
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->reset()V

    .line 889
    const/4 v4, 0x1

    .line 890
    .local v4, "tryGC":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v2, v5, :cond_5

    if-nez v4, :cond_c

    .line 904
    :cond_5
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Calibration;->getCustomBackdroundImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 905
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    .line 907
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v5, v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 908
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 910
    :cond_6
    sget-boolean v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    if-eqz v5, :cond_8

    .line 912
    if-nez v0, :cond_7

    sget-object v5, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v5, v5, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->keyboard_background:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    .line 914
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    sget-object v6, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v6, v6, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->keyboard_background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 916
    :cond_7
    sget-object v5, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v5, v5, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->btn_keyboard_key:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    .line 918
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    sget-object v6, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v6, v6, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->btn_keyboard_key:Landroid/graphics/drawable/Drawable;

    iput-object v6, v5, Lcom/android/inputmethod/latin/LatinKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 923
    :cond_8
    if-nez v0, :cond_9

    .line 925
    sget-boolean v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomBackgrounColors:Z

    if-eqz v5, :cond_d

    .line 927
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 928
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->getKeyboardBackgroundColor()I

    move-result v6

    .line 929
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 927
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 946
    :cond_9
    :goto_1
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v5, v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_a

    .line 948
    sget-boolean v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomSuggestionColors:Z

    if-nez v5, :cond_f

    sget-boolean v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    if-eqz v5, :cond_f

    sget-object v5, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v5, v5, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->candidate_background:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_f

    .line 950
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v5, v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    sget-object v6, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v6, v6, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->candidate_background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 951
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v5, v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 961
    :goto_2
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v5, v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 964
    :cond_a
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    iget-object v6, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setOnKeyboardActionListener(Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 965
    iput p1, p0, Lcom/android/inputmethod/latin/Calibration;->mLayoutId:I

    .line 968
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i":I
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "tryGC":Z
    :cond_b
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v5, v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/inputmethod/latin/Calibration$1;

    invoke-direct {v6, p0}, Lcom/android/inputmethod/latin/Calibration$1;-><init>(Lcom/android/inputmethod/latin/Calibration;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 978
    return-void

    .line 892
    .restart local v2    # "i":I
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "tryGC":Z
    :cond_c
    :try_start_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 893
    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget-object v6, Lcom/android/inputmethod/latin/Calibration;->THEMES:[I

    aget v6, v6, p1

    .line 894
    const/4 v7, 0x0

    .line 893
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/latin/LatinKeyboardView;

    .line 892
    iput-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 895
    const/4 v4, 0x0

    .line 890
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 896
    :catch_0
    move-exception v1

    .line 897
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;

    move-result-object v5

    .line 898
    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/inputmethod/latin/Calibration;->mLayoutId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 897
    invoke-virtual {v5, v6, v1}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v4

    goto :goto_3

    .line 899
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 900
    .local v1, "e":Landroid/view/InflateException;
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;

    move-result-object v5

    .line 901
    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/inputmethod/latin/Calibration;->mLayoutId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 900
    invoke-virtual {v5, v6, v1}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v4

    goto :goto_3

    .line 933
    .end local v1    # "e":Landroid/view/InflateException;
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_d
    sget-boolean v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    if-nez v5, :cond_e

    .line 937
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 943
    :goto_4
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setSymbolColorScheme(I)V

    goto/16 :goto_1

    .line 941
    :cond_e
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_4

    .line 953
    :cond_f
    sget-boolean v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomSuggestionColors:Z

    if-eqz v5, :cond_10

    .line 955
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v5, v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSuggestionBarColor()I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    .line 959
    :cond_10
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v5, v5, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v8, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2
.end method

.method private decodeUri(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "selectedImageString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x8c

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1315
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1316
    .local v8, "selectedImage":Landroid/net/Uri;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1317
    .local v4, "o":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1318
    iget-object v10, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/DictionaryEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1319
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10, v12, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1322
    const/16 v0, 0x8c

    .line 1325
    .local v0, "REQUIRED_SIZE":I
    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v9, "width_tmp":I
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1326
    .local v3, "height_tmp":I
    const/4 v7, 0x1

    .line 1328
    .local v7, "scale":I
    :goto_0
    div-int/lit8 v10, v9, 0x2

    if-lt v10, v13, :cond_0

    .line 1329
    div-int/lit8 v10, v3, 0x2

    if-ge v10, v13, :cond_1

    .line 1337
    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1338
    .local v5, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v11, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1341
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1347
    .local v6, "returnBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v6

    .line 1331
    .end local v5    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "returnBitmap":Landroid/graphics/Bitmap;
    :cond_1
    div-int/lit8 v9, v9, 0x2

    .line 1332
    div-int/lit8 v3, v3, 0x2

    .line 1333
    mul-int/lit8 v7, v7, 0x2

    .line 1327
    goto :goto_0

    .line 1343
    .restart local v5    # "o2":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 1344
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1345
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10, v12, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "returnBitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private getCharColorId()I
    .locals 1

    .prologue
    .line 1003
    const/4 v0, 0x0

    return v0
.end method

.method private getCustomBackdroundImage()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 1294
    const/4 v1, 0x0

    .line 1296
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mUriImage:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/Calibration;->mUseCustomeImage:Z

    if-eqz v4, :cond_0

    .line 1300
    :try_start_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mUriImage:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/Calibration;->decodeUri(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1301
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .line 1307
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v1

    .line 1302
    :catch_0
    move-exception v3

    .line 1304
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/Calibration;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/android/inputmethod/latin/Calibration;->sInstance:Lcom/android/inputmethod/latin/Calibration;

    return-object v0
.end method

.method private getKeyboard(Lcom/android/inputmethod/latin/Calibration$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;
    .locals 9
    .param p1, "id"    # Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    .prologue
    const/4 v6, 0x0

    .line 442
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 443
    .local v3, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/android/inputmethod/latin/LatinKeyboard;>;"
    if-nez v3, :cond_2

    move-object v1, v6

    .line 444
    .local v1, "keyboard":Lcom/android/inputmethod/latin/LatinKeyboard;
    :goto_0
    if-nez v1, :cond_1

    .line 445
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 446
    .local v2, "orig":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 447
    .local v0, "conf":Landroid/content/res/Configuration;
    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 448
    .local v4, "saveLocale":Ljava/util/Locale;
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputLocale:Ljava/util/Locale;

    iput-object v5, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 449
    invoke-virtual {v2, v0, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 450
    new-instance v1, Lcom/android/inputmethod/latin/LatinKeyboard;

    .end local v1    # "keyboard":Lcom/android/inputmethod/latin/LatinKeyboard;
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget v7, p1, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mXml:I

    .line 451
    iget v8, p1, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mKeyboardMode:I

    .line 450
    invoke-direct {v1, v5, v7, v8}, Lcom/android/inputmethod/latin/LatinKeyboard;-><init>(Landroid/content/Context;II)V

    .line 452
    .restart local v1    # "keyboard":Lcom/android/inputmethod/latin/LatinKeyboard;
    iget v5, p1, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mXml:I

    const v7, 0x7f05002d

    if-eq v5, v7, :cond_3

    iget v5, p1, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mXml:I

    const v7, 0x7f05002c

    if-eq v5, v7, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/Calibration;->hasVoiceButton(Z)Z

    move-result v5

    iget-boolean v7, p0, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    invoke-virtual {v1, v5, v7}, Lcom/android/inputmethod/latin/LatinKeyboard;->setVoiceMode(ZZ)V

    .line 453
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 454
    iget-boolean v7, p0, Lcom/android/inputmethod/latin/Calibration;->mIsAutoCompletionActive:Z

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isBlackSym()Z

    move-result v8

    .line 453
    invoke-virtual {v1, v5, v7, v8}, Lcom/android/inputmethod/latin/LatinKeyboard;->setLanguageSwitcher(Lcom/android/inputmethod/latin/LanguageSwitcher;ZZ)V

    .line 456
    iget-boolean v5, p1, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mEnableShiftLock:Z

    if-eqz v5, :cond_0

    .line 457
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->enableShiftLock()V

    .line 459
    :cond_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboards:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iput-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 462
    invoke-virtual {v2, v0, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 464
    .end local v0    # "conf":Landroid/content/res/Configuration;
    .end local v2    # "orig":Landroid/content/res/Resources;
    .end local v4    # "saveLocale":Ljava/util/Locale;
    :cond_1
    return-object v1

    .line 443
    .end local v1    # "keyboard":Lcom/android/inputmethod/latin/LatinKeyboard;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/latin/LatinKeyboard;

    move-object v1, v5

    goto :goto_0

    .line 452
    .restart local v0    # "conf":Landroid/content/res/Configuration;
    .restart local v1    # "keyboard":Lcom/android/inputmethod/latin/LatinKeyboard;
    .restart local v2    # "orig":Landroid/content/res/Resources;
    .restart local v4    # "saveLocale":Ljava/util/Locale;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private getKeyboardId(IIZZ)Lcom/android/inputmethod/latin/Calibration$KeyboardId;
    .locals 8
    .param p1, "mode"    # I
    .param p2, "imeOptions"    # I
    .param p3, "isSymbols"    # Z
    .param p4, "isNumbers"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 468
    invoke-direct {p0, p3}, Lcom/android/inputmethod/latin/Calibration;->hasVoiceButton(Z)Z

    move-result v1

    .line 469
    .local v1, "hasVoice":Z
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Calibration;->getCharColorId()I

    move-result v0

    .line 470
    .local v0, "charColorId":I
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KBD_QWERTY:[I

    aget v2, v3, v0

    .line 471
    .local v2, "keyboardRowsResId":I
    sput-boolean v7, Lcom/android/inputmethod/latin/Calibration;->mSmallLabelText:Z

    .line 472
    sput-boolean v7, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    .line 473
    sput-boolean v7, Lcom/android/inputmethod/latin/Calibration;->isFourRowLayout:Z

    .line 475
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 477
    sput-boolean v5, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    .line 478
    sput-boolean v5, Lcom/android/inputmethod/latin/Calibration;->mSmallLabelText:Z

    .line 481
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboardLayout:Ljava/lang/String;

    const-string v4, "qwerty"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 483
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KBD_QWERTY:[I

    aget v2, v3, v0

    .line 484
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mInputLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mInputLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "he"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mHebrewAlt:Z

    if-eqz v3, :cond_2

    .line 486
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KBD_QWERTY_ALT:[I

    aget v2, v3, v0

    .line 488
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mInputLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mCzechFull:Z

    if-eqz v3, :cond_4

    .line 490
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_3

    sput-boolean v5, Lcom/android/inputmethod/latin/Calibration;->isFourRowLayout:Z

    .line 491
    :cond_3
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_QWERTY_CZ_FULL:[I

    aget v2, v3, v0

    .line 494
    :cond_4
    sget-boolean v3, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    if-eqz v3, :cond_7

    .line 496
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_COMPACT:[I

    aget v2, v3, v0

    .line 611
    :cond_5
    :goto_0
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-ne v3, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 613
    sput-boolean v5, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    .line 614
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_T9:[I

    aget v2, v3, v0

    .line 615
    sput-boolean v5, Lcom/android/inputmethod/latin/Calibration;->mSmallLabelText:Z

    .line 619
    :cond_6
    if-eqz p3, :cond_28

    .line 620
    if-ne p1, v6, :cond_27

    .line 621
    new-instance v3, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    sget-object v4, Lcom/android/inputmethod/latin/Calibration;->KBD_PHONE_SYMBOLS:[I

    aget v4, v4, v0

    invoke-direct {v3, v4, v1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;-><init>(IZ)V

    .line 668
    :goto_1
    return-object v3

    .line 498
    :cond_7
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    if-ne v3, v5, :cond_8

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 499
    :cond_8
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-ne v3, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 501
    :cond_9
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED:[I

    aget v2, v3, v0

    .line 502
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mInputLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mCzechFull:Z

    if-eqz v3, :cond_5

    .line 504
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_QWERTY_CZ_FULL:[I

    aget v2, v3, v0

    goto :goto_0

    .line 510
    :cond_a
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboardLayout:Ljava/lang/String;

    const-string v4, "qwertz"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 512
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KBD_QWERTZ:[I

    aget v2, v3, v0

    .line 513
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mInputLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mCzechFull:Z

    if-eqz v3, :cond_b

    .line 515
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_QWERTZ_CZ_FULL:[I

    aget v2, v3, v0

    .line 516
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_b

    sput-boolean v5, Lcom/android/inputmethod/latin/Calibration;->isFourRowLayout:Z

    .line 519
    :cond_b
    sget-boolean v3, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    if-eqz v3, :cond_c

    .line 521
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_COMPACT_QWERTZ:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 523
    :cond_c
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    if-ne v3, v5, :cond_d

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 524
    :cond_d
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-ne v3, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 525
    :cond_e
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_QWERTZ:[I

    aget v2, v3, v0

    .line 526
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mInputLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mCzechFull:Z

    if-eqz v3, :cond_5

    .line 528
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_QWERTZ_CZ_FULL:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 533
    :cond_f
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboardLayout:Ljava/lang/String;

    const-string v4, "colemax"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 535
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KBD_COLEMAX:[I

    aget v2, v3, v0

    .line 536
    sget-boolean v3, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    if-eqz v3, :cond_10

    .line 538
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_COMPACT:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 540
    :cond_10
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    if-ne v3, v5, :cond_11

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 541
    :cond_11
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-ne v3, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 542
    :cond_12
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KBD_COLEMAX:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 545
    :cond_13
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboardLayout:Ljava/lang/String;

    const-string v4, "qwerty2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 547
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KBD_QWERTY2:[I

    aget v2, v3, v0

    .line 548
    sget-boolean v3, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    if-eqz v3, :cond_14

    .line 550
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_COMPACT_QWERTY2:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 552
    :cond_14
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    if-ne v3, v5, :cond_15

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 553
    :cond_15
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-ne v3, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 554
    :cond_16
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_QWERTY2:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 558
    :cond_17
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboardLayout:Ljava/lang/String;

    const-string v4, "swiss"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 560
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KBD_QWERTY_SWISS:[I

    aget v2, v3, v0

    .line 561
    sget-boolean v3, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    if-eqz v3, :cond_18

    .line 563
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_COMPACT:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 565
    :cond_18
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    if-ne v3, v5, :cond_19

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 566
    :cond_19
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-ne v3, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 567
    :cond_1a
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_QWERTY_SWISS:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 571
    :cond_1b
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboardLayout:Ljava/lang/String;

    const-string v4, "umlaute"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 573
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_QWERTY_UMLAUTE:[I

    aget v2, v3, v0

    .line 574
    sget-boolean v3, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    if-eqz v3, :cond_1c

    .line 576
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_COMPACT:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 578
    :cond_1c
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    if-ne v3, v5, :cond_1d

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 579
    :cond_1d
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-ne v3, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 580
    :cond_1e
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_QWERTY_UMLAUTE:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 584
    :cond_1f
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboardLayout:Ljava/lang/String;

    const-string v4, "azerty"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 586
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KBD_AZERTY:[I

    aget v2, v3, v0

    .line 587
    sget-boolean v3, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    if-eqz v3, :cond_20

    .line 589
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_COMPACT_AZERTY:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 591
    :cond_20
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    if-ne v3, v5, :cond_21

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 592
    :cond_21
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-ne v3, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 594
    :cond_22
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_AZERTY:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 597
    :cond_23
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboardLayout:Ljava/lang/String;

    const-string v4, "dvorak"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 599
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KBD_DVORAK:[I

    aget v2, v3, v0

    .line 600
    sget-boolean v3, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    if-eqz v3, :cond_24

    .line 602
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_COMPACT_DVORAK:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 604
    :cond_24
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    if-ne v3, v5, :cond_25

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 605
    :cond_25
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-ne v3, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 608
    :cond_26
    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KED_SPLITTED_DVORAK:[I

    aget v2, v3, v0

    goto/16 :goto_0

    .line 623
    :cond_27
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Calibration;->makeSymbolsId(Z)Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    move-result-object v3

    goto/16 :goto_1

    .line 630
    :cond_28
    if-eqz p4, :cond_2b

    .line 631
    if-ne p1, v6, :cond_29

    .line 632
    new-instance v3, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    sget-object v4, Lcom/android/inputmethod/latin/Calibration;->KBD_PHONE_SYMBOLS:[I

    aget v4, v4, v0

    invoke-direct {v3, v4, v1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;-><init>(IZ)V

    goto/16 :goto_1

    .line 634
    :cond_29
    new-instance v4, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KBD_NUMBERS:[I

    aget v5, v3, v0

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mHasSettingsKey:Z

    if-eqz v3, :cond_2a

    .line 635
    const v3, 0x7f080033

    .line 634
    :goto_2
    invoke-direct {v4, v5, v3, v7, v1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;-><init>(IIZZ)V

    move-object v3, v4

    goto/16 :goto_1

    .line 635
    :cond_2a
    const v3, 0x7f080032

    goto :goto_2

    .line 639
    :cond_2b
    packed-switch p1, :pswitch_data_0

    .line 668
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 642
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getKeyboardId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 641
    invoke-static {v3}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnWarning(Ljava/lang/String;)V

    .line 645
    :pswitch_1
    new-instance v4, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mHasSettingsKey:Z

    if-eqz v3, :cond_2c

    .line 646
    const v3, 0x7f08002c

    .line 645
    :goto_3
    invoke-direct {v4, v2, v3, v5, v1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;-><init>(IIZZ)V

    move-object v3, v4

    goto/16 :goto_1

    .line 646
    :cond_2c
    const v3, 0x7f080027

    goto :goto_3

    .line 652
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Calibration;->makeSymbolsId(Z)Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    move-result-object v3

    goto/16 :goto_1

    .line 654
    :pswitch_3
    new-instance v3, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    sget-object v4, Lcom/android/inputmethod/latin/Calibration;->KBD_PHONE:[I

    aget v4, v4, v0

    invoke-direct {v3, v4, v1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;-><init>(IZ)V

    goto/16 :goto_1

    .line 656
    :pswitch_4
    new-instance v4, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mHasSettingsKey:Z

    if-eqz v3, :cond_2d

    .line 657
    const v3, 0x7f08002d

    .line 656
    :goto_4
    invoke-direct {v4, v2, v3, v5, v1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;-><init>(IIZZ)V

    move-object v3, v4

    goto/16 :goto_1

    .line 657
    :cond_2d
    const v3, 0x7f080028

    goto :goto_4

    .line 659
    :pswitch_5
    new-instance v4, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mHasSettingsKey:Z

    if-eqz v3, :cond_2e

    .line 660
    const v3, 0x7f08002e

    .line 659
    :goto_5
    invoke-direct {v4, v2, v3, v5, v1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;-><init>(IIZZ)V

    move-object v3, v4

    goto/16 :goto_1

    .line 660
    :cond_2e
    const v3, 0x7f080029

    goto :goto_5

    .line 662
    :pswitch_6
    new-instance v4, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mHasSettingsKey:Z

    if-eqz v3, :cond_2f

    .line 663
    const v3, 0x7f08002f

    .line 662
    :goto_6
    invoke-direct {v4, v2, v3, v5, v1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;-><init>(IIZZ)V

    move-object v3, v4

    goto/16 :goto_1

    .line 663
    :cond_2f
    const v3, 0x7f08002a

    goto :goto_6

    .line 665
    :pswitch_7
    new-instance v4, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mHasSettingsKey:Z

    if-eqz v3, :cond_30

    .line 666
    const v3, 0x7f080030

    .line 665
    :goto_7
    invoke-direct {v4, v2, v3, v5, v1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;-><init>(IIZZ)V

    move-object v3, v4

    goto/16 :goto_1

    .line 666
    :cond_30
    const v3, 0x7f08002b

    goto :goto_7

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getPointerCount()I
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getPointerCount()I

    move-result v0

    goto :goto_0
.end method

.method private hasVoiceButton(Z)Z
    .locals 1
    .param p1, "isSymbols"    # Z

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mVoiceOnPrimary:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 5
    .param p0, "ims"    # Lcom/android/inputmethod/latin/DictionaryEditor;

    .prologue
    const/4 v4, 0x0

    .line 262
    sget-object v1, Lcom/android/inputmethod/latin/Calibration;->sInstance:Lcom/android/inputmethod/latin/Calibration;

    iput-object p0, v1, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 265
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 266
    .local v0, "prefs":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/inputmethod/latin/Calibration;->sInstance:Lcom/android/inputmethod/latin/Calibration;

    .line 267
    const-string v2, "pref_keyboard_layout_20100902"

    const-string v3, "8"

    .line 266
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/android/inputmethod/latin/Calibration;->mLayoutId:I

    .line 268
    sget-object v1, Lcom/android/inputmethod/latin/Calibration;->sInstance:Lcom/android/inputmethod/latin/Calibration;

    invoke-direct {v1, v0}, Lcom/android/inputmethod/latin/Calibration;->updateSettingsKeyState(Landroid/content/SharedPreferences;)V

    .line 269
    sget-object v1, Lcom/android/inputmethod/latin/Calibration;->sInstance:Lcom/android/inputmethod/latin/Calibration;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 271
    sget-object v1, Lcom/android/inputmethod/latin/Calibration;->sInstance:Lcom/android/inputmethod/latin/Calibration;

    sget-object v2, Lcom/android/inputmethod/latin/Calibration;->sInstance:Lcom/android/inputmethod/latin/Calibration;

    invoke-direct {v2, v4}, Lcom/android/inputmethod/latin/Calibration;->makeSymbolsId(Z)Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/latin/Calibration;->mSymbolsId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    .line 272
    sget-object v1, Lcom/android/inputmethod/latin/Calibration;->sInstance:Lcom/android/inputmethod/latin/Calibration;

    sget-object v2, Lcom/android/inputmethod/latin/Calibration;->sInstance:Lcom/android/inputmethod/latin/Calibration;

    invoke-direct {v2, v4}, Lcom/android/inputmethod/latin/Calibration;->makeSymbolsShiftedId(Z)Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/latin/Calibration;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    .line 273
    return-void
.end method

.method public static isT9orCompatMode()Z
    .locals 1

    .prologue
    .line 1150
    sget-boolean v0, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeSymbolsId(Z)Lcom/android/inputmethod/latin/Calibration$KeyboardId;
    .locals 6
    .param p1, "hasVoice"    # Z

    .prologue
    const v0, 0x7f080033

    const v1, 0x7f080032

    const/4 v5, 0x0

    .line 289
    sget v2, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    sget v2, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isPortraitMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    :cond_1
    new-instance v2, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KBD_SPLITTED_SYMBOLS:[I

    invoke-direct {p0}, Lcom/android/inputmethod/latin/Calibration;->getCharColorId()I

    move-result v4

    aget v3, v3, v4

    .line 293
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/Calibration;->mHasSettingsKey:Z

    if-eqz v4, :cond_2

    .line 292
    :goto_0
    invoke-direct {v2, v3, v0, v5, p1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;-><init>(IIZZ)V

    move-object v0, v2

    .line 299
    :goto_1
    return-object v0

    :cond_2
    move v0, v1

    .line 294
    goto :goto_0

    .line 299
    :cond_3
    new-instance v2, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    sget-object v3, Lcom/android/inputmethod/latin/Calibration;->KBD_SYMBOLS:[I

    invoke-direct {p0}, Lcom/android/inputmethod/latin/Calibration;->getCharColorId()I

    move-result v4

    aget v3, v3, v4

    .line 300
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/Calibration;->mHasSettingsKey:Z

    if-eqz v4, :cond_4

    .line 299
    :goto_2
    invoke-direct {v2, v3, v0, v5, p1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;-><init>(IIZZ)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 301
    goto :goto_2
.end method

.method private makeSymbolsShiftedId(Z)Lcom/android/inputmethod/latin/Calibration$KeyboardId;
    .locals 4
    .param p1, "hasVoice"    # Z

    .prologue
    .line 307
    new-instance v1, Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    sget-object v0, Lcom/android/inputmethod/latin/Calibration;->KBD_SYMBOLS_SHIFT:[I

    invoke-direct {p0}, Lcom/android/inputmethod/latin/Calibration;->getCharColorId()I

    move-result v2

    aget v2, v0, v2

    .line 308
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mHasSettingsKey:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080033

    .line 309
    :goto_0
    const/4 v3, 0x0

    .line 307
    invoke-direct {v1, v2, v0, v3, p1}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;-><init>(IIZZ)V

    return-object v1

    .line 309
    :cond_0
    const v0, 0x7f080032

    goto :goto_0
.end method

.method private setKeyboardMode(IIZZZ)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "imeOptions"    # I
    .param p3, "enableVoice"    # Z
    .param p4, "isSymbols"    # Z
    .param p5, "isNumbers"    # Z

    .prologue
    .line 409
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-nez v2, :cond_0

    .line 439
    :goto_0
    return-void

    .line 411
    :cond_0
    iput p1, p0, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    .line 412
    iput p2, p0, Lcom/android/inputmethod/latin/Calibration;->mImeOptions:I

    .line 413
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    if-eq p3, v2, :cond_1

    .line 415
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/Calibration;->mVoiceOnPrimary:Z

    invoke-virtual {p0, p3, v2}, Lcom/android/inputmethod/latin/Calibration;->setVoiceMode(ZZ)V

    .line 417
    :cond_1
    iput-boolean p4, p0, Lcom/android/inputmethod/latin/Calibration;->mIsSymbols:Z

    .line 418
    iput-boolean p5, p0, Lcom/android/inputmethod/latin/Calibration;->mIsNumbers:Z

    .line 420
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getPopupOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setPreviewEnabled(Z)V

    .line 421
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/inputmethod/latin/Calibration;->getKeyboardId(IIZZ)Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    move-result-object v0

    .line 422
    .local v0, "id":Lcom/android/inputmethod/latin/Calibration$KeyboardId;
    const/4 v1, 0x0

    .line 423
    .local v1, "keyboard":Lcom/android/inputmethod/latin/LatinKeyboard;
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/Calibration;->getKeyboard(Lcom/android/inputmethod/latin/Calibration$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v1

    .line 424
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 425
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setPhoneKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 428
    :cond_2
    iput-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mCurrentId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    .line 429
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 430
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShifted(Z)Z

    .line 431
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->isShiftLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShiftLocked(Z)V

    .line 432
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    .line 434
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/Calibration;->mIsAutoCompletionActive:Z

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isBlackSym()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboard;->setColorOfSymbolIcons(ZZ)V

    .line 438
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 437
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/Calibration;->updateSettingsKeyState(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private updateSettingsKeyState(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 1023
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1025
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v2, "settings_key"

    .line 1026
    const v3, 0x7f0d003d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1024
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "settingsKeyMode":Ljava/lang/String;
    const v2, 0x7f0d003c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1030
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1033
    const v2, 0x7f0d003b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1032
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1034
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-static {v2}, Lcom/android/inputmethod/latin/DictionaryEditorUtil;->hasMultipleEnabledIMEs(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1035
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/Calibration;->mHasSettingsKey:Z

    .line 1039
    :goto_0
    return-void

    .line 1037
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/Calibration;->mHasSettingsKey:Z

    goto :goto_0
.end method


# virtual methods
.method public LoadKeyboardLayout(Landroid/content/SharedPreferences;)V
    .locals 11
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    const v10, 0x7f0d00d4

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/16 v6, 0x64

    .line 1042
    const-string v4, "background_image_uri"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mUriImage:Ljava/lang/String;

    .line 1043
    const-string v4, "use_custom_image"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/inputmethod/latin/Calibration;->mUseCustomeImage:Z

    .line 1046
    const-string v4, "row_gap_horizontal"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mRowGapHorizontal:I

    .line 1047
    const-string v4, "row_gap_vertical"

    const/16 v5, 0x96

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mRowGapVertical:I

    .line 1048
    const-string v4, "key_hight_horizontal"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyHightHorizontal:I

    .line 1049
    const-string v4, "key_hight_vertical"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyHightVertical:I

    .line 1050
    const-string v4, "arrows_keys_hight_horizontal"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mArrowsKeyHightHorizontal:I

    .line 1051
    const-string v4, "arrows_keys_hight_vertical"

    const/16 v5, 0x5a

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mArrowsKeyHightVertical:I

    .line 1053
    const-string v4, "text_size_horizontal"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mTextSizeHorizontal:I

    .line 1054
    const-string v4, "text_size_vertical"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mTextSizeVertical:I

    .line 1055
    const-string v4, "bottom_padding_horizontal"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mBottomPaddingHorizontal:I

    .line 1057
    const-string v4, "bottom_padding_vertical"

    const/16 v5, 0x14

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mBottomPaddingVertical:I

    .line 1058
    const-string v4, "hebrew_alt_layout"

    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/inputmethod/latin/Calibration;->mHebrewAlt:Z

    .line 1059
    const-string v4, "czech_full_layout"

    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/inputmethod/latin/Calibration;->mCzechFull:Z

    .line 1061
    const-string v4, "enable_number_keypad"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/inputmethod/latin/Calibration;->mEnableNumberKeypad:Z

    .line 1063
    const-string v4, "dispaly_alt_labels"

    invoke-interface {p1, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/inputmethod/latin/Calibration;->mDisplayAltLables:Z

    .line 1065
    const-string v4, "pref_landscape_layout"

    .line 1066
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0169

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1065
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1067
    .local v1, "landscape_layout":Ljava/lang/String;
    sput v7, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    .line 1068
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d016a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1070
    sput v9, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    .line 1072
    :cond_0
    const-string v4, "pref_portrait_layout"

    .line 1073
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0163

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1072
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1074
    .local v2, "layout":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0163

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1076
    sput v7, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    .line 1077
    sput-boolean v7, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    .line 1093
    :cond_1
    :goto_0
    sput v8, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintColor:I

    .line 1094
    const-string v4, "background_custom_key"

    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1095
    .local v3, "mUseCustomBackgrounColors":Z
    if-eqz v3, :cond_2

    .line 1097
    const-string v4, "keyboard_hint_font_color_color"

    .line 1098
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1097
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, "fontHintColor":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1102
    sput v8, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintColor:I

    .line 1108
    .end local v0    # "fontHintColor":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {v7}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setSymbolColorScheme(I)V

    .line 1109
    sput v8, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    .line 1110
    if-eqz v3, :cond_3

    .line 1112
    const-string v4, "keyboard_font_symbol_color_new"

    invoke-interface {p1, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    .line 1113
    sget v4, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    if-eq v4, v8, :cond_3

    .line 1114
    invoke-static {v9}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setSymbolColorScheme(I)V

    .line 1116
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->updateKeyboardConfiguration()V

    .line 1118
    return-void

    .line 1080
    .end local v3    # "mUseCustomBackgrounColors":Z
    :cond_4
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0164

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1082
    sput v9, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    goto :goto_0

    .line 1084
    :cond_5
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0165

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1086
    const/4 v4, 0x2

    sput v4, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    goto :goto_0

    .line 1088
    :cond_6
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0166

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1090
    const/4 v4, 0x3

    sput v4, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    goto/16 :goto_0

    .line 1103
    .restart local v0    # "fontHintColor":Ljava/lang/String;
    .restart local v3    # "mUseCustomBackgrounColors":Z
    :cond_7
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1104
    const v5, 0x7f0d00d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1103
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1105
    const/high16 v4, -0x1000000

    sput v4, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintColor:I

    goto :goto_1
.end method

.method public LoadKeyboardLayoutChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 12
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const v11, 0x7f0d00d4

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x64

    .line 1154
    const/4 v0, 0x0

    .line 1156
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->updateKeyboardConfiguration()V

    .line 1157
    const-string v4, "pref_portrait_layout"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1159
    const-string v4, "pref_portrait_layout"

    .line 1160
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0163

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1159
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1161
    .local v3, "layout":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0163

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1163
    sput v8, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    .line 1164
    sput-boolean v8, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    .line 1178
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 1180
    .end local v3    # "layout":Ljava/lang/String;
    :cond_1
    const-string v4, "background_image_uri"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1182
    const-string v4, "background_image_uri"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mUriImage:Ljava/lang/String;

    .line 1183
    const/4 v0, 0x1

    .line 1186
    :cond_2
    const-string v4, "use_custom_image"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1188
    const-string v4, "use_custom_image"

    invoke-interface {p1, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/inputmethod/latin/Calibration;->mUseCustomeImage:Z

    .line 1189
    const/4 v0, 0x1

    .line 1191
    :cond_3
    const-string v4, "pref_landscape_layout"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1193
    const-string v4, "pref_landscape_layout"

    .line 1194
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0169

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1193
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1195
    .local v2, "landscape_layout":Ljava/lang/String;
    sput v8, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    .line 1196
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d016a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1198
    sput v9, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    .line 1200
    :cond_4
    const/4 v0, 0x1

    .line 1202
    .end local v2    # "landscape_layout":Ljava/lang/String;
    :cond_5
    const-string v4, "keyboard_hint_font_color_color"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1203
    const-string v4, "keyboard_hint_font_color_color"

    .line 1204
    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1203
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1206
    .local v1, "fontHintColor":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1207
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1206
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1208
    sput v10, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintColor:I

    .line 1213
    :cond_6
    :goto_1
    const/4 v0, 0x1

    .line 1217
    .end local v1    # "fontHintColor":Ljava/lang/String;
    :cond_7
    const-string v4, "keyboard_font_symbol_color_new"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1219
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setSymbolColorScheme(I)V

    .line 1220
    const-string v4, "keyboard_font_symbol_color_new"

    invoke-interface {p1, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    .line 1221
    sget v4, Lcom/android/inputmethod/latin/Calibration;->mFontSymbolColors:I

    if-eq v4, v10, :cond_8

    .line 1222
    invoke-static {v9}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setSymbolColorScheme(I)V

    .line 1225
    :cond_8
    const-string v4, "arrows_keys_hight_horizontal"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1226
    const/4 v0, 0x1

    .line 1227
    const-string v4, "arrows_keys_hight_horizontal"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mArrowsKeyHightHorizontal:I

    .line 1229
    :cond_9
    const-string v4, "arrows_keys_hight_vertical"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1230
    const/4 v0, 0x1

    .line 1231
    const-string v4, "arrows_keys_hight_vertical"

    const/16 v5, 0x5a

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mArrowsKeyHightVertical:I

    .line 1233
    :cond_a
    const-string v4, "row_gap_horizontal"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1234
    const/4 v0, 0x1

    .line 1235
    const-string v4, "row_gap_horizontal"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mRowGapHorizontal:I

    .line 1240
    :cond_b
    :goto_2
    const-string v4, "key_hight_horizontal"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1241
    const/4 v0, 0x1

    .line 1242
    const-string v4, "key_hight_horizontal"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyHightHorizontal:I

    .line 1244
    :cond_c
    const-string v4, "key_hight_vertical"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1245
    const/4 v0, 0x1

    .line 1246
    const-string v4, "key_hight_vertical"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyHightVertical:I

    .line 1248
    :cond_d
    const-string v4, "text_size_horizontal"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1249
    const/4 v0, 0x1

    .line 1250
    const-string v4, "text_size_horizontal"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mTextSizeHorizontal:I

    .line 1252
    :cond_e
    const-string v4, "text_size_vertical"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1253
    const/4 v0, 0x1

    .line 1254
    const-string v4, "text_size_vertical"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mTextSizeVertical:I

    .line 1257
    :cond_f
    const-string v4, "bottom_padding_horizontal"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1258
    const/4 v0, 0x1

    .line 1260
    const-string v4, "bottom_padding_horizontal"

    .line 1259
    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mBottomPaddingHorizontal:I

    .line 1262
    :cond_10
    const-string v4, "bottom_padding_vertical"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1263
    const/4 v0, 0x1

    .line 1264
    const-string v4, "bottom_padding_vertical"

    .line 1265
    const/16 v5, 0x14

    .line 1264
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mBottomPaddingVertical:I

    .line 1267
    :cond_11
    const-string v4, "hebrew_alt_layout"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1269
    const-string v4, "hebrew_alt_layout"

    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/inputmethod/latin/Calibration;->mHebrewAlt:Z

    .line 1271
    :cond_12
    const-string v4, "czech_full_layout"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1273
    const-string v4, "czech_full_layout"

    iget-object v5, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/inputmethod/latin/Calibration;->mCzechFull:Z

    .line 1275
    :cond_13
    const-string v4, "enable_number_keypad"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1277
    const-string v4, "enable_number_keypad"

    invoke-interface {p1, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/inputmethod/latin/Calibration;->mEnableNumberKeypad:Z

    .line 1279
    :cond_14
    const-string v4, "dispaly_alt_labels"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1281
    const-string v4, "dispaly_alt_labels"

    invoke-interface {p1, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/inputmethod/latin/Calibration;->mDisplayAltLables:Z

    .line 1283
    :cond_15
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->updateKeyboardConfiguration()V

    .line 1284
    return v0

    .line 1166
    .restart local v3    # "layout":Ljava/lang/String;
    :cond_16
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0164

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1168
    sput v9, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    goto/16 :goto_0

    .line 1170
    :cond_17
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0165

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1172
    const/4 v4, 0x2

    sput v4, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    goto/16 :goto_0

    .line 1174
    :cond_18
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0166

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1176
    const/4 v4, 0x3

    sput v4, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    goto/16 :goto_0

    .line 1209
    .end local v3    # "layout":Ljava/lang/String;
    .restart local v1    # "fontHintColor":Ljava/lang/String;
    :cond_19
    iget-object v4, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1210
    const v5, 0x7f0d00d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1209
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1211
    const/high16 v4, -0x1000000

    sput v4, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintColor:I

    goto/16 :goto_1

    .line 1236
    .end local v1    # "fontHintColor":Ljava/lang/String;
    :cond_1a
    const-string v4, "row_gap_vertical"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1237
    const/4 v0, 0x1

    .line 1238
    const-string v4, "row_gap_vertical"

    const/16 v5, 0x96

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mRowGapVertical:I

    goto/16 :goto_2
.end method

.method public getCurrentKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 1

    .prologue
    .line 1289
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    return-object v0
.end method

.method public getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    return-object v0
.end method

.method public getKeyboard()Lcom/android/inputmethod/latin/LatinKeyboard;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mCurrentId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/Calibration;->getKeyboard(Lcom/android/inputmethod/latin/Calibration$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardMode()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    return v0
.end method

.method public getKeyboardmImeOptions()I
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/android/inputmethod/latin/Calibration;->mImeOptions:I

    return v0
.end method

.method public hasDistinctMultitouch()Z
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->hasDistinctMultitouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlphabetMode()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 680
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mCurrentId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    if-nez v3, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v2

    .line 683
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mCurrentId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    iget v0, v3, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->mKeyboardMode:I

    .line 684
    .local v0, "currentMode":I
    sget-object v4, Lcom/android/inputmethod/latin/Calibration;->ALPHABET_MODES:[I

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 685
    .local v1, "mode":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v0, v6, :cond_2

    .line 686
    const/4 v2, 0x1

    goto :goto_0

    .line 684
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public isBlackSym()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 994
    iget-object v1, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getSymbolColorScheme()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 997
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInChordingAutoModeSwitchState()Z
    .locals 2

    .prologue
    .line 793
    iget v0, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMomentaryAutoModeSwitchState()Z
    .locals 2

    .prologue
    .line 789
    iget v0, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortraitMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1144
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1145
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1146
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVibrateAndSoundFeedbackRequired()Z
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isInSlidingKeyInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeKeyboards(ZLjava/lang/String;)V
    .locals 4
    .param p1, "forceCreate"    # Z
    .param p2, "layout"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 313
    iput-object p2, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboardLayout:Ljava/lang/String;

    .line 314
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/Calibration;->mVoiceOnPrimary:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Calibration;->makeSymbolsId(Z)Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/Calibration;->mSymbolsId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    .line 315
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/Calibration;->mVoiceOnPrimary:Z

    if-nez v1, :cond_3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/Calibration;->makeSymbolsShiftedId(Z)Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/Calibration;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    .line 317
    if-eqz p1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->getMaxWidth()I

    move-result v0

    .line 325
    .local v0, "displayWidth":I
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mLastDisplayWidth:I

    if-ne v0, v1, :cond_4

    .line 330
    :cond_1
    :goto_2
    return-void

    .end local v0    # "displayWidth":I
    :cond_2
    move v1, v3

    .line 314
    goto :goto_0

    :cond_3
    move v2, v3

    .line 315
    goto :goto_1

    .line 327
    .restart local v0    # "displayWidth":I
    :cond_4
    iput v0, p0, Lcom/android/inputmethod/latin/Calibration;->mLastDisplayWidth:I

    .line 328
    if-nez p1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_2
.end method

.method public onAutoCompletionStateChanged(Z)V
    .locals 2
    .param p1, "isAutoCompletion"    # Z

    .prologue
    .line 1013
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/Calibration;->mIsAutoCompletionActive:Z

    if-eq p1, v1, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    .line 1015
    .local v0, "keyboardView":Lcom/android/inputmethod/latin/LatinKeyboardView;
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/Calibration;->mIsAutoCompletionActive:Z

    .line 1017
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard;

    .line 1018
    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->onAutoCompletionStateChanged(Z)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v1

    .line 1016
    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->invalidateKey(Landroid/inputmethodservice/Keyboard$Key;)V

    .line 1020
    .end local v0    # "keyboardView":Lcom/android/inputmethod/latin/LatinKeyboardView;
    :cond_0
    return-void
.end method

.method public onCancelInput()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 741
    iget v0, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 742
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Calibration;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->changeKeyboardMode(Z)V

    .line 744
    :cond_0
    return-void
.end method

.method public onKey(I)V
    .locals 4
    .param p1, "key"    # I

    .prologue
    const/16 v3, 0x20

    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 812
    iget v0, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    packed-switch v0, :pswitch_data_0

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 823
    :pswitch_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    .line 826
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mIsSymbols:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mIsNumbers:Z

    if-eqz v0, :cond_2

    .line 827
    :cond_1
    iput v1, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    goto :goto_0

    .line 829
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    goto :goto_0

    .line 831
    :cond_3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Calibration;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 838
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->changeKeyboardMode(Z)V

    goto :goto_0

    .line 844
    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    goto :goto_0

    .line 848
    :pswitch_1
    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    .line 849
    if-ltz p1, :cond_0

    .line 850
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    goto :goto_0

    .line 857
    :pswitch_2
    if-eq p1, v2, :cond_5

    if-ne p1, v3, :cond_0

    .line 858
    :cond_5
    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoBackToAlpha:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->changeKeyboardMode(Z)V

    goto :goto_0

    .line 812
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 983
    const-string v0, "pref_keyboard_layout_20100902"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    const-string v0, "8"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 984
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 985
    const/4 v1, 0x0

    .line 984
    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/Calibration;->changeLatinKeyboardView(IZ)V

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    const-string v0, "settings_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/Calibration;->updateSettingsKeyState(Landroid/content/SharedPreferences;)V

    .line 988
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->recreateInputView()V

    goto :goto_0
.end method

.method public recreateInputView()V
    .locals 2

    .prologue
    .line 869
    iget v0, p0, Lcom/android/inputmethod/latin/Calibration;->mLayoutId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/Calibration;->changeLatinKeyboardView(IZ)V

    .line 870
    return-void
.end method

.method public setAutoModeSwitchStateMomentary()V
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    .line 786
    return-void
.end method

.method public setKeyboardMode(IIZ)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "imeOptions"    # I
    .param p3, "enableVoice"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 393
    iput v2, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    .line 394
    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mPreferSymbols:Z

    .line 395
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/Calibration;->mPreferNumbers:Z

    .line 396
    if-ne p1, v3, :cond_0

    .line 397
    const/4 p1, 0x1

    .line 400
    :cond_0
    :try_start_0
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/Calibration;->mPreferSymbols:Z

    iget-boolean v5, p0, Lcom/android/inputmethod/latin/Calibration;->mPreferNumbers:Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 394
    goto :goto_0

    :cond_2
    move v1, v2

    .line 395
    goto :goto_1

    .line 401
    :catch_0
    move-exception v6

    .line 402
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/Calibration;->mPreferSymbols:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setLanguageSwitcher(Lcom/android/inputmethod/latin/LanguageSwitcher;)V
    .locals 1
    .param p1, "languageSwitcher"    # Lcom/android/inputmethod/latin/LanguageSwitcher;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/inputmethod/latin/Calibration;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 285
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputLocale:Ljava/util/Locale;

    .line 286
    return-void
.end method

.method public setShiftLocked(Z)V
    .locals 1
    .param p1, "shiftLocked"    # Z

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setShiftLocked(Z)Z

    .line 702
    :cond_0
    return-void
.end method

.method public setShifted(Z)V
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setShifted(Z)Z

    .line 696
    :cond_0
    return-void
.end method

.method public setVoiceMode(ZZ)V
    .locals 6
    .param p1, "enableVoice"    # Z
    .param p2, "voiceOnPrimary"    # Z

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mVoiceOnPrimary:Z

    if-eq p2, v0, :cond_1

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 383
    :cond_1
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    .line 384
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/Calibration;->mVoiceOnPrimary:Z

    .line 385
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    iget v2, p0, Lcom/android/inputmethod/latin/Calibration;->mImeOptions:I

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/Calibration;->mIsSymbols:Z

    iget-boolean v5, p0, Lcom/android/inputmethod/latin/Calibration;->mIsNumbers:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZZZ)V

    .line 386
    return-void
.end method

.method public toggleShift()V
    .locals 5

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Calibration;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mCurrentId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mSymbolsId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->access$0(Lcom/android/inputmethod/latin/Calibration$KeyboardId;Lcom/android/inputmethod/latin/Calibration$KeyboardId;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 708
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mCurrentId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Calibration;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/Calibration$KeyboardId;->access$0(Lcom/android/inputmethod/latin/Calibration$KeyboardId;Lcom/android/inputmethod/latin/Calibration$KeyboardId;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 709
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/Calibration;->getKeyboard(Lcom/android/inputmethod/latin/Calibration$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v1

    .line 710
    .local v1, "symbolsShiftedKeyboard":Lcom/android/inputmethod/latin/LatinKeyboard;
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    iput-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mCurrentId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    .line 711
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 719
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->enableShiftLock()V

    .line 720
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShiftLocked(Z)V

    .line 721
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 722
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    iget v4, p0, Lcom/android/inputmethod/latin/Calibration;->mImeOptions:I

    .line 721
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    goto :goto_0

    .line 724
    .end local v1    # "symbolsShiftedKeyboard":Lcom/android/inputmethod/latin/LatinKeyboard;
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mSymbolsId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/Calibration;->getKeyboard(Lcom/android/inputmethod/latin/Calibration$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v0

    .line 725
    .local v0, "symbolsKeyboard":Lcom/android/inputmethod/latin/LatinKeyboard;
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mSymbolsId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    iput-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mCurrentId:Lcom/android/inputmethod/latin/Calibration$KeyboardId;

    .line 726
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 731
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->enableShiftLock()V

    .line 732
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShifted(Z)Z

    .line 733
    iget-object v2, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 734
    iget v3, p0, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    iget v4, p0, Lcom/android/inputmethod/latin/Calibration;->mImeOptions:I

    .line 733
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    goto :goto_0
.end method

.method public toggleSymbols(Z)V
    .locals 11
    .param p1, "allowNumber"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 747
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mIsSymbols:Z

    if-eqz v0, :cond_2

    .line 749
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    iget v2, p0, Lcom/android/inputmethod/latin/Calibration;->mImeOptions:I

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZZZ)V

    .line 773
    :goto_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mIsSymbols:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mPreferSymbols:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mIsNumbers:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mPreferNumbers:Z

    if-nez v0, :cond_6

    .line 774
    :cond_1
    iput v9, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    .line 778
    :goto_1
    return-void

    .line 751
    :cond_2
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Calibration;->mIsNumbers:Z

    if-eqz v0, :cond_4

    .line 753
    iget v0, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 755
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    iget v2, p0, Lcom/android/inputmethod/latin/Calibration;->mImeOptions:I

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZZZ)V

    goto :goto_0

    .line 759
    :cond_3
    iget v6, p0, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    iget v7, p0, Lcom/android/inputmethod/latin/Calibration;->mImeOptions:I

    iget-boolean v8, p0, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    move-object v5, p0

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZZZ)V

    goto :goto_0

    .line 764
    :cond_4
    if-eqz p1, :cond_5

    sget-boolean v0, Lcom/android/inputmethod/latin/Calibration;->mEnableNumberKeypad:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 766
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    iget v2, p0, Lcom/android/inputmethod/latin/Calibration;->mImeOptions:I

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    move-object v0, p0

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZZZ)V

    goto :goto_0

    .line 770
    :cond_5
    iget v6, p0, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    iget v7, p0, Lcom/android/inputmethod/latin/Calibration;->mImeOptions:I

    iget-boolean v8, p0, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    move-object v5, p0

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZZZ)V

    goto :goto_0

    .line 776
    :cond_6
    iput v4, p0, Lcom/android/inputmethod/latin/Calibration;->mAutoModeSwitchState:I

    goto :goto_1
.end method

.method public updateKeyboardConfiguration()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 1121
    iget-object v1, p0, Lcom/android/inputmethod/latin/Calibration;->mInputMethodService:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1122
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1123
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1124
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mTextSizeHorizontal:I

    sput v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mTextSize:I

    .line 1125
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mBottomPaddingHorizontal:I

    sput v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mBottomPadding:I

    .line 1126
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyHightHorizontal:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mKeyHight:I

    .line 1127
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mRowGapHorizontal:I

    sput v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mRowGap:I

    .line 1128
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mArrowsKeyHightHorizontal:I

    sput v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mArrowsHight:I

    .line 1129
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    .line 1132
    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1133
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mTextSizeVertical:I

    sput v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mTextSize:I

    .line 1134
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mBottomPaddingVertical:I

    sput v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mBottomPadding:I

    .line 1135
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mKeyHightVertical:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mKeyHight:I

    .line 1136
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mRowGapVertical:I

    sput v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mRowGap:I

    .line 1137
    iget v1, p0, Lcom/android/inputmethod/latin/Calibration;->mArrowsKeyHightVertical:I

    sput v1, Lcom/android/inputmethod/latin/LatinKeyboard;->mArrowsHight:I

    .line 1140
    :cond_1
    return-void
.end method
