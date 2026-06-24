.class public Lcom/android/inputmethod/latin/ExternalAnyKeyboard;
.super Lcom/android/inputmethod/latin/LatinKeyboard;
.source "ExternalAnyKeyboard.java"

# interfaces
.implements Lcom/android/inputmethod/latin/LatinKeyboard$HardKeyboardTranslator;


# static fields
.field private static final TAG:Ljava/lang/String; = "ASK - EAK"

.field private static final XML_ALT_ATTRIBUTE:Ljava/lang/String; = "altModifier"

.field private static final XML_KEYS_ATTRIBUTE:Ljava/lang/String; = "keySequence"

.field private static final XML_QWERTY_ATTRIBUTE:Ljava/lang/String; = "QwertyTranslation"

.field private static final XML_SEQUENCE_TAG:Ljava/lang/String; = "SequenceMapping"

.field private static final XML_SHIFT_ATTRIBUTE:Ljava/lang/String; = "shiftModifier"

.field private static final XML_TARGET_ATTRIBUTE:Ljava/lang/String; = "targetChar"

.field private static final XML_TARGET_CHAR_CODE_ATTRIBUTE:Ljava/lang/String; = "targetCharCode"

.field private static final XML_TRANSLATION_TAG:Ljava/lang/String; = "PhysicalTranslation"


# instance fields
.field private final mAdditionalIsLetterExceptions:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDefaultDictionary:Ljava/lang/String;

.field private final mHardKeyboardTranslator:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;

.field private final mIconId:I

.field private final mNameResId:I

.field private final mPrefId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "xmlLandscapeResId"    # I
    .param p4, "prefId"    # Ljava/lang/String;
    .param p5, "nameResId"    # I
    .param p6, "iconResId"    # I
    .param p7, "qwertyTranslationId"    # I
    .param p8, "defaultDictionary"    # Ljava/lang/String;
    .param p9, "additionalIsLetterExceptions"    # Ljava/lang/String;
    .param p10, "mode"    # I

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->getKeyboardId(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, v0, p10}, Lcom/android/inputmethod/latin/LatinKeyboard;-><init>(Landroid/content/Context;II)V

    .line 44
    iput-object p4, p0, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->mPrefId:Ljava/lang/String;

    .line 45
    iput p5, p0, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->mNameResId:I

    .line 46
    iput p6, p0, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->mIconId:I

    .line 47
    iput-object p8, p0, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->mDefaultDictionary:Ljava/lang/String;

    .line 48
    const/4 v0, -0x1

    if-eq p7, v0, :cond_1

    .line 50
    sget-boolean v0, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASK - EAK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating qwerty mapping:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    invoke-direct {p0, p1, p7}, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->createPhysicalTranslatorFromResourceId(Landroid/content/Context;I)Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->mHardKeyboardTranslator:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;

    .line 58
    :goto_0
    iput-object p9, p0, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->mAdditionalIsLetterExceptions:Ljava/lang/String;

    .line 59
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->mHardKeyboardTranslator:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;

    goto :goto_0
.end method

