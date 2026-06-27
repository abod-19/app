.class public Lcom/android/inputmethod/latin/DictionaryEditor;
.super Landroid/inputmethodservice/InputMethodService;
.source "DictionaryEditor.java"

# interfaces
.implements Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
.implements Lcom/android/inputmethod/voice/VoiceInput$UiListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/DictionaryEditor$HardKeyboardAction;,
        Lcom/android/inputmethod/latin/DictionaryEditor$HardKeyboardTranslator;,
        Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;,
        Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;,
        Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;,
        Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$android$inputmethod$latin$TextEntryState$State:[I = null

.field private static final CPS_BUFFER_SIZE:I = 0x10

.field public static DEBUG:Z = false

.field public static final DEFAULT_VOICE_INPUT_SUPPORTED_LOCALES:Ljava/lang/String; = "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

.field private static final DELETE_ACCELERATE_AT:I = 0x14

.field public static final ENABLE_CURSORS_ALWAYS:I = 0x2

.field public static final ENABLE_CURSORS_NEVER:I = 0x0

.field public static final ENABLE_CURSORS_ON_SWIPE:I = 0x1

.field static final ENABLE_VOICE_BUTTON:Z = true

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field static final KEYCODE_ENTER:I = 0xa

.field static final KEYCODE_PERIOD:I = 0x2e

.field static final KEYCODE_SPACE:I = 0x20

.field private static final MSG_START_TUTORIAL:I = 0x1

.field private static final MSG_UPDATE_OLD_SUGGESTIONS:I = 0x4

.field private static final MSG_UPDATE_SHIFT_STATE:I = 0x2

.field private static final MSG_UPDATE_SUGGESTIONS:I = 0x0

.field private static final MSG_VOICE_RESULTS:I = 0x3

.field private static PERF_DEBUG:Z = false

.field private static final POS_METHOD:I = 0x0

.field private static final POS_SETTINGS:I = 0x1

.field private static final PREF_ALWAYS_SUGGEST:Ljava/lang/String; = "always_suggest"

.field private static final PREF_AUTO_CAP:Ljava/lang/String; = "auto_cap"

.field private static final PREF_AUTO_COMPLETE:Ljava/lang/String; = "auto_complete"

.field private static final PREF_AUTO_SELECT_BEST_VOICE_CHOICE:Ljava/lang/String; = "voice_input_best_choice"

.field private static final PREF_AUTO_SPACE:Ljava/lang/String; = "auto_space"

.field private static final PREF_AUTO_SWITCH_BACK_TO_ALPHA:Ljava/lang/String; = "auto_swithch_to_qwerty"

.field private static final PREF_BACKGROUND_CUSTOM_KEY:Ljava/lang/String; = "background_custom_key"

.field private static final PREF_BIGRAM_SUGGESTIONS:Ljava/lang/String; = "bigram_suggestion"

.field private static final PREF_BUTTON_COLOR:Ljava/lang/String; = "button_color"

.field private static final PREF_DEBUG_ON:Ljava/lang/String; = "debug_pref"

.field private static final PREF_DOUBLE_SPACE_TO_PERIOD:Ljava/lang/String; = "double_space_to_period"

.field private static final PREF_ENABLE_CURSORS:Ljava/lang/String; = "enable_cursors"

.field private static final PREF_EXTERNAL_SKIN:Ljava/lang/String; = "external_skin"

.field private static final PREF_FULL_SCREEN_LANDSCAPE:Ljava/lang/String; = "full_screen_landscape"

.field private static final PREF_FULL_SCREEN_PORTRAIT:Ljava/lang/String; = "full_screen_portrait"

.field private static final PREF_GESTURE_SENSITIVITY:Ljava/lang/String; = "gesture_sensitivity1"

.field private static final PREF_HAS_USED_VOICE_INPUT:Ljava/lang/String; = "has_used_voice_input"

.field private static final PREF_HAS_USED_VOICE_INPUT_UNSUPPORTED_LOCALE:Ljava/lang/String; = "has_used_voice_input_unsupported_locale"

.field public static final PREF_INPUT_LANGUAGE:Ljava/lang/String; = "input_language"

.field private static final PREF_KB_HINT_FONT_COLOR:Ljava/lang/String; = "keyboard_hint_font_color_color"

.field private static final PREF_KB_SOUND_STYLE:Ljava/lang/String; = "tap_sound_style_pref"

.field private static final PREF_KEYBOARD_BACKGROUND_COLOR:Ljava/lang/String; = "keyboard_background_color"

.field private static final PREF_LANDSCAPE_LAYOUT:Ljava/lang/String; = "pref_landscape_layout"

.field private static final PREF_LONG_PRESS_ON_123_TO_SETTINGS:Ljava/lang/String; = "long_press_on_123_to_settings"

.field private static final PREF_NO_POPUP_ON_SPACE:Ljava/lang/String; = "no_popup_on_space"

.field private static final PREF_POPUP_ON:Ljava/lang/String; = "popup_on"

.field private static final PREF_PORTRAIT_LAYOUT:Ljava/lang/String; = "pref_portrait_layout"

.field private static final PREF_PUNCTUATION_EDITOR:Ljava/lang/String; = "punctuation_editor"

.field private static final PREF_QUICK_FIXES:Ljava/lang/String; = "quick_fixes"

.field private static final PREF_RECORRECTION_ENABLED:Ljava/lang/String; = "recorrection_enabled"

.field public static final PREF_RTL_SUPPORTED:Ljava/lang/String; = "enable_rtl"

.field public static final PREF_SELECTED_LANGUAGES:Ljava/lang/String; = "selected_languages"

.field private static final PREF_SHOW_SUGGESTIONS:Ljava/lang/String; = "show_suggestions"

.field private static final PREF_SHOW_TOUCH_POINTS:Ljava/lang/String; = "show_touch_points"

.field private static final PREF_SOUND_ON:Ljava/lang/String; = "sound_on"

.field private static final PREF_SOUND_VOLUME:Ljava/lang/String; = "sound_volume"

.field private static final PREF_STORED_TIME:Ljava/lang/String; = "pref_stored_time"

.field private static final PREF_SUGGESTIONS_FONT_COLOR:Ljava/lang/String; = "suggestion_font_color"

.field private static final PREF_SUGGESTION_BAR_COLOR:Ljava/lang/String; = "suggestion_bar_color"

.field private static final PREF_SUGGESTION_BAR_SIZE:Ljava/lang/String; = "suggestion_bar_size"

.field private static final PREF_SUGGESTION_CUSTOM_KEY:Ljava/lang/String; = "background_suggestion_key"

.field private static final PREF_SUGGEST_WORDS_WITH_MISSING_SPACE_CHARACTER:Ljava/lang/String; = "suggest_words_with_missing_space_character"

.field private static final PREF_SWIPE_DOWN:Ljava/lang/String; = "swipe_down"

.field private static final PREF_SWIPE_LEFT:Ljava/lang/String; = "swipe_left"

.field private static final PREF_SWIPE_RIGHT:Ljava/lang/String; = "swipe_right"

.field private static final PREF_SWIPE_UP:Ljava/lang/String; = "swipe_up"

.field private static final PREF_USE_CONTACT_DICTIONARY:Ljava/lang/String; = "use_contact_dictionary"

.field private static final PREF_VIBRATE_LENGTH:Ljava/lang/String; = "vibration_length"

.field private static final PREF_VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field private static final PREF_VOICE_MODE:Ljava/lang/String; = "voice_mode"

.field private static final PREF_VOLUME_KEY_FOR_LEFT_RIGHT_SUPPORT:Ljava/lang/String; = "volume_key_for_left_right_support"

.field private static final PUNCTUATION_CHARACTERS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static PackageName:Ljava/lang/String; = null

.field private static final QUICK_PRESS:I = 0xc8

.field private static final RECOGNITIONVIEW_HEIGHT_THRESHOLD_RATIO:I = 0x6

.field private static final RECOGNITIONVIEW_MINIMUM_HEIGHT_DIP:I = 0xf4

.field private static final SPACE_SWAP_CHARACTERS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static T9Mode:Z = false

.field public static final TAG:Ljava/lang/String; = "perfectkeboard"

.field static TRACE:Z = false

.field static final VOICE_INSTALLED:Z = true

.field static context:Landroid/content/Context;

.field public static mAutoBackToAlpha:Z

.field private static mButtonColor:I

.field public static mEnableCursorsMode:I

.field private static mHasDictionary:Z

.field public static mInputLocale:Ljava/lang/String;

.field private static mKeyboardBackgroundColor:I

.field public static mLongPressOn123ToSettings:Z

.field public static mNoPopupOnSpace:Z

.field public static mRTLEnabled:Z

.field public static mSuggestPuncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static mSuggestWordsMissingSpace:Z

.field private static mSuggestionBarColor:I

.field private static mSuggestionFontClor:I

.field public static mUseCustomBackgrounColors:Z

.field public static mUseCustomSuggestionColors:Z

.field public static mUseExternalSkin:Z

.field public static skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

.field public static suggestionSizeBig:Z


# instance fields
.field Al:Landroid/app/AlertDialog;

.field Al2:Landroid/app/AlertDialog;

.field Al3:Landroid/app/AlertDialog;

.field Al4:Landroid/app/AlertDialog;

.field private final GESTURE_CLOSE_KEYBOARD:I

.field private final GESTURE_DELETE_WORD:I

.field private final GESTURE_DO_NOTHING:I

.field private final GESTURE_GO_SETTINGS:I

.field private final GESTURE_KEY_DOWN:I

.field private final GESTURE_KEY_LEFT:I

.field private final GESTURE_KEY_RIGHT:I

.field private final GESTURE_KEY_UP:I

.field private final GESTURE_LAUNCH_USER_DIC:I

.field private final GESTURE_NEXT_LANG:I

.field private final GESTURE_PASTE_CLIPBOARD:I

.field private final GESTURE_PICKUP_SUGGESTION:I

.field private final GESTURE_PREV_LANG:I

.field private final GESTURE_START_VOICE:I

.field private final GESTURE_TOGGLE_COMPACT:I

.field private final GESTURE_TOGGLE_NORMAL_SPLITED:I

.field private final GESTURE_TOGGLE_SYMBOLS:I

.field private final GESTURE_TOGGLE_T9:I

.field private final GESTURE_TOGGLE_T9COMPACT:I

.field private final GESTURE_TOOGLE_CAPS_LOCK:I

.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field av:I

.field cl:I

.field cm:Landroid/text/ClipboardManager;

.field cm2:Landroid/content/ClipboardManager;

.field co:I

.field cs:I

.field db:Landroid/database/sqlite/SQLiteDatabase;

.field ec:I

.field emj:[Ljava/lang/String;

.field private keystok:I

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAfterVoiceInput:Z

.field private mAlwaysSuggest:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoCap:Z

.field private mAutoCorrectEnabled:Z

.field private mAutoCorrectOn:Z

.field private mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

.field private mAutoSpace:Z

.field private mAutoSpaceAfterPunc:Z

.field private mAutoTextDictionary:Lcom/android/inputmethod/latin/AutoTextDictionary;

.field private mBestVoiceCohice:Z

.field private mBestWord:Ljava/lang/CharSequence;

.field private mBigramSuggestionEnabled:Z

.field mCalibration:Lcom/android/inputmethod/latin/Calibration;

.field private mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

.field public mCandidateViewContainer:Landroid/widget/LinearLayout;

.field private mCapsLock:Z

.field private mCommittedLength:I

.field private mCompletionOn:Z

.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mComposing:Ljava/lang/StringBuilder;

.field private mConfigurationChanging:Z

.field private mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

.field private mCorrectionMode:I

.field private mCpsIndex:I

.field private mCpsIntervals:[J

.field private mDeleteCount:I

.field private mDoubleSpaceToPeriod:Z

.field private mEnableVoice:Z

.field private mEnableVoiceButton:Z

.field private mEnteredText:Ljava/lang/CharSequence;

.field private mExternalSkin:Ljava/lang/String;

.field private mFieldUrlOrWeb:Z

.field private mFreeVersion:Z

.field private mFullScreenPortrait:Z

.field private mGestureDown:I

.field private mGestureLeft:I

.field private mGestureRight:I

.field private mGestureSensitivity:I

.field private mGestureUp:I

.field mHandler:Landroid/os/Handler;

.field private mHasUsedVoiceInput:Z

.field private mHasUsedVoiceInputUnsupportedLocale:Z

.field private mHints:Lcom/android/inputmethod/latin/Hints;

.field private mImmediatelyAfterVoiceInput:Z

.field private mInputTypeNoAutoCorrect:Z

.field private mIsShowingHint:Z

.field private mJustAccepted:Z

.field private mJustAddedAutoSpace:Z

.field private mJustRevertedSeparator:Ljava/lang/CharSequence;

.field private mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

.field private mLastCpsTime:J

.field private mLastKeyTime:J

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private mLocaleSupportedForVoiceInput:Z

.field private mLongPressDelay:I

.field private mMinimumVoiceRecognitionViewHeightPixel:I

.field private mNoFullScreenLandscape:Z

.field private mNotifiedToUser:Z

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mOrientation:I

.field private mPaidNotificationDialog:Landroid/app/AlertDialog;

.field private mPasswordText:Z

.field private mPopupOn:Z

.field private mPredicting:Z

.field private mPredictionOn:Z

.field private mQuickFixes:Z

.field private mReCorrectionEnabled:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecognizing:Z

.field private mRefreshKeyboardRequired:Z

.field private mResources:Landroid/content/res/Resources;

.field private mSentenceSeparators:Ljava/lang/String;

.field private mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

.field private mShowSuggestions:Z

.field private mShowTouchPoints:Z

.field private mShowingVoiceSuggestions:Z

.field private mSilentMode:Z

.field private mSoundID:I

.field private mSoundOn:Z

.field private mSoundVolume:F

.field private mSuggest:Lcom/android/inputmethod/latin/Suggest;

.field private mSuggestPuncs:Ljava/lang/String;

.field private mSymbolKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

.field private mSystemLocale:Ljava/lang/String;

.field private mTutorial:Lcom/android/inputmethod/latin/Tutorial;

.field mTypePlay:Landroid/media/SoundPool;

.field private mUseContactDictionary:Z

.field private mUseVolumeKeyForLeftRight:Z

.field private mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

.field private mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

.field private mVibrateLength:I

.field private mVibrateOn:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

.field private mVoiceInputHighlighted:Z

.field private mVoiceOnPrimary:Z

.field private mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

.field private mVoiceResults:Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;

.field private mVoiceWarningDialog:Landroid/app/AlertDialog;

.field private mWord:Lcom/android/inputmethod/latin/WordComposer;

.field private mWordHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;",
            ">;"
        }
    .end annotation
.end field

.field mWordSeparators:Ljava/lang/String;

.field private mWordToSuggestions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private misPaidVersonIstalled:Z

.field ms:[I

.field my:Ljava/util/TimerTask;

.field private path:Ljava/lang/String;

.field rm:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field private scrolled:Z

.field ss:I

.field t1:Ljava/lang/String;

.field private final timeBetweenNotifications:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$android$inputmethod$latin$TextEntryState$State()[I
    .locals 3

    .prologue
    .line 116
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryEditor;->$SWITCH_TABLE$com$android$inputmethod$latin$TextEntryState$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState$State;->values()[Lcom/android/inputmethod/latin/TextEntryState$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->ACCEPTED_DEFAULT:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_1
    :try_start_1
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->CORRECTING:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_2
    :try_start_2
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->IN_WORD:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_3
    :try_start_3
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->PICKED_CORRECTION:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    :try_start_4
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->PICKED_SUGGESTION:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_5
    :try_start_5
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->PUNCTUATION_AFTER_WORD:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :try_start_7
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->SPACE_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    :try_start_8
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->SPACE_AFTER_PICKED:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->START:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    :try_start_a
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->UNDO_COMMIT:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_b
    :try_start_b
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState$State;->UNKNOWN:Lcom/android/inputmethod/latin/TextEntryState$State;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_c
    sput-object v0, Lcom/android/inputmethod/latin/DictionaryEditor;->$SWITCH_TABLE$com$android$inputmethod$latin$TextEntryState$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 144
    sput-boolean v4, Lcom/android/inputmethod/latin/DictionaryEditor;->PERF_DEBUG:Z

    .line 145
    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    .line 146
    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->TRACE:Z

    .line 150
    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestionFontClor:I

    .line 151
    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mButtonColor:I

    .line 183
    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    .line 307
    sput v3, Lcom/android/inputmethod/latin/DictionaryEditor;->mKeyboardBackgroundColor:I

    .line 308
    sput v3, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestionBarColor:I

    .line 330
    sput-boolean v4, Lcom/android/inputmethod/latin/DictionaryEditor;->T9Mode:Z

    .line 383
    new-instance v2, Ljava/util/HashSet;

    .line 384
    const/4 v3, 0x6

    .line 383
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    sput-object v2, Lcom/android/inputmethod/latin/DictionaryEditor;->SPACE_SWAP_CHARACTERS:Ljava/util/HashSet;

    .line 385
    new-instance v2, Ljava/util/HashSet;

    .line 386
    const/16 v3, 0x10

    .line 385
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    sput-object v2, Lcom/android/inputmethod/latin/DictionaryEditor;->PUNCTUATION_CHARACTERS:Ljava/util/HashSet;

    .line 388
    const-string v1, ".\n!?,:;@<>()[]{}"

    .line 389
    .local v1, "src":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 392
    const-string v1, ".!?,:;@"

    .line 393
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 116
    return-void

    .line 390
    :cond_0
    sget-object v2, Lcom/android/inputmethod/latin/DictionaryEditor;->PUNCTUATION_CHARACTERS:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_1
    sget-object v2, Lcom/android/inputmethod/latin/DictionaryEditor;->SPACE_SWAP_CHARACTERS:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->list:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->listf:Ljava/util/List;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->ss:I

    .line 116
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 137
    const v0, 0x240c8400

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->timeBetweenNotifications:I

    .line 147
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowTouchPoints:Z

    .line 165
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCpsIntervals:[J

    .line 167
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->misPaidVersonIstalled:Z

    .line 168
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mNotifiedToUser:Z

    .line 178
    iput v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureSensitivity:I

    .line 220
    iput v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_DO_NOTHING:I

    .line 221
    iput v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_DELETE_WORD:I

    .line 222
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_GO_SETTINGS:I

    .line 223
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_CLOSE_KEYBOARD:I

    .line 224
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_PASTE_CLIPBOARD:I

    .line 225
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_PICKUP_SUGGESTION:I

    .line 226
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_NEXT_LANG:I

    .line 227
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_PREV_LANG:I

    .line 228
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_KEY_RIGHT:I

    .line 229
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_KEY_LEFT:I

    .line 230
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_KEY_UP:I

    .line 231
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_KEY_DOWN:I

    .line 232
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_TOGGLE_T9:I

    .line 233
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_TOGGLE_COMPACT:I

    .line 234
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_TOGGLE_T9COMPACT:I

    .line 235
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_TOGGLE_SYMBOLS:I

    .line 236
    iput v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_LAUNCH_USER_DIC:I

    .line 237
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_START_VOICE:I

    .line 238
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_TOGGLE_NORMAL_SPLITED:I

    .line 239
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->GESTURE_TOOGLE_CAPS_LOCK:I

    .line 314
    iput-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    .line 317
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseContactDictionary:Z

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    .line 332
    new-instance v0, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    .line 350
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoSpaceAfterPunc:Z

    .line 362
    iput-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVibrator:Landroid/os/Vibrator;

    .line 374
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableVoice:Z

    .line 407
    new-instance v0, Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/ModifierKeyState;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    .line 408
    new-instance v0, Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/ModifierKeyState;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSymbolKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    .line 420
    new-instance v0, Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;

    invoke-direct {v0, p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceResults:Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordToSuggestions:Ljava/util/Map;

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordHistory:Ljava/util/ArrayList;

    .line 487
    new-instance v0, Lcom/android/inputmethod/latin/DictionaryEditor$1;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$1;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    .line 522
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->scrolled:Z

    .line 528
    iput v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->keystok:I

    .line 3556
    new-instance v0, Lcom/android/inputmethod/latin/DictionaryEditor$2;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$2;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    return-void
.end method

.method private HandleCustomeSmileys(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 4031
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x2c

    if-lt v0, v1, :cond_0

    .line 4035
    return-void

    .line 4032
    :cond_0
    sget-object v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->CustomSmileys:[Ljava/lang/String;

    .line 4033
    sget-object v2, Lcom/android/inputmethod/latin/DomainEditor;->PREF_CUSTOME_SMILEYS:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/inputmethod/latin/DomainEditor;->popular_smileys_res:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4032
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 4031
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private HandleMessageTouser()V
    .locals 13

    .prologue
    const-wide/16 v9, 0x0

    const/high16 v12, 0x20000

    const/16 v11, 0x3eb

    const/4 v8, 0x1

    .line 4348
    iget-boolean v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->misPaidVersonIstalled:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mFreeVersion:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mNotifiedToUser:Z

    if-nez v7, :cond_1

    .line 4350
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mNotifiedToUser:Z

    .line 4353
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4356
    .local v0, "alertbox":Landroid/app/AlertDialog$Builder;
    const-string v7, "You have the paid version installed on your device. \nYou can uninstall the free version. You don\'t need it any more"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4359
    const-string v7, "Ok"

    new-instance v8, Lcom/android/inputmethod/latin/DictionaryEditor$10;

    invoke-direct {v8, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$10;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPaidNotificationDialog:Landroid/app/AlertDialog;

    .line 4368
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPaidNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 4369
    .local v6, "window":Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4370
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4371
    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4372
    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4373
    invoke-virtual {v6, v12}, Landroid/view/Window;->addFlags(I)V

    .line 4374
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPaidNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 4442
    .end local v0    # "alertbox":Landroid/app/AlertDialog$Builder;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "window":Landroid/view/Window;
    :cond_0
    :goto_0
    return-void

    .line 4377
    :cond_1
    iget-boolean v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->misPaidVersonIstalled:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mFreeVersion:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mNotifiedToUser:Z

    if-nez v7, :cond_0

    .line 4379
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mNotifiedToUser:Z

    .line 4380
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 4381
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v7, "pref_stored_time"

    invoke-interface {v3, v7, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 4382
    .local v4, "storedTime":J
    cmp-long v7, v4, v9

    if-nez v7, :cond_2

    .line 4385
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4386
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_stored_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4387
    invoke-static {v1}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 4389
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-wide/32 v7, 0x240c8400

    add-long/2addr v7, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 4392
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4393
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_stored_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4394
    invoke-static {v1}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 4397
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4400
    .restart local v0    # "alertbox":Landroid/app/AlertDialog$Builder;
    const-string v7, "Please consider to buy the full version to support developer and get extra features"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4402
    const-string v7, "Buy"

    new-instance v8, Lcom/android/inputmethod/latin/DictionaryEditor$11;

    invoke-direct {v8, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$11;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4413
    const-string v7, "Rate"

    new-instance v8, Lcom/android/inputmethod/latin/DictionaryEditor$12;

    invoke-direct {v8, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$12;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4424
    const-string v7, "Dissmiss"

    new-instance v8, Lcom/android/inputmethod/latin/DictionaryEditor$13;

    invoke-direct {v8, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$13;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPaidNotificationDialog:Landroid/app/AlertDialog;

    .line 4432
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPaidNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 4433
    .restart local v6    # "window":Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4434
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4435
    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4436
    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4437
    invoke-virtual {v6, v12}, Landroid/view/Window;->addFlags(I)V

    .line 4438
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPaidNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private HandlePopularDomain(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 4025
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 4029
    return-void

    .line 4026
    :cond_0
    sget-object v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->popularDomains:[Ljava/lang/String;

    .line 4027
    sget-object v2, Lcom/android/inputmethod/latin/DomainEditor;->PREF_POPULAR_DOMAIN:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/inputmethod/latin/DomainEditor;->popular_domains_res:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4026
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 4025
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private HandlePunctuationPopup(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 4037
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 4041
    return-void

    .line 4038
    :cond_0
    sget-object v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->CustomPunctuationPopup:[Ljava/lang/String;

    .line 4039
    sget-object v2, Lcom/android/inputmethod/latin/DomainEditor;->PREF_CUSTOME_PUNCTUATION_POPUP:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/inputmethod/latin/DomainEditor;->PunctuationPopup_res:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4038
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 4037
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private abortCorrection(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 2081
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isCorrecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2082
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2083
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->clearSuggestions()V

    .line 2085
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 0

    .prologue
    .line 2610
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateSuggestions()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 0

    .prologue
    .line 3007
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->setOldSuggestions()V

    return-void
.end method

.method static synthetic access$10(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 0

    .prologue
    .line 2313
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateSuggestions()V

    return-void
.end method

.method static synthetic access$11(Lcom/android/inputmethod/latin/DictionaryEditor;)Lcom/android/inputmethod/voice/VoiceInput;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    return-object v0
.end method

.method static synthetic access$12(Lcom/android/inputmethod/latin/DictionaryEditor;)I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mMinimumVoiceRecognitionViewHeightPixel:I

    return v0
.end method

.method static synthetic access$13(Lcom/android/inputmethod/latin/DictionaryEditor;Z)V
    .locals 0

    .prologue
    .line 2426
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->reallyStartListening(Z)V

    return-void
.end method

.method static synthetic access$14(Lcom/android/inputmethod/latin/DictionaryEditor;Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->misPaidVersonIstalled:Z

    return-void
.end method

.method static synthetic access$15(Lcom/android/inputmethod/latin/DictionaryEditor;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 4490
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->notifyResult(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/inputmethod/latin/DictionaryEditor;)Lcom/android/inputmethod/latin/Tutorial;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/inputmethod/latin/DictionaryEditor;Lcom/android/inputmethod/latin/Tutorial;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    return-void
.end method

.method static synthetic access$4(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 0

    .prologue
    .line 2527
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleVoiceResults()V

    return-void
.end method

.method static synthetic access$5(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 0

    .prologue
    .line 3567
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$6(Lcom/android/inputmethod/latin/DictionaryEditor;Lcom/android/inputmethod/latin/WordComposer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 2626
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->getTypedSuggestions(Lcom/android/inputmethod/latin/WordComposer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/inputmethod/latin/DictionaryEditor;Z)V
    .locals 0

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mIsShowingHint:Z

    return-void
.end method

.method static synthetic access$9(Lcom/android/inputmethod/latin/DictionaryEditor;Z)V
    .locals 0

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mRecognizing:Z

    return-void
.end method

.method private addToBigramDictionary(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .param p2, "frequencyDelta"    # I

    .prologue
    .line 3054
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 3055
    return-void
.end method

.method private addToDictionaries(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .param p2, "frequencyDelta"    # I

    .prologue
    .line 3049
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 3050
    return-void
.end method

.method private applyTypedAlternatives(Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;)Z
    .locals 10
    .param p1, "touching"    # Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;

    .prologue
    const/4 v6, 0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 2965
    const/4 v2, 0x0

    .line 2966
    .local v2, "foundWord":Lcom/android/inputmethod/latin/WordComposer;
    const/4 v0, 0x0

    .line 2967
    .local v0, "alternatives":Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2977
    :goto_0
    if-nez v2, :cond_2

    .line 2978
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 2979
    iget-object v7, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2980
    :cond_1
    new-instance v2, Lcom/android/inputmethod/latin/WordComposer;

    .end local v2    # "foundWord":Lcom/android/inputmethod/latin/WordComposer;
    invoke-direct {v2}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    .line 2981
    .restart local v2    # "foundWord":Lcom/android/inputmethod/latin/WordComposer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v3, v4, :cond_7

    .line 2988
    iget-object v4, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    .line 2987
    invoke-virtual {v2, v4}, Lcom/android/inputmethod/latin/WordComposer;->setFirstCharCapitalized(Z)V

    .line 2991
    .end local v3    # "i":I
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_9

    .line 2992
    :cond_3
    if-nez v0, :cond_4

    .line 2993
    new-instance v0, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;

    .end local v0    # "alternatives":Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;
    iget-object v4, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v4, v2}, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/WordComposer;)V

    .line 2996
    .restart local v0    # "alternatives":Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->showCorrections(Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;)V

    .line 2997
    if-eqz v2, :cond_8

    .line 2998
    new-instance v4, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v4, v2}, Lcom/android/inputmethod/latin/WordComposer;-><init>(Lcom/android/inputmethod/latin/WordComposer;)V

    iput-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    :goto_2
    move v4, v6

    .line 3004
    :goto_3
    return v4

    .line 2967
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;

    .line 2968
    .local v1, "entry":Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;->getChosenWord()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2969
    instance-of v4, v1, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;

    if-eqz v4, :cond_6

    move-object v4, v1

    .line 2970
    check-cast v4, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;

    invoke-static {v4}, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;->access$0(Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;)Lcom/android/inputmethod/latin/WordComposer;

    move-result-object v2

    .line 2972
    :cond_6
    move-object v0, v1

    .line 2973
    goto :goto_0

    .line 2982
    .end local v1    # "entry":Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;
    .restart local v3    # "i":I
    :cond_7
    iget-object v4, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 2983
    new-array v7, v6, [I

    iget-object v8, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v8, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    aput v8, v7, v5

    .line 2982
    invoke-virtual {v2, v4, v7, v9, v9}, Lcom/android/inputmethod/latin/WordComposer;->add(I[III)V

    .line 2981
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3000
    .end local v3    # "i":I
    :cond_8
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    goto :goto_2

    :cond_9
    move v4, v5

    .line 3004
    goto :goto_3
.end method

.method private applyVoiceAlternatives(Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;)Z
    .locals 9
    .param p1, "touching"    # Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2926
    iget-object v7, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2927
    .local v3, "selectedWord":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2928
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2930
    :cond_0
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2931
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowingVoiceSuggestions:Z

    .line 2932
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordToSuggestions:Ljava/util/Map;

    .line 2933
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2937
    .local v4, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v7, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2938
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lt v1, v7, :cond_2

    .line 2946
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, v4, v6, v5, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2947
    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->setCandidatesViewShown(Z)V

    .line 2950
    .end local v4    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :goto_1
    return v5

    .line 2939
    .restart local v1    # "i":I
    .restart local v4    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2940
    .local v2, "origSugg":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2941
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2942
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2941
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2940
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2943
    .local v0, "capsSugg":Ljava/lang/String;
    invoke-interface {v4, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2938
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "capsSugg":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "origSugg":Ljava/lang/String;
    .end local v4    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_3
    move v5, v6

    .line 2950
    goto :goto_1
.end method

.method private checkAddToDictionary(Ljava/lang/CharSequence;IZ)V
    .locals 4
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .param p2, "frequencyDelta"    # I
    .param p3, "addToBigramDictionary"    # Z

    .prologue
    .line 3065
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 3091
    :cond_0
    :goto_0
    return-void

    .line 3071
    :cond_1
    iget v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCorrectionMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCorrectionMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 3074
    :cond_2
    if-eqz p1, :cond_0

    .line 3075
    if-nez p3, :cond_3

    .line 3076
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/AutoDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3077
    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 3078
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3079
    :cond_4
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/inputmethod/latin/AutoDictionary;->addWord(Ljava/lang/String;I)V

    .line 3082
    :cond_5
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    if-eqz v1, :cond_0

    .line 3084
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSentenceSeparators:Ljava/lang/String;

    .line 3083
    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/EditingUtil;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3085
    .local v0, "prevWord":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3086
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3087
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3086
    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/UserBigramDictionary;->addBigrams(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkReCorrectionOnStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1064
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mReCorrectionEnabled:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isPredictionOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1072
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1073
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_1

    .line 1089
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 1075
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 1076
    .local v1, "etr":Landroid/view/inputmethod/ExtractedTextRequest;
    iput v4, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 1077
    invoke-interface {v2, v1, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 1078
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 1081
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastSelectionStart:I

    .line 1082
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastSelectionEnd:I

    .line 1085
    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isCursorTouchingWord()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1086
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateOldSuggestions()V

    goto :goto_0
.end method

.method private checkTutorial(Ljava/lang/String;)V
    .locals 1
    .param p1, "privateImeOptions"    # Ljava/lang/String;

    .prologue
    .line 3614
    if-nez p1, :cond_1

    .line 3627
    :cond_0
    :goto_0
    return-void

    .line 3616
    :cond_1
    const-string v0, "com.android.setupwizard:ShowTutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3617
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-nez v0, :cond_0

    .line 3618
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->startTutorial()V

    goto :goto_0

    .line 3620
    :cond_2
    const-string v0, "com.android.setupwizard:HideTutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3621
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-eqz v0, :cond_0

    .line 3622
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Tutorial;->close()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    goto :goto_0
.end method

.method private clearSuggestions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2592
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2593
    return-void
.end method

.method private commitTyped(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v1, 0x1

    .line 1468
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-eqz v0, :cond_2

    .line 1469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    .line 1470
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1471
    if-eqz p1, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCommittedLength:I

    .line 1475
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 1476
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->addToDictionaries(Ljava/lang/CharSequence;I)V

    .line 1479
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateSuggestions()V

    .line 1481
    :cond_2
    return-void
.end method

.method private commitVoiceInput()V
    .locals 2

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1447
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1448
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1449
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateSuggestions()V

    .line 1450
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInputHighlighted:Z

    .line 1451
    return-void
.end method

.method private createResultDialog([Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "recognitionResults"    # [Ljava/lang/CharSequence;

    .prologue
    .line 4446
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x23

    if-lt v5, v6, :cond_0

    .line 4448
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x1030128

    invoke-direct {v4, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4449
    .local v4, "wrapper":Landroid/view/ContextThemeWrapper;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4455
    .end local v4    # "wrapper":Landroid/view/ContextThemeWrapper;
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4458
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/android/inputmethod/latin/DictionaryEditor$14;

    invoke-direct {v5, p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor$14;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4465
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4466
    new-instance v5, Lcom/android/inputmethod/latin/DictionaryEditor$15;

    invoke-direct {v5, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$15;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4473
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/inputmethod/latin/DictionaryEditor$16;

    invoke-direct {v6, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$16;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4479
    const-string v5, "Perfect keyboard"

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4481
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 4482
    .local v0, "Dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 4483
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4484
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v5}, Lcom/android/inputmethod/voice/VoiceInput;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4485
    const/16 v5, 0x3eb

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4486
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4487
    const/high16 v5, 0x20000

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 4488
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4489
    return-void

    .line 4453
    .end local v0    # "Dialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "window":Landroid/view/Window;
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_0
.end method

.method private doubleSpace()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1678
    iget v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCorrectionMode:I

    if-nez v2, :cond_1

    .line 1695
    :cond_0
    :goto_0
    return-void

    .line 1680
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1681
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1683
    invoke-interface {v0, v6, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1684
    .local v1, "lastThree":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1685
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1686
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->isSpace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1687
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->isSpace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1688
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1689
    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1690
    const-string v2, ". "

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1691
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1692
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1693
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAddedAutoSpace:Z

    goto :goto_0
.end method

.method private exectueGesture(I)V
    .locals 8
    .param p1, "gesture"    # I

    .prologue
    const/16 v3, 0x13

    const/4 v7, 0x2

    const v4, 0x7f0d0163

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4121
    packed-switch p1, :pswitch_data_0

    .line 4268
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 4125
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4126
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 4127
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4128
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordSeparators:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/inputmethod/latin/EditingUtil;->deleteWordBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 4129
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 4133
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->launchSettings()V

    goto :goto_0

    .line 4136
    :pswitch_3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleClose()V

    goto :goto_0

    .line 4139
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->paste_from_clipboard()V

    goto :goto_0

    .line 4142
    :pswitch_5
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->pickDefaultSuggestion()Z

    move-result v2

    .line 4143
    .local v2, "pickedDefault":Z
    if-eqz v2, :cond_0

    .line 4144
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->backToAcceptedDefault(Ljava/lang/CharSequence;)V

    .line 4145
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendSpace()V

    .line 4146
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    .line 4150
    .end local v2    # "pickedDefault":Z
    :pswitch_6
    invoke-direct {p0, v5, v6}, Lcom/android/inputmethod/latin/DictionaryEditor;->toggleLanguage(ZZ)V

    goto :goto_0

    .line 4153
    :pswitch_7
    invoke-direct {p0, v5, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->toggleLanguage(ZZ)V

    goto :goto_0

    .line 4156
    :pswitch_8
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendDownUpKeyEvents(I)V

    .line 4157
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleArrow(I)V

    goto :goto_0

    .line 4160
    :pswitch_9
    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendDownUpKeyEvents(I)V

    .line 4161
    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleArrow(I)V

    goto :goto_0

    .line 4164
    :pswitch_a
    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendDownUpKeyEvents(I)V

    .line 4165
    const/16 v3, 0x15

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleArrow(I)V

    goto :goto_0

    .line 4168
    :pswitch_b
    const/16 v3, 0x16

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendDownUpKeyEvents(I)V

    .line 4169
    const/16 v3, 0x16

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleArrow(I)V

    goto :goto_0

    .line 4174
    :pswitch_c
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4175
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-nez v3, :cond_1

    .line 4177
    const-string v3, "pref_portrait_layout"

    const v4, 0x7f0d0164

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4178
    sput v6, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    .line 4187
    :goto_1
    invoke-static {v0}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 4182
    :cond_1
    const-string v3, "pref_portrait_layout"

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4183
    sput v5, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    .line 4184
    sput-boolean v5, Lcom/android/inputmethod/latin/Calibration;->mIsPortraitModeAndT9:Z

    goto :goto_1

    .line 4195
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_d
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4196
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-nez v3, :cond_2

    .line 4198
    const-string v3, "pref_portrait_layout"

    const v4, 0x7f0d0165

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4199
    sput v7, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    .line 4207
    :goto_2
    invoke-static {v0}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 4204
    :cond_2
    const-string v3, "pref_portrait_layout"

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4205
    sput v5, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    goto :goto_2

    .line 4215
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_e
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4216
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-nez v3, :cond_3

    .line 4218
    const-string v3, "pref_portrait_layout"

    const v4, 0x7f0d0164

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4219
    sput v6, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    .line 4233
    :goto_3
    invoke-static {v0}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 4221
    :cond_3
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    if-ne v3, v6, :cond_4

    .line 4223
    const-string v3, "pref_portrait_layout"

    const v4, 0x7f0d0165

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4224
    sput v7, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    goto :goto_3

    .line 4229
    :cond_4
    const-string v3, "pref_portrait_layout"

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4230
    sput v5, Lcom/android/inputmethod/latin/Calibration;->mPortaraitLayoutMode:I

    goto :goto_3

    .line 4240
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_f
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4241
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    if-nez v3, :cond_6

    .line 4243
    const-string v3, "pref_landscape_layout"

    const v4, 0x7f0d016a

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4244
    sput v6, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    .line 4252
    :cond_5
    :goto_4
    invoke-static {v0}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 4246
    :cond_6
    sget v3, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    if-ne v3, v6, :cond_5

    .line 4248
    const-string v3, "pref_landscape_layout"

    const v4, 0x7f0d0169

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4249
    sput v5, Lcom/android/inputmethod/latin/Calibration;->mLandscapeLayoutMode:I

    goto :goto_4

    .line 4255
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_10
    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->changeKeyboardMode(Z)V

    goto/16 :goto_0

    .line 4258
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->launchUserDictionaryEditor()V

    goto/16 :goto_0

    .line 4261
    :pswitch_12
    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/DictionaryEditor;->startListening(Z)V

    goto/16 :goto_0

    .line 4264
    :pswitch_13
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleToggleCapsLock()V

    goto/16 :goto_0

    .line 4121
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
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method private fieldCanDoVoice(Lcom/android/inputmethod/voice/FieldContext;)Z
    .locals 1
    .param p1, "fieldContext"    # Lcom/android/inputmethod/voice/FieldContext;

    .prologue
    .line 3542
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPasswordText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    if-eqz v0, :cond_0

    .line 3543
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInput;->isBlacklistedField(Lcom/android/inputmethod/voice/FieldContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3542
    goto :goto_0
.end method

.method private getAllSwipesettings(Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 4043
    const-string v0, "swipe_right"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureRight:I

    .line 4044
    const-string v0, "swipe_left"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureLeft:I

    .line 4045
    const-string v0, "swipe_up"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureUp:I

    .line 4046
    const-string v0, "swipe_down"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureDown:I

    .line 4047
    return-void
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "off"    # I
    .param p2, "reqModes"    # I

    .prologue
    const/16 v9, 0x27

    const/16 v8, 0x22

    const/4 v4, 0x0

    const/16 v7, 0x2e

    .line 1532
    if-gez p1, :cond_1

    .line 1627
    :cond_0
    :goto_0
    return v4

    .line 1536
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 1538
    const/4 v4, 0x1

    goto :goto_0

    .line 1541
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gt p1, v5, :cond_0

    .line 1548
    const/4 v4, 0x0

    .line 1550
    .local v4, "mode":I
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_3

    .line 1551
    or-int/lit16 v4, v4, 0x1000

    .line 1553
    :cond_3
    and-int/lit16 v5, p2, 0x6000

    if-eqz v5, :cond_0

    .line 1559
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-gtz v1, :cond_7

    .line 1570
    :cond_4
    move v2, v1

    .line 1571
    .local v2, "j":I
    :goto_2
    if-lez v2, :cond_5

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_9

    const/16 v5, 0x9

    if-eq v0, v5, :cond_9

    const/16 v5, 0xc2

    if-eq v0, v5, :cond_9

    const/16 v5, 0xa0

    if-eq v0, v5, :cond_9

    .line 1574
    .end local v0    # "c":C
    :cond_5
    if-eqz v2, :cond_6

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_a

    .line 1575
    :cond_6
    or-int/lit16 v4, v4, 0x2000

    goto :goto_0

    .line 1560
    .end local v2    # "j":I
    :cond_7
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1562
    .restart local v0    # "c":C
    if-eq v0, v8, :cond_8

    if-eq v0, v9, :cond_8

    .line 1563
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_4

    .line 1559
    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1572
    .restart local v2    # "j":I
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1580
    .end local v0    # "c":C
    :cond_a
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_b

    .line 1581
    if-eq v1, v2, :cond_0

    or-int/lit16 v4, v4, 0x2000

    goto :goto_0

    .line 1587
    :cond_b
    if-eq v1, v2, :cond_0

    .line 1593
    :goto_3
    if-gtz v2, :cond_f

    .line 1602
    :cond_c
    if-lez v2, :cond_0

    .line 1603
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1605
    .restart local v0    # "c":C
    if-eq v0, v7, :cond_d

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_d

    const/16 v5, 0x21

    if-ne v0, v5, :cond_0

    .line 1609
    :cond_d
    if-ne v0, v7, :cond_e

    .line 1610
    add-int/lit8 v3, v2, -0x2

    .local v3, "k":I
    :goto_4
    if-gez v3, :cond_11

    .line 1623
    .end local v3    # "k":I
    :cond_e
    or-int/lit16 v4, v4, 0x4000

    goto/16 :goto_0

    .line 1594
    .end local v0    # "c":C
    :cond_f
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1596
    .restart local v0    # "c":C
    if-eq v0, v8, :cond_10

    if-eq v0, v9, :cond_10

    .line 1597
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_c

    .line 1593
    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1611
    .restart local v3    # "k":I
    :cond_11
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1613
    if-eq v0, v7, :cond_0

    .line 1617
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1610
    add-int/lit8 v3, v3, -0x1

    goto :goto_4
.end method

.method private getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I
    .locals 11
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v8, 0x0

    .line 1499
    const/4 v2, 0x0

    .line 1500
    .local v2, "caps":I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 1501
    .local v3, "ei":Landroid/view/inputmethod/EditorInfo;
    iget-object v9, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.android.email"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1503
    iget-boolean v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoCap:Z

    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    iget v8, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v8, :cond_0

    .line 1504
    iget v8, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {p1, v8}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v2

    :cond_0
    move v8, v2

    .line 1526
    :cond_1
    :goto_0
    return v8

    .line 1511
    :cond_2
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 1512
    .local v5, "etr":Landroid/view/inputmethod/ExtractedTextRequest;
    iput v8, v5, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 1513
    invoke-interface {p1, v5, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    .line 1514
    .local v4, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v4, :cond_1

    .line 1516
    iget v8, v4, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v9, v4, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1517
    .local v0, "a":Ljava/lang/Integer;
    iget v8, v4, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v9, v4, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1518
    .local v1, "b":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v8, v9, :cond_3

    .line 1519
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1520
    .local v7, "tmp":I
    move-object v0, v1

    .line 1521
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1523
    .end local v7    # "tmp":I
    :cond_3
    iget v8, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1524
    .local v6, "inputtype":Ljava/lang/Integer;
    iget-object v8, v4, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v2

    move v8, v2

    .line 1526
    goto :goto_0
.end method

.method public static getDictionary(Landroid/content/Context;Landroid/content/res/Resources;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "localContext"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    invoke-static {p0}, LDictionaryPackage/DicatinaryPackage;->getAllBuilders(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 646
    .local v0, "dictionaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v3, "local_dictionaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 648
    .local v1, "dictionaries_size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 665
    :goto_1
    return-object v3

    .line 650
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, "local_language":Ljava/lang/String;
    const-string v5, "he"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 652
    const-string v4, "iw"

    .line 654
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-interface {v5}, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 655
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 648
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getKeyboardBackgroundColor()I
    .locals 1

    .prologue
    .line 4011
    sget v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mKeyboardBackgroundColor:I

    return v0
.end method

.method public static getSuggestionBarColor()I
    .locals 1

    .prologue
    .line 4018
    sget v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestionBarColor:I

    return v0
.end method

.method private getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 4
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "swipe"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0d010d

    const/4 v1, 0x0

    .line 4050
    .line 4051
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4050
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4053
    .local v0, "gesture":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4104
    :cond_0
    :goto_0
    return v1

    .line 4055
    :cond_1
    const v2, 0x7f0d010e

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4056
    const/4 v1, 0x1

    goto :goto_0

    .line 4057
    :cond_2
    const v2, 0x7f0d010f

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4058
    const/4 v1, 0x2

    goto :goto_0

    .line 4059
    :cond_3
    const v2, 0x7f0d0110

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4060
    const/4 v1, 0x3

    goto :goto_0

    .line 4062
    :cond_4
    const v2, 0x7f0d0111

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4063
    const/4 v1, 0x4

    goto :goto_0

    .line 4065
    :cond_5
    const v2, 0x7f0d0112

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4066
    const/4 v1, 0x5

    goto :goto_0

    .line 4067
    :cond_6
    const v2, 0x7f0d0113

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4068
    const/4 v1, 0x6

    goto :goto_0

    .line 4069
    :cond_7
    const v2, 0x7f0d0114

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4070
    const/4 v1, 0x7

    goto :goto_0

    .line 4071
    :cond_8
    const v2, 0x7f0d0118

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4072
    const/16 v1, 0xb

    goto :goto_0

    .line 4073
    :cond_9
    const v2, 0x7f0d0117

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4074
    const/16 v1, 0xa

    goto/16 :goto_0

    .line 4075
    :cond_a
    const v2, 0x7f0d0115

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4076
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 4077
    :cond_b
    const v2, 0x7f0d0116

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4078
    const/16 v1, 0x9

    goto/16 :goto_0

    .line 4080
    :cond_c
    const v2, 0x7f0d0119

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4081
    const/16 v1, 0xc

    goto/16 :goto_0

    .line 4083
    :cond_d
    const v2, 0x7f0d011a

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4084
    const/16 v1, 0xd

    goto/16 :goto_0

    .line 4086
    :cond_e
    const v2, 0x7f0d011b

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4087
    const/16 v1, 0xe

    goto/16 :goto_0

    .line 4089
    :cond_f
    const v2, 0x7f0d011c

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4090
    const/16 v1, 0xf

    goto/16 :goto_0

    .line 4092
    :cond_10
    const v2, 0x7f0d011d

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4093
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 4095
    :cond_11
    const v2, 0x7f0d011e

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4096
    const/16 v1, 0x11

    goto/16 :goto_0

    .line 4098
    :cond_12
    const v2, 0x7f0d011f

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4099
    const/16 v1, 0x12

    goto/16 :goto_0

    .line 4101
    :cond_13
    const v2, 0x7f0d0120

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4102
    const/16 v1, 0x13

    goto/16 :goto_0
.end method

.method private getTypedSuggestions(Lcom/android/inputmethod/latin/WordComposer;)Ljava/util/List;
    .locals 7
    .param p1, "word"    # Lcom/android/inputmethod/latin/WordComposer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 2628
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Calibration;->getKeyboard()Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->getProximityInfo()Lcom/android/inputmethod/latin/ProximityInfo;

    move-result-object v5

    move-object v2, p1

    .line 2627
    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/latin/Suggest;->getSuggestions(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;ZLjava/lang/CharSequence;Lcom/android/inputmethod/latin/ProximityInfo;)Ljava/util/List;

    move-result-object v6

    .line 2629
    .local v6, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    return-object v6
.end method

.method private handleArrow(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 1940
    return-void
.end method

.method private handleBackspace()V
    .locals 9

    .prologue
    const/16 v8, 0x43

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1944
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInputHighlighted:Z

    if-eqz v5, :cond_1

    .line 1945
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    .line 1946
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceResults:Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;

    iget-object v4, v4, Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;->candidates:Ljava/util/List;

    .line 1947
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 1946
    invoke-virtual {v5, v4}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 1948
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->revertVoiceInput()V

    .line 2019
    :cond_0
    :goto_0
    return-void

    .line 1951
    :cond_1
    const/4 v0, 0x0

    .line 1952
    .local v0, "deleteChar":Z
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1953
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 1956
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1958
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAfterVoiceInput:Z

    if-eqz v5, :cond_2

    .line 1961
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v5}, Lcom/android/inputmethod/voice/VoiceInput;->getCursorPos()I

    move-result v5

    if-lez v5, :cond_2

    .line 1965
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v5}, Lcom/android/inputmethod/voice/VoiceInput;->getSelectionSpan()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    .line 1966
    invoke-virtual {v5}, Lcom/android/inputmethod/voice/VoiceInput;->getSelectionSpan()I

    move-result v1

    .line 1968
    .local v1, "deleteLen":I
    :goto_1
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v5, v1}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 1972
    .end local v1    # "deleteLen":I
    :cond_2
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-eqz v5, :cond_6

    .line 1973
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1974
    .local v3, "length":I
    if-lez v3, :cond_5

    .line 1975
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1976
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/WordComposer;->deleteLast()V

    .line 1977
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1978
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1979
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    .line 1981
    :cond_3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateSuggestions()V

    .line 1988
    .end local v3    # "length":I
    :goto_2
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateShiftKeyState()V

    .line 1989
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->backspace()V

    .line 1990
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()Lcom/android/inputmethod/latin/TextEntryState$State;

    move-result-object v4

    sget-object v5, Lcom/android/inputmethod/latin/TextEntryState$State;->UNDO_COMMIT:Lcom/android/inputmethod/latin/TextEntryState$State;

    if-ne v4, v5, :cond_7

    .line 1991
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->revertLastWord(Z)V

    .line 1992
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    :cond_4
    move v1, v4

    .line 1967
    goto :goto_1

    .line 1983
    .restart local v3    # "length":I
    :cond_5
    invoke-interface {v2, v4, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_2

    .line 1986
    .end local v3    # "length":I
    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 1994
    :cond_7
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnteredText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_9

    .line 1995
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnteredText:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1996
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v2, v4, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2017
    :cond_8
    :goto_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 2018
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 1997
    :cond_9
    if-eqz v0, :cond_8

    .line 1998
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v4, :cond_a

    .line 1999
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/CandidateView;->dismissAddToDictionaryHint()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2008
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->revertLastWord(Z)V

    goto :goto_3

    .line 2010
    :cond_a
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2011
    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendDownUpKeyEvents(I)V

    .line 2012
    iget v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mDeleteCount:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_8

    .line 2013
    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendDownUpKeyEvents(I)V

    goto :goto_3
.end method

.method private handleCharacter(I[IZII)V
    .locals 8
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "rplacing"    # Z
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2090
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInputHighlighted:Z

    if-eqz v5, :cond_0

    .line 2091
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->commitVoiceInput()V

    .line 2094
    :cond_0
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAfterVoiceInput:Z

    if-eqz v5, :cond_1

    .line 2097
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v5, v4}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationInsertCount(I)V

    .line 2099
    :cond_1
    iget v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastSelectionStart:I

    iget v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastSelectionEnd:I

    if-ne v5, v6, :cond_2

    .line 2100
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isCorrecting()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2101
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->abortCorrection(Z)V

    .line 2104
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->isAlphabet(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->isNumber(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isPredictionOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2105
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isCursorTouchingWord()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2106
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-nez v5, :cond_4

    .line 2107
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    .line 2108
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2109
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 2110
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 2113
    :cond_4
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2114
    if-eqz p2, :cond_5

    aget v5, p2, v3

    if-ltz v5, :cond_5

    .line 2115
    aget v5, p2, v3

    const v6, 0x10ffff

    if-le v5, v6, :cond_6

    .line 2190
    :cond_5
    :goto_0
    return-void

    .line 2118
    :cond_6
    if-nez p3, :cond_7

    .line 2119
    aget p1, p2, v3

    .line 2121
    :cond_7
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/Calibration;->isAlphabetMode()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2122
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2123
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v2

    .line 2124
    .local v2, "upperCaseCode":I
    if-eq v2, p1, :cond_12

    .line 2125
    move p1, v2

    .line 2136
    .end local v2    # "upperCaseCode":I
    :cond_8
    if-eqz p3, :cond_b

    .line 2137
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-eqz v5, :cond_13

    .line 2139
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lt v5, v4, :cond_a

    .line 2141
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2143
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v2

    .line 2144
    .restart local v2    # "upperCaseCode":I
    if-eq v2, p1, :cond_9

    .line 2145
    move p1, v2

    .line 2148
    .end local v2    # "upperCaseCode":I
    :cond_9
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-char v7, p1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2150
    :cond_a
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/WordComposer;->deleteLast()V

    .line 2151
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateShiftKeyState()V

    .line 2161
    :cond_b
    :goto_1
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-eqz v5, :cond_14

    .line 2162
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2163
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/Calibration;->isAlphabetMode()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2164
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_c

    .line 2165
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5, v4}, Lcom/android/inputmethod/latin/WordComposer;->setFirstCharCapitalized(Z)V

    .line 2167
    :cond_c
    if-nez p3, :cond_d

    .line 2168
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    int-to-char v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2170
    :cond_d
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5, p1, p2, p4, p5}, Lcom/android/inputmethod/latin/WordComposer;->add(I[III)V

    .line 2171
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2172
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_10

    .line 2174
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v5

    if-ne v5, v4, :cond_f

    .line 2175
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    .line 2176
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v6

    .line 2175
    invoke-direct {p0, v0, v6}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v6

    if-eqz v6, :cond_e

    move v3, v4

    :cond_e
    invoke-virtual {v5, v3}, Lcom/android/inputmethod/latin/WordComposer;->setAutoCapitalized(Z)V

    .line 2178
    :cond_f
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2180
    :cond_10
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateSuggestions()V

    .line 2185
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2186
    sget-boolean v3, Lcom/android/inputmethod/latin/DictionaryEditor;->PERF_DEBUG:Z

    if-eqz v3, :cond_11

    .line 2187
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->measureCps()V

    .line 2188
    :cond_11
    int-to-char v3, p1

    .line 2189
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->isWordSeparator(I)Z

    move-result v4

    .line 2188
    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZ)V

    goto/16 :goto_0

    .line 2129
    .restart local v2    # "upperCaseCode":I
    :cond_12
    new-instance v5, Ljava/lang/String;

    new-array v6, v4, [I

    aput p1, v6, v3

    invoke-direct {v5, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    .line 2130
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 2131
    .local v1, "upperCase":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->onText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2155
    .end local v1    # "upperCase":Ljava/lang/String;
    .end local v2    # "upperCaseCode":I
    :cond_13
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2156
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_b

    .line 2157
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_1

    .line 2182
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_14
    int-to-char v3, p1

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendKeyChar(C)V

    goto :goto_2
.end method

.method private handleClose()V
    .locals 2

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 2282
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mRecognizing:Z

    if-eqz v1, :cond_0

    .line 2283
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 2285
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->requestHideSelf(I)V

    .line 2286
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    if-eqz v1, :cond_1

    .line 2287
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    .line 2288
    .local v0, "inputView":Lcom/android/inputmethod/latin/LatinKeyboardView;
    if-eqz v0, :cond_1

    .line 2289
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->closing()V

    .line 2292
    .end local v0    # "inputView":Lcom/android/inputmethod/latin/LatinKeyboardView;
    :cond_1
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->endSession()V

    .line 2293
    return-void
.end method

.method private handleSeparator(I)V
    .locals 9
    .param p1, "primaryCode"    # I

    .prologue
    const/16 v8, 0x27

    const/16 v7, 0x20

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2193
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInputHighlighted:Z

    if-eqz v3, :cond_0

    .line 2194
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->commitVoiceInput()V

    .line 2197
    :cond_0
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAfterVoiceInput:Z

    if-eqz v3, :cond_1

    .line 2200
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v3, v5}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationInsertPunctuationCount(I)V

    .line 2205
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v3, :cond_2

    .line 2206
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/CandidateView;->dismissAddToDictionaryHint()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2207
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateSuggestions()V

    .line 2212
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 2213
    .local v1, "iso3lang":Ljava/lang/String;
    const/16 v3, 0x100

    if-ge p1, v3, :cond_3

    const-string v3, "heb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2214
    int-to-char v3, p1

    invoke-static {v3}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result p1

    .line 2216
    :cond_3
    const/4 v2, 0x0

    .line 2218
    .local v2, "pickedDefault":Z
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2219
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_4

    .line 2220
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2221
    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->abortCorrection(Z)V

    .line 2223
    :cond_4
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-eqz v3, :cond_a

    .line 2230
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoCorrectOn:Z

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2231
    :cond_5
    if-ne p1, v8, :cond_6

    const/16 v3, 0x22

    if-eq p1, v3, :cond_10

    .line 2232
    :cond_6
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    .line 2233
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 2234
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_7

    invoke-static {}, Lcom/android/inputmethod/latin/Calibration;->isT9orCompatMode()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2235
    :cond_7
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->pickDefaultSuggestion()Z

    move-result v2

    .line 2238
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mFieldUrlOrWeb:Z

    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isWordURLorEmail()Z

    move-result v3

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoSpaceAfterPunc:Z

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    .line 2239
    const/16 v3, 0x2e

    if-eq p1, v3, :cond_8

    if-eq p1, v8, :cond_8

    const/16 v3, 0x2c

    if-eq p1, v3, :cond_8

    const/16 v3, 0x29

    if-eq p1, v3, :cond_8

    const/16 v3, 0x3f

    if-eq p1, v3, :cond_8

    const/16 v3, 0x21

    if-ne p1, v3, :cond_9

    .line 2241
    :cond_8
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendSpace()V

    .line 2243
    :cond_9
    if-ne p1, v7, :cond_a

    .line 2244
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAddedAutoSpace:Z

    .line 2250
    :cond_a
    :goto_0
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAddedAutoSpace:Z

    if-eqz v3, :cond_b

    if-ne p1, v6, :cond_b

    .line 2251
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->removeTrailingSpace()V

    .line 2252
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAddedAutoSpace:Z

    .line 2254
    :cond_b
    int-to-char v3, p1

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendKeyChar(C)V

    .line 2258
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()Lcom/android/inputmethod/latin/TextEntryState$State;

    move-result-object v3

    sget-object v4, Lcom/android/inputmethod/latin/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

    if-ne v3, v4, :cond_c

    .line 2259
    const/16 v3, 0x2e

    if-ne p1, v3, :cond_c

    .line 2260
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->reswapPeriodAndSpace()V

    .line 2263
    :cond_c
    int-to-char v3, p1

    invoke-static {v3, v5}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZ)V

    .line 2264
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()Lcom/android/inputmethod/latin/TextEntryState$State;

    move-result-object v3

    sget-object v4, Lcom/android/inputmethod/latin/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

    if-ne v3, v4, :cond_11

    .line 2265
    if-eq p1, v6, :cond_11

    .line 2266
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->swapPunctuationAndSpace()V

    .line 2271
    :cond_d
    :goto_1
    if-eqz v2, :cond_e

    .line 2272
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->backToAcceptedDefault(Ljava/lang/CharSequence;)V

    .line 2274
    :cond_e
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2275
    if-eqz v0, :cond_f

    .line 2276
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2278
    :cond_f
    return-void

    .line 2247
    :cond_10
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0

    .line 2267
    :cond_11
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isPredictionOn()Z

    move-result v3

    if-eqz v3, :cond_d

    if-ne p1, v7, :cond_d

    .line 2268
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mDoubleSpaceToPeriod:Z

    if-eqz v3, :cond_d

    .line 2269
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->doubleSpace()V

    goto :goto_1
.end method

.method private handleShift()V
    .locals 1

    .prologue
    .line 2026
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleShiftInternal(Z)V

    .line 2027
    return-void
.end method

.method private handleShiftInternal(Z)V
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2030
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2031
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    .line 2032
    .local v1, "switcher":Lcom/android/inputmethod/latin/Calibration;
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    .line 2033
    .local v0, "inputView":Lcom/android/inputmethod/latin/LatinKeyboardView;
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2034
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCapsLock:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_2

    .line 2035
    :cond_0
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCapsLock:Z

    .line 2036
    invoke-virtual {v1, v5}, Lcom/android/inputmethod/latin/Calibration;->setShifted(Z)V

    .line 2048
    :cond_1
    :goto_0
    return-void

    .line 2037
    :cond_2
    if-eqz v0, :cond_1

    .line 2038
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2039
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCapsLock:Z

    .line 2040
    invoke-virtual {v1, v4}, Lcom/android/inputmethod/latin/Calibration;->setShiftLocked(Z)V

    goto :goto_0

    .line 2042
    :cond_3
    invoke-virtual {v1, v4}, Lcom/android/inputmethod/latin/Calibration;->setShifted(Z)V

    goto :goto_0

    .line 2046
    :cond_4
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->toggleShift()V

    goto :goto_0
.end method

.method private handleT9()V
    .locals 4

    .prologue
    .line 2066
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    .line 2067
    .local v0, "inputView":Lcom/android/inputmethod/latin/LatinKeyboardView;
    sget-boolean v1, Lcom/android/inputmethod/latin/DictionaryEditor;->T9Mode:Z

    .line 2068
    .local v1, "t9modeWas":Z
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->isT9on()Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->T9Mode:Z

    .line 2069
    if-eqz v1, :cond_0

    sget-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->T9Mode:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-eqz v2, :cond_0

    .line 2071
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->pickSuggestion(Ljava/lang/CharSequence;Z)V

    .line 2073
    :cond_0
    return-void
.end method

.method private handleToggleCapsLock()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2051
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2052
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    .line 2053
    .local v0, "switcher":Lcom/android/inputmethod/latin/Calibration;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2054
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCapsLock:Z

    if-eqz v1, :cond_1

    .line 2055
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCapsLock:Z

    .line 2056
    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/Calibration;->setShifted(Z)V

    .line 2063
    :cond_0
    :goto_0
    return-void

    .line 2058
    :cond_1
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCapsLock:Z

    .line 2059
    invoke-virtual {v0, v4}, Lcom/android/inputmethod/latin/Calibration;->setShiftLocked(Z)V

    .line 2060
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateShiftKeyState()V

    goto :goto_0
.end method

.method private handleVoiceResults()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2528
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAfterVoiceInput:Z

    .line 2529
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mImmediatelyAfterVoiceInput:Z

    .line 2531
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 2532
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isFullscreenMode()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2534
    if-eqz v4, :cond_0

    .line 2535
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 2536
    .local v6, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-interface {v4, v6, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    .line 2542
    .end local v6    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->vibrate()V

    .line 2543
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->switchToKeyboardView()V

    .line 2545
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2546
    .local v5, "nBest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->preferCapitalization()Z

    move-result v9

    if-nez v9, :cond_2

    .line 2547
    iget-object v9, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v9}, Lcom/android/inputmethod/latin/Calibration;->isAlphabetMode()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    .line 2548
    invoke-virtual {v9}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    move v2, v7

    .line 2549
    .local v2, "capitalizeFirstWord":Z
    :goto_0
    iget-object v9, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceResults:Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;

    iget-object v9, v9, Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 2557
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 2589
    :goto_2
    return-void

    .end local v2    # "capitalizeFirstWord":Z
    :cond_2
    move v2, v8

    .line 2548
    goto :goto_0

    .line 2549
    .restart local v2    # "capitalizeFirstWord":Z
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2550
    .local v1, "c":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 2551
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2552
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2551
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2554
    :cond_4
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2561
    .end local v1    # "c":Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    .line 2563
    .local v3, "cs":[Ljava/lang/CharSequence;
    iget-boolean v9, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestVoiceCohice:Z

    if-eqz v9, :cond_8

    .line 2566
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2568
    .local v0, "bestResult":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/inputmethod/voice/VoiceInput;->logVoiceInputDelivered(I)V

    .line 2570
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHints:Lcom/android/inputmethod/latin/Hints;

    invoke-virtual {v7, v0}, Lcom/android/inputmethod/latin/Hints;->registerVoiceResult(Ljava/lang/String;)V

    .line 2572
    if-eqz v4, :cond_6

    .line 2573
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2576
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 2577
    invoke-static {v4, v0}, Lcom/android/inputmethod/latin/EditingUtil;->appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 2579
    if-eqz v4, :cond_7

    .line 2580
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2582
    :cond_7
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInputHighlighted:Z

    .line 2583
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordToSuggestions:Ljava/util/Map;

    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceResults:Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;

    iget-object v8, v8, Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;->alternatives:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 2587
    .end local v0    # "bestResult":Ljava/lang/String;
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->createResultDialog([Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private initSuggest(Ljava/lang/String;)V
    .locals 14
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    const/high16 v13, -0x1000000

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 669
    sput-object p1, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputLocale:Ljava/lang/String;

    .line 672
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 673
    const-string v9, "latin_ime_voice_input_supported_locales"

    .line 674
    const-string v10, "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

    .line 671
    invoke-static {v8, v9, v10}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 676
    .local v6, "supportedLocalesString":Ljava/lang/String;
    const-string v8, "\\s+"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 675
    invoke-static {v8}, Lcom/android/inputmethod/latin/DictionaryEditor;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    .line 679
    .local v7, "voiceInputSupportedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputLocale:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 678
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLocaleSupportedForVoiceInput:Z

    .line 681
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 682
    .local v2, "orig":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 683
    .local v0, "conf":Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 684
    .local v3, "saveLocale":Ljava/util/Locale;
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 685
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v2, v0, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 686
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v8, :cond_0

    .line 687
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 690
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 691
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v8, "quick_fixes"

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mQuickFixes:Z

    .line 692
    const-string v8, "use_contact_dictionary"

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseContactDictionary:Z

    .line 694
    sget-object v8, Lcom/android/inputmethod/latin/DictionaryEditor;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/inputmethod/latin/DictionaryEditor;->getDictionary(Landroid/content/Context;Landroid/content/res/Resources;)Ljava/util/ArrayList;

    move-result-object v1

    .line 695
    .local v1, "dictionaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    new-instance v8, Lcom/android/inputmethod/latin/Suggest;

    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v8, p0, v1, v9, v2}, Lcom/android/inputmethod/latin/Suggest;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Locale;Landroid/content/res/Resources;)V

    iput-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 696
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateAutoTextEnabled(Ljava/util/Locale;)V

    .line 697
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    if-eqz v8, :cond_1

    .line 698
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/UserDictionary;->close()V

    .line 699
    :cond_1
    new-instance v8, Lcom/android/inputmethod/latin/UserDictionary;

    sget-object v9, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputLocale:Ljava/lang/String;

    invoke-direct {v8, p0, v9}, Lcom/android/inputmethod/latin/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    .line 701
    iget-boolean v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseContactDictionary:Z

    if-nez v8, :cond_2

    .line 703
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    .line 705
    :cond_2
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseContactDictionary:Z

    if-eqz v8, :cond_3

    .line 706
    new-instance v8, Lcom/android/inputmethod/latin/ContactsDictionary;

    .line 707
    const/4 v9, 0x4

    invoke-direct {v8, p0, v9}, Lcom/android/inputmethod/latin/ContactsDictionary;-><init>(Landroid/content/Context;I)V

    .line 706
    iput-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    .line 710
    :cond_3
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoTextDictionary:Lcom/android/inputmethod/latin/AutoTextDictionary;

    if-nez v8, :cond_4

    .line 711
    new-instance v8, Lcom/android/inputmethod/latin/AutoTextDictionary;

    invoke-direct {v8, p0, p0}, Lcom/android/inputmethod/latin/AutoTextDictionary;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/DictionaryEditor;)V

    iput-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoTextDictionary:Lcom/android/inputmethod/latin/AutoTextDictionary;

    .line 714
    :cond_4
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    if-eqz v8, :cond_5

    .line 715
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/AutoDictionary;->close()V

    .line 717
    :cond_5
    new-instance v8, Lcom/android/inputmethod/latin/AutoDictionary;

    sget-object v9, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputLocale:Ljava/lang/String;

    .line 718
    const/4 v10, 0x3

    invoke-direct {v8, p0, p0, v9, v10}, Lcom/android/inputmethod/latin/AutoDictionary;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/DictionaryEditor;Ljava/lang/String;I)V

    .line 717
    iput-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    .line 719
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    if-eqz v8, :cond_6

    .line 720
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/UserBigramDictionary;->close()V

    .line 722
    :cond_6
    new-instance v8, Lcom/android/inputmethod/latin/UserBigramDictionary;

    .line 723
    sget-object v9, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputLocale:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-direct {v8, p0, p0, v9, v10}, Lcom/android/inputmethod/latin/UserBigramDictionary;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/DictionaryEditor;Ljava/lang/String;I)V

    .line 722
    iput-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    .line 724
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v9, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v8, v9}, Lcom/android/inputmethod/latin/Suggest;->setUserBigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 725
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v9, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v8, v9}, Lcom/android/inputmethod/latin/Suggest;->setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 726
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v9, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-virtual {v8, v9}, Lcom/android/inputmethod/latin/Suggest;->setContactsDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 727
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v9, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-virtual {v8, v9}, Lcom/android/inputmethod/latin/Suggest;->setAutoDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 728
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v9, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoTextDictionary:Lcom/android/inputmethod/latin/AutoTextDictionary;

    invoke-virtual {v8, v9}, Lcom/android/inputmethod/latin/Suggest;->setAutoTextDictionary(Lcom/android/inputmethod/latin/AutoTextDictionary;)V

    .line 729
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateCorrectionMode()V

    .line 730
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0d0038

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordSeparators:Ljava/lang/String;

    .line 731
    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 732
    const v9, 0x7f0d0039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 731
    iput-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSentenceSeparators:Ljava/lang/String;

    .line 734
    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 735
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v2, v0, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 737
    const-string v8, "suggestion_font_color"

    iget-object v9, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 738
    const v10, 0x7f0a0001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 737
    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestionFontClor:I

    .line 739
    sget v8, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestionFontClor:I

    invoke-static {v8}, Lcom/android/inputmethod/latin/CandidateView;->setColor(I)V

    .line 741
    const-string v8, "keyboard_background_color"

    invoke-interface {v4, v8, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/inputmethod/latin/DictionaryEditor;->mKeyboardBackgroundColor:I

    .line 743
    const-string v8, "suggestion_bar_color"

    invoke-interface {v4, v8, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestionBarColor:I

    .line 745
    const-string v8, "suggestion_bar_size"

    const-string v9, "1"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 746
    .local v5, "suggestBarSize":Ljava/lang/String;
    sput-boolean v11, Lcom/android/inputmethod/latin/DictionaryEditor;->suggestionSizeBig:Z

    .line 747
    const-string v8, "2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 749
    sput-boolean v12, Lcom/android/inputmethod/latin/DictionaryEditor;->suggestionSizeBig:Z

    .line 751
    :cond_7
    const-string v8, "button_color"

    iget-object v9, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 752
    const v10, 0x7f0a0002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 751
    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/inputmethod/latin/DictionaryEditor;->mButtonColor:I

    .line 753
    sget v8, Lcom/android/inputmethod/latin/DictionaryEditor;->mButtonColor:I

    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setColor(I)V

    .line 755
    const-string v8, "enable_rtl"

    invoke-interface {v4, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/inputmethod/latin/DictionaryEditor;->mRTLEnabled:Z

    .line 756
    sget-boolean v8, Lcom/android/inputmethod/latin/DictionaryEditor;->mRTLEnabled:Z

    invoke-static {v8}, Lcom/android/inputmethod/latin/CandidateView;->setRTL(Z)V

    .line 758
    const-string v8, "debug_pref"

    invoke-interface {v4, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/inputmethod/latin/DictionaryEditor;->PERF_DEBUG:Z

    .line 759
    sget-boolean v8, Lcom/android/inputmethod/latin/DictionaryEditor;->PERF_DEBUG:Z

    if-eqz v8, :cond_8

    .line 760
    sput-boolean v12, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    .line 763
    :cond_8
    const-string v8, "show_touch_points"

    invoke-interface {v4, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowTouchPoints:Z

    .line 764
    iget-boolean v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowTouchPoints:Z

    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setShowTouchPoints(Z)V

    .line 767
    return-void
.end method

.method private initSuggestPuncList(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 3893
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestPuncList:Ljava/util/List;

    .line 3894
    const-string v1, "punctuation_editor"

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestPuncs:Ljava/lang/String;

    .line 3896
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestPuncs:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3897
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestPuncs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 3901
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 3898
    .restart local v0    # "i":I
    :cond_1
    sget-object v1, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestPuncList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestPuncs:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3897
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAlphabet(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1740
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1741
    const/4 v0, 0x1

    .line 1743
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAltSpaceLangSwitchNotPossible()Z
    .locals 2

    .prologue
    .line 4315
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 4316
    .local v0, "model":Ljava/lang/String;
    const-string v1, "milestone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "droid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4317
    :cond_0
    const/4 v1, 0x1

    .line 4319
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCandidateStripVisible()Z
    .locals 1

    .prologue
    .line 2330
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowSuggestions:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCursorTouchingWord()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3094
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3095
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 3107
    :cond_0
    :goto_0
    return v3

    .line 3097
    :cond_1
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3098
    .local v1, "toLeft":Ljava/lang/CharSequence;
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3099
    .local v2, "toRight":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3100
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->isSuggestedPunctuation(I)Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 3101
    goto :goto_0

    .line 3103
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3104
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->isSuggestedPunctuation(I)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 3105
    goto :goto_0
.end method

.method private isNumber(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1747
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1748
    const/4 v0, 0x1

    .line 1750
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPaidVersionIsntalled()V
    .locals 2

    .prologue
    .line 4326
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4327
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/inputmethod/latin/DictionaryEditor$9;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$9;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    .line 4344
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4345
    return-void
.end method

.method private isPredictionOn()Z
    .locals 1

    .prologue
    .line 2326
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    return v0
.end method

.method private isSentenceSeparator(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 3154
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSentenceSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isShowingOptionDialog()Z
    .locals 1

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpace(I)Z
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 1700
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSuggestedPunctuation(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 3904
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestPuncs:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isT9Mode()Z
    .locals 1

    .prologue
    .line 2077
    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->T9Mode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/inputmethod/latin/Calibration;->isT9orCompatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWordURLorEmail()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2827
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    const-string v6, "\t\n "

    .line 2826
    invoke-static {v5, v6}, Lcom/android/inputmethod/latin/EditingUtil;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2828
    .local v2, "wordAtCursor":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2830
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2831
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    move v3, v4

    .line 2849
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    :goto_1
    return v3

    .line 2834
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2836
    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2837
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "www"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2838
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move v3, v4

    .line 2839
    goto :goto_1

    .line 2831
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadSettings()V
    .locals 20

    .prologue
    .line 3701
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 3702
    .local v15, "sp":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mFreeVersion:Z

    .line 3703
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "free.inputmethod.latin.perfectkeyboard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3705
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mFreeVersion:Z

    .line 3706
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isPaidVersionIsntalled()V

    .line 3708
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/latin/DictionaryEditor;->HandlePopularDomain(Landroid/content/SharedPreferences;)V

    .line 3709
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/latin/DictionaryEditor;->HandleCustomeSmileys(Landroid/content/SharedPreferences;)V

    .line 3710
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/latin/DictionaryEditor;->HandlePunctuationPopup(Landroid/content/SharedPreferences;)V

    .line 3711
    const-string v2, "vibrate_on"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVibrateOn:Z

    .line 3712
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVibrateOn:Z

    if-eqz v2, :cond_1

    .line 3713
    const-string v2, "vibration_length"

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3714
    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 3713
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVibrateLength:I

    .line 3715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVibrator:Landroid/os/Vibrator;

    if-nez v2, :cond_1

    .line 3716
    const-string v2, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVibrator:Landroid/os/Vibrator;

    .line 3719
    :cond_1
    const-string v2, "no_popup_on_space"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mNoPopupOnSpace:Z

    .line 3720
    const-string v2, "auto_swithch_to_qwerty"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoBackToAlpha:Z

    .line 3721
    const-string v2, "long_press_on_123_to_settings"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mLongPressOn123ToSettings:Z

    .line 3725
    const-string v2, "gesture_sensitivity1"

    .line 3726
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 3725
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureSensitivity:I

    .line 3727
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureSensitivity:I

    int-to-long v2, v2

    sput-wide v2, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThresholdMul:J

    .line 3728
    const-string v2, "sound_on"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSoundOn:Z

    .line 3729
    const-string v2, "voice_input_best_choice"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestVoiceCohice:Z

    .line 3730
    const-string v2, "suggest_words_with_missing_space_character"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestWordsMissingSpace:Z

    .line 3732
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/latin/DictionaryEditor;->getAllSwipesettings(Landroid/content/SharedPreferences;)V

    .line 3734
    const-string v2, "popup_on"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 3735
    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3734
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPopupOn:Z

    .line 3736
    const-string v2, "auto_cap"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoCap:Z

    .line 3738
    const-string v2, "long_press_delay"

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3739
    const v4, 0x7f0b0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 3737
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLongPressDelay:I

    .line 3740
    const-string v2, "perfectkeboard"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mLongPressDelay = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLongPressDelay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    const-string v2, "quick_fixes"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mQuickFixes:Z

    .line 3742
    const-string v2, "has_used_voice_input"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHasUsedVoiceInput:Z

    .line 3744
    const-string v2, "has_used_voice_input_unsupported_locale"

    const/4 v3, 0x0

    .line 3743
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 3756
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3757
    const-string v3, "latin_ime_voice_input_supported_locales"

    .line 3758
    const-string v4, "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

    .line 3755
    invoke-static {v2, v3, v4}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3760
    .local v16, "supportedLocalesString":Ljava/lang/String;
    const-string v2, "\\s+"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3759
    invoke-static {v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v17

    .line 3763
    .local v17, "voiceInputSupportedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputLocale:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 3762
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLocaleSupportedForVoiceInput:Z

    .line 3765
    const-string v2, "show_suggestions"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowSuggestions:Z

    .line 3768
    const-string v2, "voice_mode"

    .line 3769
    const v3, 0x7f0d0090

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3768
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3771
    .local v18, "voiceMode":Ljava/lang/String;
    const v2, 0x7f0d0092

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3772
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableVoiceButton:Z

    if-eqz v2, :cond_8

    const/4 v12, 0x1

    .line 3774
    .local v12, "enableVoice":Z
    :goto_0
    const v2, 0x7f0d0090

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 3775
    .local v19, "voiceOnPrimary":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    if-eqz v2, :cond_3

    .line 3776
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableVoice:Z

    if-ne v12, v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceOnPrimary:Z

    move/from16 v0, v19

    if-eq v0, v2, :cond_3

    .line 3777
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    move/from16 v0, v19

    invoke-virtual {v2, v12, v0}, Lcom/android/inputmethod/latin/Calibration;->setVoiceMode(ZZ)V

    .line 3779
    :cond_3
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableVoice:Z

    .line 3780
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceOnPrimary:Z

    .line 3783
    const-string v2, "enable_cursors"

    .line 3784
    const v3, 0x7f0d012b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3783
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3785
    .local v11, "enableCursors":Ljava/lang/String;
    const v2, 0x7f0d012a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3786
    const/4 v2, 0x0

    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableCursorsMode:I

    .line 3787
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/inputmethod/latin/LatinKeyboard;->mode_arrows:Z

    .line 3809
    :cond_4
    :goto_1
    const-string v2, "tap_sound_style_pref"

    .line 3810
    const v3, 0x7f0d00d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3809
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3812
    .local v14, "soundStyle":Ljava/lang/String;
    const v2, 0x7f0d00d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3813
    const-string v2, "android.ogg"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    .line 3836
    :cond_5
    :goto_2
    const v2, 0x7f0d00dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3837
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTypePlay:Landroid/media/SoundPool;

    .line 3840
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 3841
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v9

    .line 3842
    .local v9, "descriptor":Landroid/content/res/AssetFileDescriptor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTypePlay:Landroid/media/SoundPool;

    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    .line 3843
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    const/4 v8, 0x1

    .line 3842
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSoundID:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    .line 3858
    .end local v9    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_6
    :goto_3
    const-string v2, "sound_volume"

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3859
    const v4, 0x7f0b0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 3858
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSoundVolume:F

    .line 3861
    const-string v2, "suggestion_font_color"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 3862
    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 3861
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestionFontClor:I

    .line 3863
    sget v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestionFontClor:I

    invoke-static {v2}, Lcom/android/inputmethod/latin/CandidateView;->setColor(I)V

    .line 3865
    sget-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomBackgrounColors:Z

    if-eqz v2, :cond_f

    .line 3866
    const-string v2, "button_color"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 3867
    const v4, 0x7f0a0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 3866
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mButtonColor:I

    .line 3868
    sget v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mButtonColor:I

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setColor(I)V

    .line 3874
    :cond_7
    :goto_4
    const-string v2, "double_space_to_period"

    .line 3875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3874
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mDoubleSpaceToPeriod:Z

    .line 3878
    const-string v2, "auto_space"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 3879
    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3878
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoSpaceAfterPunc:Z

    .line 3881
    const-string v2, "volume_key_for_left_right_support"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseVolumeKeyForLeftRight:Z

    .line 3883
    const-string v2, "auto_complete"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 3884
    const/high16 v4, 0x7f090000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3883
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3885
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowSuggestions:Z

    and-int/2addr v2, v3

    .line 3883
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoCorrectEnabled:Z

    .line 3886
    const-string v2, "bigram_suggestion"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowSuggestions:Z

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBigramSuggestionEnabled:Z

    .line 3887
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateCorrectionMode()V

    .line 3888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateAutoTextEnabled(Ljava/util/Locale;)V

    .line 3889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v2, v15}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 3890
    return-void

    .line 3772
    .end local v11    # "enableCursors":Ljava/lang/String;
    .end local v12    # "enableVoice":Z
    .end local v14    # "soundStyle":Ljava/lang/String;
    .end local v19    # "voiceOnPrimary":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3790
    .restart local v11    # "enableCursors":Ljava/lang/String;
    .restart local v12    # "enableVoice":Z
    .restart local v19    # "voiceOnPrimary":Z
    :cond_9
    const v2, 0x7f0d012b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3791
    const/4 v2, 0x1

    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableCursorsMode:I

    goto/16 :goto_1

    .line 3793
    :cond_a
    const v2, 0x7f0d012c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3794
    const/4 v2, 0x2

    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableCursorsMode:I

    .line 3795
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/inputmethod/latin/LatinKeyboard;->mode_arrows:Z

    goto/16 :goto_1

    .line 3814
    .restart local v14    # "soundStyle":Ljava/lang/String;
    :cond_b
    const v2, 0x7f0d00dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3815
    const-string v2, "iphone.ogg"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    goto/16 :goto_2

    .line 3816
    :cond_c
    const v2, 0x7f0d00da

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3817
    const-string v2, "samsung.ogg"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    goto/16 :goto_2

    .line 3818
    :cond_d
    const v2, 0x7f0d00db

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3819
    const-string v2, "tock.ogg"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    goto/16 :goto_2

    .line 3820
    :cond_e
    const v2, 0x7f0d00dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3821
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    .line 3822
    .local v13, "sdcard":Ljava/io/File;
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTypePlay:Landroid/media/SoundPool;

    .line 3823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "external_sd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3824
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "custom.ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3823
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    .line 3826
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTypePlay:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSoundID:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 3827
    :catch_0
    move-exception v10

    .line 3829
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_2

    .line 3830
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v10

    .line 3832
    .local v10, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_2

    .line 3844
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    .end local v13    # "sdcard":Ljava/io/File;
    :catch_2
    move-exception v10

    .line 3846
    .local v10, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_3

    .line 3849
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 3851
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_3

    .line 3852
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v10

    .line 3854
    .local v10, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_3

    .line 3869
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :cond_f
    sget-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    if-nez v2, :cond_7

    .line 3870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mButtonColor:I

    .line 3871
    sget v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mButtonColor:I

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setColor(I)V

    goto/16 :goto_4
.end method

.method private makeFieldContext()Lcom/android/inputmethod/voice/FieldContext;
    .locals 5

    .prologue
    .line 3535
    new-instance v0, Lcom/android/inputmethod/voice/FieldContext;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3536
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 3537
    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 3538
    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getEnabledLanguages()[Ljava/lang/String;

    move-result-object v4

    .line 3535
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/inputmethod/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private maybeRemovePreviousPeriod(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v5, 0x2e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1704
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1705
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1716
    :cond_0
    :goto_0
    return-void

    .line 1710
    :cond_1
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1711
    .local v1, "lastOne":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1712
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1713
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1714
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private measureCps()V
    .locals 9

    .prologue
    .line 3994
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3995
    .local v1, "now":J
    iget-wide v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastCpsTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 3996
    const-wide/16 v5, 0x64

    sub-long v5, v1, v5

    iput-wide v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastCpsTime:J

    .line 3997
    :cond_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCpsIntervals:[J

    iget v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCpsIndex:I

    iget-wide v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastCpsTime:J

    sub-long v7, v1, v7

    aput-wide v7, v5, v6

    .line 3998
    iput-wide v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastCpsTime:J

    .line 3999
    iget v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCpsIndex:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCpsIndex:I

    .line 4000
    const-wide/16 v3, 0x0

    .line 4001
    .local v3, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v5, 0x10

    if-lt v0, v5, :cond_1

    .line 4003
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CPS = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x467a0000    # 16000.0f

    long-to-float v8, v3

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4004
    return-void

    .line 4002
    :cond_1
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCpsIntervals:[J

    aget-wide v5, v5, v0

    add-long/2addr v3, v5

    .line 4001
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "elements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3962
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6e

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v0, v2, 0x5

    .line 3963
    .local v0, "capacity":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3964
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3965
    return-object v1
.end method

.method private notifyResult(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 4492
    if-nez p1, :cond_0

    .line 4511
    :goto_0
    return-void

    .line 4494
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/voice/VoiceInput;->logVoiceInputDelivered(I)V

    .line 4496
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHints:Lcom/android/inputmethod/latin/Hints;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/Hints;->registerVoiceResult(Ljava/lang/String;)V

    .line 4497
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4499
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 4500
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4503
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 4504
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/EditingUtil;->appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 4506
    if-eqz v0, :cond_2

    .line 4507
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4509
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInputHighlighted:Z

    .line 4510
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordToSuggestions:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceResults:Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;

    iget-object v2, v2, Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;->alternatives:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private onOptionKeyLongPressed()V
    .locals 1

    .prologue
    .line 1771
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isShowingOptionDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1772
    invoke-static {p0}, Lcom/android/inputmethod/latin/DictionaryEditorUtil;->hasMultipleEnabledIMEs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1773
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->showInputMethodPicker()V

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1775
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->launchSettings()V

    goto :goto_0
.end method

.method private onOptionKeyPressed()V
    .locals 1

    .prologue
    .line 1761
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isShowingOptionDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1762
    invoke-static {p0}, Lcom/android/inputmethod/latin/DictionaryEditorUtil;->hasMultipleEnabledIMEs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1763
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->showOptionsMenu()V

    .line 1768
    :cond_0
    :goto_0
    return-void

    .line 1765
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->launchSettings()V

    goto :goto_0
.end method

.method private pickDefaultSuggestion()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2712
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2713
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2714
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateSuggestions()V

    .line 2716
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2717
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2718
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAccepted:Z

    .line 2719
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->pickSuggestion(Ljava/lang/CharSequence;Z)V

    .line 2721
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->addToDictionaries(Ljava/lang/CharSequence;I)V

    .line 2725
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private pickSuggestion(Ljava/lang/CharSequence;Z)V
    .locals 7
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .param p2, "correcting"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2884
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    .line 2885
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    .line 2886
    .local v1, "inputView":Lcom/android/inputmethod/latin/LatinKeyboardView;
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCapsLock:Z

    if-eqz v3, :cond_4

    .line 2887
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2893
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2894
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 2895
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->rememberReplacedWord(Ljava/lang/CharSequence;)V

    .line 2896
    if-eqz p2, :cond_1

    .line 2897
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordSeparators:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/inputmethod/latin/EditingUtil;->deleteWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 2899
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/CandidateView;->getSuggestions()Ljava/util/List;

    move-result-object v2

    .line 2900
    .local v2, "suggestedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {p0, p1, v2}, Lcom/android/inputmethod/latin/SuggestionSpanUtils;->getTextWithSuggestionSpan(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v3, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2905
    .end local v2    # "suggestedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 2906
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCommittedLength:I

    .line 2907
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/LatinKeyboard;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboard;->setPreferredLetters([I)V

    .line 2909
    if-nez p2, :cond_3

    .line 2910
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->setNextSuggestions()V

    .line 2912
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2913
    return-void

    .line 2888
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->preferCapitalization()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2889
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/Calibration;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2890
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2891
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1, v6, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2890
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private playKeyClick(I)V
    .locals 7
    .param p1, "primaryCode"    # I

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 3579
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 3580
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3581
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateRingerMode()V

    .line 3584
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSoundOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSilentMode:Z

    if-nez v0, :cond_1

    .line 3588
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTypePlay:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSoundID:I

    iget v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSoundVolume:F

    div-float/2addr v2, v4

    iget v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSoundVolume:F

    div-float/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 3599
    :cond_1
    return-void
.end method

.method private postUpdateOldSuggestions()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 2320
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2321
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    .line 2322
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 2321
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2323
    return-void
.end method

.method private postUpdateShiftKeyState()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 1484
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1486
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    .line 1487
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 1486
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1488
    return-void
.end method

.method private postUpdateSuggestions()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2314
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2315
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    .line 2316
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 2315
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2317
    return-void
.end method

.method private reallyStartListening(Z)V
    .locals 6
    .param p1, "swipe"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2427
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHasUsedVoiceInput:Z

    if-nez v2, :cond_0

    .line 2431
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2432
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "has_used_voice_input"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2433
    invoke-static {v1}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 2434
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHasUsedVoiceInput:Z

    .line 2437
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLocaleSupportedForVoiceInput:Z

    if-nez v2, :cond_1

    .line 2438
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v2, :cond_1

    .line 2444
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2445
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "has_used_voice_input_unsupported_locale"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2447
    invoke-static {v1}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 2448
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 2452
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->clearSuggestions()V

    .line 2454
    new-instance v0, Lcom/android/inputmethod/voice/FieldContext;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2455
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 2456
    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 2457
    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getEnabledLanguages()[Ljava/lang/String;

    move-result-object v5

    .line 2454
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/inputmethod/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2458
    .local v0, "context":Lcom/android/inputmethod/voice/FieldContext;
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v2, v0, p1}, Lcom/android/inputmethod/voice/VoiceInput;->startListening(Lcom/android/inputmethod/voice/FieldContext;Z)V

    .line 2459
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->switchToRecognitionStatusView(Landroid/content/res/Configuration;)V

    .line 2460
    return-void
.end method

.method private rememberReplacedWord(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 2852
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowingVoiceSuggestions:Z

    if-eqz v2, :cond_2

    .line 2856
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordSeparators:Ljava/lang/String;

    .line 2855
    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/EditingUtil;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2857
    .local v1, "wordToBeReplaced":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2858
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2860
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2861
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordToSuggestions:Ljava/util/Map;

    .line 2862
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2863
    .local v0, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2864
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2866
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2867
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2868
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2871
    .end local v0    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v1    # "wordToBeReplaced":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private removeTrailingSpace()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1719
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1720
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1728
    :cond_0
    :goto_0
    return-void

    .line 1723
    :cond_1
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1724
    .local v1, "lastOne":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1725
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 1726
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private resetShift()V
    .locals 1

    .prologue
    .line 2022
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleShiftInternal(Z)V

    .line 2023
    return-void
.end method

.method private reswapPeriodAndSpace()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x2e

    .line 1647
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1648
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1674
    :cond_0
    :goto_0
    return-void

    .line 1650
    :cond_1
    invoke-interface {v0, v7, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1651
    .local v1, "lastThree":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 1652
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_2

    .line 1653
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1654
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->isSpace(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1655
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1656
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1657
    invoke-interface {v0, v6, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1658
    const-string v2, " .."

    invoke-interface {v0, v2, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1659
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1660
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .line 1663
    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1664
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1665
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1666
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->isSpace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1667
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1668
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1669
    invoke-interface {v0, v6, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1670
    const-string v2, ".."

    invoke-interface {v0, v2, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1671
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1672
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0
.end method

.method private revertVoiceInput()V
    .locals 3

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1439
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1440
    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1441
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateSuggestions()V

    .line 1442
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInputHighlighted:Z

    .line 1443
    return-void
.end method

.method private sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 3111
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3112
    .local v0, "beforeText":Ljava/lang/CharSequence;
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private saveWordInHistory(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 2296
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 2297
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 2311
    :cond_0
    :goto_0
    return-void

    .line 2301
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2307
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2308
    .local v1, "resultCopy":Ljava/lang/String;
    new-instance v0, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;

    .line 2309
    new-instance v2, Lcom/android/inputmethod/latin/WordComposer;

    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v2, v3}, Lcom/android/inputmethod/latin/WordComposer;-><init>(Lcom/android/inputmethod/latin/WordComposer;)V

    .line 2308
    invoke-direct {v0, p0, v1, v2}, Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/WordComposer;)V

    .line 2310
    .local v0, "entry":Lcom/android/inputmethod/latin/DictionaryEditor$TypedWordAlternatives;
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sendSpace()V
    .locals 1

    .prologue
    .line 3158
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendKeyChar(C)V

    .line 3159
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 3161
    return-void
.end method

.method private setCandidatesViewShownInternal(ZZ)V
    .locals 1
    .param p1, "shown"    # Z
    .param p2, "needsInputViewShown"    # Z

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->onEvaluateInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1318
    if-eqz p1, :cond_2

    .line 1319
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1320
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    .line 1321
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1318
    :goto_0
    invoke-super {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 1323
    :cond_1
    return-void

    .line 1321
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setKeyboardBackgroundColor(I)V
    .locals 0
    .param p0, "color"    # I

    .prologue
    .line 4015
    sput p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mKeyboardBackgroundColor:I

    .line 4016
    return-void
.end method

.method private setNextSuggestions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3045
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestPuncList:Ljava/util/List;

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 3046
    return-void
.end method

.method private setOldSuggestions()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3008
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowingVoiceSuggestions:Z

    .line 3009
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v2, :cond_1

    .line 3010
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3042
    :cond_0
    :goto_0
    return-void

    .line 3014
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3015
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 3017
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-nez v2, :cond_4

    .line 3020
    iget v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastSelectionStart:I

    .line 3021
    iget v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastSelectionEnd:I

    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordSeparators:Ljava/lang/String;

    .line 3020
    invoke-static {v0, v2, v3, v4}, Lcom/android/inputmethod/latin/EditingUtil;->getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;

    move-result-object v1

    .line 3023
    .local v1, "touching":Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 3024
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3026
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->applyVoiceAlternatives(Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3027
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->applyTypedAlternatives(Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3028
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->abortCorrection(Z)V

    .line 3034
    :goto_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 3030
    :cond_2
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->selectedForCorrection()V

    .line 3031
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/EditingUtil;->underlineWord(Landroid/view/inputmethod/InputConnection;Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;)V

    goto :goto_1

    .line 3036
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->abortCorrection(Z)V

    .line 3037
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->setNextSuggestions()V

    goto :goto_0

    .line 3040
    .end local v1    # "touching":Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->abortCorrection(Z)V

    goto :goto_0
.end method

.method public static setSuggestionBarColor(I)V
    .locals 0
    .param p0, "color"    # I

    .prologue
    .line 4022
    sput p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestionBarColor:I

    .line 4023
    return-void
.end method

.method private setSuggestions(Ljava/util/List;ZZZ)V
    .locals 1
    .param p2, "completions"    # Z
    .param p3, "typedWordValid"    # Z
    .param p4, "haveMinimalSuggestion"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 2599
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mIsShowingHint:Z

    if-eqz v0, :cond_0

    .line 2600
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->setCandidatesView(Landroid/view/View;)V

    .line 2601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mIsShowingHint:Z

    .line 2604
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v0, :cond_1

    .line 2605
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2608
    :cond_1
    return-void
.end method

.method private shouldShowVoiceButton(Lcom/android/inputmethod/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .param p1, "fieldContext"    # Lcom/android/inputmethod/voice/FieldContext;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 3549
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->fieldCanDoVoice(Lcom/android/inputmethod/voice/FieldContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3550
    if-eqz p2, :cond_0

    const-string v0, "nm"

    .line 3551
    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3552
    :cond_0
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 3548
    goto :goto_0
.end method

.method private showCorrections(Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;)V
    .locals 4
    .param p1, "alternatives"    # Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;

    .prologue
    const/4 v3, 0x0

    .line 2633
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;->getAlternatives()Ljava/util/List;

    move-result-object v0

    .line 2634
    .local v0, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard;

    .line 2635
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setPreferredLetters([I)V

    .line 2636
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/DictionaryEditor$WordAlternatives;->getOriginalWord()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V

    .line 2638
    return-void
.end method

.method private showInputMethodPicker()V
    .locals 1

    .prologue
    .line 1756
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1757
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 1758
    return-void
.end method

.method private showOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 3909
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x23

    if-lt v6, v7, :cond_0

    .line 3911
    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v6, 0x1030128

    invoke-direct {v5, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3912
    .local v5, "wrapper":Landroid/view/ContextThemeWrapper;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3919
    .end local v5    # "wrapper":Landroid/view/ContextThemeWrapper;
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3920
    const v6, 0x7f020071

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3921
    const/high16 v6, 0x1040000

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3922
    const v6, 0x7f0d0040

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3923
    .local v2, "itemSettings":Ljava/lang/CharSequence;
    const v6, 0x7f0d009f

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3924
    .local v1, "itemInputMethod":Ljava/lang/CharSequence;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    aput-object v2, v6, v8

    .line 3925
    new-instance v7, Lcom/android/inputmethod/latin/DictionaryEditor$8;

    invoke-direct {v7, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$8;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    .line 3924
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3940
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 3941
    const v7, 0x7f0d0041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3940
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3942
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3943
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 3944
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 3945
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3946
    const/16 v6, 0x3eb

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3947
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3948
    const/high16 v6, 0x20000

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 3949
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 3950
    return-void

    .line 3916
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "itemInputMethod":Ljava/lang/CharSequence;
    .end local v2    # "itemSettings":Ljava/lang/CharSequence;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "window":Landroid/view/Window;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_0
.end method

.method private showSuggestions(Lcom/android/inputmethod/latin/WordComposer;)V
    .locals 12
    .param p1, "word"    # Lcom/android/inputmethod/latin/WordComposer;

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 2644
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordSeparators:Ljava/lang/String;

    .line 2643
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/EditingUtil;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2645
    .local v4, "prevWord":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 2646
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    .line 2647
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Calibration;->getKeyboard()Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->getProximityInfo()Lcom/android/inputmethod/latin/ProximityInfo;

    move-result-object v5

    move-object v2, p1

    .line 2645
    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/latin/Suggest;->getSuggestions(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;ZLjava/lang/CharSequence;Lcom/android/inputmethod/latin/ProximityInfo;)Ljava/util/List;

    move-result-object v8

    .line 2651
    .local v8, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->getNextLettersFrequencies()[I

    move-result-object v7

    .line 2653
    .local v7, "nextLettersFrequencies":[I
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    .line 2654
    invoke-virtual {v0, v7}, Lcom/android/inputmethod/latin/LatinKeyboard;->setPreferredLetters([I)V

    .line 2656
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputTypeNoAutoCorrect:Z

    if-nez v0, :cond_6

    .line 2657
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->hasMinimalCorrection()Z

    move-result v0

    if-eqz v0, :cond_6

    move v6, v11

    .line 2659
    .local v6, "correctionAvailable":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v9

    .line 2661
    .local v9, "typedWord":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0, v9}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2662
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->preferCapitalization()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 2663
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2662
    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    move v10, v11

    .line 2664
    .local v10, "typedWordValid":Z
    :goto_1
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCorrectionMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2665
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCorrectionMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2666
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2667
    :cond_1
    or-int/2addr v6, v10

    .line 2670
    :cond_2
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->isMostlyCaps()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    :goto_2
    and-int/2addr v6, v0

    .line 2672
    :cond_3
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isCorrecting()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    :goto_3
    and-int/2addr v6, v0

    .line 2673
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 2675
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_4
    and-int/2addr v6, v3

    .line 2678
    :cond_4
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->hasAutoText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2679
    const/4 v6, 0x1

    .line 2680
    const/4 v10, 0x0

    .line 2682
    :cond_5
    invoke-direct {p0, v8, v9, v10, v6}, Lcom/android/inputmethod/latin/DictionaryEditor;->showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V

    .line 2684
    return-void

    .end local v6    # "correctionAvailable":Z
    .end local v9    # "typedWord":Ljava/lang/CharSequence;
    .end local v10    # "typedWordValid":Z
    :cond_6
    move v6, v3

    .line 2657
    goto :goto_0

    .restart local v6    # "correctionAvailable":Z
    .restart local v9    # "typedWord":Ljava/lang/CharSequence;
    :cond_7
    move v10, v3

    .line 2662
    goto :goto_1

    .restart local v10    # "typedWordValid":Z
    :cond_8
    move v0, v11

    .line 2670
    goto :goto_2

    :cond_9
    move v0, v11

    .line 2672
    goto :goto_3

    :cond_a
    move v3, v11

    .line 2675
    goto :goto_4
.end method

.method private showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V
    .locals 6
    .param p2, "typedWord"    # Ljava/lang/CharSequence;
    .param p3, "typedWordValid"    # Z
    .param p4, "correctionAvailable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2689
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/android/inputmethod/latin/DictionaryEditor;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2690
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2691
    if-eqz p4, :cond_1

    if-nez p3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 2692
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    .line 2693
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2695
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2696
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 2697
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v1, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2707
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isCandidateStripVisible()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCompletionOn:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->setCandidatesViewShown(Z)V

    .line 2708
    return-void

    .line 2701
    :cond_1
    iput-object p2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    .line 2704
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    move v1, v3

    .line 2707
    goto :goto_1
.end method

.method private showVoiceWarningDialog(Z)V
    .locals 9
    .param p1, "swipe"    # Z

    .prologue
    const v8, 0x7f0d007e

    const v7, 0x7f0d007d

    .line 2464
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x23

    if-lt v5, v6, :cond_0

    .line 2466
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x1030128

    invoke-direct {v4, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2467
    .local v4, "wrapper":Landroid/view/ContextThemeWrapper;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2474
    .end local v4    # "wrapper":Landroid/view/ContextThemeWrapper;
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2475
    const v5, 0x7f020072

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2476
    const v5, 0x104000a

    .line 2477
    new-instance v6, Lcom/android/inputmethod/latin/DictionaryEditor$6;

    invoke-direct {v6, p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor$6;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;Z)V

    .line 2476
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2483
    const/high16 v5, 0x1040000

    .line 2484
    new-instance v6, Lcom/android/inputmethod/latin/DictionaryEditor$7;

    invoke-direct {v6, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$7;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    .line 2483
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2490
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLocaleSupportedForVoiceInput:Z

    if-eqz v5, :cond_1

    .line 2491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2492
    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2493
    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2491
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2494
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2504
    :goto_1
    const v5, 0x7f0d007b

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2505
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 2507
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 2508
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2509
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2510
    const/16 v5, 0x3eb

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2511
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2512
    const/high16 v5, 0x20000

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 2513
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v5}, Lcom/android/inputmethod/voice/VoiceInput;->logKeyboardWarningDialogShown()V

    .line 2514
    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 2515
    return-void

    .line 2471
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "window":Landroid/view/Window;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    goto/16 :goto_0

    .line 2496
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f0d007c

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2497
    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2498
    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2499
    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2500
    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2496
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2501
    .restart local v2    # "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private startListening(Z)V
    .locals 2
    .param p1, "swipe"    # Z

    .prologue
    .line 2411
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHasUsedVoiceInput:Z

    if-eqz v0, :cond_0

    .line 2412
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLocaleSupportedForVoiceInput:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v0, :cond_1

    .line 2415
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->showVoiceWarningDialog(Z)V

    .line 2424
    :goto_0
    return-void

    .line 2417
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_2

    .line 2419
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 2420
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2419
    invoke-virtual {v0, v1}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->startVoiceRecognition(Ljava/lang/String;)V

    .line 2422
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->reallyStartListening(Z)V

    goto :goto_0
.end method

.method private startTutorial()V
    .locals 4

    .prologue
    .line 3630
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3631
    const-wide/16 v2, 0x1f4

    .line 3630
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3632
    return-void
.end method

.method private swapPunctuationAndSpace()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1630
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1631
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1644
    :cond_0
    :goto_0
    return-void

    .line 1633
    :cond_1
    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1634
    .local v1, "lastTwo":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1635
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->isSpace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1636
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->isSentenceSeparator(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1637
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1638
    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1640
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1641
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1642
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAddedAutoSpace:Z

    goto :goto_0
.end method

.method private switchToKeyboardView()V
    .locals 2

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/latin/DictionaryEditor$4;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$4;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2358
    return-void
.end method

.method private toggleArrow(Z)V
    .locals 4
    .param p1, "arrow_on"    # Z

    .prologue
    .line 3192
    sget v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableCursorsMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3193
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->reloadKeyboards()V

    .line 3194
    sput-boolean p1, Lcom/android/inputmethod/latin/LatinKeyboard;->mode_arrows:Z

    .line 3195
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget v1, v1, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    .line 3196
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Calibration;->getKeyboardmImeOptions()I

    move-result v2

    .line 3197
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    .line 3195
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZ)V

    .line 3199
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 3200
    return-void
.end method

.method private toggleLanguage(ZZ)V
    .locals 6
    .param p1, "reset"    # Z
    .param p2, "next"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3168
    if-eqz p1, :cond_0

    .line 3169
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->reset()V

    .line 3178
    :goto_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->initSuggest(Ljava/lang/String;)V

    .line 3179
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/Calibration;->getKeyboardMode()I

    move-result v1

    .line 3180
    .local v1, "currentKeyboardMode":I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->reloadKeyboards()V

    .line 3181
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget-object v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 3182
    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLayout()Ljava/lang/String;

    move-result-object v5

    .line 3181
    invoke-virtual {v4, v2, v5}, Lcom/android/inputmethod/latin/Calibration;->makeKeyboards(ZLjava/lang/String;)V

    .line 3183
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    .line 3184
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableVoiceButton:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableVoice:Z

    if-eqz v5, :cond_2

    .line 3183
    :goto_1
    invoke-virtual {v4, v1, v3, v2}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZ)V

    .line 3186
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LanguageSwitcher;->persist()V

    .line 3187
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLayout()Ljava/lang/String;

    move-result-object v0

    .line 3188
    .local v0, "T":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 3189
    return-void

    .line 3171
    .end local v0    # "T":Ljava/lang/String;
    .end local v1    # "currentKeyboardMode":I
    :cond_0
    if-eqz p2, :cond_1

    .line 3172
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->next()V

    goto :goto_0

    .line 3174
    :cond_1
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->prev()V

    goto :goto_0

    .restart local v1    # "currentKeyboardMode":I
    :cond_2
    move v2, v3

    .line 3184
    goto :goto_1
.end method

.method private updateAutoTextEnabled(Ljava/util/Locale;)V
    .locals 6
    .param p1, "systemLocale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3667
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v3, :cond_0

    .line 3672
    :goto_0
    return-void

    .line 3669
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 3670
    sget-object v4, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputLocale:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3669
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 3671
    .local v0, "different":Z
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v0, :cond_2

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mQuickFixes:Z

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/inputmethod/latin/Suggest;->setAutoTextEnabled(Z)V

    goto :goto_0

    .end local v0    # "different":Z
    :cond_1
    move v0, v2

    .line 3669
    goto :goto_1

    .restart local v0    # "different":Z
    :cond_2
    move v2, v1

    .line 3671
    goto :goto_2
.end method

.method private updateCorrectionMode()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3653
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHasDictionary:Z

    .line 3654
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoCorrectEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mQuickFixes:Z

    if-eqz v0, :cond_4

    .line 3655
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputTypeNoAutoCorrect:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHasDictionary:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 3654
    :goto_1
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoCorrectOn:Z

    .line 3656
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoCorrectOn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoCorrectEnabled:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    :cond_1
    :goto_2
    iput v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCorrectionMode:I

    .line 3659
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBigramSuggestionEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoCorrectOn:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoCorrectEnabled:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    :goto_3
    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCorrectionMode:I

    .line 3661
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_2

    .line 3662
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCorrectionMode:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setCorrectionMode(I)V

    .line 3664
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 3653
    goto :goto_0

    :cond_4
    move v0, v2

    .line 3655
    goto :goto_1

    .line 3657
    :cond_5
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoCorrectOn:Z

    if-nez v0, :cond_1

    move v1, v2

    .line 3658
    goto :goto_2

    .line 3660
    :cond_6
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCorrectionMode:I

    goto :goto_3
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 3568
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 3569
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAudioManager:Landroid/media/AudioManager;

    .line 3571
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 3572
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSilentMode:Z

    .line 3574
    :cond_1
    return-void

    .line 3572
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 3

    .prologue
    .line 2611
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    .line 2612
    .local v0, "inputView":Lcom/android/inputmethod/latin/LatinKeyboardView;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setPreferredLetters([I)V

    .line 2615
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isPredictionOn()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInputHighlighted:Z

    if-nez v1, :cond_1

    .line 2624
    :goto_0
    return-void

    .line 2619
    :cond_1
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-nez v1, :cond_2

    .line 2620
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->setNextSuggestions()V

    goto :goto_0

    .line 2623
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->showSuggestions(Lcom/android/inputmethod/latin/WordComposer;)V

    goto :goto_0
.end method

.method private updateSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 4109
    const-string v0, "swipe_right"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4110
    const-string v0, "swipe_right"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureRight:I

    .line 4118
    :cond_0
    :goto_0
    return-void

    .line 4111
    :cond_1
    const-string v0, "swipe_left"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4112
    const-string v0, "swipe_left"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureLeft:I

    goto :goto_0

    .line 4113
    :cond_2
    const-string v0, "swipe_up"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4114
    const-string v0, "swipe_up"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureUp:I

    goto :goto_0

    .line 4115
    :cond_3
    const-string v0, "swipe_down"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4116
    const-string v0, "swipe_down"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureDown:I

    goto :goto_0
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 3602
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVibrateOn:Z

    if-nez v0, :cond_1

    .line 3611
    :cond_0
    :goto_0
    return-void

    .line 3609
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 3610
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVibrateLength:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method


# virtual methods
.method public addWordToDictionary(Ljava/lang/String;)Z
    .locals 2
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V

    .line 1735
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateSuggestions()V

    .line 1736
    const/4 v0, 0x1

    return v0
.end method

.method public changeKeyboardMode(Z)V
    .locals 2
    .param p1, "allowNumbers"    # Z

    .prologue
    .line 3953
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Calibration;->toggleSymbols(Z)V

    .line 3954
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCapsLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3955
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCapsLock:Z

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Calibration;->setShiftLocked(Z)V

    .line 3958
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 3959
    return-void
.end method

.method clall()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 284
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 285
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v0, v1, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 286
    return-void
.end method

.method clst()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 176
    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/ClipboardManager;

    iput-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->cm:Landroid/text/ClipboardManager;

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 180
    .local v0, "c":I
    if-lt v0, v3, :cond_2

    iput v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->av:I

    .line 181
    :goto_0
    const/16 v2, 0x12

    if-ne v0, v2, :cond_0

    iput v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->av:I

    .line 183
    :cond_0
    iget v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->av:I

    if-ne v2, v3, :cond_3

    .line 185
    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    iput-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->cm2:Landroid/content/ClipboardManager;

    .line 186
    new-instance v2, Lcom/android/inputmethod/latin/DictionaryEditor$20;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$20;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->rm:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 214
    :goto_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->dbcreate()V

    .line 215
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->dbload()V

    .line 216
    const-string v2, "SK"

    invoke-virtual {p0, v2, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 217
    .local v1, "se":Landroid/content/SharedPreferences;
    const-string v2, "co"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->co:I

    .line 218
    const-string v2, "cl"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->cl:I

    .line 219
    const-string v2, "cs"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->cs:I

    .line 221
    iget v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->co:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iput v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->co:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->tmron()V

    .line 223
    :cond_1
    return-void

    .line 180
    .end local v1    # "se":Landroid/content/SharedPreferences;
    :cond_2
    iput v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->av:I

    goto :goto_0

    .line 198
    :cond_3
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->cm:Landroid/text/ClipboardManager;

    invoke-virtual {v2}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->cm:Landroid/text/ClipboardManager;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_4
    new-instance v2, Lcom/android/inputmethod/latin/DictionaryEditor$17;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$17;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->my:Ljava/util/TimerTask;

    goto :goto_1
.end method

.method copy()V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 125
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 126
    .local v0, "cu":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->cm:Landroid/text/ClipboardManager;

    invoke-virtual {v2, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method cut()V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 109
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 110
    .local v0, "cu":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->cm:Landroid/text/ClipboardManager;

    invoke-virtual {v2, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const-string v2, ""

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 113
    return-void
.end method

.method dbadd(Ljava/lang/String;)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 561
    :try_start_0
    const-string v2, "Clipboard1.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 562
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "INSERT INTO notes (note) values (\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 565
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method dbcreate()V
    .locals 3

    .prologue
    .line 277
    :try_start_0
    const-string v0, "Clipboard1.db"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 278
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS notes (note VARCHAR);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method dbdelete(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 293
    :try_start_0
    const-string v0, "Clipboard1.db"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 294
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM notes WHERE note=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method dbload()V
    .locals 4

    .prologue
    .line 256
    :try_start_0
    const-string v1, "Clipboard1.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 257
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM notes"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 259
    .local v0, "allrows":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 260
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 271
    .end local v0    # "allrows":Landroid/database/Cursor;
    :goto_1
    return-void

    .line 262
    .restart local v0    # "allrows":Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 264
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->listfp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    .end local v0    # "allrows":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method dd()V
    .locals 6

    .prologue
    .line 313
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 315
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "\u0644\u0627"

    new-instance v5, Lcom/android/inputmethod/latin/DictionaryEditor$25;

    invoke-direct {v5, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$25;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 316
    const-string v4, "\u0646\u0639\u0645"

    new-instance v5, Lcom/android/inputmethod/latin/DictionaryEditor$24;

    invoke-direct {v5, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$24;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 317
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 318
    .local v0, "Al3":Landroid/app/AlertDialog;
    const-string v4, "\u0647\u0644 \u0627\u0646\u062a \u0645\u062a\u0627\u0643\u062f \u0645\u0646 \u0645\u0633\u062d \u0627\u0644\u062d\u0627\u0641\u0638\u0629\u061f"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 320
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 321
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/inputmethodservice/KeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 322
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 323
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 325
    return-void
.end method

.method public deleteLastCharactersFromInput(I)V
    .locals 6
    .param p1, "countToDelete"    # I

    .prologue
    const/4 v5, 0x0

    .line 4284
    if-nez p1, :cond_0

    .line 4312
    :goto_0
    return-void

    .line 4287
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 4289
    .local v0, "currentLength":I
    if-lez v0, :cond_3

    .line 4290
    const/4 v2, 0x1

    .line 4291
    .local v2, "shouldDeleteUsingCompletion":Z
    if-le v0, p1, :cond_2

    .line 4292
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    sub-int v4, v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4294
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3, p1}, Lcom/android/inputmethod/latin/WordComposer;->deleteLast(I)V

    .line 4302
    :goto_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4303
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 4304
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCompletionOn:Z

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 4305
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4311
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .line 4296
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4297
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    goto :goto_1

    .line 4300
    .end local v2    # "shouldDeleteUsingCompletion":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "shouldDeleteUsingCompletion":Z
    goto :goto_1

    .line 4308
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    invoke-interface {v1, p1, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_2
.end method

.method deletetableall()V
    .locals 3

    .prologue
    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 303
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->listf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 304
    const-string v0, "Clipboard1.db"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 305
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE notes"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method dism()V
    .locals 1

    .prologue
    .line 1016
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1018
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al2:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1020
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al3:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1022
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al4:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1023
    :goto_3
    return-void

    .line 1022
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1020
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1018
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1016
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3970
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3972
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 3973
    .local v0, "p":Landroid/util/Printer;
    const-string v1, "DictionaryEditor state :"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3974
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Keyboard mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Calibration;->getKeyboardMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3975
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mCapsLock="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCapsLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3976
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mComposing="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3977
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mPredictionOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3978
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mCorrectionMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCorrectionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3979
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mPredicting="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3980
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mAutoCorrectOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoCorrectOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3981
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mAutoSpace="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoSpace:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3982
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mCompletionOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCompletionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3983
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  TextEntryState.state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()Lcom/android/inputmethod/latin/TextEntryState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3984
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mSoundOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSoundOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3985
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mVibrateOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVibrateOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3986
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mPopupOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPopupOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3987
    return-void
.end method

.method getCurrentWord()Lcom/android/inputmethod/latin/WordComposer;
    .locals 1

    .prologue
    .line 3645
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    return-object v0
.end method

.method getPopupOn()Z
    .locals 1

    .prologue
    .line 3649
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPopupOn:Z

    return v0
.end method

.method protected getWordSeparators()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3145
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordSeparators:Ljava/lang/String;

    return-object v0
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1254
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 1255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->onAutoCompletionStateChanged(Z)V

    .line 1257
    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->TRACE:Z

    if-eqz v0, :cond_0

    .line 1258
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1261
    iput-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1263
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mConfigurationChanging:Z

    if-nez v0, :cond_4

    .line 1264
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAfterVoiceInput:Z

    if-eqz v0, :cond_2

    .line 1265
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logInputEnded()V

    .line 1266
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1267
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logKeyboardWarningDialogDismissed()V

    .line 1268
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1269
    iput-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 1271
    :cond_3
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mRecognizing:Z

    if-eqz v0, :cond_4

    .line 1272
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 1275
    :cond_4
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPaidNotificationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPaidNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1276
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPaidNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1277
    iput-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPaidNotificationDialog:Landroid/app/AlertDialog;

    .line 1279
    :cond_5
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1280
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1281
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1282
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->endSession()V

    .line 1283
    return-void
.end method

.method ic()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x11f

    .line 992
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->ec:I

    if-nez v0, :cond_0

    .line 994
    const/16 v0, 0x12b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->ms:[I

    .line 1028
    const/16 v0, 0x12b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "\ud83e\udd23"

    aput-object v1, v0, v4

    const-string v1, "\ud83d\ude02"

    aput-object v1, v0, v5

    const-string v1, "\ud83d\ude05"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\ud83d\ude06"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\ud83d\ude01"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\ud83d\ude04"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ud83d\ude03"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\ud83d\ude0c"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\ud83d\ude09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\ud83d\ude43"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\ud83d\ude42"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ud83d\ude07"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\ud83d\ude0a"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u263a\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\ud83e\udd72"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\ud83d\ude1b"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\ud83d\ude0b"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ud83d\ude1a"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\ud83d\ude18\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\ud83e\udd70"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\ud83d\ude0d"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\ud83e\udd78"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\ud83d\ude0e"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\ud83e\udd13"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\ud83e\uddd0"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\ud83e\udd28"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\ud83e\udd2a"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\ud83d\ude1d"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\ud83d\ude15"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\ud83d\ude1f"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\ud83d\ude14"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\ud83d\ude1e"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\ud83d\ude12"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\ud83d\ude0f"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\ud83e\udd73"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\ud83d\ude22"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\ud83e\udd7a"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\ud83d\ude29"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\ud83d\ude16"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u2639\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\ud83d\ude41"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\ud83e\udd75"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\ud83d\ude33"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\ud83e\udd2f"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\ud83d\ude21"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\ud83d\ude20"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\ud83d\ude24"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\ud83d\ude2d"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\ud83e\udd14"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\ud83e\udd17"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\ud83d\ude13"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\ud83d\ude25"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\ud83d\ude31"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\ud83e\udd76"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\ud83d\ude44"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\ud83d\ude11"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\ud83d\ude10"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\ud83e\udd25"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\ud83e\udd2b"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\ud83e\udd2d"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\ud83e\udd24"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\ud83d\ude34"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\ud83e\udd71"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\ud83d\ude32"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\ud83d\ude37"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\ud83e\udd27\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\ud83e\udd2e"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\ud83e\udd22"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\ud83e\udd74"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\ud83d\ude2a"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\ud83e\udd15"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\ud83e\udd12"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\ud83e\udd11"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\ud83e\udd20"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\ud83d\ude35\u200d\ud83d\udcab"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\ud83d\ude2e\u200d\ud83d\udca8"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\ud83d\ude38"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\ud83d\ude39"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\ud83d\ude3b"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\ud83d\ude3c"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\ud83d\ude3d"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\ud83d\ude40"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\ud83d\ude3f"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\ud83d\ude3e"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\ud83d\udc7b"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\ud83d\udca9"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\ud83e\udd21"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\u2764\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\ud83e\udde1"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\ud83d\udc9b"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\ud83d\udc9a"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\ud83d\udc99\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\ufe0f\ud83d\udc9c"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\ud83d\udda4\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "\ud83e\udd0d"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\ud83e\udd0e"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\ud83d\udc94"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\u2764\ufe0f\u200d\ud83d\udd25"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "\u2764\ufe0f\u200d\ud83e\ude79"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "\u2665"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "\ud83d\udc95"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\ud83d\udc9e"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\ud83d\udc93"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "\ud83d\udc97"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\ud83d\udc96"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "\ud83d\udc98"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "\ud83d\udc9d"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "\ud83e\udec0"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "\ud83d\udc84"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "\ud83d\udc8b"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "\ud83d\udc45"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "\ud83d\udc40"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "\ud83d\udc63"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "\ud83e\udd32"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "\ud83d\udc4f"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "\ud83e\udd1d"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "\ud83d\udc4d"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "\ud83d\udc4e"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "\ud83d\udc4a"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "\u270a"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "\ud83e\udd1e"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "\u270c\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "\ud83e\udd1f"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "\ud83d\udc4c"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "\ud83e\udd0c"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "\ud83e\udd0f"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "\ud83d\udc48\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "\ud83d\udc49"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "\ud83d\udc46"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "\ud83d\udc47"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "\u261d\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "\u270b"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "\ud83d\udd90\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "\ud83d\udd96"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "\ud83d\udc4b"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "\ud83e\udd19"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "\ud83d\udcaa\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "\ud83d\udd95"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "\u270d\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "\ud83d\ude4f"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "\ud83e\udec2"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "\ud83e\uddd5\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "\ud83d\udc73\u200d\u2642\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "\u200d\ud83d\udc69\ud83c\udffb\u200d\ud83c\udfa8"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udfa8"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "\u200d\ud83d\udc70\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "\u200d\ud83d\udc78\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "\u200d\ud83e\udd34"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "\u200d\ud83e\udddd\u200d\u2642\ufe0f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "\u200d\ud83e\udddd\u200d\u2640\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "\ud83d\udc7c"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "\u200d\ud83e\udd30\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "\u200d\ud83e\udd31\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "\u200d\ud83d\ude47\u200d\u2640\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "\u200d\ud83d\ude47\u200d\u2642\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "\u200d\ud83d\udc81\u200d\u2640\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "\u200d\ud83d\udc81\u200d\u2642\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "\ud83d\ude46\u200d\u2640\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "\ud83d\ude46\u200d\u2642\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "\ud83d\ude4b\u200d\u2640\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "\ud83d\ude4b\u200d\u2642\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "\ud83e\udd26\u200d\u2640\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "\ud83e\udd26\u200d\u2642\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "\u200d\ud83e\udd37\u200d\u2640\ufe0f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "\ud83e\udd37\u200d\u2642\ufe0f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "\u200d\ud83d\ude4d\u200d\u2640\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "\ud83d\ude4d\u200d\u2642\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "\u200d\ud83d\udc86\u200d\u2640\ufe0f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "\u200d\ud83d\udc86\u200d\u2642\ufe0f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "\ud83d\udc83"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "\u200d\ud83d\udeb6\u200d\u2640\ufe0f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "\u200d\ud83d\udeb6\u200d\u2642\ufe0f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "\ud83d\udc69\u200d\ud83e\uddaf"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "\ud83d\udc68\u200d\ud83e\uddaf"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "\ud83e\uddce\u200d\u2640\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "\u200d\ud83e\uddce\u200d\u2642\ufe0f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "\u200d\ud83c\udfc3\u200d\u2640\ufe0f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "\u200d\ud83c\udfc3\u200d\u2642\ufe0f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "\u200d\ud83e\uddd8\u200d\u2640\ufe0f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "\ud83e\uddd8\u200d\u2642\ufe0f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "\ud83e\udd39\u200d\u2640\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "\ud83e\udd39\u200d\u2642\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "\ud83e\udd38\u200d\u2640\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "\ud83e\udd38\u200d\u2642\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "\ud83d\udc3c"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "\ud83d\udc31"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "\ud83d\udc38"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "\ud83d\udc12"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "\ud83d\ude4a"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "\ud83d\ude48"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "\ud83e\udd89"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "\ud83d\udc23"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "\ud83d\udc25"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "\ud83e\udd8b"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "\ud83e\udd84"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "\ud83d\udc0d"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "\ud83d\udc2c"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "\ud83e\uddae"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "\ud83d\udc0f"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "\ud83e\udeb6"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "\ud83d\udc08"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "\ud83d\udc07"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "\ud83d\udd4a\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "\ud83e\udd9c"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "\ud83d\udc3e"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "\ud83d\udc3f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "\ud83e\udda5"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "\ud83e\udda6"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "\ud83e\uddf8"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "\ud83c\udf1a"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "\ud83c\udf16"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "\ud83c\udf1d"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "\ud83c\udf1c"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "\ud83c\udf1b"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "\ud83c\udf0d"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "\ud83c\udf39"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "\ud83e\udd40"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "\ud83c\udf3b"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "\ud83c\udf38"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "\ud83c\udf3c"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "\ud83c\udff5\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "\ud83c\udf41"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "\ud83c\udf42"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "\ud83c\udf31"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "\ud83c\udf3f"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "\ud83c\udf8b"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "\ud83c\udf43"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "\ud83c\udf4c"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "\ud83c\udf4e"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "\ud83e\udd65"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "\ud83c\udf52"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "\ud83e\uded0"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "\ud83c\udf53"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "\ud83c\udf67"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "\ud83c\udf6b\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "\ud83c\udf6d"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "\ud83e\uddc3"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "\u2615"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "\ud83c\udf7c"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "\ud83c\udf6f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "\ud83c\udf77\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "\ud83e\udd42"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "\ud83e\ude71"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "\ud83d\udc59"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "\ud83d\udc52"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "\ud83c\udf93\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "\ud83d\udc51"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "\ud83d\udc8d"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "\ud83d\udc1a"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "\ud83d\udd25"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "\u2728"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "\ud83c\udf27\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "\u2744\ufe0f\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "\ud83d\udca6"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "\ud83c\udff9"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "\ud83e\udd62"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "\ud83c\udfa8"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "\ud83e\ude70"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "\ud83e\udde9"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "\ud83c\udfbb"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "\ud83d\udcb8"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "\u2694\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "\ud83d\udd2a\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "\ud83d\udd2b"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "\ud83e\uddff"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "\ud83d\udcff"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "\ud83d\udeac"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "\u200d\ud83d\udc8a\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "\ud83e\udda0"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "\ud83d\udc89"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "\ud83e\uddec"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "\ud83e\uddfb"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "\ud83c\udf88"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "\ud83c\udf81"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "\ud83e\ude84"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "\ud83c\udf80"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "\ud83d\udc8c"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "\ud83d\udcda"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "\ud83d\udcd3"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "\ud83d\udd87\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "\ud83d\udd17"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "\ud83d\udd16"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "\ud83d\udccc"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "\ud83d\udd10"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "\ud83d\udd0f"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "\ud83d\udcaf"

    aput-object v2, v0, v1

    const-string v1, "\ud83d\udd1e"

    aput-object v1, v0, v3

    const/16 v1, 0x120

    const-string v2, "\u2757"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "\u2753"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "\u2049\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "\u267b\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "\ud83d\udca4"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "\ud83c\udfb6"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "\ud83d\udd15"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "\ud83d\udd14"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "\ud83c\uddf5\ud83c\uddf8"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "\ud83c\uddfe\ud83c\uddea"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "- \u0627\u0641\u0636\u0644 \u0643\u064a\u0628\u0648\u0631\u062f \u062a\u0645 \u062a\u0637\u0648\u064a\u0631\u0647 \u0644\u0633\u0646\u0629 2024 \ud83d\udd25. \n- \u064a\u062d\u062a\u0648\u064a \u0647\u0630\u0627 \u0627\u0644\u0643\u064a\u0628\u0648\u0631\u062f \u0639\u0644\u0649 \u062e\u064a\u0627\u0631 \u0625\u0636\u0627\u0641\u064a \u0645\u062e\u0635\u0635 \u0644\u0627\u062e\u062a\u064a\u0627\u0631 \u0648\u0627\u062c\u0647\u0629 \u062e\u0627\u0635 \u0628\u0643 \u0628\u0627\u0644\u0634\u0643\u0644 \u0627\u0644\u0644\u0630\u064a \u064a\u0646\u0627\u0633\u0628\u0643  \u2938  \ud83d\ude0d\u2764\u200d\ud83d\udd25.  \n\n- \u062a\u0645 \u0625\u0636\u0627\u0641\u0629 \u0627\u0644\u0643\u062b\u064a\u0631 \u0645\u0646 \u0627\u0644\u0631\u0645\u0648\u0632 \u0648\u0627\u0644\u0627\u064a\u0645\u0648\u062c\u064a \u0627\u0644\u062b\u0646\u0627\u0626\u064a \ud83e\udec0.  \n\n- \u062a\u0645 \u0627\u0636\u0627\u0641\u0629 \u0627\u0644\u0643\u062b\u064a\u0631 \u0645\u0646 \u0627\u0644\u0627\u062e\u062a\u0635\u0627\u0631\u0627\u062a \u062f\u0627\u062e\u0644 \u0647\u0630\u0627 \u0627\u0644\u0643\u064a\u0628\u0648\u0631\u062f \u0648\u062a\u0645 \u0627\u0636\u0627\u0641\u0629 \u0627\u0643\u062b\u0631 \u0645\u0646 \u0632\u062e\u0631\u0641\u0629 \u062c\u062f\u064a\u062f\u0629 \ud83d\udc95.  \n\n- \u0634\u0640\u0627\u0631\u06aa\u0640\u0648 \u0645\u0640\u0639 \u0627\u0635\u0640\u062f\u0642\u0640\u0627\u0626\u06aa\u0640\u0645 \u0644\u0640\u062d\u062a\u0640\u0649 \u0627\u0646\u0634\u0640\u0631 \u0627\u0635\u0640\u062f\u0627\u0631\u0627\u062a \u0627\u06aa\u0640\u062b\u0640\u0631 \ud83d\ude0d\u2764\ufe0f.   \n\n- \u0644\u0644\u062a\u0648\u0627\u0635\u0644 + \u062a\u0627\u0628\u0639\u0646\u064a \u0644\u062a\u062d\u0645\u064a\u0644 \u0627\u062d\u062f\u062b \u0627\u0644\u0627\u0635\u062f\u0627\u0631\u0627\u062a \u2764\u200d\ud83e\ude79.  \n\n- \u062a\u064a\u0644\u064a\u062c\u0631\u0627\u0645 : \nhttps://t.me/Abode774 \n-       &&\nhttps://t.me/A_19_b\n\n- \u0642\u0640\u0646\u0640\u0627\u0629 \u06aa\u064a\u0628\u0648\u0631\u062f\u0627\u062a \n\nhttps://t.me/jnssghb \n\n- \u0628\u0640\u062a\u0634\u0640\u0631\u0641 \u0628\u0640\u0627\u0644\u062c\u0640\u0645\u0640\u064a\u064a\u0640\u0639 \ud83d\ude0c\ud83e\udd0e."

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->emj:[Ljava/lang/String;

    .line 1076
    :goto_0
    return-void

    .line 1036
    :cond_0
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->ms:[I

    .line 1072
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "\ud83d\ude04"

    aput-object v1, v0, v4

    const-string v1, "\ud83d\ude03"

    aput-object v1, v0, v5

    const-string v1, "\ud83d\ude00"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\ud83d\ude0a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\ud83d\ude09"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\ud83d\ude0d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ud83d\ude18"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\ud83d\ude1a"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\ud83d\ude19"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\ud83d\ude17"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\ud83d\ude1c"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ud83d\ude1d"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\ud83d\ude1b"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\ud83d\ude33"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\ud83d\ude01"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\ud83d\ude14"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\ud83d\ude0c"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ud83d\ude12"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\ud83d\ude1e"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\ud83d\ude23"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\ud83d\ude22"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\ud83d\ude02"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\ud83d\ude2d"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\ud83d\ude2a"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\ud83d\ude25"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\ud83d\ude30"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\ud83d\ude05"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\ud83d\ude13"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\ud83d\ude29"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\ud83d\ude2b"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\ud83d\ude28"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\ud83d\ude31"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\ud83d\ude20"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\ud83d\ude21"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\ud83d\ude24"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\ud83d\ude16"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\ud83d\ude06"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\ud83d\ude0b"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\ud83d\ude37"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\ud83d\ude0e"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\ud83d\ude34"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\ud83d\ude32"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\ud83d\ude35"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\ud83d\ude1f"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\ud83d\ude26"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\ud83d\ude27"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\ud83d\ude08"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\ud83d\udc7f"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\ud83d\ude2e"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\ud83d\ude2c"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\ud83d\ude10"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\ud83d\ude15"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\ud83d\ude2f"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\ud83d\ude36"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\ud83d\ude07"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\ud83d\ude0f"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\ud83d\ude11"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\ud83d\ude3a"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\ud83d\ude38"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\ud83d\ude3b"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\ud83d\ude3d"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\ud83d\ude3c"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\ud83d\ude40"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\ud83d\ude3f"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\ud83d\ude39"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\ud83d\ude3e"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\ud83d\udc79"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\ud83d\udc7a"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\ud83d\ude48"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\ud83d\ude49"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\ud83d\ude4a"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\ud83d\udc7b"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\ud83d\udc80"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\ud83d\udc7d"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\ud83d\udc7e"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\ud83d\udc43"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\ud83d\udc42"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\ud83d\udc40"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\ud83d\udc45"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\ud83d\udc44"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\ud83d\udc4a"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\ud83d\udc4d"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\ud83d\udc4e"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\ud83d\udc46"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\ud83d\udc47"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\ud83d\udc49"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\ud83d\udc48"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\ud83d\udc4f"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\ud83d\udc50"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\ud83d\udcaa"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\ud83c\udfc3"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\ud83d\udc68"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\ud83d\udc67"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\ud83d\udc78"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "\ud83d\udc86"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\ud83d\udc87"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\ud83d\udc6c"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\ud83d\udc6d"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "\ud83d\udc85"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "\ud83d\udc51"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "\ud83d\udc52"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\ud83d\udc5f"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\ud83d\udc61"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "\ud83d\udc60"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\ud83d\udc5e"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "\ud83d\udc55"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "\ud83d\udc57"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "\ud83d\udc56"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "\ud83d\udcbc"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "\ud83d\udc5c"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "\ud83d\udc53"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "\ud83c\udf80"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "\ud83d\udc84"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "\ud83d\udc96"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "\ud83d\udc94"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "\ud83d\udc98"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "\ud83d\udc8d"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "\ud83d\udc8e"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "\ud83d\udc63"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "\ud83d\udc25"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "\ud83d\udc0d"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "\ud83d\udc22"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "\ud83d\udc1b"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "\ud83d\udc1d"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "\ud83d\udc1c"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "\ud83d\udc1e"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "\ud83d\udc0c"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "\ud83d\udc1a"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "\ud83d\udc1f"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "\ud83d\udc33"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "\ud83d\udc04"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "\ud83d\udc0f"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "\ud83d\udc00"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "\ud83d\udc06"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "\ud83d\udc07"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "\ud83d\udc0e"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "\ud83d\udc10"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "\ud83d\udc13"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "\ud83d\udc15"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "\ud83d\udc02"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "\ud83d\udc2b"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "\ud83d\udc08"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "\ud83d\udc12"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "\ud83d\udc90"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "\ud83c\udf38"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "\ud83c\udf37"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "\ud83c\udf39"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "\ud83c\udf3b"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "\ud83c\udf3a"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "\ud83c\udf41"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "\ud83c\udf44"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "\ud83c\udf34"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "\ud83c\udf33"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "\ud83c\udf3f"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "\ud83c\udf3c"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "\ud83c\udf1e"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "\ud83c\udf1d"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "\ud83c\udf1b"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "\ud83c\udf19"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "\ud83c\udf0d"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "\u2600"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "\u26c5"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "\ud83c\udf02"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "\ud83d\udd25"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "\ud83c\udf1f"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "\ud83c\udf81"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "\ud83c\udf89"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "\ud83d\udcf7"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "\ud83d\udcf9"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "\ud83c\udfa4"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "\ud83d\udcde"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "\ud83c\udfa7"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "\ud83d\udce3"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "\ud83d\udcc0"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "\ud83d\udcbb"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "\ud83d\udcfa"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "\ud83d\udcfb"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "\ud83d\udd08"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "\ud83d\udd07"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "\ud83d\udd5e"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "\ud83d\udd0b"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "\ud83d\udd13"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "\ud83d\udd12"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "\ud83d\udd11"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "\ud83d\udd0e"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "\ud83d\udca1"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "\ud83d\udd26"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "\ud83d\udd0c"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "\ud83d\udeaa"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "\ud83d\udebf"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "\ud83d\udd27"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "\ud83d\udd29"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "\ud83d\udd17"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "\ud83d\udd28"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "\ud83d\udca3"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "\ud83d\udd2b"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "\ud83d\udd2a"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "\ud83d\udc8a"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "\ud83d\udc89"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "\ud83d\udcb0"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "\ud83d\udcb5"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "\ud83d\udcb3"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "\ud83d\udce8"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "\ud83d\udcec"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "\ud83d\udce6"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "\ud83d\udcdd"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "\ud83d\udcc4"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "\ud83d\udcc3"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "\ud83d\udccb"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "\ud83d\udcc5"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "\ud83d\udccc"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "\ud83d\udcce"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "\ud83d\udccf"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "\ud83d\udcd0"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "\ud83d\udcd8"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "\ud83d\udcda"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "\ud83d\udcd6"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "\ud83d\udd2c"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "\ud83d\udd2d"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "\ud83d\udcf0"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "\ud83c\udfa8"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "\ud83c\udfae"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "\ud83c\udfc6"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "\u26bd"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "\ud83c\udfc1"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "\ud83c\udfc7"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "\ud83c\udf7c"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "\ud83c\udf75"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "\ud83c\udf79"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "\ud83c\udf74"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "\ud83c\udf55"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "\ud83c\udf54"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "\ud83c\udf5f"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "\ud83c\udf57"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "\ud83c\udf5d"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "\ud83c\udf5b"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "\ud83c\udf5a"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "\ud83c\udf5c"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "\ud83c\udf72"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "\ud83c\udf61"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "\ud83c\udf73"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "\ud83c\udf5e"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "\ud83c\udf69"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "\ud83c\udf6e"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "\ud83c\udf66"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "\ud83c\udf67"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "\ud83c\udf82"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "\ud83c\udf70"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "\ud83c\udf6a"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "\ud83c\udf6b"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "\ud83c\udf6c"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "\ud83c\udf6d"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "\ud83c\udf6f"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "\ud83c\udf4e"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "\ud83c\udf4a"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "\ud83c\udf4b"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "\ud83c\udf52"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "\ud83c\udf47"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "\ud83c\udf49"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "\ud83c\udf4c"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "\ud83c\udf50"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "\ud83c\udf4d"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "\ud83c\udf53"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "\ud83c\udf46"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "\ud83c\udf45"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "\ud83c\udf3d"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "\ud83c\udfe1"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "\ud83c\udfe8"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "\ud83c\udfeb"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "\ud83c\udfed"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "\u26f2"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "\ud83d\udca7"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "\ud83d\udcba"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "\u26f5"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "\ud83d\ude80"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "\ud83d\ude81"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "\ud83d\ude84"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "\ud83d\ude8d"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "\ud83d\ude98"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "\ud83d\ude9a"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "\ud83d\ude94"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "\ud83d\ude92"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "\ud83d\ude91"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "\ud83d\udea6"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "\u26fd"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "\ud83d\udeab"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->emj:[Ljava/lang/String;

    goto/16 :goto_0

    .line 994
    nop

    :array_0
    .array-data 4
        0x7f020245
        0x7f0200f3
        0x7f0200f4
        0x7f0200f5
        0x7f0200f6
        0x7f0200f7
        0x7f0200f8
        0x7f0200f9
        0x7f0200fa
        0x7f0200fb
        0x7f0200fc
        0x7f0200fd
        0x7f0200fe
        0x7f0200ff
        0x7f020100
        0x7f020101
        0x7f020102
        0x7f020103
        0x7f020104
        0x7f020105
        0x7f020106
        0x7f020107
        0x7f020108
        0x7f020109
        0x7f02010a
        0x7f02010b
        0x7f02010c
        0x7f02010d
        0x7f02010e
        0x7f02010f
        0x7f020110
        0x7f020111
        0x7f020112
        0x7f020113
        0x7f020114
        0x7f020115
        0x7f020116
        0x7f020117
        0x7f020118
        0x7f020119
        0x7f02011a
        0x7f02011b
        0x7f02011c
        0x7f02011d
        0x7f02011e
        0x7f02011f
        0x7f020120
        0x7f020121
        0x7f020122
        0x7f020123
        0x7f020124
        0x7f020125
        0x7f020126
        0x7f020127
        0x7f020128
        0x7f020129
        0x7f02012a
        0x7f02012b
        0x7f02012c
        0x7f02012d
        0x7f02012e
        0x7f02012f
        0x7f020130
        0x7f020131
        0x7f020132
        0x7f020133
        0x7f020134
        0x7f020135
        0x7f020136
        0x7f020137
        0x7f020138
        0x7f020139
        0x7f02013a
        0x7f02013b
        0x7f02013c
        0x7f02013d
        0x7f02013e
        0x7f02013f
        0x7f020140
        0x7f020141
        0x7f020142
        0x7f020143
        0x7f020144
        0x7f020145
        0x7f020146
        0x7f020147
        0x7f020148
        0x7f020149
        0x7f02014a
        0x7f02014b
        0x7f02014c
        0x7f02014d
        0x7f02014e
        0x7f02014f
        0x7f020150
        0x7f020151
        0x7f020152
        0x7f020153
        0x7f020154
        0x7f020155
        0x7f020156
        0x7f020157
        0x7f020158
        0x7f020159
        0x7f02015a
        0x7f02015b
        0x7f02015c
        0x7f02015d
        0x7f02015e
        0x7f02015f
        0x7f020160
        0x7f020161
        0x7f020162
        0x7f020163
        0x7f020164
        0x7f020165
        0x7f020166
        0x7f020167
        0x7f020168
        0x7f020169
        0x7f02016a
        0x7f02016b
        0x7f02016c
        0x7f02016d
        0x7f02016e
        0x7f02016f
        0x7f020170
        0x7f020171
        0x7f020172
        0x7f020173
        0x7f020174
        0x7f020175
        0x7f020176
        0x7f020177
        0x7f020178
        0x7f020179
        0x7f02017a
        0x7f02017b
        0x7f02017c
        0x7f02017d
        0x7f02017e
        0x7f02017f
        0x7f020180
        0x7f020181
        0x7f020182
        0x7f020183
        0x7f020184
        0x7f020185
        0x7f020186
        0x7f020187
        0x7f020188
        0x7f020189
        0x7f02018a
        0x7f02018b
        0x7f02018c
        0x7f02018d
        0x7f02018e
        0x7f02018f
        0x7f020190
        0x7f020191
        0x7f020192
        0x7f020193
        0x7f020194
        0x7f020195
        0x7f020196
        0x7f020197
        0x7f020198
        0x7f020199
        0x7f02019a
        0x7f02019b
        0x7f02019c
        0x7f02019d
        0x7f02019e
        0x7f02019f
        0x7f0201a0
        0x7f0201a1
        0x7f0201a2
        0x7f0201a3
        0x7f0201a4
        0x7f0201a5
        0x7f0201a6
        0x7f0201a7
        0x7f0201a8
        0x7f0201a9
        0x7f0201aa
        0x7f0201ab
        0x7f0201ac
        0x7f0201ad
        0x7f0201ae
        0x7f0201af
        0x7f0201b0
        0x7f0201b1
        0x7f0201b2
        0x7f0201b3
        0x7f0201b4
        0x7f0201b5
        0x7f0201b6
        0x7f0201b7
        0x7f0201b8
        0x7f0201b9
        0x7f0201ba
        0x7f0201bb
        0x7f0201bc
        0x7f0201bd
        0x7f0201be
        0x7f0201bf
        0x7f0201c0
        0x7f0201c1
        0x7f0201c2
        0x7f0201c3
        0x7f0201c4
        0x7f0201c5
        0x7f0201c6
        0x7f0201c7
        0x7f0201c8
        0x7f0201c9
        0x7f0201ca
        0x7f0201cb
        0x7f0201cc
        0x7f0201cd
        0x7f0201ce
        0x7f0201cf
        0x7f0201d0
        0x7f0201d1
        0x7f0201d2
        0x7f0201d3
        0x7f0201d4
        0x7f0201d5
        0x7f0201d6
        0x7f0201d7
        0x7f0201d8
        0x7f0201d9
        0x7f0201da
        0x7f0201db
        0x7f0201dc
        0x7f0201dd
        0x7f0201de
        0x7f0201df
        0x7f0201e0
        0x7f0201e1
        0x7f0201e2
        0x7f0201e3
        0x7f0201e4
        0x7f0201e5
        0x7f0201e6
        0x7f0201e7
        0x7f0201e8
        0x7f0201e9
        0x7f0201ea
        0x7f0201eb
        0x7f0201ec
        0x7f0201ed
        0x7f0201ee
        0x7f0201ef
        0x7f0201f0
        0x7f0201f1
        0x7f0201f2
        0x7f0201f3
        0x7f0201f4
        0x7f0201f5
        0x7f0201f6
        0x7f0201f7
        0x7f0201f8
        0x7f0201f9
        0x7f0201fa
        0x7f0201fb
        0x7f0201fc
        0x7f0201fd
        0x7f0201fe
        0x7f0201ff
        0x7f020200
        0x7f020201
        0x7f020202
        0x7f020203
        0x7f020204
        0x7f020205
        0x7f020206
        0x7f020207
        0x7f020208
        0x7f020209
        0x7f02020a
        0x7f02020b
        0x7f02020c
        0x7f02020d
        0x7f02020e
        0x7f02020f
        0x7f020210
        0x7f020211
        0x7f020212
        0x7f020213
        0x7f020214
        0x7f020215
        0x7f020216
        0x7f020217
        0x7f020218
        0x7f020219
        0x7f02021a
        0x7f02021b
        0x7f02021c
    .end array-data

    .line 1036
    :array_1
    .array-data 4
        0x7f020245
        0x7f020246
        0x7f020247
        0x7f020248
        0x7f020249
        0x7f02024a
        0x7f02024b
        0x7f02024c
        0x7f02024d
        0x7f02024e
        0x7f02024f
        0x7f020250
        0x7f020251
        0x7f020252
        0x7f020253
        0x7f020254
        0x7f020255
        0x7f020256
        0x7f020257
        0x7f020258
        0x7f020259
        0x7f02025a
        0x7f02025b
        0x7f02025c
        0x7f02025d
        0x7f02025e
        0x7f02025f
        0x7f020260
        0x7f020261
        0x7f020262
        0x7f020263
        0x7f020264
        0x7f020265
        0x7f020266
        0x7f020267
        0x7f020268
        0x7f020269
        0x7f02026a
        0x7f02026b
        0x7f02026c
        0x7f02026d
        0x7f02026e
        0x7f02026f
        0x7f020270
        0x7f020271
        0x7f020272
        0x7f020273
        0x7f020274
        0x7f020275
        0x7f020276
        0x7f020277
        0x7f020278
        0x7f020279
        0x7f02027a
        0x7f02027b
        0x7f02027c
        0x7f02027d
        0x7f02027e
        0x7f02027f
        0x7f020280
        0x7f020281
        0x7f020282
        0x7f020283
        0x7f020284
        0x7f020285
        0x7f020286
        0x7f020287
        0x7f020288
        0x7f020289
        0x7f02028a
        0x7f02028b
        0x7f02028c
        0x7f02028d
        0x7f02028e
        0x7f02028f
        0x7f020290
        0x7f020291
        0x7f020292
        0x7f020293
        0x7f020294
        0x7f020295
        0x7f020296
        0x7f020297
        0x7f020298
        0x7f020299
        0x7f02029a
        0x7f02029b
        0x7f02029c
        0x7f02029d
        0x7f02029e
        0x7f02029f
        0x7f0202a0
        0x7f0202a1
        0x7f0202a2
        0x7f0202a3
        0x7f0202a4
        0x7f0202a5
        0x7f0202a6
        0x7f0202a7
        0x7f0202a8
        0x7f0202a9
        0x7f0202aa
        0x7f0202ab
        0x7f0202ac
        0x7f0202ad
        0x7f0202ae
        0x7f0202af
        0x7f0202b0
        0x7f0202b1
        0x7f0202b2
        0x7f0202b3
        0x7f0202b4
        0x7f0202b5
        0x7f0202b6
        0x7f0202b7
        0x7f0202b8
        0x7f0202b9
        0x7f0202ba
        0x7f0202bb
        0x7f0202bc
        0x7f0202bd
        0x7f0202be
        0x7f0202bf
        0x7f0202c0
        0x7f0202c1
        0x7f0202c2
        0x7f0202c3
        0x7f0202c4
        0x7f0202c5
        0x7f0202c6
        0x7f0202c7
        0x7f0202c8
        0x7f0202c9
        0x7f0202ca
        0x7f0202cb
        0x7f0202cc
        0x7f0202cd
        0x7f0202ce
        0x7f0202cf
        0x7f0202d0
        0x7f0202d1
        0x7f0202d2
        0x7f0202d3
        0x7f0202d4
        0x7f0202d5
        0x7f0202d6
        0x7f0202d7
        0x7f0202d8
        0x7f0202d9
        0x7f0202da
        0x7f0202db
        0x7f0202dc
        0x7f0202dd
        0x7f0202de
        0x7f0202df
        0x7f0202e0
        0x7f0202e1
        0x7f0202e2
        0x7f0202e3
        0x7f0202e4
        0x7f0202e5
        0x7f0202e6
        0x7f0202e7
        0x7f0202e8
        0x7f0202e9
        0x7f0202ea
        0x7f0202eb
        0x7f0202ec
        0x7f0202ed
        0x7f0202ee
        0x7f0202ef
        0x7f0202f0
        0x7f0202f1
        0x7f0202f2
        0x7f0202f3
        0x7f0202f4
        0x7f0202f5
        0x7f0202f6
        0x7f0202f7
        0x7f0202f8
        0x7f0202f9
        0x7f0202fa
        0x7f0202fb
        0x7f0202fc
        0x7f0202fd
        0x7f0202fe
        0x7f0202ff
        0x7f020300
        0x7f020301
        0x7f020302
        0x7f020303
        0x7f020304
        0x7f020305
        0x7f020306
        0x7f020307
        0x7f020308
        0x7f020309
        0x7f02030a
        0x7f02030b
        0x7f02030c
        0x7f02030d
        0x7f02030e
        0x7f02030f
        0x7f020310
        0x7f020311
        0x7f020312
        0x7f020313
        0x7f020314
        0x7f020315
        0x7f020316
        0x7f020317
        0x7f020318
        0x7f020319
        0x7f02031a
        0x7f02031b
        0x7f02031c
        0x7f02031d
        0x7f02031e
        0x7f02031f
        0x7f020320
        0x7f020321
        0x7f020322
        0x7f020323
        0x7f020324
        0x7f020325
        0x7f020326
        0x7f020327
        0x7f020328
        0x7f020329
        0x7f02032a
        0x7f02032b
        0x7f02032c
        0x7f02032d
        0x7f02032e
        0x7f02032f
        0x7f020330
        0x7f020331
        0x7f020332
        0x7f020333
        0x7f020334
        0x7f020335
        0x7f020336
        0x7f020337
        0x7f020338
        0x7f020339
        0x7f02033a
        0x7f02033b
        0x7f02033c
        0x7f02033d
        0x7f02033e
        0x7f02033f
        0x7f020340
        0x7f020341
        0x7f020342
        0x7f020343
        0x7f020344
        0x7f020345
        0x7f020346
        0x7f020347
        0x7f020348
        0x7f020349
        0x7f02034a
        0x7f02034b
        0x7f02034c
        0x7f02034d
        0x7f02034e
        0x7f02034f
        0x7f020350
        0x7f020351
        0x7f020352
        0x7f020353
        0x7f020354
        0x7f020355
        0x7f020356
        0x7f020357
        0x7f020358
        0x7f020359
        0x7f02035a
        0x7f02035b
        0x7f02035c
        0x7f02035d
        0x7f02035e
        0x7f02035f
        0x7f020360
        0x7f020361
        0x7f020362
        0x7f020363
    .end array-data
.end method

.method public isWordSeparator(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 3149
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getWordSeparators()Ljava/lang/String;

    move-result-object v0

    .line 3150
    .local v0, "separators":Ljava/lang/String;
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public launchDebugSettings()V
    .locals 1

    .prologue
    .line 3686
    const-class v0, Lcom/android/inputmethod/latin/DictionaryEditorDebugSettings;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->launchSettings(Ljava/lang/Class;)V

    .line 3687
    return-void
.end method

.method protected launchSettings()V
    .locals 1

    .prologue
    .line 3675
    const-class v0, Lcom/android/inputmethod/latin/DomainEditor;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->launchSettings(Ljava/lang/Class;)V

    .line 3676
    return-void
.end method

.method protected launchSettings(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3691
    .local p1, "settingsClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/preference/PreferenceActivity;>;"
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleClose()V

    .line 3692
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3693
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3694
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3695
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->startActivity(Landroid/content/Intent;)V

    .line 3696
    return-void
.end method

.method protected launchUserDictionaryEditor()V
    .locals 2

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleClose()V

    .line 3680
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3681
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3682
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3683
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->startActivity(Landroid/content/Intent;)V

    .line 3684
    return-void
.end method

.method listfp()V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->listf:Ljava/util/List;

    .line 154
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->listf:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 155
    return-void
.end method

.method nl()V
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 240
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v1, " \n"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 242
    return-void
.end method

.method public onAutoCompletionStateChanged(Z)V
    .locals 1
    .param p1, "isAutoCompletion"    # Z

    .prologue
    .line 4007
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Calibration;->onAutoCompletionStateChanged(Z)V

    .line 4008
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->onCancelInput()V

    .line 1936
    return-void
.end method

.method public onCancelVoice()V
    .locals 1

    .prologue
    .line 2334
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mRecognizing:Z

    if-eqz v0, :cond_0

    .line 2335
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->switchToKeyboardView()V

    .line 2337
    :cond_0
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    .line 1333
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1334
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1335
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1337
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "conf"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x1

    .line 797
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "systemLocale":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSystemLocale:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 799
    iput-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSystemLocale:Ljava/lang/String;

    .line 800
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    if-eqz v2, :cond_5

    .line 801
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 802
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 801
    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 803
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 804
    invoke-direct {p0, v4, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->toggleLanguage(ZZ)V

    .line 809
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Calibration;->updateKeyboardConfiguration()V

    .line 812
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mOrientation:I

    if-eq v2, v3, :cond_3

    .line 813
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-eqz v2, :cond_1

    .line 815
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->pickSuggestion(Ljava/lang/CharSequence;Z)V

    .line 817
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 818
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 819
    if-eqz v0, :cond_2

    .line 820
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 821
    :cond_2
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mOrientation:I

    .line 822
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->reloadKeyboards()V

    .line 824
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mConfigurationChanging:Z

    .line 825
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 826
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mRecognizing:Z

    if-eqz v2, :cond_4

    .line 827
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->switchToRecognitionStatusView(Landroid/content/res/Configuration;)V

    .line 829
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mConfigurationChanging:Z

    .line 830
    return-void

    .line 806
    :cond_5
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->reloadKeyboards()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 534
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->clst()V

    .line 535
    invoke-static {p0}, Lcom/android/inputmethod/latin/LatinImeLogger;->init(Landroid/content/Context;)V

    .line 536
    invoke-static {p0}, Lcom/android/inputmethod/latin/Calibration;->init(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    .line 537
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 538
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v7, Lcom/android/inputmethod/latin/DictionaryEditor;->PackageName:Ljava/lang/String;

    .line 539
    sput-object p0, Lcom/android/inputmethod/latin/DictionaryEditor;->context:Landroid/content/Context;

    .line 541
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 542
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 544
    .local v0, "conf":Landroid/content/res/Configuration;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 545
    .local v5, "prefs":Landroid/content/SharedPreferences;
    new-instance v7, Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-direct {v7, p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    iput-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 546
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v7, v5}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 547
    invoke-static {}, Lcom/android/inputmethod/latin/Calibration;->getInstance()Lcom/android/inputmethod/latin/Calibration;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    .line 548
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/Calibration;->setLanguageSwitcher(Lcom/android/inputmethod/latin/LanguageSwitcher;)V

    .line 549
    iget-object v7, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSystemLocale:Ljava/lang/String;

    .line 550
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 551
    new-instance v7, Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-direct {v7, p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    .line 553
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v4

    .line 554
    .local v4, "inputLanguage":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 555
    iget-object v7, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 557
    :cond_0
    const-string v7, "recorrection_enabled"

    .line 558
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 557
    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mReCorrectionEnabled:Z

    .line 559
    const-string v7, "always_suggest"

    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 560
    const v9, 0x7f090008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 559
    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAlwaysSuggest:Z

    .line 562
    const-string v7, "full_screen_portrait"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 561
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mFullScreenPortrait:Z

    .line 563
    const-string v7, "full_screen_landscape"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mNoFullScreenLandscape:Z

    .line 566
    const-string v7, "background_custom_key"

    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 567
    const v9, 0x7f09000c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 565
    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomBackgrounColors:Z

    .line 569
    const-string v7, "background_suggestion_key"

    iget-object v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 570
    const v9, 0x7f09000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 568
    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomSuggestionColors:Z

    .line 571
    const-string v7, "external_skin"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mExternalSkin:Ljava/lang/String;

    .line 572
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mExternalSkin:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 573
    invoke-static {}, Lcom/android/inputmethod/latin/Wordinfo;->resetBuildersCache()V

    .line 574
    sget-object v7, Lcom/android/inputmethod/latin/DictionaryEditor;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/inputmethod/latin/Wordinfo;->getAllBuilders(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 575
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mExternalSkin:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/inputmethod/latin/Wordinfo;->getSkinDataByName(Ljava/lang/String;)Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    move-result-object v7

    sput-object v7, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    .line 577
    :cond_1
    sget-object v7, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    if-eqz v7, :cond_3

    .line 578
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    .line 582
    :goto_0
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->reset()V

    .line 583
    const/4 v6, 0x1

    .line 584
    .local v6, "tryGC":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v7, 0x5

    if-ge v3, v7, :cond_2

    if-nez v6, :cond_4

    .line 594
    :cond_2
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mOrientation:I

    .line 595
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->initSuggestPuncList(Landroid/content/SharedPreferences;)V

    .line 598
    new-instance v2, Landroid/content/IntentFilter;

    .line 599
    const-string v7, "android.media.RINGER_MODE_CHANGED"

    .line 598
    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 600
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x23

    if-lt v8, v9, :cond_register_receiver_legacy

    const/4 v8, 0x4

    invoke-virtual {p0, v7, v2, v8}, Lcom/android/inputmethod/latin/DictionaryEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_register_receiver_done

    :cond_register_receiver_legacy
    invoke-virtual {p0, v7, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_register_receiver_done

    .line 602
    new-instance v7, Lcom/android/inputmethod/voice/VoiceInput;

    invoke-direct {v7, p0, p0}, Lcom/android/inputmethod/voice/VoiceInput;-><init>(Landroid/content/Context;Lcom/android/inputmethod/voice/VoiceInput$UiListener;)V

    iput-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    .line 603
    new-instance v7, Lcom/android/inputmethod/latin/Hints;

    new-instance v8, Lcom/android/inputmethod/latin/DictionaryEditor$3;

    invoke-direct {v8, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$3;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    invoke-direct {v7, p0, v8}, Lcom/android/inputmethod/latin/Hints;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/Hints$Display;)V

    iput-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHints:Lcom/android/inputmethod/latin/Hints;

    .line 613
    invoke-interface {v5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 615
    invoke-static {p0}, Lcom/android/inputmethod/latin/Utils;->getDipScale(Landroid/content/Context;)F

    move-result v7

    const/16 v8, 0xf4

    .line 614
    invoke-static {v7, v8}, Lcom/android/inputmethod/latin/Utils;->dipToPixel(FI)I

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mMinimumVoiceRecognitionViewHeightPixel:I

    .line 616
    return-void

    .line 580
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "i":I
    .end local v6    # "tryGC":Z
    :cond_3
    sput-boolean v10, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    goto :goto_0

    .line 586
    .restart local v3    # "i":I
    .restart local v6    # "tryGC":Z
    :cond_4
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->initSuggest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    const/4 v6, 0x0

    .line 584
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v6

    goto :goto_2
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 845
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 846
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLayout()Ljava/lang/String;

    move-result-object v1

    .line 845
    invoke-virtual {v0, v3, v1}, Lcom/android/inputmethod/latin/Calibration;->makeKeyboards(ZLjava/lang/String;)V

    .line 847
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 848
    const v1, 0x7f030007

    const/4 v2, 0x0

    .line 847
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    .line 851
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    .line 852
    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/CandidateView;

    .line 851
    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    .line 853
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0, p0}, Lcom/android/inputmethod/latin/CandidateView;->setService(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    .line 854
    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->suggestionSizeBig:Z

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/CandidateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/lit8 v1, v1, 0x12

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 859
    :cond_0
    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomSuggestionColors:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v0, v0, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->candidate_background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    iget-object v1, v1, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->candidate_background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 862
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 874
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->setCandidatesViewShown(Z)V

    .line 875
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    return-object v0

    .line 864
    :cond_1
    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomSuggestionColors:Z

    if-eqz v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSuggestionBarColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 870
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 834
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->recreateInputView()V

    .line 835
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 836
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLayout()Ljava/lang/String;

    move-result-object v1

    .line 835
    invoke-virtual {v0, v4, v1}, Lcom/android/inputmethod/latin/Calibration;->makeKeyboards(ZLjava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    const/4 v1, 0x0

    .line 838
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->makeFieldContext()Lcom/android/inputmethod/voice/FieldContext;

    move-result-object v2

    .line 839
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 838
    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->shouldShowVoiceButton(Lcom/android/inputmethod/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    .line 837
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZ)V

    .line 840
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->tmroff()V

    .line 771
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/UserDictionary;->close()V

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoTextDictionary:Lcom/android/inputmethod/latin/AutoTextDictionary;

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoTextDictionary:Lcom/android/inputmethod/latin/AutoTextDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/AutoTextDictionary;->close()V

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    if-eqz v0, :cond_2

    .line 778
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ContactsDictionary;->close()V

    .line 780
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 781
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    if-eqz v0, :cond_3

    .line 782
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->destroy()V

    .line 784
    :cond_3
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 785
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->onDestroy()V

    .line 786
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {v0, p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->unregister(Landroid/content/Context;)V

    .line 789
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 790
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 8
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1287
    sget-boolean v3, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1288
    const-string v3, "foo"

    const-string v5, "Received completions:"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_3

    array-length v3, p1

    :goto_1
    if-lt v1, v3, :cond_2

    .line 1293
    .end local v1    # "i":I
    :cond_0
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCompletionOn:Z

    if-eqz v3, :cond_1

    .line 1294
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1295
    if-nez p1, :cond_4

    .line 1296
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->clearSuggestions()V

    .line 1312
    :cond_1
    :goto_2
    return-void

    .line 1290
    .restart local v1    # "i":I
    :cond_2
    const-string v3, "foo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    .line 1300
    .end local v1    # "i":I
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    .local v2, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-eqz p1, :cond_7

    array-length v3, p1

    :goto_4
    if-lt v1, v3, :cond_5

    .line 1308
    invoke-direct {p0, v2, v7, v7, v7}, Lcom/android/inputmethod/latin/DictionaryEditor;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 1309
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    .line 1310
    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/DictionaryEditor;->setCandidatesViewShown(Z)V

    goto :goto_2

    .line 1302
    :cond_5
    aget-object v0, p1, v1

    .line 1303
    .local v0, "ci":Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_6

    .line 1304
    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "ci":Landroid/view/inputmethod/CompletionInfo;
    :cond_7
    move v3, v4

    goto :goto_4
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1341
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1342
    .local v0, "conf":Landroid/content/res/Configuration;
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mNoFullScreenLandscape:Z

    if-eqz v6, :cond_1

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return v4

    .line 1344
    :cond_1
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mFullScreenPortrait:Z

    if-eqz v6, :cond_2

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v5, :cond_2

    move v4, v5

    .line 1345
    goto :goto_0

    .line 1347
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1348
    .local v3, "dm":Landroid/util/DisplayMetrics;
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v5

    .line 1350
    .local v2, "displayHeight":F
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1351
    .local v1, "dimen":F
    cmpl-float v5, v2, v1

    if-gtz v5, :cond_0

    .line 1354
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v4

    goto :goto_0
.end method

.method public onExtractedCursorMovement(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1246
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mReCorrectionEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    :goto_0
    return-void

    .line 1249
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .prologue
    .line 1229
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mReCorrectionEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    :goto_0
    return-void

    .line 1232
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    goto :goto_0
.end method

.method public onFinishInput()V
    .locals 1

    .prologue
    .line 1093
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 1095
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 1096
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->onAutoCompletionStateChanged(Z)V

    .line 1098
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mConfigurationChanging:Z

    if-nez v0, :cond_1

    .line 1099
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAfterVoiceInput:Z

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 1101
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logInputEnded()V

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->flushLogs()V

    .line 1104
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 1106
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->closing()V

    .line 1109
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    if-eqz v0, :cond_3

    .line 1110
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/AutoDictionary;->flushPendingWrites()V

    .line 1111
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    if-eqz v0, :cond_4

    .line 1112
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/UserBigramDictionary;->flushPendingWrites()V

    .line 1113
    :cond_4
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 2
    .param p1, "finishingInput"    # Z

    .prologue
    .line 1117
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1119
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1120
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1121
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->dism()V

    .line 1122
    return-void
.end method

.method public onKey(I[III)V
    .locals 10
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 1700
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->keystok:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->keystok:I

    .line 1701
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1702
    packed-switch p1, :pswitch_data_0

    .line 287
    :pswitch_0
    goto :goto_0

    .line 1704
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->po1()V

    goto/16 :goto_3

    .line 1705
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->po2()V

    goto/16 :goto_3

    .line 1706
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->cut()V

    goto/16 :goto_3

    .line 1707
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->copy()V

    goto/16 :goto_3

    .line 1708
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->paste()V

    goto/16 :goto_3

    .line 1709
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->po3()V

    goto :goto_3

    .line 1710
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->po4()V

    goto :goto_3

    .line 1711
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->sall()V

    goto :goto_3

    .line 1712
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->nl()V

    goto :goto_3

    .line 1713
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->clall()V

    goto :goto_3

    .line 1702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch

    .line 289
    .line 1789
    .local v8, "when":J
    :goto_0
    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    .line 1790
    iget-wide v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastKeyTime:J

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    .line 1791
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mDeleteCount:I

    .line 1793
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->keystok:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mFreeVersion:Z

    if-eqz v0, :cond_2

    .line 1795
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->HandleMessageTouser()V

    .line 1797
    :cond_2
    iput-wide v8, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastKeyTime:J

    .line 1798
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->hasDistinctMultitouch()Z

    .line 1799
    .local v6, "distinctMultiTouch":Z
    move-result v6

    sparse-switch p1, :sswitch_data_0

    .line 1891
    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    .line 1892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAddedAutoSpace:Z

    .line 1894
    :cond_3
    const/16 v0, -0xd

    if-ne p1, v0, :cond_4

    .line 1895
    const/16 p1, 0x20

    .line 1896
    :cond_4
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$RingCharBuffer;->getInstance()Lcom/android/inputmethod/latin/DictionaryEditorUtil$RingCharBuffer;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/inputmethod/latin/DictionaryEditorUtil$RingCharBuffer;->push(CII)V

    .line 1897
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnInputChar()V

    .line 1898
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->isWordSeparator(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1899
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleSeparator(I)V

    .line 1904
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 1906
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Calibration;->onKey(I)V

    .line 1908
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnteredText:Ljava/lang/CharSequence;

    .line 1909
    .line 1801
    :goto_3
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleBackspace()V

    .line 1802
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mDeleteCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mDeleteCount:I

    .line 1803
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnDelete()V

    .line 1807
    goto :goto_2

    :sswitch_1
    if-nez v6, :cond_5

    .line 1808
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleShift()V

    .line 1812
    goto :goto_2

    :sswitch_2
    if-nez v6, :cond_5

    .line 1813
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->changeKeyboardMode(Z)V

    .line 1816
    goto :goto_2

    :sswitch_3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isShowingOptionDialog()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1817
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleClose()V

    .line 1821
    goto :goto_2

    :sswitch_4
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->onOptionKeyPressed()V

    .line 1824
    goto :goto_2

    :sswitch_5
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->onOptionKeyLongPressed()V

    .line 1827
    goto :goto_2

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->launchSettings()V

    .line 1830
    goto :goto_2

    :sswitch_7
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->toggleLanguage(ZZ)V

    .line 1833
    goto :goto_2

    :sswitch_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->toggleLanguage(ZZ)V

    .line 1836
    goto :goto_2

    :sswitch_9
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->toggleArrow(Z)V

    .line 1839
    goto :goto_2

    :sswitch_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->toggleArrow(Z)V

    .line 1846
    goto :goto_2

    :sswitch_b
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendDownUpKeyEvents(I)V

    .line 1847
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleArrow(I)V

    .line 1851
    goto :goto_2

    :sswitch_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->startListening(Z)V

    .line 1855
    goto :goto_2

    :sswitch_d
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendDownUpKeyEvents(I)V

    .line 1858
    goto :goto_2

    :sswitch_e
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleT9()V

    .line 1861
    goto :goto_2

    :sswitch_f
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p3

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleCharacter(I[IZII)V

    .line 1864
    goto :goto_2

    :sswitch_10
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleClose()V

    .line 1867
    goto :goto_2

    :sswitch_11
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v0, :cond_5

    .line 1870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    .line 1871
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->getSuggestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1873
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->moveToNextSuggestion()V

    .line 1874
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestPuncList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    .line 1875
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/CandidateView;->getSuggestions()Ljava/util/List;

    .line 1874
    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1877
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->getSuggestions()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    iget v1, v1, Lcom/android/inputmethod/latin/CandidateView;->mCurrentRecommendedWord:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    .line 1878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->scrolled:Z

    .line 1879
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 1880
    .local v7, "ic":Landroid/view/inputmethod/InputConnection;
    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1881
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestWord:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_2

    .line 1901
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_6
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleCharacter(I[IZII)V

    goto/16 :goto_1

    .line 1799
    :sswitch_data_0
    .sparse-switch
        -0x6c -> :sswitch_6
        -0x6b -> :sswitch_a
        -0x6a -> :sswitch_9
        -0x69 -> :sswitch_8
        -0x68 -> :sswitch_7
        -0x66 -> :sswitch_c
        -0x65 -> :sswitch_5
        -0x64 -> :sswitch_4
        -0xc -> :sswitch_10
        -0xb -> :sswitch_11
        -0xa -> :sswitch_e
        -0x9 -> :sswitch_f
        -0x5 -> :sswitch_0
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_d
        0x13 -> :sswitch_b
        0x14 -> :sswitch_b
        0x15 -> :sswitch_b
        0x16 -> :sswitch_b
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1362
    sparse-switch p1, :sswitch_data_0

    .line 1396
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 1364
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1365
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1366
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->handleBack()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1368
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Tutorial;->close()Z

    .line 1370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    goto :goto_0

    .line 1379
    :sswitch_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1384
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseVolumeKeyForLeftRight:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1385
    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendDownUpKeyEvents(I)V

    goto :goto_1

    .line 1389
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1391
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseVolumeKeyForLeftRight:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1392
    const/16 v1, 0x16

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendDownUpKeyEvents(I)V

    goto :goto_1

    .line 1362
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1402
    packed-switch p1, :pswitch_data_0

    .line 1433
    :cond_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1405
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseVolumeKeyForLeftRight:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1406
    const/4 v1, 0x1

    goto :goto_0

    .line 1413
    :cond_1
    :pswitch_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-eqz v1, :cond_2

    .line 1414
    const/4 v1, 0x1

    goto :goto_0

    .line 1416
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v12

    .line 1418
    .local v12, "inputView":Lcom/android/inputmethod/latin/LatinKeyboardView;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    invoke-virtual {v12}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1420
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 1421
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 1422
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    .line 1423
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    const/16 v10, 0x41

    .line 1420
    invoke-direct/range {v0 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 1425
    .end local p2    # "event":Landroid/view/KeyEvent;
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    .line 1426
    .local v11, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v11, :cond_3

    .line 1427
    invoke-interface {v11, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1428
    :cond_3
    const/4 v1, 0x1

    move-object p2, v0

    .end local v0    # "event":Landroid/view/KeyEvent;
    .restart local p2    # "event":Landroid/view/KeyEvent;
    goto :goto_0

    .line 1402
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPress(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 3492
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->isVibrateAndSoundFeedbackRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3493
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->vibrate()V

    .line 3494
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->playKeyClick(I)V

    .line 3496
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    .line 3497
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->hasDistinctMultitouch()Z

    move-result v0

    .line 3498
    .local v0, "distinctMultiTouch":Z
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 3499
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->onPress()V

    .line 3500
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->handleShift()V

    .line 3510
    :goto_0
    return-void

    .line 3501
    :cond_1
    if-eqz v0, :cond_2

    .line 3502
    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    .line 3503
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->changeKeyboardMode(Z)V

    .line 3504
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSymbolKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->onPress()V

    .line 3505
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->setAutoModeSwitchStateMomentary()V

    goto :goto_0

    .line 3507
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->onOtherKeyPressed()V

    .line 3508
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSymbolKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->onOtherKeyPressed()V

    goto :goto_0
.end method

.method public onRelease(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 3514
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard;

    .line 3515
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->keyReleased()V

    .line 3517
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    .line 3518
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->hasDistinctMultitouch()Z

    move-result v0

    .line 3519
    .local v0, "distinctMultiTouch":Z
    if-eqz v0, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 3520
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->isMomentary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3521
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->resetShift()V

    .line 3522
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->onRelease()V

    .line 3532
    :cond_1
    :goto_0
    return-void

    .line 3523
    :cond_2
    if-eqz v0, :cond_1

    .line 3524
    const/4 v1, -0x2

    if-ne p1, v1, :cond_1

    .line 3528
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->isInChordingAutoModeSwitchState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3529
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->changeKeyboardMode(Z)V

    .line 3530
    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSymbolKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->onRelease()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 17
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 3205
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 3206
    const/4 v12, 0x0

    .line 3207
    .local v12, "recreate":Z
    const/4 v13, 0x0

    .line 3208
    .local v13, "recreateSuggestions":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/latin/Calibration;->LoadKeyboardLayoutChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v14

    .line 3210
    .local v14, "redraw":Z
    const-string v2, "always_suggest"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3211
    const-string v2, "always_suggest"

    .line 3212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3211
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAlwaysSuggest:Z

    .line 3214
    :cond_0
    const-string v2, "bigram_suggestion"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3216
    const-string v2, "bigram_suggestion"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowSuggestions:Z

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBigramSuggestionEnabled:Z

    .line 3217
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateCorrectionMode()V

    .line 3219
    :cond_1
    const-string v2, "voice_input_best_choice"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3221
    const-string v2, "voice_input_best_choice"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mBestVoiceCohice:Z

    .line 3223
    :cond_2
    const-string v2, "suggest_words_with_missing_space_character"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3225
    const-string v2, "suggest_words_with_missing_space_character"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestWordsMissingSpace:Z

    .line 3228
    :cond_3
    const-string v2, "no_popup_on_space"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3230
    const-string v2, "no_popup_on_space"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mNoPopupOnSpace:Z

    .line 3232
    :cond_4
    const-string v2, "auto_swithch_to_qwerty"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3234
    const-string v2, "auto_swithch_to_qwerty"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoBackToAlpha:Z

    .line 3236
    :cond_5
    const-string v2, "long_press_on_123_to_settings"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3238
    const-string v2, "long_press_on_123_to_settings"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mLongPressOn123ToSettings:Z

    .line 3240
    :cond_6
    const-string v2, "background_image_uri"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3242
    const/4 v14, 0x1

    .line 3243
    const/4 v12, 0x1

    .line 3419
    :cond_7
    :goto_0
    const-string v2, "debug_pref"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3420
    const-string v2, "debug_pref"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->PERF_DEBUG:Z

    .line 3421
    sget-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->PERF_DEBUG:Z

    if-eqz v2, :cond_8

    .line 3422
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    .line 3423
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->TRACE:Z

    .line 3426
    :cond_8
    const-string v2, "show_touch_points"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3427
    const-string v2, "show_touch_points"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowTouchPoints:Z

    .line 3428
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowTouchPoints:Z

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setShowTouchPoints(Z)V

    .line 3430
    :cond_9
    const-string v2, "suggestion_bar_color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3432
    const/4 v14, 0x1

    .line 3433
    const/4 v12, 0x1

    .line 3435
    :cond_a
    const-string v2, "suggestion_bar_size"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3437
    const/4 v14, 0x1

    .line 3438
    const/4 v12, 0x1

    .line 3439
    const/4 v13, 0x1

    .line 3442
    :cond_b
    if-eqz v14, :cond_10

    .line 3443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    if-eqz v2, :cond_c

    .line 3445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget v3, v3, Lcom/android/inputmethod/latin/Calibration;->mMode:I

    .line 3446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/Calibration;->getKeyboardmImeOptions()I

    move-result v4

    .line 3447
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget-boolean v5, v5, Lcom/android/inputmethod/latin/Calibration;->mHasVoice:Z

    .line 3445
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZ)V

    .line 3449
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->reloadKeyboards()V

    .line 3450
    if-eqz v12, :cond_d

    .line 3451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Calibration;->recreateInputView()V

    .line 3452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_d

    .line 3453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    .line 3454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    .line 3455
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3454
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3458
    :cond_d
    if-eqz v13, :cond_f

    .line 3460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->initSuggest(Ljava/lang/String;)V

    .line 3461
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_f

    .line 3463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3464
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->setCandidatesView(Landroid/view/View;)V

    .line 3468
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 3471
    :cond_10
    return-void

    .line 3245
    :cond_11
    const-string v2, "use_custom_image"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3247
    const/4 v14, 0x1

    .line 3248
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3249
    :cond_12
    const-string v2, "background_custom_key"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3251
    const-string v2, "background_custom_key"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 3252
    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3250
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomBackgrounColors:Z

    .line 3253
    const/4 v14, 0x1

    .line 3254
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3255
    :cond_13
    const-string v2, "background_suggestion_key"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3257
    const-string v2, "background_suggestion_key"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 3258
    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3256
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseCustomSuggestionColors:Z

    .line 3259
    const/4 v14, 0x1

    .line 3260
    const/4 v12, 0x1

    .line 3261
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3263
    :cond_14
    const-string v2, "double_space_to_period"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3265
    const-string v2, "double_space_to_period"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 3266
    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3264
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mDoubleSpaceToPeriod:Z

    goto/16 :goto_0

    .line 3267
    :cond_15
    const-string v2, "external_skin"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3268
    const-string v2, "external_skin"

    const-string v3, ""

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mExternalSkin:Ljava/lang/String;

    .line 3269
    sget-object v2, Lcom/android/inputmethod/latin/DictionaryEditor;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/inputmethod/latin/Wordinfo;->getAllBuilders(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 3270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mExternalSkin:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/inputmethod/latin/Wordinfo;->getSkinDataByName(Ljava/lang/String;)Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    move-result-object v2

    sput-object v2, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    .line 3271
    sget-object v2, Lcom/android/inputmethod/latin/DictionaryEditor;->skinData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    if-eqz v2, :cond_16

    .line 3272
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    .line 3276
    :goto_1
    const/4 v14, 0x1

    .line 3277
    const/4 v12, 0x1

    .line 3278
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3274
    :cond_16
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseExternalSkin:Z

    goto :goto_1

    .line 3280
    :cond_17
    const-string v2, "punctuation_editor"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3282
    invoke-direct/range {p0 .. p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->initSuggestPuncList(Landroid/content/SharedPreferences;)V

    goto/16 :goto_0

    .line 3284
    :cond_18
    const-string v2, "use_contact_dictionary"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    if-eqz v2, :cond_7

    .line 3287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->initSuggest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3290
    :cond_19
    const-string v2, "suggestion_font_color"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3292
    const-string v2, "suggestion_font_color"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 3293
    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 3291
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestionFontClor:I

    .line 3294
    sget v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestionFontClor:I

    invoke-static {v2}, Lcom/android/inputmethod/latin/CandidateView;->setColor(I)V

    goto/16 :goto_0

    .line 3295
    :cond_1a
    const-string v2, "gesture_sensitivity1"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3297
    const-string v2, "gesture_sensitivity1"

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3298
    const v4, 0x7f0b000c

    .line 3297
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 3296
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureSensitivity:I

    .line 3299
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureSensitivity:I

    int-to-long v2, v2

    sput-wide v2, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThresholdMul:J

    goto/16 :goto_0

    .line 3300
    :cond_1b
    const-string v2, "suggestion_font_color"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3302
    const-string v2, "suggestion_font_color"

    const/high16 v3, -0x1000000

    .line 3301
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestionBarColor:I

    goto/16 :goto_0

    .line 3304
    :cond_1c
    const-string v2, "keyboard_background_color"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3306
    const-string v2, "keyboard_background_color"

    const/high16 v3, -0x1000000

    .line 3305
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mKeyboardBackgroundColor:I

    .line 3307
    const/4 v14, 0x1

    .line 3308
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3309
    :cond_1d
    const-string v2, "enable_cursors"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3311
    const-string v2, "enable_cursors"

    .line 3312
    const v3, 0x7f0d012b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3310
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3313
    .local v11, "enableCursors":Ljava/lang/String;
    const v2, 0x7f0d012a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3314
    const/4 v2, 0x0

    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableCursorsMode:I

    .line 3315
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/inputmethod/latin/LatinKeyboard;->mode_arrows:Z

    .line 3325
    :cond_1e
    :goto_2
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 3318
    :cond_1f
    const v2, 0x7f0d012b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3319
    const/4 v2, 0x1

    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableCursorsMode:I

    goto :goto_2

    .line 3321
    :cond_20
    const v2, 0x7f0d012c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3322
    const/4 v2, 0x2

    sput v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableCursorsMode:I

    .line 3323
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/inputmethod/latin/LatinKeyboard;->mode_arrows:Z

    goto :goto_2

    .line 3326
    .end local v11    # "enableCursors":Ljava/lang/String;
    :cond_21
    const-string v2, "auto_space"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3327
    const-string v2, "auto_space"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mResources:Landroid/content/res/Resources;

    .line 3328
    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3327
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoSpaceAfterPunc:Z

    goto/16 :goto_0

    .line 3329
    :cond_22
    const-string v2, "volume_key_for_left_right_support"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 3330
    const-string v2, "volume_key_for_left_right_support"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUseVolumeKeyForLeftRight:Z

    goto/16 :goto_0

    .line 3332
    :cond_23
    const-string v2, "enable_rtl"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3333
    const-string v2, "enable_rtl"

    .line 3334
    const/4 v3, 0x0

    .line 3333
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mRTLEnabled:Z

    .line 3335
    sget-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->mRTLEnabled:Z

    invoke-static {v2}, Lcom/android/inputmethod/latin/CandidateView;->setRTL(Z)V

    goto/16 :goto_0

    .line 3336
    :cond_24
    const-string v2, "full_screen_portrait"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3338
    const-string v2, "full_screen_portrait"

    const/4 v3, 0x0

    .line 3337
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mFullScreenPortrait:Z

    .line 3339
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 3340
    :cond_25
    const-string v2, "full_screen_landscape"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 3342
    const-string v2, "full_screen_landscape"

    const/4 v3, 0x0

    .line 3341
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mNoFullScreenLandscape:Z

    .line 3343
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 3344
    :cond_26
    const-string v2, "selected_languages"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 3346
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mRefreshKeyboardRequired:Z

    goto/16 :goto_0

    .line 3347
    :cond_27
    const-string v2, "recorrection_enabled"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3349
    const-string v2, "recorrection_enabled"

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3350
    const v4, 0x7f090005

    .line 3349
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3348
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mReCorrectionEnabled:Z

    goto/16 :goto_0

    .line 3351
    :cond_28
    const-string v2, "sound_volume"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 3352
    const-string v2, "tap_sound_style_pref"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3354
    :cond_29
    const-string v2, "tap_sound_style_pref"

    const v3, 0x7f0d00d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3353
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3356
    .local v16, "soundStyle":Ljava/lang/String;
    const-string v2, "sound_volume"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTypePlay:Landroid/media/SoundPool;

    if-eqz v2, :cond_2b

    .line 3357
    :cond_2a
    const-string v2, "tap_sound_style_pref"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3359
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTypePlay:Landroid/media/SoundPool;

    if-eqz v2, :cond_2c

    .line 3360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTypePlay:Landroid/media/SoundPool;

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V

    .line 3362
    :cond_2c
    const v2, 0x7f0d00d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3363
    const-string v2, "android.ogg"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    .line 3388
    :cond_2d
    :goto_3
    const v2, 0x7f0d00dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 3390
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTypePlay:Landroid/media/SoundPool;

    .line 3393
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 3394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v9

    .line 3395
    .local v9, "descriptor":Landroid/content/res/AssetFileDescriptor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTypePlay:Landroid/media/SoundPool;

    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    .line 3396
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    const/4 v8, 0x1

    .line 3395
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSoundID:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3411
    .end local v9    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_2e
    :goto_4
    const-string v2, "sound_volume"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3413
    const-string v2, "sound_volume"

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3414
    const v4, 0x7f0b0009

    .line 3413
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 3412
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSoundVolume:F

    goto/16 :goto_0

    .line 3364
    :cond_2f
    const v2, 0x7f0d00dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3365
    const-string v2, "iphone.ogg"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    goto :goto_3

    .line 3366
    :cond_30
    const v2, 0x7f0d00da

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 3367
    const-string v2, "samsung.ogg"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    goto/16 :goto_3

    .line 3369
    :cond_31
    const v2, 0x7f0d00db

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 3370
    const-string v2, "tock.ogg"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    goto/16 :goto_3

    .line 3371
    :cond_32
    const v2, 0x7f0d00dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3372
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    .line 3373
    .local v15, "sdcard":Ljava/io/File;
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTypePlay:Landroid/media/SoundPool;

    .line 3374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3375
    const-string v3, "external_sd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "custom.ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3374
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    .line 3377
    sget-boolean v2, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    if-eqz v2, :cond_33

    .line 3378
    const-string v2, "perfectkeboard"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "looking for file"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    :cond_33
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTypePlay:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->path:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSoundID:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 3382
    :catch_0
    move-exception v10

    .line 3384
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_3

    .line 3397
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .end local v15    # "sdcard":Ljava/io/File;
    :catch_1
    move-exception v10

    .line 3399
    .local v10, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_4

    .line 3402
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 3404
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_4

    .line 3405
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v10

    .line 3407
    .local v10, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 11
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/16 v10, 0x90

    const/16 v9, 0x80

    const/16 v8, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 881
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 882
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    .line 883
    iput v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mDeleteCount:I

    .line 884
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAddedAutoSpace:Z

    .line 885
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v2

    .line 886
    .local v2, "inputView":Lcom/android/inputmethod/latin/LatinKeyboardView;
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mFieldUrlOrWeb:Z

    .line 888
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    if-eqz v6, :cond_0

    .line 889
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {v6}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->onStartInputView()V

    .line 895
    :cond_0
    if-nez v2, :cond_2

    .line 1061
    :cond_1
    :goto_0
    return-void

    .line 899
    :cond_2
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mRefreshKeyboardRequired:Z

    if-eqz v6, :cond_3

    .line 900
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mRefreshKeyboardRequired:Z

    .line 901
    invoke-direct {p0, v4, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->toggleLanguage(ZZ)V

    .line 904
    :cond_3
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 905
    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLayout()Ljava/lang/String;

    move-result-object v7

    .line 904
    invoke-virtual {v6, v5, v7}, Lcom/android/inputmethod/latin/Calibration;->makeKeyboards(ZLjava/lang/String;)V

    .line 907
    invoke-static {p0}, Lcom/android/inputmethod/latin/TextEntryState;->newSession(Landroid/content/Context;)V

    .line 914
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPasswordText:Z

    .line 915
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v3, v6, 0xff0

    .line 916
    .local v3, "variation":I
    if-eq v3, v9, :cond_4

    .line 917
    if-eq v3, v10, :cond_4

    .line 918
    const/16 v6, 0xe0

    if-ne v3, v6, :cond_5

    .line 919
    :cond_4
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPasswordText:Z

    .line 922
    :cond_5
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->makeFieldContext()Lcom/android/inputmethod/voice/FieldContext;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->shouldShowVoiceButton(Lcom/android/inputmethod/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableVoiceButton:Z

    .line 924
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableVoiceButton:Z

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableVoice:Z

    if-eqz v6, :cond_b

    move v1, v4

    .line 925
    .local v1, "enableVoiceButton":Z
    :goto_1
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAfterVoiceInput:Z

    .line 926
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mImmediatelyAfterVoiceInput:Z

    .line 927
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowingVoiceSuggestions:Z

    .line 928
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInputHighlighted:Z

    .line 929
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputTypeNoAutoCorrect:Z

    .line 930
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAlwaysSuggest:Z

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isFullscreenMode()Z

    move-result v6

    if-nez v6, :cond_c

    move v6, v4

    :goto_2
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    .line 931
    iget-object v6, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.android.email"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 933
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAlwaysSuggest:Z

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    .line 935
    :cond_6
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCompletionOn:Z

    .line 936
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 937
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCapsLock:Z

    .line 938
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnteredText:Ljava/lang/CharSequence;

    .line 939
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 941
    .local v0, "a":Ljava/lang/Integer;
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v6, 0xf

    sparse-switch v6, :sswitch_data_0

    .line 1024
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    .line 1025
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1024
    invoke-virtual {v6, v4, v7, v1}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZ)V

    .line 1027
    :cond_7
    :goto_3
    sget-boolean v6, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 1029
    const-string v6, "perfectkeboard"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "*****************************a="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_8
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPasswordText:Z

    if-eqz v6, :cond_9

    .line 1033
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    .line 1035
    :cond_9
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinKeyboardView;->closing()V

    .line 1038
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->loadSettings()V

    .line 1039
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1041
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isCandidateStripVisible()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 1042
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCompletionOn:Z

    if-nez v6, :cond_1f

    move v6, v5

    .line 1041
    :goto_4
    invoke-direct {p0, v6, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->setCandidatesViewShownInternal(ZZ)V

    .line 1043
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateSuggestions()V

    .line 1046
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Suggest;->hasMainDictionary()Z

    move-result v6

    sput-boolean v6, Lcom/android/inputmethod/latin/DictionaryEditor;->mHasDictionary:Z

    .line 1048
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateCorrectionMode()V

    .line 1050
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPopupOn:Z

    invoke-virtual {v2, v6}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setPreviewEnabled(Z)V

    .line 1051
    iget v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLongPressDelay:I

    invoke-virtual {v2, v6}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setLongPressDelay(I)V

    .line 1052
    invoke-virtual {v2, v4}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setProximityCorrectionEnabled(Z)V

    .line 1053
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    if-eqz v6, :cond_20

    .line 1054
    iget v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCorrectionMode:I

    if-gtz v6, :cond_a

    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowSuggestions:Z

    if-eqz v6, :cond_20

    .line 1053
    :cond_a
    :goto_5
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    .line 1057
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->checkReCorrectionOnStart()V

    .line 1058
    iget-object v4, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->checkTutorial(Ljava/lang/String;)V

    .line 1059
    sget-boolean v4, Lcom/android/inputmethod/latin/DictionaryEditor;->TRACE:Z

    if-eqz v4, :cond_1

    .line 1060
    const-string v4, "/data/trace/latinime"

    invoke-static {v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "a":Ljava/lang/Integer;
    .end local v1    # "enableVoiceButton":Z
    :cond_b
    move v1, v5

    .line 924
    goto/16 :goto_1

    .restart local v1    # "enableVoiceButton":Z
    :cond_c
    move v6, v5

    .line 930
    goto/16 :goto_2

    .line 951
    .restart local v0    # "a":Ljava/lang/Integer;
    :sswitch_0
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    .line 952
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    const/4 v7, 0x3

    .line 953
    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 952
    invoke-virtual {v6, v7, v8, v1}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZ)V

    goto/16 :goto_3

    .line 956
    :sswitch_1
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    .line 957
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 956
    invoke-virtual {v6, v4, v7, v1}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZ)V

    .line 959
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    .line 961
    if-eq v3, v9, :cond_d

    .line 962
    if-eq v3, v10, :cond_d

    .line 963
    const/16 v6, 0xe0

    if-ne v3, v6, :cond_e

    .line 964
    :cond_d
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    .line 965
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/lit16 v6, v6, 0x128

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 967
    :cond_e
    if-eq v3, v8, :cond_f

    .line 968
    const/16 v6, 0x60

    if-eq v3, v6, :cond_f

    .line 969
    const/16 v6, 0xd0

    if-ne v3, v6, :cond_14

    .line 970
    :cond_f
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAlwaysSuggest:Z

    if-eqz v6, :cond_13

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isFullscreenMode()Z

    move-result v6

    if-nez v6, :cond_13

    move v6, v4

    :goto_6
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoSpace:Z

    .line 971
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 975
    :goto_7
    if-ne v3, v8, :cond_16

    .line 976
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAlwaysSuggest:Z

    if-eqz v6, :cond_15

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isFullscreenMode()Z

    move-result v6

    if-nez v6, :cond_15

    move v6, v4

    :goto_8
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    .line 977
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    const/4 v7, 0x5

    .line 978
    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 977
    invoke-virtual {v6, v7, v8, v1}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZ)V

    .line 979
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mFieldUrlOrWeb:Z

    .line 980
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1005
    :cond_10
    :goto_9
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v7, 0x80000

    and-int/2addr v6, v7

    if-eqz v6, :cond_11

    .line 1006
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAlwaysSuggest:Z

    if-eqz v6, :cond_1c

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isFullscreenMode()Z

    move-result v6

    if-nez v6, :cond_1c

    move v6, v4

    :goto_a
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    .line 1007
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputTypeNoAutoCorrect:Z

    .line 1008
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/lit8 v6, v6, 0x16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1012
    :cond_11
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-nez v6, :cond_12

    .line 1013
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v7, 0x20000

    and-int/2addr v6, v7

    if-nez v6, :cond_12

    .line 1014
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAlwaysSuggest:Z

    if-eqz v6, :cond_1d

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isFullscreenMode()Z

    move-result v6

    if-nez v6, :cond_1d

    move v6, v5

    :goto_b
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputTypeNoAutoCorrect:Z

    .line 1015
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/lit8 v6, v6, 0x32

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1017
    :cond_12
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v7, 0x10000

    and-int/2addr v6, v7

    if-eqz v6, :cond_7

    .line 1018
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAlwaysSuggest:Z

    if-eqz v6, :cond_1e

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isFullscreenMode()Z

    move-result v6

    if-nez v6, :cond_1e

    move v6, v4

    :goto_c
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    .line 1019
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isFullscreenMode()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCompletionOn:Z

    .line 1020
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1022
    goto/16 :goto_3

    :cond_13
    move v6, v5

    .line 970
    goto/16 :goto_6

    .line 973
    :cond_14
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoSpace:Z

    goto/16 :goto_7

    :cond_15
    move v6, v5

    .line 976
    goto/16 :goto_8

    .line 981
    :cond_16
    const/16 v6, 0x10

    if-ne v3, v6, :cond_18

    .line 982
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAlwaysSuggest:Z

    if-eqz v6, :cond_17

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isFullscreenMode()Z

    move-result v6

    if-nez v6, :cond_17

    move v6, v4

    :goto_d
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    .line 983
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    const/4 v7, 0x4

    .line 984
    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 983
    invoke-virtual {v6, v7, v8, v1}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZ)V

    .line 985
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mFieldUrlOrWeb:Z

    .line 986
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_9

    :cond_17
    move v6, v5

    .line 982
    goto :goto_d

    .line 987
    :cond_18
    const/16 v6, 0x40

    if-ne v3, v6, :cond_19

    .line 988
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    .line 989
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 988
    invoke-virtual {v6, v4, v7, v1}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZ)V

    goto/16 :goto_9

    .line 990
    :cond_19
    const/16 v6, 0xb0

    if-ne v3, v6, :cond_1b

    .line 991
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAlwaysSuggest:Z

    if-eqz v6, :cond_1a

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isFullscreenMode()Z

    move-result v6

    if-nez v6, :cond_1a

    move v6, v4

    :goto_e
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredictionOn:Z

    .line 992
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/lit8 v6, v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_9

    :cond_1a
    move v6, v5

    .line 991
    goto :goto_e

    .line 993
    :cond_1b
    const/16 v6, 0xa0

    if-ne v3, v6, :cond_10

    .line 994
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    const/4 v7, 0x7

    .line 995
    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 994
    invoke-virtual {v6, v7, v8, v1}, Lcom/android/inputmethod/latin/Calibration;->setKeyboardMode(IIZ)V

    .line 999
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-nez v6, :cond_10

    .line 1000
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mInputTypeNoAutoCorrect:Z

    goto/16 :goto_9

    :cond_1c
    move v6, v5

    .line 1006
    goto/16 :goto_a

    :cond_1d
    move v6, v4

    .line 1014
    goto/16 :goto_b

    :cond_1e
    move v6, v5

    .line 1018
    goto/16 :goto_c

    :cond_1f
    move v6, v4

    .line 1042
    goto/16 :goto_4

    :cond_20
    move v4, v5

    .line 1054
    goto/16 :goto_5

    .line 941
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 1912
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInputHighlighted:Z

    if-eqz v1, :cond_0

    .line 1913
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->commitVoiceInput()V

    .line 1915
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1916
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1931
    :goto_0
    return-void

    .line 1918
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->abortCorrection(Z)V

    .line 1919
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1920
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-eqz v1, :cond_2

    .line 1921
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1923
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->maybeRemovePreviousPeriod(Ljava/lang/CharSequence;)V

    .line 1924
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1925
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1926
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1927
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/Calibration;->onKey(I)V

    .line 1928
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 1929
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAddedAutoSpace:Z

    .line 1930
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnteredText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 1125
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1127
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mImmediatelyAfterVoiceInput:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAfterVoiceInput:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHints:Lcom/android/inputmethod/latin/Hints;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/Hints;->showPunctuationHintIfNecessary(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1129
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInput;->logPunctuationHintDisplayed()V

    .line 1132
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mImmediatelyAfterVoiceInput:Z

    .line 1133
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 5
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    const/4 v4, 0x0

    .line 1138
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 1140
    sget-boolean v1, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1141
    const-string v1, "perfectkeboard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUpdateSelection: oss="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ose="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1142
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nss="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nse="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1143
    const-string v3, ", cs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ce="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1141
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAfterVoiceInput:Z

    if-eqz v1, :cond_1

    .line 1147
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1, p4}, Lcom/android/inputmethod/voice/VoiceInput;->setCursorPos(I)V

    .line 1148
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    sub-int v2, p4, p3

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/voice/VoiceInput;->setSelectionSpan(I)V

    .line 1153
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInputHighlighted:Z

    if-eqz v1, :cond_b

    .line 1154
    :cond_3
    if-ne p3, p6, :cond_4

    if-eq p4, p6, :cond_b

    :cond_4
    iget v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastSelectionStart:I

    if-eq v1, p3, :cond_b

    .line 1155
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1156
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    .line 1157
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateSuggestions()V

    .line 1158
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 1159
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1160
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_5

    .line 1161
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1164
    :cond_5
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInputHighlighted:Z

    .line 1175
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_6
    :goto_0
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAccepted:Z

    .line 1176
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateShiftKeyState()V

    .line 1179
    iput p3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastSelectionStart:I

    .line 1180
    iput p4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastSelectionEnd:I

    .line 1182
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mReCorrectionEnabled:Z

    if-eqz v1, :cond_a

    .line 1184
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    if-eqz v1, :cond_a

    .line 1185
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1186
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1188
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isPredictionOn()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1189
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    if-nez v1, :cond_a

    .line 1190
    if-eq p5, p6, :cond_7

    .line 1191
    if-ne p3, p1, :cond_7

    .line 1192
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isCorrecting()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1193
    :cond_7
    add-int/lit8 v1, p4, -0x1

    if-lt p3, v1, :cond_8

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-nez v1, :cond_a

    .line 1194
    :cond_8
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInputHighlighted:Z

    if-nez v1, :cond_a

    .line 1195
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isCursorTouchingWord()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1196
    iget v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastSelectionStart:I

    iget v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLastSelectionEnd:I

    if-ge v1, v2, :cond_d

    .line 1197
    :cond_9
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->scrolled:Z

    if-nez v1, :cond_c

    .line 1198
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateOldSuggestions()V

    .line 1217
    :cond_a
    :goto_1
    return-void

    .line 1165
    :cond_b
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAccepted:Z

    if-nez v1, :cond_6

    .line 1166
    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->$SWITCH_TABLE$com$android$inputmethod$latin$TextEntryState$State()[I

    move-result-object v1

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()Lcom/android/inputmethod/latin/TextEntryState$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1168
    :sswitch_0
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 1171
    :sswitch_1
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAddedAutoSpace:Z

    goto :goto_0

    .line 1199
    :cond_c
    if-ge p1, p3, :cond_a

    .line 1200
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->scrolled:Z

    goto :goto_1

    .line 1202
    :cond_d
    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->abortCorrection(Z)V

    .line 1206
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v1, :cond_a

    .line 1207
    sget-object v1, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggestPuncList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    .line 1208
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CandidateView;->getSuggestions()Ljava/util/List;

    move-result-object v2

    .line 1207
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1209
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    .line 1210
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1211
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->setNextSuggestions()V

    goto :goto_1

    .line 1166
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onVoiceResults(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2519
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "alternatives":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/CharSequence;>;>;"
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mRecognizing:Z

    if-nez v0, :cond_0

    .line 2525
    :goto_0
    return-void

    .line 2522
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceResults:Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;

    iput-object p1, v0, Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;->candidates:Ljava/util/List;

    .line 2523
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceResults:Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;

    iput-object p2, v0, Lcom/android/inputmethod/latin/DictionaryEditor$VoiceResults;->alternatives:Ljava/util/Map;

    .line 2524
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method paste()V
    .locals 3

    .prologue
    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->cm:Landroid/text/ClipboardManager;

    invoke-virtual {v2}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "t":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 139
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "t":Ljava/lang/String;
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public paste_from_clipboard()V
    .locals 4

    .prologue
    .line 4271
    const-string v3, "clipboard"

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 4272
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 4273
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4274
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4275
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 4276
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4277
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/inputmethod/latin/EditingUtil;->appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 4278
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4281
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->getSuggestions()Ljava/util/List;

    move-result-object v11

    .line 2731
    .local v11, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAfterVoiceInput:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShowingVoiceSuggestions:Z

    if-eqz v0, :cond_0

    .line 2732
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 2734
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    .line 2735
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWordSeparators:Ljava/lang/String;

    .line 2736
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    move v2, p1

    .line 2734
    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByChooseSuggestion(Ljava/lang/String;ILjava/lang/String;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 2740
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isCorrecting()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v7, 0x0

    .line 2741
    .local v7, "correcting":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    .line 2742
    .local v8, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v8, :cond_1

    .line 2743
    invoke-interface {v8}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2745
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCompletionOn:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v0, :cond_6

    if-ltz p1, :cond_6

    .line 2746
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v0, v0

    if-ge p1, v0, :cond_6

    .line 2747
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v6, v0, p1

    .line 2748
    .local v6, "ci":Landroid/view/inputmethod/CompletionInfo;
    if-eqz v8, :cond_2

    .line 2749
    invoke-interface {v8, v6}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 2751
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCommittedLength:I

    .line 2752
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v0, :cond_3

    .line 2753
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->clear()V

    .line 2755
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2756
    if-eqz v8, :cond_4

    .line 2757
    invoke-interface {v8}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2822
    .end local v6    # "ci":Landroid/view/inputmethod/CompletionInfo;
    :cond_4
    :goto_1
    return-void

    .line 2740
    .end local v7    # "correcting":Z
    .end local v8    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_5
    const/4 v7, 0x1

    goto :goto_0

    .line 2763
    .restart local v7    # "correcting":Z
    .restart local v8    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_6
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2764
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isWordSeparator(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2765
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2764
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isSuggestedPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2768
    :cond_7
    const-string v0, ""

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, v11}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 2770
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 2771
    .local v9, "primaryCode":C
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v9, v0, v1

    .line 2772
    const/4 v1, -0x1

    .line 2773
    const/4 v2, -0x1

    .line 2771
    invoke-virtual {p0, v9, v0, v1, v2}, Lcom/android/inputmethod/latin/DictionaryEditor;->onKey(I[III)V

    .line 2774
    if-eqz v8, :cond_4

    .line 2775
    invoke-interface {v8}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_1

    .line 2779
    .end local v9    # "primaryCode":C
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAccepted:Z

    .line 2780
    invoke-direct {p0, p2, v7}, Lcom/android/inputmethod/latin/DictionaryEditor;->pickSuggestion(Ljava/lang/CharSequence;Z)V

    .line 2782
    if-nez p1, :cond_d

    .line 2783
    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->addToDictionaries(Ljava/lang/CharSequence;I)V

    .line 2787
    :goto_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2788
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2787
    invoke-static {v0, v1, p1, v11}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 2789
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2792
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mFieldUrlOrWeb:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->isWordURLorEmail()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mAutoSpaceAfterPunc:Z

    if-eqz v0, :cond_a

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/android/inputmethod/latin/DictionaryEditor;->isT9Mode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2793
    :cond_9
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendSpace()V

    .line 2794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustAddedAutoSpace:Z

    .line 2797
    :cond_a
    if-nez p1, :cond_e

    .line 2798
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCorrectionMode:I

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0, p2}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2799
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v10, 0x1

    .line 2801
    .local v10, "showingAddToDictionaryHint":Z
    :goto_3
    if-nez v7, :cond_f

    .line 2806
    const/16 v0, 0x20

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZ)V

    .line 2807
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->setNextSuggestions()V

    .line 2816
    :cond_b
    :goto_4
    if-eqz v10, :cond_c

    .line 2817
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0, p2}, Lcom/android/inputmethod/latin/CandidateView;->showAddToDictionaryHint(Ljava/lang/CharSequence;)V

    .line 2819
    :cond_c
    if-eqz v8, :cond_4

    .line 2820
    invoke-interface {v8}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_1

    .line 2785
    .end local v10    # "showingAddToDictionaryHint":Z
    :cond_d
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->addToBigramDictionary(Ljava/lang/CharSequence;I)V

    goto :goto_2

    .line 2799
    :cond_e
    const/4 v10, 0x0

    goto :goto_3

    .line 2808
    .restart local v10    # "showingAddToDictionaryHint":Z
    :cond_f
    if-nez v10, :cond_b

    .line 2813
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->clearSuggestions()V

    .line 2814
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateOldSuggestions()V

    goto :goto_4
.end method

.method po1()V
    .locals 7

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030021

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 161
    .local v3, "my":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, "Builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al:Landroid/app/AlertDialog;

    .line 163
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 164
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/inputmethodservice/KeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 165
    const/16 v4, 0x3e8

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 166
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al:Landroid/app/AlertDialog;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 167
    const v4, 0x7f080034

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 168
    .local v1, "grid":Landroid/widget/GridView;
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f030022

    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->listf:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->adapter:Landroid/widget/ArrayAdapter;

    .line 169
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->ss:I

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setSelection(I)V

    .line 172
    new-instance v4, Lcom/android/inputmethod/latin/DictionaryEditor$18;

    invoke-direct {v4, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$18;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 185
    new-instance v4, Lcom/android/inputmethod/latin/DictionaryEditor$19;

    invoke-direct {v4, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$19;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 201
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 203
    return-void
.end method

.method po2()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 351
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030023

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsoluteLayout;

    .line 352
    .local v6, "my":Landroid/widget/AbsoluteLayout;
    const v7, 0x7f080036

    invoke-virtual {v6, v7}, Landroid/widget/AbsoluteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 353
    .local v2, "ck1":Landroid/widget/CheckBox;
    const v7, 0x7f080037

    invoke-virtual {v6, v7}, Landroid/widget/AbsoluteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 354
    .local v3, "ck2":Landroid/widget/CheckBox;
    const v7, 0x7f080038

    invoke-virtual {v6, v7}, Landroid/widget/AbsoluteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 355
    .local v4, "ck3":Landroid/widget/CheckBox;
    const v7, 0x7f080035

    invoke-virtual {v6, v7}, Landroid/widget/AbsoluteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 356
    .local v1, "bt3":Landroid/widget/Button;
    iget v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->cl:I

    if-nez v7, :cond_0

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 357
    :cond_0
    iget v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->cs:I

    if-ne v7, v10, :cond_1

    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 358
    :cond_1
    iget v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->co:I

    if-ne v7, v10, :cond_2

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 361
    :cond_2
    new-instance v7, Lcom/android/inputmethod/latin/DictionaryEditor$22;

    invoke-direct {v7, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$22;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    .local v0, "Builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al2:Landroid/app/AlertDialog;

    .line 365
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al2:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 366
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/inputmethodservice/KeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 367
    const/16 v7, 0x3e8

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 368
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al2:Landroid/app/AlertDialog;

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 369
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al2:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 371
    iget-object v7, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al2:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/inputmethod/latin/DictionaryEditor$23;

    invoke-direct {v8, p0, v2, v3, v4}, Lcom/android/inputmethod/latin/DictionaryEditor$23;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 384
    return-void
.end method

.method po3()V
    .locals 9

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030024

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 308
    .local v5, "my":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, "Builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al3:Landroid/app/AlertDialog;

    .line 310
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al3:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 311
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/inputmethodservice/KeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 312
    const/16 v6, 0x3e8

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 313
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al3:Landroid/app/AlertDialog;

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->ic()V

    .line 315
    const v6, 0x7f080039

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 316
    .local v2, "grid":Landroid/widget/GridView;
    new-instance v1, Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;Landroid/content/Context;)V

    .line 317
    .local v1, "adapter2":Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 321
    .local v3, "lo":Landroid/view/inputmethod/InputConnection;
    new-instance v6, Lcom/android/inputmethod/latin/DictionaryEditor$26;

    invoke-direct {v6, p0, v1, v3}, Lcom/android/inputmethod/latin/DictionaryEditor$26;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;Landroid/view/inputmethod/InputConnection;)V

    invoke-virtual {v2, v6}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 337
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al3:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 339
    return-void
.end method

.method po4()V
    .locals 9

    .prologue
    .line 346
    sget-object v5, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->CustomSmileys:[Ljava/lang/String;

    .line 348
    .local v5, "sh":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030025

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 349
    .local v4, "my":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    .local v0, "Builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al4:Landroid/app/AlertDialog;

    .line 351
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al4:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 352
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/inputmethodservice/KeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 353
    const/16 v6, 0x3e8

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 354
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al4:Landroid/app/AlertDialog;

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 355
    const v6, 0x7f08003a

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 356
    .local v2, "grid":Landroid/widget/GridView;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v6, 0x7f030026

    invoke-direct {v1, p0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 357
    .local v1, "adapter4":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 359
    new-instance v6, Lcom/android/inputmethod/latin/DictionaryEditor$21;

    invoke-direct {v6, p0, v5}, Lcom/android/inputmethod/latin/DictionaryEditor$21;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;[Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 371
    iget-object v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->Al4:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 373
    return-void
.end method

.method public preferCapitalization()Z
    .locals 1

    .prologue
    .line 3164
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized()Z

    move-result v0

    return v0
.end method

.method promoteToUserDictionary(Ljava/lang/String;I)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I

    .prologue
    .line 3639
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/UserDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3642
    :goto_0
    return-void

    .line 3641
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public reloadKeyboards()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1454
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    if-eqz v0, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/Calibration;->setLanguageSwitcher(Lcom/android/inputmethod/latin/LanguageSwitcher;)V

    .line 1456
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Calibration;->getKeyboardMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableVoice:Z

    if-eqz v0, :cond_2

    .line 1459
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableVoiceButton:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mVoiceOnPrimary:Z

    .line 1458
    invoke-virtual {v2, v0, v3}, Lcom/android/inputmethod/latin/Calibration;->setVoiceMode(ZZ)V

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 1462
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLayout()Ljava/lang/String;

    move-result-object v2

    .line 1461
    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/Calibration;->makeKeyboards(ZLjava/lang/String;)V

    .line 1464
    :cond_1
    return-void

    .line 1459
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public revertLastWord(Z)V
    .locals 7
    .param p1, "deleteChar"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3116
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 3117
    .local v1, "length":I
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_3

    .line 3118
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3119
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mPredicting:Z

    .line 3120
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 3121
    if-eqz p1, :cond_0

    .line 3122
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3123
    :cond_0
    iget v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCommittedLength:I

    .line 3125
    .local v2, "toDelete":I
    iget v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCommittedLength:I

    invoke-interface {v0, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3126
    .local v3, "toTheLeft":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 3127
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->isWordSeparator(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3128
    add-int/lit8 v2, v2, 0x1

    .line 3130
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 3131
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->isWordSeparator(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3132
    add-int/lit8 v2, v2, -0x1

    .line 3134
    :cond_2
    invoke-interface {v0, v2, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3135
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3136
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->backspace()V

    .line 3137
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->postUpdateSuggestions()V

    .line 3142
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "toDelete":I
    .end local v3    # "toTheLeft":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 3139
    :cond_3
    const/16 v4, 0x43

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->sendDownUpKeyEvents(I)V

    .line 3140
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method sall()V
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 289
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const v1, 0x102001f

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 291
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 1328
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->setCandidatesViewShownInternal(ZZ)V

    .line 1329
    return-void
.end method

.method public swipeDown()V
    .locals 1

    .prologue
    .line 3484
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureDown:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->exectueGesture(I)V

    .line 3485
    return-void
.end method

.method public swipeLeft()V
    .locals 1

    .prologue
    .line 3480
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureLeft:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->exectueGesture(I)V

    .line 3481
    return-void
.end method

.method public swipeRight()V
    .locals 1

    .prologue
    .line 3475
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureRight:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->exectueGesture(I)V

    .line 3477
    return-void
.end method

.method public swipeUp()V
    .locals 1

    .prologue
    .line 3488
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mGestureUp:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DictionaryEditor;->exectueGesture(I)V

    .line 3489
    return-void
.end method

.method public switchToRecognitionStatusView(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/latin/DictionaryEditor$5;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor$5;-><init>(Lcom/android/inputmethod/latin/DictionaryEditor;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2408
    return-void
.end method

.method tmroff()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 177
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->av:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->cm2:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->rm:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->co:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->my:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->co:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 179
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method tmron()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 159
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->co:I

    if-ne v0, v6, :cond_0

    .line 170
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->av:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->cm2:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->rm:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->co:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->my:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iput v6, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->co:I

    goto :goto_0
.end method

.method tutorialDone()V
    .locals 1

    .prologue
    .line 3635
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    .line 3636
    return-void
.end method

.method public updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1491
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1492
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Calibration;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1493
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCalibration:Lcom/android/inputmethod/latin/Calibration;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->isMomentary()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1494
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor;->mCapsLock:Z

    if-nez v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/android/inputmethod/latin/DictionaryEditor;->getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1493
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/Calibration;->setShifted(Z)V

    .line 1496
    :cond_0
    return-void

    .line 1494
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
