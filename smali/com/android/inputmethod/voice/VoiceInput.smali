.class public Lcom/android/inputmethod/voice/VoiceInput;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/voice/VoiceInput$AlternatesBundleKeys;,
        Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;,
        Lcom/android/inputmethod/voice/VoiceInput$UiListener;
    }
.end annotation


# static fields
.field private static final ALTERNATES_BUNDLE:Ljava/lang/String; = "alternates_bundle"

.field public static final DEFAULT:I = 0x0

.field private static final DEFAULT_RECOMMENDED_PACKAGES:Ljava/lang/String; = "com.android.mms com.google.android.gm com.google.android.talk com.google.android.apps.googlevoice com.android.email com.android.browser "

.field public static final DELETE_SYMBOL:Ljava/lang/String; = " \u00d7 "

.field public static ENABLE_WORD_CORRECTIONS:Z = false

.field public static final ERROR:I = 0x3

.field private static final EXTRA_ALTERNATES:Ljava/lang/String; = "android.speech.extra.ALTERNATES"

.field private static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final EXTRA_RECOGNITION_CONTEXT:Ljava/lang/String; = "android.speech.extras.RECOGNITION_CONTEXT"

.field private static final EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

.field private static final EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

.field private static final EXTRA_SPEECH_MINIMUM_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

.field private static final INPUT_COMPLETE_SILENCE_LENGTH_DEFAULT_VALUE_MILLIS:Ljava/lang/String; = "1000"

.field public static final LISTENING:I = 0x1

.field private static final MAX_ALT_LIST_LENGTH:I = 0x6

.field private static final MSG_CLOSE_ERROR_DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VoiceInput"

.field public static final WORKING:I = 0x2


# instance fields
.field private mAfterVoiceInputCursorPos:I

.field private mAfterVoiceInputDeleteCount:I

.field private mAfterVoiceInputInsertCount:I

.field private mAfterVoiceInputInsertPunctuationCount:I

.field private mAfterVoiceInputSelectionSpan:I

.field private mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

.field private mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private mState:I

.field private mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/inputmethod/voice/VoiceInput;->ENABLE_WORD_CORRECTIONS:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/voice/VoiceInput$UiListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiHandler"    # Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 123
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 124
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 125
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    .line 126
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    .line 128
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 132
    new-instance v3, Lcom/android/inputmethod/voice/VoiceInput$1;

    invoke-direct {v3, p0}, Lcom/android/inputmethod/voice/VoiceInput$1;-><init>(Lcom/android/inputmethod/voice/VoiceInput;)V

    iput-object v3, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    .line 173
    invoke-static {p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->getLogger(Landroid/content/Context;)Lcom/android/inputmethod/voice/VoiceInputLogger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    .line 174
    new-instance v3, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;-><init>(Lcom/android/inputmethod/voice/VoiceInput;Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;)V

    iput-object v3, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 175
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 176
    iget-object v3, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v4, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v3, v4}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 177
    iput-object p2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    .line 178
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceInput;->newView()V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 183
    const-string v4, "latin_ime_voice_input_recommended_packages"

    .line 184
    const-string v5, "com.android.mms com.google.android.gm com.google.android.talk com.google.android.apps.googlevoice com.android.email com.android.browser "

    .line 181
    invoke-static {v3, v4, v5}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "recommendedPackages":Ljava/lang/String;
    new-instance v3, Lcom/android/inputmethod/voice/Whitelist;

    invoke-direct {v3}, Lcom/android/inputmethod/voice/Whitelist;-><init>()V

    iput-object v3, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

    .line 187
    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 191
    new-instance v2, Lcom/android/inputmethod/voice/Whitelist;

    invoke-direct {v2}, Lcom/android/inputmethod/voice/Whitelist;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

    .line 192
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

    const-string v3, "com.android.setupwizard"

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 193
    return-void

    .line 187
    :cond_0
    aget-object v0, v3, v2

    .line 188
    .local v0, "recommendedPackage":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

    invoke-virtual {v5, v0}, Lcom/android/inputmethod/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/android/inputmethod/voice/VoiceInput;I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    return-void
.end method

.method static synthetic access$1(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/VoiceInput$UiListener;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/inputmethod/voice/VoiceInput;IZ)V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/voice/VoiceInput;->onError(IZ)V

    return-void
.end method