.method private createPhysicalTranslatorFromResourceId(Landroid/content/Context;I)Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qwertyTranslationId"    # I

    .prologue
    .line 64
    new-instance v18, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;

    invoke-direct/range {v18 .. v18}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;-><init>()V

    .line 65
    .local v18, "translator":Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 66
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "ASK Hard Translation Parser"

    .line 69
    .local v3, "TAG":Ljava/lang/String;
    const/4 v7, 0x0

    .line 70
    .local v7, "inTranslations":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "event":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_1

    .line 139
    .end local v6    # "event":I
    :goto_1
    return-object v18

    .line 72
    .restart local v6    # "event":I
    :cond_1
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 73
    .local v14, "tag":Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v6, v0, :cond_8

    .line 74
    const-string v19, "PhysicalTranslation"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 75
    const/4 v7, 0x1

    .line 76
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 77
    .local v4, "attrs":Landroid/util/AttributeSet;
    const/16 v19, 0x0

    const-string v20, "QwertyTranslation"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, "qwerty":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->addQwertyTranslation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "event":I
    .end local v13    # "qwerty":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 136
    .local v5, "e":Ljava/lang/Exception;
    const-string v19, "ASK Hard Translation Parser"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Parse error:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 81
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "event":I
    .restart local v14    # "tag":Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_0

    :try_start_1
    const-string v19, "SequenceMapping"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 84
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 86
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    const/16 v19, 0x0

    const-string v20, "keySequence"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->getKeyCodesFromPhysicalSequence(Ljava/lang/String;)[I

    move-result-object v11

    .line 87
    .local v11, "keyCodes":[I
    const/16 v19, 0x0

    const-string v20, "altModifier"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v4, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 88
    .local v8, "isAlt":Z
    const/16 v19, 0x0

    const-string v20, "shiftModifier"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v4, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 89
    .local v9, "isShift":Z
    const/16 v19, 0x0

    const-string v20, "targetChar"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 90
    .local v16, "targetChar":Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "targetCharCode"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 92
    .local v17, "targetCharCode":Ljava/lang/String;
    if-nez v16, :cond_4

    .line 93
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    .line 97
    .local v15, "target":Ljava/lang/String;
    :goto_2
    if-eqz v11, :cond_3

    array-length v0, v11

    move/from16 v19, v0

    if-eqz v19, :cond_3

    if-nez v15, :cond_5

    .line 99
    :cond_3
    const-string v19, "ASK Hard Translation Parser"

    const-string v20, "Physical translator sequence does not include mandatory fields keySequence or targetChar"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 95
    .end local v15    # "target":Ljava/lang/String;
    :cond_4
    move-object/from16 v15, v16

    .restart local v15    # "target":Ljava/lang/String;
    goto :goto_2

    .line 103
    :cond_5
    if-nez v8, :cond_6

    if-nez v9, :cond_6

    .line 106
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->addSequence([IC)V

    goto/16 :goto_0

    .line 108
    :cond_6
    if-eqz v8, :cond_7

    .line 110
    const/16 v19, 0x0

    aget v10, v11, v19

    .line 112
    .local v10, "keyCode":I
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->addAltMapping(IC)V

    goto/16 :goto_0

    .line 114
    .end local v10    # "keyCode":I
    :cond_7
    if-eqz v9, :cond_0

    .line 116
    const/16 v19, 0x0

    aget v10, v11, v19

    .line 118
    .restart local v10    # "keyCode":I
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->addShiftMapping(IC)V

    goto/16 :goto_0

    .line 123
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "isAlt":Z
    .end local v9    # "isShift":Z
    .end local v10    # "keyCode":I
    .end local v11    # "keyCodes":[I
    .end local v15    # "target":Ljava/lang/String;
    .end local v16    # "targetChar":Ljava/lang/String;
    .end local v17    # "targetCharCode":Ljava/lang/String;
    :cond_8
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    .line 124
    const-string v19, "PhysicalTranslation"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 125
    const/4 v7, 0x0

    .line 127
    goto/16 :goto_1

    .line 129
    :cond_9
    if-eqz v7, :cond_0

    const-string v19, "SequenceMapping"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private getKeyCodesFromPhysicalSequence(Ljava/lang/String;)[I
    .locals 8
    .param p1, "keyCodesArray"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "splitted":[Ljava/lang/String;
    array-length v6, v4

    new-array v2, v6, [I

    .line 153
    .local v2, "keyCodes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v2

    if-lt v1, v6, :cond_0

    .line 168
    return-object v2

    .line 155
    :cond_0
    :try_start_0
    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v3

    .line 157
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    aget-object v5, v4, v1

    .line 159
    .local v5, "v":Ljava/lang/String;
    :try_start_1
    const-class v6, Landroid/view/KeyEvent;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 160
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 159
    aput v6, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 162
    :catch_1
    move-exception v0

    .line 163
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static getKeyboardId(Landroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "portraitId"    # I
    .param p2, "landscapeId"    # I

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 176
    .local v0, "inPortraitMode":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 179
    .end local p1    # "portraitId":I
    :goto_1
    return p1

    .line 174
    .end local v0    # "inPortraitMode":Z
    .restart local p1    # "portraitId":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "inPortraitMode":Z
    :cond_1
    move p1, p2

    .line 179
    goto :goto_1
.end method

.method private printInts([I)Ljava/lang/String;
    .locals 6
    .param p1, "keyCodes"    # [I

    .prologue
    .line 143
    const-string v1, ""

    .line 144
    .local v1, "r":Ljava/lang/String;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 147
    return-object v1

    .line 144
    :cond_0
    aget v0, p1, v2

    .line 145
    .local v0, "code":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected setPopupKeyChars(Landroid/inputmethodservice/Keyboard$Key;)V
    .locals 3
    .param p1, "aKey"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    const v2, 0x7f05001a

    .line 224
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-lez v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 231
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 238
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-char v0, v0

    packed-switch v0, :pswitch_data_0

    .line 301
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setPopupKeyChars(Landroid/inputmethodservice/Keyboard$Key;)V

    goto :goto_0

    .line 241
    :pswitch_1
    const-string v0, "\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u0105"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 242
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 245
    :pswitch_2
    const-string v0, "\u00e7\u0107\u0109\u010d"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 246
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 249
    :pswitch_3
    const-string v0, "\u0111"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 250
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 253
    :pswitch_4
    const-string v0, "\u00e8\u00e9\u00ea\u00eb\u0119\u20ac"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 254
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 257
    :pswitch_5
    const-string v0, "\u011d"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 258
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 261
    :pswitch_6
    const-string v0, "\u0125"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 262
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 265
    :pswitch_7
    const-string v0, "\u00ec\u00ed\u00ee\u00ef\u0142"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 266
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 269
    :pswitch_8
    const-string v0, "\u0135"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 270
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 273
    :pswitch_9
    const-string v0, "\u0142"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 274
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 277
    :pswitch_a
    const-string v0, "\u00f2\u00f3\u00f4\u00f5\u00f6\u00f8\u0151\u0153"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 278
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 281
    :pswitch_b
    const-string v0, "\u00a7\u00df\u015b\u015d\u0161"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 282
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 285
    :pswitch_c
    const-string v0, "\u00f9\u00fa\u00fb\u00fc\u016d\u0171"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 286
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 289
    :pswitch_d
    const-string v0, "\u00f1"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 290
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_0

    .line 293
    :pswitch_e
    const-string v0, "\u00fd\u00ff"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 294
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto/16 :goto_0

    .line 297
    :pswitch_f
    const-string v0, "\u017c\u017e\u017a"

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 298
    iput v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto/16 :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_d
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public translatePhysicalCharacter(Lcom/android/inputmethod/latin/LatinKeyboard$HardKeyboardAction;Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 4
    .param p1, "action"    # Lcom/android/inputmethod/latin/LatinKeyboard$HardKeyboardAction;
    .param p2, "ime"    # Lcom/android/inputmethod/latin/DictionaryEditor;

    .prologue
    .line 185
    iget-object v2, p0, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->mHardKeyboardTranslator:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;

    if-eqz v2, :cond_0

    .line 188
    invoke-interface {p1}, Lcom/android/inputmethod/latin/LatinKeyboard$HardKeyboardAction;->isAltActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->mHardKeyboardTranslator:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;

    invoke-interface {p1}, Lcom/android/inputmethod/latin/LatinKeyboard$HardKeyboardAction;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->getAltCharacter(I)C

    move-result v1

    .line 208
    .local v1, "translated":C
    :goto_0
    if-eqz v1, :cond_0

    .line 209
    invoke-interface {p1, v1}, Lcom/android/inputmethod/latin/LatinKeyboard$HardKeyboardAction;->setNewKeyCode(I)V

    .line 211
    .end local v1    # "translated":C
    :cond_0
    return-void

    .line 190
    :cond_1
    invoke-interface {p1}, Lcom/android/inputmethod/latin/LatinKeyboard$HardKeyboardAction;->isShiftActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    iget-object v2, p0, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->mHardKeyboardTranslator:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;

    invoke-interface {p1}, Lcom/android/inputmethod/latin/LatinKeyboard$HardKeyboardAction;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->getShiftCharacter(I)C

    move-result v0

    .line 196
    .local v0, "shiftTranslation":C
    if-gtz v0, :cond_2

    .line 198
    iget-object v2, p0, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->mHardKeyboardTranslator:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;

    invoke-interface {p1}, Lcom/android/inputmethod/latin/LatinKeyboard$HardKeyboardAction;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->getSequenceCharacter(ILcom/android/inputmethod/latin/DictionaryEditor;)C

    move-result v0

    .line 200
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 203
    :cond_2
    move v1, v0

    .restart local v1    # "translated":C
    goto :goto_0

    .line 206
    .end local v0    # "shiftTranslation":C
    .end local v1    # "translated":C
    :cond_3
    iget-object v2, p0, Lcom/android/inputmethod/latin/ExternalAnyKeyboard;->mHardKeyboardTranslator:Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;

    invoke-interface {p1}, Lcom/android/inputmethod/latin/LatinKeyboard$HardKeyboardAction;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/android/inputmethod/latin/HardKeyboardSequenceHandler;->getSequenceCharacter(ILcom/android/inputmethod/latin/DictionaryEditor;)C

    move-result v1

    .restart local v1    # "translated":C
    goto :goto_0
.end method