.method private getErrorStringId(IZ)I
    .locals 1
    .param p1, "errorType"    # I
    .param p2, "endpointed"    # Z

    .prologue
    const v0, 0x7f0d0084

    .line 520
    packed-switch p1, :pswitch_data_0

    .line 537
    const v0, 0x7f0d0083

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 523
    :pswitch_1
    const v0, 0x7f0d008a

    goto :goto_0

    .line 527
    :pswitch_2
    if-nez p2, :cond_0

    .line 528
    const v0, 0x7f0d0085

    goto :goto_0

    .line 530
    :pswitch_3
    const v0, 0x7f0d0086

    goto :goto_0

    .line 532
    :pswitch_4
    const v0, 0x7f0d0087

    goto :goto_0

    .line 534
    :pswitch_5
    const v0, 0x7f0d0088

    goto :goto_0

    .line 536
    :pswitch_6
    const v0, 0x7f0d0089

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static makeIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "1.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    const-string v1, "com.google.android.voiceservice"

    .line 484
    const-string v2, "com.google.android.voiceservice.IMERecognitionService"

    .line 482
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 491
    :goto_0
    return-object v0

    .line 487
    :cond_0
    const-string v1, "com.google.android.voicesearch"

    .line 488
    const-string v2, "com.google.android.voicesearch.RecognitionService"

    .line 486
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private onError(IZ)V
    .locals 3
    .param p1, "errorType"    # I
    .param p2, "endpointed"    # Z

    .prologue
    .line 542
    const-string v0, "VoiceInput"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->error(I)V

    .line 544
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/voice/VoiceInput;->getErrorStringId(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->onError(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 548
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 549
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/RecognitionView;->showError(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 552
    return-void
.end method

.method private putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "i"    # Landroid/content/Intent;
    .param p3, "gservicesKey"    # Ljava/lang/String;
    .param p4, "intentExtraKey"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 371
    const-wide/16 v1, -0x1

    .line 372
    .local v1, "l":J
    invoke-static {p1, p3, p5}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 375
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 381
    :cond_0
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, p4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 382
    :cond_1
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "VoiceInput"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "could not parse value for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startListeningAfterInitialization(Lcom/android/inputmethod/voice/FieldContext;)V
    .locals 12
    .param p1, "context"    # Lcom/android/inputmethod/voice/FieldContext;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 328
    invoke-static {}, Lcom/android/inputmethod/voice/VoiceInput;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 329
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v0, "android.speech.extras.RECOGNITION_CONTEXT"

    invoke-virtual {p1}, Lcom/android/inputmethod/voice/FieldContext;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 331
    const-string v0, "calling_package"

    const-string v3, "VoiceIME"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v0, "android.speech.extra.ALTERNATES"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    const-string v0, "android.speech.extra.MAX_RESULTS"

    .line 335
    iget-object v3, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 336
    const-string v4, "latin_ime_max_voice_results"

    .line 334
    invoke-static {v3, v4, v6}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 333
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 344
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v3, "latin_ime_speech_minimum_length_millis"

    .line 345
    const-string v4, "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

    move-object v0, p0

    .line 341
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v9, "latin_ime_speech_input_complete_silence_length_millis"

    .line 351
    const-string v10, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    .line 352
    const-string v11, "1000"

    move-object v6, p0

    move-object v7, v1

    move-object v8, v2

    .line 347
    invoke-direct/range {v6 .. v11}, Lcom/android/inputmethod/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v3, "latin_ime_speech_input_possibly_complete_silence_length_millis"

    .line 359
    const-string v4, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    move-object v0, p0

    .line 354
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v2}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 363
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 498
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 509
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 512
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 515
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    invoke-interface {v0}, Lcom/android/inputmethod/voice/VoiceInput$UiListener;->onCancelVoice()V

    .line 516
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->finish()V

    .line 517
    return-void

    .line 500
    :pswitch_0
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->cancelDuringListening()V

    goto :goto_0

    .line 503
    :pswitch_1
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->cancelDuringWorking()V

    goto :goto_0

    .line 506
    :pswitch_2
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->cancelDuringError()V

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 386
    return-void
.end method

.method public flushAllTextModificationCounters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_0

    .line 263
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 264
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 266
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1

    .line 267
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 268
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 270
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_2

    .line 271
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 272
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 274
    :cond_2
    return-void
.end method

.method public flushLogs()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->flush()V

    .line 473
    return-void
.end method

.method public getCursorPos()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    return v0
.end method

.method public getSelectionSpan()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public incrementTextModificationDeleteCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 212
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 214
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_0

    .line 215
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 216
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 218
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_1

    .line 219
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 220
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 223
    :cond_1
    return-void
.end method

.method public incrementTextModificationInsertCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 226
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 227
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    if-lez v0, :cond_0

    .line 230
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    iget v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 233
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1

    .line 234
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 235
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 237
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_2

    .line 238
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 239
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 241
    :cond_2
    return-void
.end method

.method public incrementTextModificationInsertPunctuationCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 244
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 245
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    if-lez v0, :cond_0

    .line 248
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    iget v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 251
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1

    .line 252
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 253
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 255
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_2

    .line 256
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 257
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 259
    :cond_2
    return-void
.end method

.method public isBlacklistedField(Lcom/android/inputmethod/voice/FieldContext;)Z
    .locals 1
    .param p1, "context"    # Lcom/android/inputmethod/voice/FieldContext;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/Whitelist;->matches(Lcom/android/inputmethod/voice/FieldContext;)Z

    move-result v0

    return v0
.end method

.method public isRecommendedField(Lcom/android/inputmethod/voice/FieldContext;)Z
    .locals 1
    .param p1, "context"    # Lcom/android/inputmethod/voice/FieldContext;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/Whitelist;->matches(Lcom/android/inputmethod/voice/FieldContext;)Z

    move-result v0

    return v0
.end method

.method public logInputEnded()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->inputEnded()V

    .line 469
    return-void
.end method

.method public logKeyboardWarningDialogCancel()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->keyboardWarningDialogCancel()V

    .line 453
    return-void
.end method

.method public logKeyboardWarningDialogDismissed()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->keyboardWarningDialogDismissed()V

    .line 445
    return-void
.end method

.method public logKeyboardWarningDialogOk()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->keyboardWarningDialogOk()V

    .line 449
    return-void
.end method

.method public logKeyboardWarningDialogShown()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->keyboardWarningDialogShown()V

    .line 441
    return-void
.end method

.method public logPunctuationHintDisplayed()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->punctuationHintDisplayed()V

    .line 461
    return-void
.end method

.method public logSwipeHintDisplayed()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->swipeHintDisplayed()V

    .line 457
    return-void
.end method

.method public logTextModifiedByChooseSuggestion(Ljava/lang/String;ILjava/lang/String;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 6
    .param p1, "suggestion"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "wordSeparators"    # Ljava/lang/String;
    .param p4, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p5, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 432
    invoke-static {p4, p3}, Lcom/android/inputmethod/latin/EditingUtil;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "wordToBeReplaced":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    move v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByChooseSuggestion(IIILjava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public logTextModifiedByTypingDeletion(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByTypingDeletion(I)V

    .line 427
    return-void
.end method

.method public logTextModifiedByTypingInsertion(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByTypingInsertion(I)V

    .line 419
    return-void
.end method

.method public logTextModifiedByTypingInsertionPunctuation(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByTypingInsertionPunctuation(I)V

    .line 423
    return-void
.end method

.method public logVoiceInputDelivered(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->voiceInputDelivered(I)V

    .line 465
    return-void
.end method

.method public newView()V
    .locals 2

    .prologue
    .line 395
    new-instance v0, Lcom/android/inputmethod/voice/RecognitionView;

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/inputmethod/voice/RecognitionView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    .line 396
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 415
    :goto_0
    return-void

    .line 412
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x7f080022
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->restoreState()V

    .line 282
    return-void
.end method

.method public setCursorPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    .line 197
    return-void
.end method

.method public setSelectionSpan(I)V
    .locals 0
    .param p1, "span"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    .line 205
    return-void
.end method

.method public startListening(Lcom/android/inputmethod/voice/FieldContext;Z)V
    .locals 4
    .param p1, "context"    # Lcom/android/inputmethod/voice/FieldContext;
    .param p2, "swipe"    # Z

    .prologue
    .line 309
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 311
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 312
    .local v0, "locale":Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "localeString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v2, v1, p2}, Lcom/android/inputmethod/voice/VoiceInputLogger;->start(Ljava/lang/String;Z)V

    .line 316
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 318
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v2}, Lcom/android/inputmethod/voice/RecognitionView;->showInitializing()V

    .line 319
    invoke-direct {p0, p1}, Lcom/android/inputmethod/voice/VoiceInput;->startListeningAfterInitialization(Lcom/android/inputmethod/voice/FieldContext;)V

    .line 320
    return-void
.end method
